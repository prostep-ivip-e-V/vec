# GitHub Interaction

Repository: `prostep-ivip-e-V/vec`. Assignee: `beckerjohannes`.

## Rules

- Claude **never writes to GitHub**: no `gh issue create`, `gh issue edit`, `gh issue comment`,
  `gh issue close`, `gh pr …` writes and no `git push`. Write the text to a file in `analysis/`
  and give the command; the user runs it.
- Read-only calls are fine and expected: `gh issue view <n> --comments`, `gh issue list`,
  `gh label list`, `gh api repos/prostep-ivip-e-V/vec/milestones`.
- Verify that a label or milestone exists before using it in a command.
- After an issue was created, ask the user for its number.
- Issues are closed by the PR merge (`Closes #<n>` in the commit message). Comment commands use
  `gh issue comment`, never `gh issue close`.

## Labels and Milestones

| Kind of change | Label | Milestone |
|---|---|---|
| Implementation guideline (wiki) | `VEC implementation guidelines` | current guideline milestone (e.g. `Guidelines 2026`) |
| Model (MagicDraw, XSD) | `VEC` | next VEC release (e.g. `VEC 2.3.0`) |

## Splitting Issues

- Normally an issue is resolved in itself; adjust the title if necessary
  (`gh issue edit <n> --title "…"`).
- An issue that needs **both** a model change and a guideline change is split, because each kind
  belongs to a different milestone: the **original issue keeps the model change**, a **new issue**
  is created for the guideline change.
- A **broad** issue (several topics, overlapping with other issues) is resolved via a workplan
  with one new issue per work package; the original issue gets a summary comment at the end.
- Open points that are split off during the work get their own issue.

## Issue Text

File `analysis/<id>-issue.md` (e.g. `ig-12-issue.md`, `1234-guideline-issue.md`):

```markdown
**Related:** #<original issues>

## Problem

[What is unclear, missing or contradictory today, from the reader's point of view.]

## Decision

[The decisions this change is based on: "As agreed in the discussion of #… and in the VES-WF
meeting on DD.MM.YYYY (Decision n)". Do not reference numbers of analysis files or workplans —
readers of the issue do not have them.]

## Changes

[Per page / model element, a short list of the changes. Not every detail; the commits show them.]

## Impact

[Impact on the model / schema, existing data, writing systems and reading systems.]
```

Command:

```bash
gh issue create --repo prostep-ivip-e-V/vec \
  --title "<Area>: <short statement of the change>" \
  --body-file analysis/<id>-issue.md \
  --label "<label>" \
  --milestone "<milestone>" \
  --assignee beckerjohannes
```

If the text changes after the issue was created, give
`gh issue edit <n> --repo prostep-ivip-e-V/vec --body-file analysis/<id>-issue.md`.

## Comments

| Comment | File | Content |
|---|---|---|
| Analysis | `analysis/<issue>-analysis-comment.md` | Findings, contradictions, numbered open points with options and recommendation |
| Model summary | `analysis/<id>-closing-comment.md` | The new / changed model texts, quoted (changes in bold where helpful); "will be published with VEC x.y.z"; link to the guideline issue |
| Original issue summary | `analysis/<issue>-closing-comment.md` | Results (answers to the questions of the issue), table of resulting issues, open points with issue numbers |

Command: `gh issue comment <n> --repo prostep-ivip-e-V/vec --body-file analysis/<file>.md`

Links to the wiki use `https://ecad-wiki.prostep.org/specifications/vec/guidelines/<path>/#<anchor>`;
check that the anchor exists. Do not cite commit hashes (they change with a squash merge).

## Commit Messages

File `analysis/<id>-commit-message.md`:

```
<Area>: <short statement> (#<issue>)

<What was done and why, with the original issue numbers and the meeting / decision it is
based on.>

- <page or model element>: <change>
- ...
- Rebuild wiki index            (guideline changes only)

Closes #<issue>
```

No `Co-Authored-By` trailer or any other attribution line. Follow-up commits on the same branch
use the same title pattern and `Refs #<issue>` instead of `Closes`. When the user asks for a
squash commit message, summarise the final state of the branch (not the history).

## Branches

- Branch from the current main without tracking:
  `git fetch origin && git switch --no-track -c <prefix>/<topic>-<issue> origin/main`.
  Prefixes: `wiki/` for guideline changes, `model/` for model changes.
- The user pushes (`git push -u origin <branch>`). A rebased branch that was pushed before needs
  `git push --force-with-lease origin <branch>`.
