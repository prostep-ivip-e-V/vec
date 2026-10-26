# Migration of the ECAD-WIKI to the HugoBlox documentation template

Status: **implemented** on branch `wiki/hugoblox-migration` (see §9), not merged yet.
Analysed 2026-10-23 against `HugoBlox/kit` commit `68cbf33` (2026-05-27), template
`templates/documentation`; implemented against module `blox@v0.0.0-20260527025321-61f41d3667f1`.

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

## 9. Implementation status (2026-10-23)

Implemented on branch `wiki/hugoblox-migration`, built with Hugo 0.162.0 extended.

### 9.1 Verification

| Check | Result |
|---|---|
| Build | 7821 pages, ~35 s (old: 86 s), no errors |
| URL parity (old vs new build) | All page URLs exist. Differences: taxonomy paginator pages (`/classes/<x>/page/N/`), resized image file names, `V112` files (see 9.2) |
| Links inside the content of 6188 pages (old vs new) | Identical, except list pages that render summaries differently (`/news/`: one link) |
| Internal link check over the whole new site (607 000 links) | No new broken links; the remaining ones existed before (PDFs created in CI, `doku.php`, some missing guideline downloads) |
| Visual review (desktop 1280/1440, mobile 390) | Home, spec version, guideline, class, diagram, class index, section list, news, event, sample, search, mobile menu |
| Printable version / PDF | Same structure (9 sections, 41 sub-sections); `generate-pdf.js` works. 248 instead of 132 pages, because the old PDF was scaled down to approx. 6 pt text |
| Search (Pagefind) | 922 pages (current versions only, like the DocSearch `version:latest` filter), filter VEC/KBL |
| `.claude/index` | Unchanged after `build_index.py` |

### 9.2 Content changes (all others unchanged)

* `content/home/*` replaced by `content/_index.md` (HugoBlox landing page).
* Duplicate front matter keys removed (rejected by the YAML parser of Hugo 0.162; the old
  parser used the last value, so the meaning is unchanged): `ee-components/internal-connectivity`
  (`classes`), `elog-layers/wiring` (`toc`), `publication-process` (`date`).
* `kbl/v22/_index.md`: `headless: true` removed. Hugo 0.120 ignored it for sections; Hugo 0.162
  would no longer render the page.
* `vec/V112/*` moved to `vec/v112/`. The v112 page links these files relatively; on the live
  site these links are broken (`/specifications/vec/v112/vec-1.1.2-ontology.ttl` is 404), only
  `/specifications/vec/V112/…` works. After the move the linked URLs work and the `V112` URLs are gone.

### 9.3 Findings beyond the plan

* Hugo ≥ 0.123 resolves relative `relref`s in leaf bundles from the parent directory
  (76 links in guidelines). Solved with overridden `relref`/`ref` shortcodes (bundle-relative first).
* `layouts/section/specs.html` is not found by the new template lookup → `layouts/specifications/specs.html`.
* HugoBlox bug with Hugo 0.162 in `functions/build_links.html` (nil map) → overridden partial.
* HugoBlox `card` view is single column; the home page uses `article-grid`.
* Not changed (also broken on the live site): the `/ontologies/…` rewrites in `data/redirects.yaml`
  use Netlify `_redirects` syntax, which GitHub Pages ignores.

### 9.4 Open points before merging

* Review by the team (look & feel, home page content).
* Run the GitHub workflow once (e.g. via `workflow_dispatch` on the branch or a test repository).
* Decide on the ontology URLs (`/ontologies/2024/03/vec…`), see 9.3.
* Author photos: the old site loaded them from Gravatar (no Gravatar support in HugoBlox). The
  current Gravatar images were stored once in `assets/media/authors/` (becker, steinbuechler,
  ungerer; fehlmann has no Gravatar image → placeholder). Confirm with the persons that their
  photos may be stored in the public repository.
* Legal pages: Imprint, Privacy Statement and Legal Notice are linked in the footer of every page
  (HugoBlox `footer` menu in `config/_default/menus.yaml`, no override). Have the privacy statement
  reviewed for the new setup: the new pages load no third-party resources any more (the old site
  loaded Google Fonts, jsDelivr/cdnjs and Gravatar), use no cookies (only `localStorage` for HugoBlox
  UI settings) and the cookie banner of the old site is gone.


## 10. Customizations and housekeeping after go-live

Inventory of everything that differs from a plain HugoBlox documentation site (state of branch
`wiki/hugoblox-migration`). Goal after go-live: remove group A and B items, reduce group C and D.

