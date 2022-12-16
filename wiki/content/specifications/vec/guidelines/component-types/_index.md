---
title: "Description of Components Types"
linktitle: Component Types
type: specs
# Table of Content on the right side. Only useful for large pages.
authors: ["becker"]
tags: []
categories: []
date: 2022-09-01
lastmod: 2022-09-01
draft: false
review: false
toc: true

classes:


history:
  - date: 2022-09-09
    description: "New Implementation Guideline for PartUsages & PartOccurences"
    issue: "KBLFRM-1038"

menu:
  vec-guidelines:
    identifier: component-types
    weight: 5000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 5000
---
This section deals with the peculiarities of specific types of components. The structure of the specification is mainly organized according to the different layers and abstraction levels in the model. As a result, the aspects for a holistic view of a particular component are divided into the areas {{< vec-diagram "general-component-data">}}, {{< vec-diagram "component-characteristics">}} and {{< vec-diagram "instances-of-components">}} in the specification. The implementation guidelines in this section provide an orthogonal view on this, trying to cover all aspects (master data, instancing etc.) for a specific component type.

For a general description of master data definition and instancing concepts of components, see [Component Definition & Instantiation]({{< relref "../product-definition/component-description">}}).