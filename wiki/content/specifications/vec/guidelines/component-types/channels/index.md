---
title: "Channels"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker, fehlmann]
tags: ["Cable duct", "Fixing", "Channel"]
categories: []
date: 2019-03-11
lastmod: 2019-12-02T12:43:00+01:00
draft: false

menu:
  vec-guidelines:
    parent: component-types
    # Toplevel element. For sub sections the identifier of the subsection
    weight: 9000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 9000
---
{{< figure src="channels.jpg" title="Channels" numbered="true" lightbox="true">}}

*CableDucts* can fulfill have to relevant aspects. They can be connected with the harness (placement). This is specified with the blue classes. The {{< vec-class CableDuctSpecification >}} brings this aspect of use to given part. At the same time a CableDuct can have properties of a Fixing since it is often mounted to the vehicle body as well. This aspect is defined by an additional {{< vec-class FixingSpecification >}}.
