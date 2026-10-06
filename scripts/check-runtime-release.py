"""Verify the compiled Nim dependency consumes the same canonical StarLang release."""
import hashlib
import json
from pathlib import Path
import sys

root = Path(__file__).resolve().parents[1]
package = Path(sys.argv[1])
runtime = package / "share/nimble/starintel_doc"
if not runtime.exists():
    runtime = package

lock = json.loads((root / "schema/starintel-schema.lock.json").read_text())
runtime_lock = json.loads((runtime / "schema/starintel-schema.lock.json").read_text())

metadata = (
    "canonical_repository", "canonical_commit", "release_version", "schema_version",
    "authority_library", "canonical_key_style", "release_lock_path", "schema_path",
    "manifest_path",
)
for key in metadata:
    assert lock[key] == runtime_lock[key], f"router/runtime {key} differs"

def closure(value):
    return {entry["source"]: entry["sha256"] for entry in value["vendored_files"].values()}

assert closure(lock) == closure(runtime_lock), "router/runtime canonical source closure differs"

for local, entry in lock["vendored_files"].items():
    assert hashlib.sha256((root / local).read_bytes()).hexdigest() == entry["sha256"], local
for local, entry in runtime_lock["vendored_files"].items():
    assert hashlib.sha256((runtime / local).read_bytes()).hexdigest() == entry["sha256"], local

pin = "7613609b963063d98fe31fb6a95a83a9ed30fe94"
assert f"starintel-doc.nim.git#{pin}" in (root / "starRouter.nimble").read_text()
assert json.loads((root / "flake.lock").read_text())["nodes"]["starintel-doc"]["locked"]["rev"] == pin

legacy = "schemas/legacy/starintel-doc-v0.9.0.schema.json"
runtime_legacy = runtime / "src/starintel_doc/schemas/legacy/starintel-doc-v0.9.0.schema.json"
assert (root / legacy).read_bytes() == runtime_legacy.read_bytes(), "historical compatibility schema drift"
print("compiled Nim runtime and canonical StarLang source closure agree")
