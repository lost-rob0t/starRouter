"""Verify the actual compiled dependency consumes this exact StarLang release."""
import hashlib
import json
from pathlib import Path
import sys
root=Path(__file__).resolve().parents[1]
runtime=Path(sys.argv[1])
lock=json.loads((root/'schema/starintel-schema.lock.json').read_text())
assert lock == json.loads((runtime/'schema/starintel-schema.lock.json').read_text()), 'router/runtime release locks differ'
for local,entry in lock['vendored_files'].items():
    assert hashlib.sha256((runtime/local).read_bytes()).hexdigest() == entry['sha256'], local
pin='827f2c072e9893561a1925c47f898458bafd6759'
assert f'starintel-doc.nim.git#{pin}' in (root/'starRouter.nimble').read_text()
assert json.loads((root/'flake.lock').read_text())['nodes']['starintel-doc']['locked']['rev'] == pin
print('compiled Nim runtime and all source release artifacts agree')

legacy='schemas/legacy/starintel-doc-v0.9.0.schema.json'
assert (root/legacy).read_bytes() == (runtime/legacy).read_bytes(), 'historical compatibility schema drift'
