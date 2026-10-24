---
This is the source for the new ECAD-WIKI. The current Wiki can be found under 
https://ecad-wiki.prostep.org . 
---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Build & Deployment](#build--deployment)
  - [Updating the Hugo version](#updating-the-hugo-version)
  - [Updating HugoBlox](#updating-hugoblox)
- [Building locally](#building-locally)
  - [Customizations](#customizations)
- [Create Content](#create-content)
  - [Implementation Guidelines](#implementation-guidelines)
    - [Related content](#related-content)
    - [Creating Diagrams](#creating-diagrams)
    - [Creating Diagrams with Claude Code](#creating-diagrams-with-claude-code)
  - [Migration Cheat Sheat](#migration-cheat-sheat)
    - [Replace WikiLinks (in migrated .md)](#replace-wikilinks-in-migrated-md)
- [Claude Code Index](#claude-code-index)
  - [Rebuilding the index](#rebuilding-the-index)
  - [Reading the build warnings](#reading-the-build-warnings)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Build & Deployment

The site is built with [Hugo](https://gohugo.io) and the [HugoBlox Kit](https://hugoblox.com)
(module `github.com/HugoBlox/kit/modules/blox`, Tailwind CSS v4). Search is provided by
[Pagefind](https://pagefind.app), a static search index built after Hugo.

The site is built and deployed to GitHub Pages by the workflow
[`.github/workflows/hugo.yml`](../.github/workflows/hugo.yml) for every push to `main`
that changes `wiki/**`. The workflow also creates the PDF versions of the implementation
guidelines (`generate-pdf.js`).

### Updating the Hugo version

The Hugo version is defined in `HUGO_VERSION` in the workflow and in `hugoblox.yaml`.
HugoBlox requires Hugo extended >= 0.161.1.

### Updating HugoBlox

The module version is pinned in `go.mod`. Update it with
`hugo mod get github.com/HugoBlox/kit/modules/blox@<commit>` and review the changes, as
some HugoBlox partials are overridden in `layouts/` (see "Customizations" below).

## Building locally

Requirements:

1. [Hugo extended](https://gohugo.io/installation/) v0.162.0 (see `hugoblox.yaml`)
1. [Go](https://go.dev/dl/) (for Hugo modules)
1. [Node.js](https://nodejs.org) >= 22 with `pnpm` (`corepack enable`)

Then:

```shell
pnpm install          # Tailwind CSS & Pagefind
pnpm run search:dev   # once: search index for `hugo server` (static/pagefind/, git-ignored)
hugo server           # preview on http://localhost:1313/
hugo --minify         # build into public/
pnpm run pagefind     # build the search index into public/pagefind/
```

The search uses a static [Pagefind](https://pagefind.app) index. `hugo server` does not create
it, so run `pnpm run search:dev` once (and again after larger content changes) to search
in the local preview. The pnpm scripts call `$HUGO` if set, e.g.
`HUGO=~/.local/opt/hugo/0.162.0/hugo pnpm run search:dev`.

If another project needs a different default Hugo version, install Hugo 0.162.0 into its
own folder and call it with its full path, e.g.

```shell
mkdir -p ~/.local/opt/hugo/0.162.0 && cd ~/.local/opt/hugo/0.162.0
curl -sSLf https://github.com/gohugoio/hugo/releases/download/v0.162.0/hugo_extended_0.162.0_linux-amd64.tar.gz | tar xz hugo
~/.local/opt/hugo/0.162.0/hugo server
```

### Customizations

The complete list of customizations, why they exist, the HugoBlox native alternative and the
housekeeping plan to reduce them is in [HUGOBLOX-MIGRATION.md](HUGOBLOX-MIGRATION.md) (section 10).

The HugoBlox theme is used for the site shell (navbar, footer, home page, news, events).
The specification pages (`type: specs`) use own layouts:

* `layouts/specs/`, `layouts/specifications/specs.html`, `layouts/_partials/specs_*.html`:
  layouts of the specification pages (menu-driven sidebar per specification version,
  metadata, change history, related content, class index, single page printable version).
* `layouts/_shortcodes/`: wiki shortcodes (`vec-class`, `svgfigure`, `info`, …) and
  compatibility shortcodes for content written for the former Wowchemy theme
  (`figure`, `callout`, `icon`, `staticref`). `relref`/`ref` are overridden, so that
  relative references in page bundles (`../sibling`) resolve like in Hugo 0.120.
* `layouts/_partials/views/1.html` … `4.html`: former numeric list views.
* `layouts/_partials/views/article-grid--start.html`: HugoBlox view, fixed to use at most as many
  columns as there are items (home page cards).
* `layouts/_partials/functions/build_links.html`: HugoBlox partial with a bug fix for
  Hugo 0.162 (remove when fixed upstream).
* `assets/css/custom.css`: wiki styles (plain CSS on top of the HugoBlox stylesheet).
* `data/authors/`: author profiles (HugoBlox author system).

## Create Content

### Implementation Guidelines

Create a new implementation guideline page
```shell
hugo new --kind specs specifications/vec/guidelines/awesome-tutorial
```
This creates a content file for the new guideline under 
`content/specifications/vec/guidelines/awesome-tutorial/index.md`

The guideline file created will look similiar to this one:

```markdown
---
title: "Awesome Tutorial"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: []
tags: []
categories: []
date: 2019-11-27T16:57:42+01:00
lastmod: 2019-11-27T16:57:42+01:00
draft: false
review: true

history:
  - date: 2020-10-29T00:00:00Z
    description: "Adapted to structural changes of wires in VEC version 1.2.0"
    issue: "KBLFRM-953"

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    #parent: Example Topic
    weight: 1000

# Prev/next pager order
weight: 1
---

Here we can start with the text.
 <!--more--> 
 And we can split more 

## All sub headings are level 2 or lower
```
Important things to do:
1.  Customize the menu entry, so the new guideline appears at the correct position.
1.  Add a `history` to add a more meaningful changelog than commit comments.
1.  Add `review: true` for guideline changes that require a review.
1.  If it has a long title (shown on top of the page), give it a short 'linktitle' for the side menu.
1.  If it is a long page with subsections, give a toc (`toc: true`)
1.  If want to define the length of the summary add the `<!--more-->` element.
1.  The title is level h1. Give all subheadings level 2 or lower (`##`). 
Otherwise the heading levels will be messed up, when we generate a single page version.
1.  If you use figures (`figure` or `svgfigure` shortcode) do **NOT** reference by number. 
The numbering is done with CSS and if we generate a single page version the will depend on 
the position in the complete document.
1.  Most SVG images are created with [draw.io](https://draw.io). See below.

#### Related content

Implementation Guidelines, Recommendation Chapters and Classes are automatically cross-referenced. 
This is done via the following frontmatter definitions:
```markdown
---
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - AbstractSlotReference
---
```
Cross-reference are created for all `specs` that share the following attributes:

* `specification`: Either `VEC` or `KBL`
* `version`: The version of the spec (can be be omitted), see later.
* `classes`: documents with shared classes are cross-referenced. More shared classes rank higher.
* `documentType` & `elementType` are only used for showing the links in the correct categories.

The behaviour for the link algorithm is the follwoing (corresponds to `documentType`): 

**Guideline**: The values for `specification` and `documentType` are defined in the `_index.md` and 
cascaded to all subordinate guidelines. The `elementType` is not used. The `version`-attribute is omitted 
and the configuration value from `config/_default/params.yaml` is used. E.g:
```yaml
VEC:
  current_version: "2.2.0"
```
So Guidelines always link to most recent recommendation documents.

**Recommendation**: All values are generated from the model report. Every class page mentions "itself". 
Every diagram references all classes shown on the diagram. The version is defined when generating the 
report. As a result, a class relates to all diagrams where it is represented (but only in the same version
of the recommendation) and vice versa. 

#### Creating Diagrams

Visio like Diagrams can be created as SVG via [draw.io](https://draw.io). The WEB editor 
supports gitlab.com as backend for storage, so can load & save directly from a gitlab branch.

#### Creating Diagrams with Claude Code

[Claude Code](https://claude.com/claude-code) can generate draw.io diagrams with the
[draw.io plugin](https://github.com/jgraph/drawio-mcp). The plugin is enabled for this
project in `.claude/settings.json`; register its marketplace once per machine:

```
/plugin marketplace add jgraph/drawio-mcp
/plugin install drawio@drawio
```

Then describe the diagram and the output format, for example:

```
/drawio:drawio create an illustration format SVG for the issue in analysis/ig-02-issue.md
/drawio:drawio png class diagram of ConnectorHousingSpecification, Slot and Cavity
```

Without a format, the result is a plain `.drawio` file. Exported files use a double extension
(`name.drawio.svg`, `name.drawio.png`, `name.drawio.pdf`) and contain the diagram itself, so
they can be opened and edited again in draw.io.

Exporting to SVG, PNG or PDF requires the [draw.io desktop app](https://www.drawio.com/)
(it provides the command line used for export and layout). Without it, the plugin can only
produce `.drawio` files or a link that opens the diagram in the web editor.

Under WSL it is sufficient to install the desktop app on **Windows**; the plugin finds it in
the default install location (`C:\Program Files\draw.io`). A separate Linux installation
inside WSL is not needed.

SVGs exported by draw.io embed a raster fallback for every formatted label, so they are
larger than expected (around 1 MB for a medium diagram). Browsers do not use the fallback.

### Migration Cheat Sheat

Best Practice is:

1. Create a new guideline page using the hugo cli (see below).
2. Adjust the metadata in frontmatter. This includes creation and lastmodified date from dokuwiki and the menue position.
3. Paste the content of the (migrated) dokuiwiki page.
4. From top down, replace:
   1. All class references with {{< vec-class >}}.
   2. All intrawiki links with relref links. If the target does not exist yet, create a dummy page at the 
   destination and add a:
```markdown
{{% callout warning %}}
This is currently only a dummy to make the links working.
{{% /callout %}}   
```
   3. All images with the {{< figure >}}
   4. All code sections with ````xml`
   5. 

#### Replace WikiLinks (in migrated .md)

The DokuWIKI to Hugo conversion gives Guidelines with class links like:
```
[HousingComponent]({{< relref "/models/vec_v1_1_3/classes/housingcomponent.md" >}})
```
In VS Code these can be replaced to correct links with a regex. The search term is:
```
\[\w*\]\(\{\{< relref "/models/vec_v1_1_3/classes/(\w*)\.md" >\}\}\)
```
the replacement term is:
```
{{< vec-class "$1" >}}
```


## Claude Code Index

The `.claude/` directory holds tooling for [Claude Code](https://claude.com/claude-code):
the `vec-wiki` skill (`.claude/skills/vec-wiki/`) and the JSONL indices it queries
(`.claude/index/`). The indices let the assistant answer "which pages does this change
affect?" and "does this rule contradict an existing guideline?" without grepping the whole
wiki.

The five index files are generated artefacts, but they are **committed to the repository**
so that the skill works on a fresh clone without a Python setup:

| File | Contents |
|---|---|
| `classes.jsonl` | VEC classes and enumerations parsed from `vec-2.2.0.mdxml` |
| `pages.jsonl` | Every markdown page under `content/specifications/vec/` |
| `concepts.jsonl` | Inverted index: class → pages that mention it |
| `relations.jsonl` | Typed class ↔ page and class → class edges |
| `guidelines.jsonl` | Normative statements extracted via RFC 2119 keywords |

### Rebuilding the index

Rebuild whenever you add, remove or rename a guideline page, change a page's `classes:`
front matter, add or reword a normative (MUST/SHALL/SHOULD/MAY) statement, or import a new
model version. Content-only edits that touch none of these do not need a rebuild.

The build script needs Python 3.10+ and three third-party packages, which are generally not
installed system-wide. Use a virtual environment:

```bash
python3 -m venv .venv
.venv/bin/pip install -r .claude/tools/requirements.txt
```

Then run the builder **from the wiki root** — it resolves the model and content paths
relative to the current directory:

```bash
.venv/bin/python .claude/tools/build_index.py
```

`.venv/` is git-ignored. The script overwrites all five files in `.claude/index/` and prints
a per-file record count; review `git diff --stat -- .claude/index` and commit the result
together with the content change that caused it.

Useful options:

```bash
# build against a different model version
.venv/bin/python .claude/tools/build_index.py --xmi content/specifications/vec/v210/vec-2.1.0.mdxml

# run from outside the wiki root
.venv/bin/python .claude/tools/build_index.py --wiki-root /path/to/wiki
```

### Reading the build warnings

Phase 2 prints a warning for every name in a page's `classes:` front matter that does not
resolve to an element in the indexed model:

```
WARNING: front-matter classes not in the VEC model: GrippingFeature
```

This has two possible causes, and they need opposite responses:

- **A typo or a renamed class** — fix the front matter. An unresolved name is silently
  dropped from `concepts.jsonl`, so the page becomes invisible to affect analysis.
- **A class from a VEC version newer than the indexed model** — expected, and nothing to
  fix. `GrippingFeature` is a VEC 2.3 class while the index is built from `vec-2.2.0.mdxml`,
  so it cannot resolve. Be aware that the page is not reachable through `concepts.jsonl`
  for that class until the index is rebuilt against a model that contains it; plain `grep`
  over `content/` still finds it.

Phase 1 also lists the elements with no generated class page (diagram legends and report
helpers, excluded from the derived indices) and the classes carrying a `deprecated` marker.
Both lists are informational.

[hugo]: https://gohugo.io
[install]: https://gohugo.io/installation/
[documentation]: https://gohugo.io/documentation/
