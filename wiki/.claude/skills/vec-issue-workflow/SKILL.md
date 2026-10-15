---
name: vec-issue-workflow
description: |
  Use when working on a GitHub issue of the VEC project (prostep-ivip-e-V/vec) from analysis to
  resolution: reading an issue and its discussion, researching affected implementation
  guidelines and model documentation, writing an analysis comment, splitting an issue into model
  and guideline parts, creating issue / comment texts and gh commands, applying guideline changes
  in the wiki, preparing model documentation changes for MagicDraw, writing commit messages, and
  rebasing after a merge. Triggers on "work on issue #…", "analyse issue …", "continue with …",
  "create an issue for …", "write a comment for …", "the branch has been merged".
---

# VEC Issue Workflow

The standard way of working on an issue of the VEC project, from the first analysis to the merged
change. It applies to implementation guideline changes (this wiki) and to model documentation
changes (MagicDraw model `vec/models/vec.mdxml`, edited by hand by the user).

Use the `vec-wiki` skill for the research itself (index, affect analysis, contradiction check,
content conventions).

## Ground Rules

- **No write access to GitHub.** Never create, edit, comment on or close issues, and never push.
  Read-only `gh` calls (`gh issue view`, `gh api …` GET) are fine. For every write, provide a text
  file and the `gh` command; the user runs it. Details: [github.md](github.md).
- **Ask for the issue number** after the user created an issue; it is needed for branches,
  review markers, history entries and commit messages.
- **Commit only when asked** or when the step below says so; never push.
- **Never run `hugo`** (not even `--renderToMemory`): the user runs a dev server and builds
  interfere. Ask the user to check the rendering instead.
- **Working files** (issue bodies, comments, commit messages, analysis notes, model snippets) go
  to `analysis/` in the wiki root and are not committed with the change.
- **Language:** issue texts, comments and commit messages in English, even if the discussion was
  in German.
- **Published vs. development model:** the wiki index is built from the *published* model.
  Changes already made in the *development* model are not in the index. Always check the drift
  for the classes involved (see [Model Drift](#model-drift)).

## Phases

```
1 Intake ─► 2 Research ─► 3 Analysis comment ─► (discussion / VES-WF meeting) ─► 4 Plan ─► 5a Guideline change ─► 6 Wrap-up
                                                                                    └─► 5b Model change ───────┘
```

Steps 1–4 can be skipped when the issue was already analysed and its open points are resolved
(in the issue comments or in the chat).

### 1. Intake

1. Read the issue and **all** comments: `gh issue view <n> --repo prostep-ivip-e-V/vec --comments`.
   Imported Jira issues (`KBLFRM-…`) carry their history in the first comments.
2. Follow linked issues and the decisions referenced there (meeting dates, decision numbers).
3. Note the questions the issue asks — the analysis has to answer each of them.

### 2. Research

1. Rebuild the wiki index if the working tree contains recent guideline changes
   (`vec-wiki` skill, *Rebuilding the index*).
2. Run the model drift check for the classes involved (below) and read the current
   documentation from the development model, not from the published class pages.
3. Affect analysis and contradiction check (`vec-wiki` skill, Workflows 1 and 2). Read the
   candidate pages in full. Classify each page: affected / contradicts / reinforces / adjacent.
4. Check the model documentation (classes, attributes, literals, diagram texts) of the involved
   elements for statements that the change would contradict.
5. Collect the results in `analysis/<issue>-analysis.md`:
   - what the issue asks and what the VEC / the guidelines say today (with quotes and links);
   - affected pages and model elements, contradictions;
   - **open points as numbered decisions**, each with options and a recommendation;
   - proposed changes (guideline and model), without full texts yet.

### 3. Analysis Comment

If there is anything to discuss, condense the analysis into `analysis/<issue>-analysis-comment.md`
and give the `gh issue comment` command. The discussion happens on the issue or in the VES-WF
meeting. When the user reports the decisions, record them (date, decision number, result) in the
analysis file; they are the basis of the *Decision* section of every resulting issue.

### 4. Plan

Decide how the resolution is tracked (see [github.md](github.md#splitting-issues)):

- **Local issue, guideline only or model only:** resolve it in the original issue (rename the
  title if it no longer fits).
- **Model and guideline change:** keep the original issue for the model change (milestone of the
  next VEC release) and create a new issue for the guideline change (guideline milestone).
- **Broad issue touching many topics:** write a workplan (`analysis/workplan-<issues>.md`) with
  one work package per reviewable change (`IG-xx` for guidelines, `M-xx` for the model), each
  with goal, pages / elements, proposed text blocks and review focus. Each package gets its own
  issue; the original issues get a summary comment at the end.

### 5a. Guideline Change

See [guideline-changes.md](guideline-changes.md): branch, edit, review markers, history, index
rebuild, commit message, commit.

### 5b. Model Change

See [model-changes.md](model-changes.md): extract the current documentation, write the proposed
HTML, user pastes it into MagicDraw, cross-check, commit, summary comment.

### 6. Wrap-up

- After the user reports a merge, rebase the branches that are still open onto `origin/main`
  (`git fetch` first) and tell the user which ones need `git push --force-with-lease`.
- For model issues, write the summary comment (the user group cannot review the model before the
  release).
- If the resolution was split into new issues, write a summary comment for each original issue:
  results (answers to its questions), table of the resulting issues, open points with their issue
  numbers.
- Open points that are split off get their own issue (issue text + command as usual).

## Model Drift

The index (`.claude/index/classes.jsonl`) and the class pages under
`content/specifications/vec/v220/` reflect the **published** model. The **development** model
`../vec/models/vec.mdxml` (relative to the wiki root) may already contain changes for the next
release: new classes, attributes and literals, and changed documentation.

```bash
# all differences (classes, attributes, literals, diagrams; added / removed / changed)
.venv/bin/python .claude/tools/model/model_drift.py
# only elements whose qualified name contains the text, with old and new documentation
.venv/bin/python .claude/tools/model/model_drift.py --filter PartStructure --docs
# current documentation (HTML) of single elements from the development model
.venv/bin/python .claude/tools/model/extract_doc.py ../vec/models/vec.mdxml <out-dir> DocumentType::HarnessDescription
```

Take the development model as the reference for what the model says today. A front-matter
`classes:` warning of the index build for a class that exists only in the development model is
expected (see `vec-wiki` skill).

## Files in this Skill

| File | Purpose |
|---|---|
| [github.md](github.md) | Rules for issues, comments, labels, milestones, splitting; templates |
| [guideline-changes.md](guideline-changes.md) | Procedure for implementation guideline changes |
| [model-changes.md](model-changes.md) | Procedure for model documentation changes in MagicDraw |
