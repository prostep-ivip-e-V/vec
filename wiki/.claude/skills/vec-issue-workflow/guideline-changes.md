# Implementation Guideline Changes

Applies to the wiki content under `content/specifications/vec/guidelines/`. Use the `vec-wiki`
skill for the content conventions. The class and diagram pages under
`content/specifications/vec/v*/` are generated from the model and are never edited here.

## Procedure

1. **Issue.** Write `analysis/<id>-issue.md` and the `gh issue create` command (label
   `VEC implementation guidelines`, guideline milestone); ask for the issue number. Skip if the
   original issue is used.
2. **Branch.** `git fetch origin && git switch --no-track -c wiki/<topic>-<issue> origin/main`.
3. **Edit.** Apply the changes. For every changed page:
   - `review: true` in the front matter;
   - `{{< gh-review "<issue>" >}}` directly below the heading of every changed section, followed
     by a blank line. A marker at a section heading covers its subsections. Changes in the front
     matter only (`classes`, `history`) need no marker. Existing markers of other issues stay; add
     the new one below them;
   - a history entry with `ghIssue: "<issue>"` and today's date;
   - `classes:` front matter updated for the classes the page now discusses.
4. **Rebuild the index** from the wiki root: `.venv/bin/python .claude/tools/build_index.py`.
   The index files go into the same commit.
5. **Commit** with the message from `analysis/<id>-commit-message.md` (see
   [github.md](github.md#commit-messages)). Follow-up changes after review: separate commits with
   `Refs #<issue>`.
6. Ask the user to push and to check the rendering in the running dev server.

## Content Checks

- **Never run `hugo`.** Verify links and anchors by reading the target page / heading; ask the
  user to check the rendering.
- **Line endings:** some pages use CRLF (e.g. `product-definition/component-description/index.md`,
  `elog-layers/coupling-devices/index.md`). Preserve them: check with `file <page>`; in scripts
  read and write with `newline=''`.
- **XML examples** must be valid against the schema of the referenced version
  (`content/specifications/vec/v220/vec_2.2.0.xsd`): validate with `.venv/bin/python` + `lxml`.
  Root `<vec:VecContent xmlns:vec="http://www.prostep.org/ecad-if/2011/vec" id="…">` with
  `<VecVersion>`; children are unqualified; `DocumentVersion`s before `PartVersion`s.
- **Classes newer than the published model** (development model only, see *Model Drift* in
  [SKILL.md](SKILL.md#model-drift)): mention the VEC version that standardises them (e.g. a
  callout "standardised from VEC 2.3.0").
- **Cross-references** with `relref` (`"../#anchor"` for the parent page); class links with
  `{{< vec-class Name >}}`.
- **Consistency with the model documentation:** guideline and model must use the same wording for
  the same rule. If the guideline change implies a model documentation change, plan a model
  package with the same wording.

## Diagrams

- Diagrams in the wiki are **native draw.io SVGs** (editable in draw.io, use the /drawio:drawio 
  skill for this): extract the embedded `mxfile` (base64, deflateRaw, URL-encoded) with node, 
  edit the XML, export with the draw.io CLI (`"/mnt/c/Program Files/draw.io/draw.io.exe" -x -f svg -e --theme light`, 
  Windows paths via `wslpath -w`), and strip the `<image … data:image/png;base64…>` fallbacks after
  `</foreignObject>`.
- Check the result by exporting a PNG to a scratch directory and looking at it.
