# VEC Wiki Content Conventions

This file documents the house style so that authored content matches what is
already in the repository. All observations are based on the actual pages in
`content/specifications/vec/`.

---

## Front matter required fields

Every guideline page under `content/specifications/vec/guidelines/` uses:

```yaml
---
title: "Human-Readable Title"
linktitle: "Short Menu Label"   # optional, defaults to title
type: specs
toc: true                        # enable right-side table of contents for long pages
authors: [becker]                # contributor list
categories: []
date: YYYY-MM-DD
lastmod: YYYY-MM-DDThh:mm:ss+TZ
draft: false
review: true                     # present and true when the page is under review

history:
  - date: YYYY-MM-DD
    description: "What changed"
    issue: "KBLFRM-NNN"          # legacy Jira issue
    # OR:
    ghIssue: "NNN"               # GitHub issue number (as string)

classes:                         # VEC class names this page is authoritative about
  - ClassName
  - AnotherClass

menu:
  vec-guidelines:
    parent: <area-identifier>    # e.g. key-concepts, general, ee-components
    weight: NNNNN
weight: NNNNN
---
```

**The `classes:` field** is the primary mechanism for cross-linking.  Every class
listed here will appear in the page's "Related Classes" sidebar and will be
indexed in the VEC knowledge indices.  List a class if and only if the page
contains authoritative guidance about it.

---

## The `vec-class` shortcode

Use `{{< vec-class ClassName >}}` (angle-bracket form) for **every first
occurrence** of a VEC class name on a page.  Subsequent occurrences in the same
section may be plain text or use the shortcode again for clarity.

The class name is **case-insensitive** in the shortcode (the template resolves
it by slug), but use the canonical PascalCase name for readability:

```markdown
The {{< vec-class DocumentVersion >}} is the container for payload information.
```

**Do not** use the percent-brace form `{{% vec-class %}}…{{% /vec-class %}}`.

The `kbl-class` shortcode follows the same convention for KBL classes.

---

## Other shortcodes in use

| Shortcode | Purpose | Example |
|---|---|---|
| `{{< vec-class Name >}}` | Link to a VEC class page | `{{< vec-class WireSpecification >}}` |
| `{{< kbl-class Name >}}` | Link to a KBL class page | `{{< kbl-class External_reference >}}` |
| `{{< figure src="…" title="…" numbered="true" lightbox="true" >}}` | Embedded figure | |
| `{{< figure … class="float-right" width="400" >}}` | Float-right figure | |
| `{{% callout note %}} … {{% /callout %}}` | Highlighted note box | |
| `{{% callout warning %}} … {{% /callout %}}` | Warning box | |
| `{{< gh-review "NNN" >}}` | Link to a GitHub review issue | |
| `{{< relref "relative/path" >}}` | Internal link | `{{< relref "../../general/xml-xsd" >}}` |

---

## Change History table

The change history lives in the **front matter** as a `history:` list, not as a
Markdown table in the body:

```yaml
history:
  - date: 2024-03-15
    description: "Initial version"
    issue: "KBLFRM-996"
  - date: 2025-01-28
    description: "Added section on mixed sources"
    ghIssue: "956"
```

Use `issue:` for legacy JIRA keys (format `KBLFRM-NNN`), `ghIssue:` for GitHub
issue numbers.  The date format is `YYYY-MM-DD`.

---

## Status markers

| Front-matter field | Meaning |
|---|---|
| `draft: true` | Page is a draft, not published |
| `review: true` | Page is under review (shows a review banner) |
| (neither) | Page is stable / published |

---

## Section heading conventions

Guidelines follow this rough structure:

1. **Introduction** paragraph (no heading) — what the guideline is about.
2. `## Fundamentals` — background concepts the reader needs.
3. `## <Topic>` — one or more specific topic sections.
4. `### <Subtopic>` — deeper sections within a topic.

Headings use Title Case for top-level (`##`) and sentence case or Title Case for
sub-sections (`###`).  Avoid deeply nested headings (`####`+).

Common section names: *Fundamentals*, *Requirements*, *Solution*, *Types of …*,
*Usage of …*, *Constraints*, *Examples*.

---

## When to create a new page vs. extend an existing one

- If the new content can be summarised in **two paragraphs or fewer** AND it
  belongs cleanly inside an existing area (e.g. `key-concepts`, `general`) →
  add a new `###` section to the best-fit page.
- If the content requires **three or more sections** of its own OR the topic is
  distinct enough to deserve its own URL/citation → create a new page under the
  appropriate area directory.
- When in doubt, prefer extending an existing page.  New pages are harder to
  discover.

---

## Page file layout

Each guideline page lives in its own subdirectory with an `index.md` file:

```
content/specifications/vec/guidelines/<area>/<topic>/index.md
```

Any supporting SVG/PNG figures go in the **same directory** as `index.md`.
