import sequtils

func main(): seq[string] =
  @[""].apply(proc (unit: auto): void =
    result.add ""
  )

discard main()
