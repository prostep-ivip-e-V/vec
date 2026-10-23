# Migration of the ECAD-WIKI to the HugoBlox documentation template

Status: analysis and plan, nothing implemented yet. Analysed 2026-10-23 against
`HugoBlox/kit` commit `68cbf33` (2026-05-27), template `templates/documentation`.

## 1. Summary

* **Is it possible?** Yes. The new HugoBlox Kit is still a Hugo module. The `documentation`
  template is a starter repo that imports `github.com/HugoBlox/kit/modules/blox`. Our site can
  import the same module.
* **What it is in practice:** a re-implementation of the site shell (head, navbar, footer, CSS)
  and of our own `specs` layouts in Tailwind. It is not a content migration. The new module
  shares no templates, partials, CSS classes or JavaScript (jQuery and Bootstrap are gone) with
  `wowchemy-bootstrap/v5`. All 41 files in `layouts/` and `assets/scss/` have to be rewritten or
  dropped.
* **Content stays unchanged (design rule, see §4).** Our pages depend on our own shortcodes and
  front matter (`type: specs`, `menu`/`menu_name`, `classes`, `history`, `review`, …), not on
  Wowchemy features. A compatibility layer with the same shortcode names and signatures, the same
  front matter and CSS shims keeps the ~6150 Markdown pages byte-identical. The exception is the
  9 widget files in `content/home/`, plus possibly the `authors` pages.
* **What we would actually use from HugoBlox:** the page shell, the theme system (Tailwind v4,
  dark mode), the navbar, footer, breadcrumb and TOC components, Pagefind search, and the
  landing-page blocks for the home page. We would **not** use the docs sidebar, because it does
  not fit our per-version menus (§3.3).
* **Rough effort:** 15–25 person-days, plus review. About 60 % of that is the `specs` layout
  family.
* **Do now, independently of the decision:** vendor the current theme modules (§6, Phase 0). The
  current build depends on the frozen `github.com/wowchemy/...` module paths and Hugo 0.120.3.

## 2. Current state (inventory)

| Item | Current |
|---|---|
| Hugo | 0.120.3 extended (`.github/workflows/hugo.yml`, README) |
| Theme | `wowchemy-bootstrap/v5 v5.9.3` + `wowchemy-plugin-reveal` (Go modules, `go.mod`) |
| Content | 6151 `.md`, 924 png, 83 svg, xsd/ttl/mdxml downloads; 6103 pages `type: specs` |
| Generated pages | Class/diagram/package pages per spec version (≈ 300–550 per VEC version), generated from the model report, linked by `menu_name: vec-x.y.z` / `menu: VEC-x.y.z` |
| Custom layouts | 41 files, ~1770 lines templates + ~450 lines SCSS |
| Shortcode use | `relref` 44 056 · `svglink` 9 019 · `info` 5 454 · `vec-class` 1 484 · `svgfigure` 877 · `figure` 203 (numbered ≈ 1 050 incl. svgfigure, `lightbox` 186) · `kbl-class` 108 · `callout` 101 · `deprecated` 99 · `gh-review` 43 · `vec-diagram` 39 · `icon` 7 · `issue` 4 |
| Raw Bootstrap classes in content | 17 files (`float-right`, `float-left`, `w-25`, `w-50`, `pr-3`, `clearfix`) |
| Search | Algolia DocSearch (crawler, facets `lang`, `version:latest`) plus `layouts/index.json` and `algolia-update/` |
| Extra outputs | `printable` output format → `generate-pdf.js` (puppeteer) → guideline PDFs; `_redirects` (Netlify syntax) from `data/redirects.yaml` |
| Home page | Wowchemy widget page `content/home/*.md` (widgets `featured`, `portfolio`, …) |
| Other sections | `news`, `event`, `post`, `groups`, `authors`, `sample` (own `sample/single.html`) |

### 2.1 Custom layouts and their dependency on Wowchemy

