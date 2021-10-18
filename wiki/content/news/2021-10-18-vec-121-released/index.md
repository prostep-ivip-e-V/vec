---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "VEC 1.2.1 released"
subtitle: ""
summary: ""
authors: [becker]
tags: []
categories: []
date: 2021-10-18
lastmod: 2021-10-18
featured: false
draft: false
image:
  caption: ""
  focal_point: ""
  preview_only: false
projects: []
---

Due to a nasty bug in the VEC V1.2.0 Model we had to make a bug fix release. The `TopologyZoneSpecification` was missing its inheritance relationship to `Specification`. This rendered the `TopologyZoneSpecification` unusable, as only `Specification`s are contained in a `DocumentVersion` and in consequence in the resulting XML document. All VEC V1.2.0 are fully compatible with the VEC V1.2.1 schema since the fixed element could not be used anyways.

The model description and the release notes can be found [here]({{< ref "specifications/vec/v121" >}}).