Legend for the effort: **content** = number of content places that need a (mostly scriptable)
change to drop the customization.

### 10.1 Group A: compatibility shims, exist only to keep `content/` unchanged

| # | Customization (file) | Why it exists | HugoBlox / Hugo native alternative | Effort to remove |
|---|---|---|---|---|
| A1 | `relref`/`ref` shortcode override + `functions/ecad_ref.html`; used by `svglink` | Hugo ≥ 0.123 resolves relative refs in leaf bundles (`…/page/index.md`) from the parent directory; the content was written for the old behaviour (bundle directory). 76 refs broke | Built-in `relref`/`ref` with paths that are valid for Hugo ≥ 0.123: either absolute (`/specifications/vec/guidelines/key-concepts/general-structure`) or relative to the parent directory | content: 165 relative refs in 43 bundles (all relative refs in leaf bundles should be checked, 76 actually differ). Scriptable: resolve each ref with the override, write the absolute path, compare the build (link diff, §9.1) |
| A2 | `figure` shortcode (port of the Wowchemy shortcode) | 201 uses with Wowchemy parameters `title`, `numbered`, `lightbox`, `class`, `width`; HugoBlox has no `figure` shortcode, Hugo's built-in `figure` has no numbering/lightbox | Markdown image `![alt](file.svg "Caption")` with the HugoBlox image render hook (caption, zoom attribute); or Hugo's built-in `figure` (`caption`, `class`, `width`). Numbering stays CSS | content: 201 uses in 46 files. Floating figures (`class="float-right w-25"`) have no Markdown equivalent → keep `figure` for those or define a small own shortcode |
| A3 | `callout` shortcode | 100 uses of `{{% callout note/info/warning %}}`; the HugoBlox `callout` is deprecated, logs a warning and adds a title | GitHub alert syntax `> [!NOTE]` / `> [!WARNING]` (HugoBlox blockquote render hook) | content: 100 uses in 47 files, scriptable. Note: `info` → `[!NOTE]`, the look changes slightly (title line) |
| A4 | `icon` shortcode | Wowchemy signature with Font Awesome names and `pack` | HugoBlox `icon` shortcode with HugoBlox icon names (`name="hero/document-text"`) | content: 7 uses in 4 files |
| A5 | `staticref` shortcode | Wowchemy shortcode, not in HugoBlox | Markdown link `[text](/specifications/…/file.xsd)` | content: 1 use |
| A6 | `views/1…4.html` (numeric list views) | `view: 2`/`view: 3` in `post/_index.md`, `sample/_index.md` (Wowchemy numbers) | Named views (`view: card`, `date-title-summary`, …) | content: 2 files (+ 12 tiny layout files deleted) |
| A7 | Legacy Bootstrap classes in `custom.css` (`.w-25`, `.float-right`, `.pr-3`, `.clearfix`, …) | Raw `class="…"` in 19 content files; Tailwind's `w-25` has another meaning (6.25 rem instead of 25 %) | Tailwind classes in content (`w-1/4`, `float-right`, `pr-4`) or no layout classes in content at all | content: 19 files |
| A8 | Font Awesome → HugoBlox icon mapping (`functions/ecad_icon_name.html`, used by `specs_link_icon.html`, the `icon` shortcode and `build_links.html`) | Front matter `links` use Font Awesome names (`file-pdf`, `circle-nodes`, …); HugoBlox would print unknown names as text ("FILE-PDF") | HugoBlox icon names in front matter (`icon: hero/document-text`) | content: `links` in ~30 `_index.md` files (+ generator template, if the model report writes them) |
| A9 | `build_links.html` second fix (legacy `url_pdf` path resolved by file name) | `content/event/2020-03-vec-webinar` has a wrong `url_pdf` path that Wowchemy tolerated | Front matter `links: [{type: pdf, url: 2020-03-VEC-Webinar.pdf}]` | content: 3 files with `url_*`/`external_link` (also removes 4 deprecation warnings) |
| A10 | `data/authors/*.yaml` (profile data migrated from `content/authors/*/_index.md`: name, role, affiliations, short bio, links, interests, education, user groups) | HugoBlox reads author profiles from `data/authors/`, Wowchemy from the content pages; the content pages stay unchanged, so the data is duplicated | Only `data/authors/` (HugoBlox author system). The long description (body of `_index.md`) has no data field except `bio`, which is also shown in the author card below posts | content: 4 author folders → reduce `content/authors/*/_index.md` to the body text (or move it into `bio` and accept the longer author cards). |
| A11 | `layouts/specifications/specs.html` (section list for `layout: specs`) | `specifications/vec/_index.md` and `kbl/_index.md` use `layout: specs` (former `layouts/section/specs.html`) | HugoBlox landing page (`type: landing`, `collection` block) or the standard list layout | content: 2 files. Note: the list shows the `links` of each version — needs a replacement (e.g. cards with links), so this is a design decision |
| A12 | `layouts/authors/term.html` (copy of the HugoBlox author page) | Shows what the former author pages showed: long description (body of `content/authors/<slug>/_index.md`), interests, education, and "Latest" as a compact list of all pages (HugoBlox: big cards, paginated → new `/authors/<slug>/page/N/` URLs) | HugoBlox author page (`bio` only, no interests/education, card list) | Drop together with A10 if the HugoBlox author page is acceptable |