| File(s) | Purpose | Wowchemy coupling |
|---|---|---|
| `_default/baseof.html` | Page skeleton | `site_head`, `search`, `site_js`, `wowchemy-init.js`, navbar blocks; **replaced by blox `baseof`** |
| `partials/components/headers/navbar.html` | Navbar with breadcrumb trace | Bootstrap navbar, `wowchemy-core/functions/get_logo` |
| `partials/components/footers/prostep.html` | prostep footer | Bootstrap grid |
| `partials/components/breadcrumb.html`, `hooks/body-end/breadcrumb-trace.html` | Breadcrumb plus "recently visited" trace (cookie) | jQuery-free JS, Bootstrap markup |
| `partials/site_js.html` | Overridden theme JS loader | Entirely Wowchemy-internal; **drop** |
| `specs/{single,list,list.printable,glossary}.html`, `section/specs.html` | Spec page layouts | Bootstrap grid; partials `page_header`, `page_edit`, `comments`, `site_footer`, `tags`, `page_metadata_authors` |
| `partials/specs_sidebar.html`, `specs_section_pager.html`, `specs_printable_content.html` | Menu-driven sidebar, prev/next, single-page print | Bootstrap collapse, `.Scratch` |
| `partials/specs_related.html` | Related content via `classes` index | `RelatedIndices` (check on new Hugo) |
| `partials/specs_metadata.html`, `specs_history.html`, `specs_deprecation.html`, `specs_links.html` | Metadata line, change history, deprecation, links | Bootstrap collapse/badges, Font Awesome |
| `partials/specs_change_history_index.html`, `specs_review_index.html`, `specs_overall_toc.html` | Index tables on section pages | Plain HTML |
| `sample/single.html` | Sample file page | `page_header` |
| `shortcodes/*` (10) | See §4.2 | `info` uses Bootstrap tooltip; alerts use Bootstrap classes |
| `index.json`, `hooks/head-end/docsearch-meta.html` | Algolia | None |
| `hooks/body-end/print-reveal.html`, `custom.html` | Print with lazysizes | jQuery, lazysizes; **drop** (blox has no lazysizes) |

## 3. Target: HugoBlox Kit, `documentation` template

Facts from the template (`templates/documentation`):

* Hugo **0.162.0** extended (`hugoblox.yaml`). Go is still needed for modules. **Node + pnpm** are
  required: Tailwind CSS v4 CLI, `@tailwindcss/typography` and Pagefind (`package.json`).
* Module `github.com/HugoBlox/kit/modules/blox` (pseudo-versions, no tagged releases). MIT
  licensed, © Lore Labs.
* Uses Hugo's new template system (≥ 0.146): `layouts/_partials`, `layouts/_shortcodes`,
  `layouts/_markup`.
* Config: `params.yaml` with a new schema (`hugoblox: schema: "2.0"`, sections `identity`,
  `theme`, `typography`, `header`, `search`, …). Our `params.yaml` must be rewritten; none of the
  old keys carry over.
* Hooks: `functions/get_hook` reads the **project** directory `layouts/_partials/hooks/<hook>/*`
  (`head-start`, `head-end`, `body-end`, `toc-start`, `toc-end`, `footer-start`). Our hooks move
  from `layouts/partials/hooks/` to `layouts/_partials/hooks/`.
* Docs layout `docs_layout.html`: sidebar, TOC, breadcrumb, `.Content`, last edited,
  next-in-series, comments. It renders inside `prose` (Tailwind typography).
* Shortcodes: `callout` (deprecated in favour of `> [!NOTE]` alerts, still works with a warning),
  `icon` (`name` only, no Font Awesome `pack`), `cards`, `steps`, `toc`, `include`, … **No
  `figure` shortcode.** Hugo's built-in `figure` applies, and it has no `numbered`/`lightbox`.
* Render hooks: `render-link` (with a `backlinks` output format), `render-image`,
  `render-blockquote` (alerts), mermaid and markmap code blocks.
* Search: **Pagefind**, built after Hugo (`pagefind --site public`). The layouts carry
  `data-pagefind-body` and filter spans.

### 3.1 Fit analysis

