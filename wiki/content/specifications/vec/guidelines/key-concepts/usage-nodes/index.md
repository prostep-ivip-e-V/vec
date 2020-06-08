---
title: "Usage Nodes"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
authors: ["becker"]
tags: ["Core"]
categories: []
date: 2019-11-06
lastmod: 2019-11-28T15:11:41+01:00
draft: false

classes:
  - UsageNode
  - UsageNodeSpecification

menu:
  vec-guidelines:
    parent: key-concepts
    weight: 1000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1000
---

{{< figure src="usage_nodes.jpg" title="Usage Nodes" numbered="true" >}}

The example illustrates the use of *UsageNodes*. A {{<vec-class UsageNode>}} represents a position in an abstract vehicle. For example the Head Light Left. *UsageNodes* belong to the master data and they are defined on some company wide level. They can be used to enforce consistent naming over different projects and different development streams (e.g. between geometry and electrologic).

A {{<vec-class UsageNode>}} can be subdivided into more detailed *UsageNodes*. For example the Head Light can be split up into Main Beam, Low Beam and Direction Indicator.