![Build Status](https://gitlab.com/pages/hugo/badges/master/build.svg)

---

This is the source for the new ECAD-WIKI. The current Wiki can be found under 
http://ecad-wiki.prostep.org . The preview of the new Wiki can be found under 
https://ecad-wiki.gitlab.io.

---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [GitLab CI](#gitlab-ci)
- [Building locally](#building-locally)
- [GitLab User or Group Pages](#gitlab-user-or-group-pages)
- [Did you fork this project?](#did-you-fork-this-project)
- [Troubleshooting](#troubleshooting)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## GitLab CI

This project's static Pages are built by [GitLab CI][ci], following the steps
defined in [`.gitlab-ci.yml`](.gitlab-ci.yml).

All content merged into the `master` branch will be build and deployed automatically.

## Building locally

To work locally with this project, you'll have to follow the steps below:

1. Clone this project
1. [Install][] Hugo (Extended)
1. Preview your project: `hugo server`
1. Add content
1. Generate the website: `hugo` (optional)
1. Install Visual Studio Code as an effective editor (optional)

Read more at Hugo's [documentation][].

### Preview your site

If you clone or download this project to your local computer and run `hugo server`,
your site can be accessed under `localhost:1313/`.

The theme used is adapted from https://sourcethemes.com/academic/.

## Create Content

### Migration Cheat Sheat

Best Practice is:

1. Create a new guideline page using the hugo cli (see below).
2. Adjust the metadata in frontmatter. This includes creation and lastmodified date from dokuwiki and the menue position.
3. Paste the content of the (migrated) dokuiwiki page.
4. From top down, replace:
   1. All class references with {{< vec-class >}}.
   2. All intrawiki links with relref links. If the target does npt ecist yet, create a dummy page ate the destination.
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
1.  If it has a long title (shown on top of the page), give it a short 'linktitle' for the side menu.
1.  If it is a long page with subsections, give a toc (`toc: true`)
1.  If want to define the length of the summary add the <!--more--> element.
1.  The title is level h1. Give all subheadings level 2 or lower (`##`). 
Otherwise the heading levels will be messed up, when we generate a single page version.
1.  If you use [figures](https://sourcethemes.com/academic/docs/writing-markdown-latex/#images) do **NOT** reference by number. 
The numbering is done with CSS and if we generate a single page version the will depend on 
the position in the complete document.


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
