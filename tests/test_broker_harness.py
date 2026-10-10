"""Regressions: optimized Python must not disable real ZeroMQ broker assertions."""
import ast
from pathlib import Path
import unittest

BROKER_WIRE = Path(__file__).resolve().parent / "broker_wire.py"


class BrokerCheckIntegrity(unittest.TestCase):
    def setUp(self):
        self.module = ast.parse(BROKER_WIRE.read_text(encoding="utf-8"))

    def test_all_transport_assertions_remain_executable(self):
        self.assertFalse([n for n in ast.walk(self.module) if isinstance(n, ast.Assert)])
        calls = [n for n in ast.walk(self.module) if isinstance(n, ast.Call)
                 and isinstance(n.func, ast.Name) and n.func.id == "must"]
        self.assertGreaterEqual(len(calls), 33)

    def test_failing_check_still_raises_under_optimization(self):
        helper = next(n for n in self.module.body
                      if isinstance(n, ast.FunctionDef) and n.name == "must")
        namespace = {}
        code = compile(ast.Module(body=[helper], type_ignores=[]), str(BROKER_WIRE), "exec")
        exec(code, namespace)
        with self.assertRaisesRegex(AssertionError, "injected invalid ACK"):
            namespace["must"](False, "injected invalid ACK")
        namespace["must"](True, "valid ACK")


if __name__ == "__main__":
    unittest.main()
