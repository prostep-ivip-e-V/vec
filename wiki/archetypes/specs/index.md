---
title: "{{ replace .Name "-" " " | title }}"
#linktitle: Link in Sidemenu
type: specs
authors: []
tags: []
categories: []
date: {{ .Date }}
lastmod: {{ .Date }}
draft: false

menu:
  example:
    parent: Example Topic
    weight: 1

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---