| Our feature | HugoBlox offers | Decision |
|---|---|---|
| Page shell, theming, dark mode, navbar, footer | Yes | Use; configure via `params.yaml`, prostep footer as own footer block |
| Docs sidebar | File-tree sidebar from `.Sections`/`.RegularPages`, max. 4 levels, ordered by weight | **Not usable**, see §3.3; keep our menu-driven sidebar, restyled |
| Page TOC | `components/toc.html` | Use; add our "Related Content" via the `toc-end` hook |
| Breadcrumb | `components/breadcrumb.html` | Use; port the "recently visited" trace as a `body-end` hook if still wanted |
| Prev/next | `next-in-series.html` (section-based) | Keep our menu-based pager |
| Metadata, change history, review badge, deprecation | No | Port (Tailwind, `<details>` instead of Bootstrap collapse) |
| Related content via `classes` | `page_related.html` (tags/categories) | Keep our partial |
| Glossary / class index | No | Port |
| Printable output and PDF | No | Port `printable` layouts; keep `generate-pdf.js` |
| Search | Pagefind | Decide (§5.1) |
| Landing page | Blocks in front matter (`type: landing`, `sections:`) | Rewrite `content/home/*` |
| Blog/news/events/authors | `blog`, `events`, author system | Map to `news`/`event`/`post` via `type`/cascade; check authors (§4.3) |

### 3.2 Hugo 0.120 → 0.162 changes that affect us

* `.Scratch` is deprecated → `.Store` (sidebar, pager, glossary).
* `paginate` → `pagination.pagerSize`.
* Template lookup of the new template system: `type: specs` + `layout: diagram|package|glossary`
  must still resolve to `layouts/specs/*`. Verify in the spike, since `diagram`/`package` have no
  own template and currently fall back to `specs/single.html`.
* `RelatedIndices` in `specs_related.html`: check that it still exists. If not, use
  `.Related (dict "indices" (slice "classes") "document" .)`.
* `relref` and `GetPage` are stricter about ambiguous refs (e.g. `relref "part.md"` across
  versions). The build reports those as errors, so they are visible but may need layout fixes.

### 3.3 Why the HugoBlox sidebar does not fit

* The navigation of each spec version is a **Hugo menu** (`menu: VEC-2.2.0`, `menu_name`). It is
  generated with explicit weights and parent/child structure (class index, key concepts,
  packages). The file tree does not reflect this order.
* The class folders hold up to ~550 pages per version. The blox sidebar would render the
  whole tree of the root section on **every** page. With ~6000 pages under `specifications/` that
  is quadratic build time and huge HTML.
* Our sidebar only expands the active menu branch, which is cheap.

So we keep `specs_sidebar.html` (logic unchanged, markup and Tailwind classes new) and switch it
in via our own `specs` layouts. The blox sidebar is still used for the few non-spec pages, or
disabled.

## 4. Design rule: keep content pages unchanged

Goal: no edits to the ~6150 Markdown pages, the generated model pages, or the generator. This
also keeps `.claude/tools/build_index.py`, the `.claude/index/` files and the `vec-wiki`
skill conventions valid.

### 4.1 Front matter

Keep all keys as they are: `type: specs`, `layout`, `menu`, `menu_name`, `specification`,
`version`, `documentType`, `elementType`, `classes`, `history`, `review`, `links`, `toc`,
`printable`, `specs.*`, `cascade`. Our own layouts read them, so the blox schema does not matter
for these pages. The archetype `archetypes/specs/index.md` stays.

### 4.2 Shortcode compatibility layer

All shortcodes keep their **names and parameters**. They move to `layouts/_shortcodes/` (or stay
in `layouts/shortcodes/`, which still works) and project files take precedence over the module.

| Shortcode | Uses | Action |
|---|---|---|
| `svgfigure`, `svglink` | 877 / 9019 | Markup is plain SVG; keep. Add CSS for figure numbering |
| `vec-class`, `kbl-class`, `vec-diagram`, `issue` | 1484 / 108 / 39 / 4 | No styling; copy unchanged |
| `info` | 5454 | Bootstrap tooltip + Font Awesome icon → inline SVG icon + native `title` (or a small CSS tooltip) |
| `deprecated`, `gh-review`, `review` | 99 / 43 / – | Bootstrap alert → same callout styling as blox (Tailwind) |
| `figure` | 203 | **Own override** of the Wowchemy-compatible signature (`src`, `title`/`caption`, `numbered`, `lightbox`, `class`, `width`, `library`), page-resource lookup and CSS numbering. Lightbox: small JS or `<a href>` to the image |
| `callout` | 101 | Own override with the old syntax (`{{% callout info %}}`), so content keeps working without blox deprecation warnings. Rendered like blox alerts |
| `icon` | 7 | Own override that accepts `pack="far|fas"` and maps to the blox icon set (`file-pdf`, `file-code`) |
| `relref`, `ref`, `highlight` | Hugo built-in | No change |

### 4.3 CSS shims for content