### 10.2 Group B: workarounds for upstream bugs / limitations

| # | Customization | Why | Native alternative | Remove when |
|---|---|---|---|---|
| B1 | `functions/build_links.html` (copy, nil-map fix) | HugoBlox bug with Hugo 0.162: `SetInMap` on a nil map → build error on pages with links | Fixed upstream partial | HugoBlox fixes it (report the bug upstream); check on every module update |
| B2 | `views/article-grid--start.html` (copy) | HugoBlox `article-grid` uses the configured number of columns even for fewer items (1 featured article → squeezed card) | Upstream fix, or per-section `columns` that match the item count | Fixed upstream (report) |
| B3 | Menu anchors `'/#news'` instead of `'#news'` (`menus.yaml`) | HugoBlox navbar overwrites the home URL for anchor-only menu entries | `'#news'` | Fixed upstream; config only, no maintenance cost |
| B4 | `.hbb-section .max-w-prose / .max-w-3xl` width override (`custom.css`) | Text width of landing blocks is hardcoded (65ch / 3xl), no setting | A HugoBlox setting (none today) | Keep (small) or drop and accept the narrow column |
| B5 | `.prose code::before/after { content: none }` (`custom.css`) | Tailwind Typography adds backticks around inline code; HugoBlox's own rule loses against it in our setup | — | Check after module updates |

### 10.3 Group C: wiki functionality without a HugoBlox equivalent (keep, but keep small)

| # | Customization | Purpose | Native alternative / reduction idea |
|---|---|---|---|
| C1 | Specs layout family: `layouts/specs/*`, `_partials/specs_layout.html`, `specs_sidebar.html`, `specs_toc.html`, `specs_section_pager.html`, `specs_body_footer.html` | Page layout of ~6100 spec pages: **menu-driven sidebar per spec version** (`menu_name`/`menu`), right column with TOC + related content, menu-based prev/next | HugoBlox `docs` layout has a file-tree sidebar that renders the whole section tree on every page (not usable for ~550 class pages per version, no per-version menus). Reduction idea: use `type: docs` + override only `components/sidebar.html` with our menu sidebar and add related content via the `toc-end` hook. Needs a hook (or override) between title and content for metadata/history → evaluate after go-live |
| C2 | `specs_metadata.html`, `specs_history.html`, `specs_issue_links.html`, `specs_deprecation.html` | Published/updated/version line, change history (`history` front matter, GitHub/JIRA issues), "newer version" note, review badge | No equivalent. Could be reduced to one partial |
| C3 | `specs_related.html` | Related recommendation chapters/guidelines/classes via the `classes` front matter | HugoBlox `page_related.html` uses tags/categories; ours is domain specific → keep |
| C4 | `specs_glossary.html` (`layout: glossary`) | Class index A–Z (15 generated pages) | None → keep |
| C5 | `specs_overall_toc.html`, `specs_change_history_index.html`, `specs_review_index.html`, `specs_history_table.html` | Overall TOC, "Latest Changes", "Currently Under Review" tables on overview pages (`specs.*` front matter) | None → keep |
| C6 | Printable output (`layouts/specs/list.printable.html`, `specs_layout.printable.html`, `specs_printable_content.html`, print CSS) + `generate-pdf.js` | Single page version and PDF of the implementation guidelines | None → keep |
| C7 | Wiki shortcodes `vec-class`, `kbl-class`, `vec-diagram`, `svgfigure`, `svglink`, `info`, `deprecated`, `gh-review`, `review`, `issue` | Domain specific (links to class pages, clickable UML diagrams, association tooltips, review/deprecation notes). Restyled to Tailwind | `deprecated`/`gh-review`/`review` could be written as alerts (`> [!WARNING]`) but carry fixed texts → keep as shortcodes. `review` (JIRA) is legacy: 0 uses → can be deleted |
| C8 | Search: `specs_search_filters.html`, `functions/specs_is_latest.html`, `data-pagefind-body` only for current versions | Only current spec versions are searchable (like the former DocSearch `version:latest`), filter VEC/KBL | HugoBlox search modal supports only `type`/`category` filters → keep |
| C9 | `functions/specs_menu_name.html` | Menu name of a spec page | Part of C1 |
| C10 | `sample/single.html` | Sample file page with company/system/use case table and file list from page resources | Could become a plain page with a `links` list → design decision |
| C11 | ~~"Recently visited" trace~~ | **Removed** (2026-10-24): shown together with the HugoBlox breadcrumb it looked like a second, confusing breadcrumb | HugoBlox breadcrumb (position in the content) |
| C12 | `hooks/body-end/ecad.html` | Lightbox for figures (`lightbox="true"`); "History" link in the metadata shows/hides the change history (hidden by default, like the former Bootstrap collapse) | HugoBlox has no lightbox. Drop with A2 if zoom is not needed |
| C13 | `layouts/index.redirects` + `data/redirects.yaml` + output format `redirects` | Netlify `_redirects` for the ontology URLs | **Does not work on GitHub Pages** (also not on the live site). Native: Hugo `aliases` (HTML redirect pages) for page URLs; the ontology URLs (rewrite to `.ttl`) need a different solution → decide, then remove |

