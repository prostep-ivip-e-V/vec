# Model Documentation Changes

The model is maintained in MagicDraw. The development model is `vec/models/vec.mdxml` in the
repository root (`../vec/models/vec.mdxml` from the wiki root). **The user applies all changes by
hand in MagicDraw**; Claude prepares the texts, checks the result and commits.

The tools are in `.claude/tools/model/` and are run from the wiki root with `.venv/bin/python`.

## Procedure

1. **Issue.** Write `analysis/<id>-issue.md` and the `gh issue create` command with label `VEC`
   and the milestone of the next VEC release; ask for the issue number.
2. **Branch.** `git fetch origin && git switch --no-track -c model/<topic>-<issue> origin/main`.
   Check that `vec/models/vec.mdxml` has no uncommitted changes before branching.
3. **Extract the current documentation** of every affected element:

   ```bash
   .venv/bin/python .claude/tools/model/extract_doc.py ../vec/models/vec.mdxml analysis/model/<id> \
     DocumentType DocumentType::HarnessDescription "Composite Part Descriptions::Instantiation Approaches"
   ```

   A qualified name is the end of the element's name path, separated by `::` (classes,
   attributes, literals, diagrams). The tool writes `<element>.current.html` and a name index
   `qnames.json`. A new element (e.g. a new literal) gets an empty `.current.html` frame by hand.
4. **Write the proposal** in `analysis/model/<id>/proposed.py`
   (`PROPOSED = {'<file name>': ['<paragraph html>', …]}`) and generate the
   `<element>.proposed.html` files:

   ```bash
   .venv/bin/python .claude/tools/model/make_proposed.py analysis/model/<id>/proposed.py analysis/model/<id>
   ```

   The generator keeps the HTML frame of the current file, so that the VS Code diff of
   `.current.html` and `.proposed.html` shows the text changes only. Rules for the text:
   - VEC class names and other model element names in italic (`<i>…</i>`);
   - association and attribute names as in the model (e.g. `instanciatedOccurrence`,
     `subComponent`) — check the spelling in the `.mdxml`;
   - same wording as the corresponding implementation guideline;
   - keep unchanged paragraphs verbatim (including `&#160;` and existing formatting).
5. **User review and edit.** The user compares the files in VS Code and pastes the HTML into the
   MagicDraw rich text editor, then saves the model.
6. **Cross-check** after the user saved:

   ```bash
   .venv/bin/python .claude/tools/model/check_doc.py ../vec/models/vec.mdxml analysis/model/<id>
   ```

   It compares each proposal with the model paragraph by paragraph (whitespace and entities are
   normalised, HTML tags such as `<i>` are compared). Report every `DIFF`. If a text is missing
   completely, check the save time of the `.mdxml` and search the file for a phrase of the new
   text — a missing save or the wrong element is the usual cause. For new elements, also check
   that they exist (and their order).
7. **Commit** `vec/models/vec.mdxml` (and new images) with the message from
   `analysis/<id>-commit-message.md` when the user asks. MagicDraw re-serialises the whole file,
   so the diff is large; this is expected. Make sure no `vec.mdxml.bak` is committed.
8. **Summary comment** `analysis/<id>-closing-comment.md` with the new texts and the
   `gh issue comment` command (the user group cannot review the model before the release).

## Diagram Images

Images embedded in model diagrams are kept with their sources in `vec/models/images/`:

- draw.io source as native SVG (`<name>.svg`, exported with `-e --theme light`, PNG fallbacks
  stripped) — editable in draw.io;
- PNG for MagicDraw (`<name>.png`, exported with `-e` so it stays editable), because MagicDraw
  cannot insert SVGs.

If the source of an existing image is lost, redraw it from the rendered image in the wiki
(`content/specifications/vec/v220/<package>/<diagram>/<diagram>.png`) and adapt it to the changed
text.
