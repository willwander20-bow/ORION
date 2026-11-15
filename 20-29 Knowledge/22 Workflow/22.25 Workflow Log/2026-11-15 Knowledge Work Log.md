# Knowledge Work Log — 2026-11-15

## Audit events

| Time | Actor | Event | Record | Result |
|---|---|---|---|---|
| 17:16 | orchestrator | Script fixes. `Frontmatter Check.ps1` v0.2: default paths include `22.26` (G1). `Link Check.ps1` v0.2: new `NO-CO` check for an empty `change-orders` list (G3). `Quote Check.ps1` v0.3: new `-File` option for companion files. Tests: real Brain 0 problems in both checks; seeded copy in the scratchpad gave `NO-CO`; `-File` check of BRF-20261113-009 found 44 of 44 quotes, 0 failed; wrong arguments give an error. | `20.04 Knowledge Reference` (3 scripts) | OK |

## Decisions

- Justin chose to fix the scripts first, before the Phase 7 plan.

## Open

- Rulebook edit (name `Link Check.ps1`, Curator modes, health report path, `routed` to `skipped`) is not done.
- Word-count step for the Reporter is not done.
- Time errors on the 2026-11-13 records are not corrected.
