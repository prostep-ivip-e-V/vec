# Cross-Reference Conventions for the VEC Wiki

This file documents the linking model so that authored content is consistent
with what is already in the repository.

---

## Class references in body text

Use `{{< vec-class ClassName >}}` for **every first occurrence** of a VEC class
name within a page.  For subsequent occurrences in the **same section** you may
use plain text, but using the shortcode again is never wrong.

```markdown
The {{< vec-class DocumentVersion >}} is the container for payload information.
Later in the same section, the DocumentVersion can also contain…
```

The class name in the shortcode is case-insensitive (the template resolves it
to the page slug), but use PascalCase by convention.

---

## Front matter `classes:` field

When a guideline page introduces or discusses **normative rules** about a VEC
class, that class **must** appear in the page's `classes:` front-matter list.
This is what drives the auto-generated "Related Content" sidebar on the class
page.

Rule of thumb: if you write a sentence containing a normative keyword
(MUST/SHALL/SHOULD) and name a class, that class belongs in `classes:`.

```yaml
classes:
  - DocumentVersion
  - DocumentType
```

---

## Linking to other guideline pages

Use `{{< relref "…" >}}` with an **absolute path from the content root** for
links to other wiki pages:

```markdown
See [General Structure]({{< relref "/specifications/vec/guidelines/key-concepts/general-structure" >}})
```

Or a relative path from the current page:

```markdown
See [XML/XSD Representation]({{< relref "../../general/xml-xsd" >}})
```

**Use absolute URL paths in `linked_pages`** (from the index) but relative
`relref` paths in the markdown.  Both resolve to stable URLs.

Do not link to class attribute anchors (e.g. `/specifications/vec/v220/classes/documentversion/#documentnumber`) — these anchors are regenerated from the XMI and may change.  Link to the class page itself.

---

## Linking to class pages

The stable URL for a class page is `/specifications/vec/v220/classes/{classname}/`
where `{classname}` is the class name in lowercase (e.g. `documentversion`).
Always use the shortcode rather than a raw markdown link for class references:

```markdown
# Good — use shortcode
{{< vec-class DocumentVersion >}}

# Avoid — raw links to class pages break when URL scheme changes
[DocumentVersion](/specifications/vec/v220/classes/documentversion/)
```

---

## Consistency check

A page is considered **consistent** if every class mentioned via `{{< vec-class >}}`
in the body also appears in the front matter `classes:` list.

You can detect inconsistencies with:

```bash
jq -c 'select(
  (.linked_classes_inline | length) > 0 and
  ((.linked_classes_inline - .linked_classes_frontmatter) | length) > 0
) | {url, missing: (.linked_classes_inline - .linked_classes_frontmatter)}' \
  .claude/index/pages.jsonl
```

---

## Class pages are read-only

Class pages under `content/specifications/vec/v220/classes/` are **generated
from the XMI model** and must not be hand-edited.  Any edits would be
overwritten by the next XMI regeneration run.

All authoritative guidance must go into:
- `content/specifications/vec/guidelines/` — implementation guidelines
- `content/specifications/vec/v220/` (non-class pages) — model prose chapters
