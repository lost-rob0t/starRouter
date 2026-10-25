## Runs only on the dedicated native worker. No Lisp thread enters this module.
import server, proto

type EmbeddedCore = ref object
  router: StarRouter
  pending: Message[string]
  transport: string

proc unpack(data: pointer, size: csize_t): seq[string] =
  let bytes = cast[ptr UncheckedArray[byte]](data)
  var pos = 0
  while pos < int(size):
    if int(size) - pos < 4 or result.len >= 9:
      raise newException(ValueError, "Invalid frame carrier")
    var length = 0
    for n in 0..3: length = (length shl 8) or int(bytes[pos+n])
    pos += 4
    if length < 0 or length > int(size)-pos:
      raise newException(ValueError, "Invalid frame size")
    var frame = newString(length)
    if length > 0: copyMem(addr frame[0], addr bytes[pos], length)
    result.add(frame)
    pos += length

proc pack(frames: openArray[string], output: pointer, capacity: csize_t,
          used: ptr csize_t) =
  var total = 0
  for frame in frames: total += 4 + frame.len
  if total > int(capacity): raise newException(ValueError, "Output limit")
  let bytes = cast[ptr UncheckedArray[byte]](output)
  var pos = 0
  for frame in frames:
    for n in 0..3: bytes[pos+n] = byte((frame.len shr ((3-n)*8)) and 255)
    pos += 4
    if frame.len > 0: copyMem(addr bytes[pos], unsafeAddr frame[0], frame.len)
    pos += frame.len
  used[] = csize_t(total)

proc sr_core_begin(): pointer {.exportc, cdecl.} =
  setupForeignThreadGc()
  try:
    let core = EmbeddedCore(router: newStarRouter())
    GC_ref(core)
    return cast[pointer](core)
  except Exception:
    return nil

proc sr_core_end(state: pointer) {.exportc, cdecl.} =
  if state != nil: GC_unref(cast[EmbeddedCore](state))
  tearDownForeignThreadGc()

proc sr_core_process(state: pointer, operation: cint, data: pointer,
                     size: csize_t, output: pointer, capacity: csize_t,
                     used: ptr csize_t): cint {.exportc, cdecl.} =
  used[] = 0
  try:
    let core = cast[EmbeddedCore](state)
    case operation
    of 1: # Validate and retain; host decides whether effects are permitted.
      if core.pending != nil: return -1
      let frames = unpack(data, size)
      core.pending = core.router.prepareClientMessage(frames)
      core.transport = frames[0]
    of 2: # Authorized host has completed required durable effects.
      if core.pending == nil: return -1
      if core.pending.typ == EventType.register and core.router.actorCount() >= 1024 and
          not core.router.registeredActor(core.pending.source, core.transport):
        core.pending = nil
        return -1
      let publication = core.router.applyClientMessage(core.pending, core.transport)
      core.pending = nil
      if publication != nil: pack(forwardedFrames(publication), output, capacity, used)
    of 3:
      core.pending = nil
    of 4:
      let frames = unpack(data, size)
      if frames.len != 3: return -1
      let publication = core.router.routeEmbeddedTarget(frames[0], frames[1], frames[2])
      pack(forwardedFrames(publication), output, capacity, used)
    of 5:
      core.router.maintainActors()
      pack(forwardedFrames(core.router.routerHeartbeat()), output, capacity, used)
    else: return -1
    return 0
  except KeyError:
    return -7
  except Exception:
    return -5
