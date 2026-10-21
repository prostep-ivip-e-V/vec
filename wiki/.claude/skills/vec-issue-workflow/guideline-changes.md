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
- **XML examples** are scripted with the VEC scripting API of the harness-model project, never
  written by hand: see [XML Examples](#xml-examples).
- **Classes newer than the published model** (development model only, see *Model Drift* in
  [SKILL.md](SKILL.md#model-drift)): mention the VEC version that standardises them (e.g. a
  callout "standardised from VEC 2.3.0").
- **Cross-references** with `relref` (`"../#anchor"` for the parent page); class links with
  `{{< vec-class Name >}}`.
- **Consistency with the model documentation:** guideline and model must use the same wording for
  the same rule. If the guideline change implies a model documentation change, plan a model
  package with the same wording.

## XML Examples

XML examples are created with the VEC scripting API (`vec/vec-scripting`, experimental) of the
harness-model project (`git@github.com:4Soft-de/harness-model.git`). It provides reusable building
blocks, consistent IDs and references, and schema validation. The complete file is offered as a
download on the guideline page; the page shows excerpts of it.

1. Clone harness-model into `harness-model/` in the wiki root (excluded locally via
   `../.git/info/exclude`: `/wiki/harness-model/`). Read its `CLAUDE.md` (build, license headers).
2. Branch off `develop` in harness-model (`feature/…`). Extend the scripting API where needed,
   staying within its builder pattern (`Builder`, `Customizer`, identification-based locators).
3. Add a test under `vec/vec-scripting/src/test/java/com/foursoft/harness/vec/files/guidelines/`
   (pattern: `WireTest`, `EeComponentWithPigtailTest`) that writes
   `target/samples/ecad-wiki-guideline-<topic>.vec` and validates it. Run the module tests
   (`./mvnw -o -pl vec/vec-scripting test`).
4. Copy the `.vec` file into the page bundle and add it to the `links:` front matter
   (`icon_pack: fas`, `icon: file-code`). Point to the download in the text.
5. Take the excerpts from the generated file (unchanged lines, omissions as `...`); check that
   every excerpt line occurs in the file.
6. Commit in harness-model on the feature branch; the user pushes and opens the PR.

## Diagrams

- Diagrams in the wiki are **native draw.io SVGs** (editable in draw.io, use the /drawio:drawio 
  skill for this): extract the embedded `mxfile` (base64, deflateRaw, URL-encoded) with node, 
  edit the XML, export with the draw.io CLI (`"/mnt/c/Program Files/draw.io/draw.io.exe" -x -f svg -e --theme light`, 
  Windows paths via `wslpath -w`), and strip the `<image … data:image/png;base64…>` fallbacks after
  `</foreignObject>`.
- Check the result by exporting a PNG to a scratch directory and looking at it.