* Figure numbering (`figcaption.numbered`, `data-pre`/`data-post`) as in today's SCSS. This
  matters because the guidelines must not reference figures by number (README).
* The Bootstrap utility classes used in content (`float-right`, `float-left`, `w-25`, `w-50`,
  `pr-3`, `clearfix`, `center`) as a small legacy stylesheet. Tailwind v4 has `float-right`
  and `w-*` with different semantics (`w-25` = 6.25 rem, not 25 %). Define these classes
  explicitly in our CSS with **higher precedence**, or scope them with `.prose`.
* Tables in generated class pages: check `prose` table styling (wide attribute tables, `<p>`
  inside cells).

### 4.4 Unavoidable content changes (small)

* `content/home/*.md` (9 widget files) → one `content/_index.md` with `type: landing` and
  `sections:` blocks (hero, news collection, events, groups). The widget format has no
  equivalent.
* Check `content/authors/*/_index.md`. The template uses `data/authors/*.yaml`. If the old
  `authors` taxonomy pages still render via the module, leave them. Otherwise move 4 author
  profiles.
* `content/groups`, `news`, `event`, `post`, `sample`: keep the folders and set `type` via a
  cascade in `hugo.yaml`, not in the files. `sample/single.html` is ported.

## 5. Decisions needed

### 5.1 Search: Pagefind or Algolia DocSearch

* **Pagefind** (template default): static, no external service, no crawler, no API keys. Builds
  in the CI. Version filtering is possible via `data-pagefind-filter="version:…"` and a "latest"
  flag emitted by our layouts (replacing `docsearch-meta.html`). Index size for ~6000 pages is
  fine (chunked).
* **DocSearch**: keep the existing crawler/index and inject the DocSearch UI via a `head-end` /
  `body-end` hook instead of the blox search modal. It depends on the Algolia programme and
  external config.

Recommendation: Pagefind. Then drop `layouts/index.json`, `algolia-update/`,
`deploy-algolia-index.js`.

### 5.2 Visual design

Default blox look (Tailwind theme pack plus prostep colours/logo) or a closer imitation of
today's layout. Recommendation: blox look with prostep branding. It is less CSS to maintain.

### 5.3 Alternatives to weigh before starting

HugoBlox renamed and restructured itself several times (Academic → Wowchemy → Hugo Blox →
HugoBlox Kit). The kit has no tagged module releases, and `callout` was deprecated within the
new generation. Our dependency on the theme is small (shell plus a few components), because the
heavy parts are our own. So a docs theme with a longer stable track record (e.g. Docsy or
Hextra) would cost about the same and is worth a one-day comparison. This plan assumes
HugoBlox as requested.

## 6. Plan

### Phase 0: Safeguard the current build (0.5 day, independent)

1. `hugo mod vendor` → commit `_vendor/`, so the build no longer needs the frozen
   `github.com/wowchemy/...` module paths from the Go proxy.
2. Remove obsolete GitLab artefacts (`.gitlab-ci.yml`, GitLab sections in README), since the
   site is built by `.github/workflows/hugo.yml`.
3. Side finding, unverified: `_redirects` (Netlify syntax with `200` rewrites for the ontology
   URIs) is not evaluated by GitHub Pages. Check whether `/ontologies/2024/03/vec` resolves on
   the live site.

### Phase 1: Spike (2–3 days)

