"""Reference enforcement of operation invariants declared in core.star.

Structural validation must select generated schema #/$defs/Operation first.
This is a portable reference implementation, not an independent wire schema.
"""
from __future__ import annotations
from typing import Any

def _require_unique(items: list[dict[str, Any]], key: str, path: str) -> set[str]:
    values: set[str] = set()
    for index, item in enumerate(items):
        value = str(item.get(key) or "").strip()
        if not value:
            raise ValueError(f"{path}[{index}].{key}: non-empty identifier required")
        if value in values:
            raise ValueError(f"{path}[{index}].{key}: duplicate identifier {value!r}")
        values.add(value)
    return values


def _require_refs(refs: list[str], known: set[str], path: str) -> None:
    for ref in refs:
        if ref not in known:
            raise ValueError(f"{path}: unknown reference {ref!r}")


def _assert_phase_dag(phases: list[dict[str, Any]], phaseIds: set[str]) -> None:
    graph = {str(phase["phaseId"]).strip(): list(phase.get("dependsOn") or []) for phase in phases}
    for phaseId, dependencies in graph.items():
        _require_refs(dependencies, phaseIds, f"$.phases[{phaseId}].dependsOn")
        if phaseId in dependencies:
            raise ValueError(f"$.phases[{phaseId}].dependsOn: self dependency")

    visiting: set[str] = set()
    visited: set[str] = set()

    def visit(phaseId: str) -> None:
        if phaseId in visiting:
            raise ValueError(f"$.phases: dependency cycle reaches {phaseId!r}")
        if phaseId in visited:
            return
        visiting.add(phaseId)
        for dependency in graph[phaseId]:
            visit(dependency)
        visiting.remove(phaseId)
        visited.add(phaseId)

    for phaseId in graph:
        visit(phaseId)


def validate_operation_semantics(document: dict[str, Any]) -> None:
    """Validate cross-reference/DAG invariants JSON Schema cannot express here."""

    if document.get("dtype") != "operation":
        return

    data = document
    if not isinstance(data, dict):
        return

    mission = data.get("mission")
    if not isinstance(mission, str) or not mission.strip():
        raise ValueError("$.mission: non-empty mission required")

    phases = data.get("phases") or []
    if not phases:
        raise ValueError("$.phases: at least one phase required")

    datasets = data.get("datasets") or []
    capabilities = data.get("capabilityGaps") or []
    assignments = data.get("assignments") or []
    postActions = data.get("postActions") or []

    phaseIds = _require_unique(phases, "phaseId", "$.phases")
    dataset_ids = _require_unique(datasets, "bindingId", "$.datasets")
    capabilityIds = _require_unique(capabilities, "capabilityId", "$.capabilityGaps")
    _require_unique(assignments, "assignmentId", "$.assignments")
    _require_unique(postActions, "actionId", "$.postActions")

    _assert_phase_dag(phases, phaseIds)

    operation_excluded = set(data.get("outOfScope") or [])
    for phase in phases:
        phaseId = str(phase["phaseId"]).strip()
        objective = phase.get("objective")
        if not isinstance(objective, str) or not objective.strip():
            raise ValueError(f"$.phases[{phaseId}].objective: non-empty objective required")
        _require_refs(
            list(phase.get("datasetBindingIds") or []),
            dataset_ids,
            f"$.phases[{phaseId}].datasetBindingIds",
        )
        _require_refs(
            list(phase.get("requiredCapabilityIds") or []),
            capabilityIds,
            f"$.phases[{phaseId}].requiredCapabilityIds",
        )
        contradiction = operation_excluded.intersection(phase.get("inScope") or [])
        if contradiction:
            raise ValueError(
                f"$.phases[{phaseId}].inScope: operation outOfScope overrides {sorted(contradiction)!r}"
            )
        if phase.get("state") == "completed" and not phase.get("completionEvidence"):
            raise ValueError(
                f"$.phases[{phaseId}].completionEvidence: completed phase requires evidence"
            )

    for binding in datasets:
        _require_refs(
            list(binding.get("phases") or []),
            phaseIds,
            f"$.datasets[{binding['bindingId']}].phases",
        )

    for capability in capabilities:
        _require_refs(
            list(capability.get("requiredBy") or []),
            phaseIds,
            f"$.capabilityGaps[{capability['capabilityId']}].requiredBy",
        )

    for assignment in assignments:
        _require_refs(
            list(assignment.get("phaseIds") or []),
            phaseIds,
            f"$.assignments[{assignment['assignmentId']}].phaseIds",
        )

    for action in postActions:
        _require_refs(
            list(action.get("datasetBindingIds") or []),
            dataset_ids,
            f"$.postActions[{action['actionId']}].datasetBindingIds",
        )

    if data.get("status") == "completed":
        nonterminal = [
            phase["phaseId"]
            for phase in phases
            if phase.get("state") not in {"completed", "skipped"}
        ]
        if nonterminal:
            raise ValueError(
                f"$.status: completed operation has nonterminal phases {nonterminal!r}"
            )