### 10.4 Group D: design and configuration

| # | Customization | Purpose | Note |
|---|---|---|---|
| D1 | `assets/css/custom.css` | Wiki styles (specs layout, callouts, figures, hero, print) as plain CSS on top of HugoBlox | Shrinks with A2/A3/A7, C1 refactoring. Could be moved into the Tailwind pipeline (`@apply`) if it grows |
| D2 | `.ecad-hero` + `content/_index.md` design settings | Brand-coloured home page hero | Design choice |
| D3 | `config/_default/params.yaml`: `show_title: false`, compact nav font size in `custom.css` | Many top-level menu entries | Alternatively reduce the main menu (e.g. move News/Events/Groups into one entry) |
| D4 | `hugo.yaml`: taxonomy `classes`, related index `classes`, output formats `Printable`/`redirects`, permalinks `event: /talk/:slug/` | Related content, printable version, URL compatibility | `/talk/` permalinks only for URL stability; could become `/event/` with aliases |
| D5 | `package.json` script `search:dev` | Search index for `hugo server` | — |
| D6 | `footer` menu in `menus.yaml` | Imprint, Privacy Statement, Legal Notice in the footer (legally required) | Native HugoBlox feature (replaces the former own footer `components/footers/prostep.html`) |

### 10.5 Leftovers to delete during housekeeping

* `data/page_sharer.toml`, `data/fonts/.gitkeep`, `data/themes/.gitkeep` (Wowchemy).
* `layouts/_shortcodes/review.html` (JIRA review notice, no longer used in content).
* Wowchemy-only front matter in content (`profile`, `share`, `commentable`, `image.focal_point`, `projects`, `header`, `design`, …): harmless, removable by script.

### 10.6 Housekeeping plan (after go-live)

Each step is a separate branch with a before/after build comparison (URL list, link diff and link
check as in §9.1; scripts in `~/.cache/hb-tools`).

1. **Upstream reports (B1, B2, B3):** open issues/PRs at `HugoBlox/kit`; remove the overrides
   when a fixed module version is available.
2. **Scripted content migrations (no visual change):** A1 (relrefs → absolute), A4, A5, A6, A9,
   A10, leftovers (10.5). Then delete the shims.
3. **Content migrations with small visual changes:** A3 (callouts → alerts), A7 (Bootstrap
   classes), A8 (icon names in `links`, incl. the model report generator).
4. **Figures (A2, C12):** decide on Markdown images vs. own `figure` shortcode for floating figures
   and on the lightbox; then migrate the 201 uses.
5. **Design decisions:** A11 (spec overview pages), C10 (samples), C13 (redirects).
6. **Evaluate C1:** spec pages on the HugoBlox `docs` layout with an overridden sidebar; only if
   it reduces the own code noticeably.