1. Branch `wiki/hugoblox-migration`, created from `origin/main` with `--no-track`.
2. Add `package.json`, `hugoblox.yaml`, `config/_default/module.yaml` (blox import plus the
   template's mounts) and a new `params.yaml` from the template. Hugo 0.162 locally. Build into a
   separate destination (`hugo -d ../public-next`) to avoid disturbing other running builds.
3. Remove `layouts/_default/baseof.html` and `partials/site_js.html`. Temporarily switch `specs`
   pages to a minimal layout that only renders `.Content`.
4. Goal: the **unchanged content** builds without errors. Collect build time, warnings and
   relref errors. Verify §3.2 (template lookup, `RelatedIndices`).
5. Go/no-go and decisions §5.

### Phase 2: Site shell and config (2–3 days)

* `params.yaml` (identity "ECAD WIKI", organisation prostep ivip, theme light, logo/icon,
  repository edit link `wiki/content` on `main`, footer licence CC BY).
* Menus (`menus.yaml`) unchanged in structure (Archive submenu: check navbar support for
  children).
* prostep footer as a project partial. Breadcrumb trace as a `body-end` hook if still wanted.
* Keep `VEC.*`/`KBL.*` params (`current_version`, `current_classes_url`) as top-level params,
  outside the `hugoblox:` schema.

### Phase 3: `specs` layouts (8–12 days)

* `specs/single.html`, `specs/list.html` → new `specs_layout.html` in Tailwind: own sidebar
  (menu-driven), blox `components/toc.html` plus `specs_related` via the `toc-end` hook or in the
  same column, `prose` content area with `data-pagefind-body`, metadata line, history
  (`<details>`), deprecation, links, index tables, menu pager, last updated, edit link.
* `specs/glossary.html`: letter index and card columns (CSS columns).
* `section/specs.html`, `sample/single.html`.
* `.Scratch` → `.Store`. Font Awesome icons → blox `functions/get_icon`.
* Mobile: sidebar toggle without Bootstrap collapse (small JS or `<details>`).
* Port `_specs.scss` selectors to Tailwind `@apply`/plain CSS in `assets/css/` (blox uses
  Tailwind v4 CSS-first config). Remove SCSS.

### Phase 4: Shortcodes and content shims (2–3 days)

* Port the shortcodes according to §4.2, including the `figure`, `callout` and `icon`
  overrides.
* Legacy CSS according to §4.3.
* Pagefind: filter spans for `specification`/`version`/latest, and `data-pagefind-ignore` on
  sidebar and related blocks.

### Phase 5: Home, news, events, groups (2 days)

* `content/_index.md` as a landing page (the only real content rewrite). Collections for
  `news`/`event`. Groups as cards.
* `type`/cascade for `news`, `event`, `post`, `groups`. Authors (§4.4).

### Phase 6: Outputs and CI (1–2 days)

* `printable` output format and `specs_layout.printable.html`, print CSS. Test
  `generate-pdf.js` (lazysizes is gone, so the print workaround hooks are obsolete; images
  load directly).
* `redirects` output (or replace with Hugo `aliases`/static HTML redirects for GitHub Pages).
* `.github/workflows/hugo.yml`: Hugo 0.162 extended, Go, Node + pnpm (`pnpm install`), `hugo
  --minify`, `pnpm pagefind`, PDF, upload. Drop `dart-sass` if SCSS is gone.
* Disable the blox `backlinks` output if unused. With 44 000 relrefs it costs build time.

### Phase 7: Verification and cut-over (2–3 days)

* **URL parity:** diff the sitemap and page list of the old and new builds. Every URL must
  exist, because class pages are linked externally and from the XSD annotations.
* **Content unchanged:** `git diff --stat main -- wiki/content` shows only `content/home`
  (and `_index.md`/authors if needed).
* Visual review of a fixed sample set: VEC guideline with figures, class page, diagram page
  with `svgfigure` links, glossary, KBL page, release notes, sample page, news, home, printable.
* Link check (e.g. `htmltest` or `lychee`) on the built site.
* Build time comparison (current vs new).
* Update README (build, Hugo version, Node/pnpm), the `vec-wiki` skill references if any
  layout-specific notes change, and archetypes.
* Merge, deploy, check the live site and PDFs.

## 7. Risks

| Risk | Mitigation |
|---|---|
| Blox module changes without releases | Pin the pseudo-version in `go.mod`; vendor; update deliberately via its upgrade action |
| Tailwind `prose` and utility classes collide with legacy content classes | Explicit legacy stylesheet (§4.3), visual review |
| Build time with ~6000 pages plus Tailwind plus Pagefind | Own sidebar (no full tree), disable backlinks, measure in the spike |
| Stricter relref/GetPage resolution in Hugo 0.162 | Errors surface in the spike; fix in layouts/generator, not by hand in pages |
| Generated model pages change shape in future generator runs | The generator output format stays the same (this plan does not change it) |
| HugoBlox direction (commercial focus, CMS/VS Code tooling) | Small coupling surface; alternative themes (§5.3) stay possible |

## 8. Sources

* HugoBlox: https://hugoblox.com/ · Wowchemy users: https://hugoblox.com/wowchemy
* Kit repository: https://github.com/HugoBlox/kit (`templates/documentation`, `modules/blox`)
* Upgrade guide: https://hugoblox.com/docs/hugoblox/guides/upgrade/
