---

This is the source for the new ECAD-WIKI. The current Wiki can be found under 
http://ecad-wiki.prostep.org . The preview of the new Wiki can be found under 
https://ecad-wiki.gitlab.io.

---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [GitLab CI](#gitlab-ci)
  - [Updating Hugo Version for CI Build](#updating-hugo-version-for-ci-build)
- [Building locally](#building-locally)
  - [Preview your site](#preview-your-site)
- [Create Content](#create-content)
  - [Implementation Guidelines](#implementation-guidelines)
    - [Related content](#related-content)
    - [Creating Diagrams](#creating-diagrams)
  - [Migration Cheat Sheat](#migration-cheat-sheat)
    - [Replace WikiLinks (in migrated .md)](#replace-wikilinks-in-migrated-md)
- [Troubleshooting](#troubleshooting)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## GitLab CI

This project's static Pages are built by [GitLab CI][ci], following the steps
defined in [`.gitlab-ci.yml`](.gitlab-ci.yml).

All content merged into the `master` branch will be build and deployed automatically.

### Updating Hugo Version for CI Build

This build uses it's own docker image based on GitLabs Hugo Docker image. This is 
because GitLabs Hugo Docker image has no `git` installed and thus Hugo's 
`enableGitInfo` can not be used. However, the image used in this build is based on 
GitLabs Hugo Docker Image and just installs `git`. 

The Docker image can be found in the `registry` branch of this repository 
[here](https://gitlab.com/ecad-wiki/ecad-wiki.gitlab.io/tree/registry). In order to
update to a newer version, the following things have to be done:

1.  The first line for the `Dockerfile` has to be modified to desired version and commited.
2.  A Tag with the version has to be created on the registry branch (e.g. `0.59.1`)

If this is done, the ci for the registry branch builds the image and deploys it autmatically 
into the container registry of this repository. By default the ci pipeline for ECAD WIKI 
pages uses the `latest` available image in the registry. 

All available Hugo versions are listed here: https://gitlab.com/pages/hugo/container_registry  

## Building locally

To work locally with this project, you'll have to follow the steps below:

1. Clone this project
1. [Install Hugo (Extended)](https://gohugo.io/getting-started/installing/). Currently Version 0.81.0. Under Windows this is easy with Chocolatey.
1. Install GoLang. Also available via Chocolatey `choco install golang` 
1. Preview your project: `hugo server`
1. Add content
1. Generate the website: `hugo` (optional)
1. Install Visual Studio Code as an effective editor (optional)

Read more at Hugo's [documentation][].

[^1]: Version 0.60.0 fixed a bug for the generation of page TOC's that was also patched 
by the current academic theme. If both are applied it result in an ugly page TOC.

### Preview your site

If you clone or download this project to your local computer and run `hugo server`,
your site can be accessed under `localhost:1313/`.

The theme used is adapted from https://sourcethemes.com/academic/.

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

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
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
1.  If you use [figures](https://sourcethemes.com/academic/docs/writing-markdown-latex/#images) do **NOT** reference by number. 
The numbering is done with CSS and if we generate a single page version the will depend on 
the position in the complete document.

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
and the configuration value from `param.toml` is used. E.g:
```toml
[VEC]
  current_version = "1.2.0"
```
So Guidelines always link to most recent recommendation documents.

**Recommendation**: All values are generated from the model report. Every class page mentions "itself". 
Every diagram references all classes shown on the diagram. The version is defined when generating the 
report. As a result, a class relates to all diagrams where it is represented (but only in the same version
of the recommendation) and vice versa. 

#### Creating Diagrams

Visio like Diagrams can be created as SVG via [draw.io](https://draw.io). The WEB editor 
supports gitlab.com as backend for storage, so can load & save directly from a gitlab branch.

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


## Troubleshooting

1. CSS is missing! That means two things:

    Either that you have wrongly set up the CSS URL in your templates, or
    your static generator has a configuration option that needs to be explicitly
    set in order to serve static assets under a relative URL.

[ci]: https://about.gitlab.com/gitlab-ci/
[hugo]: https://gohugo.io
[install]: https://gohugo.io/overview/installing/
[documentation]: https://gohugo.io/overview/introduction/
[userpages]: http://doc.gitlab.com/ee/pages/README.html#user-or-group-pages
[projpages]: http://doc.gitlab.com/ee/pages/README.html#project-pages
[post]: https://about.gitlab.com/2016/04/07/gitlab-pages-setup/#custom-domains
