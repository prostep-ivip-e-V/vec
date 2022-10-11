---
title: VEC Version 2.0.1
linktitle: Overview
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
menu:
  vec-2.0.1:
    identifier: index
    weight: 1
links:
  - icon_pack: fas
    icon: file-pdf
    name: PSI21 prostep ivip Recommendation VEC V1.2 (last published June 2020 with VEC Schema Version 1.2.0)
    url: https://www.prostep.org/fileadmin/downloads/PSI_21_vda_4968_VEC_Specification_v1.2_pub_RZ.pdf
  - icon_pack: far
    icon: folder-open
    name: VEC Online Model Description
  - icon_pack: fas
    icon: shipping-fast
    name: Release Notes
    url: "release-notes"
  - icon_pack: far
    icon: file-code
    name: vec_2.0.1.xsd
    url: "vec_2.0.1.xsd"
  - icon_pack: far
    icon: file-code
    name: vec_2.0.1-strict.xsd
    url: "vec_2.0.1-strict.xsd"
  - icon_pack: far
    icon: file-code
    name: vec_2.0.1-ud.xsd (undocumented version)
    url: "vec_2.0.1-ud.xsd"
  - icon_pack: far
    icon: file-code
    name: vec_2.0.1-ud-strict.xsd (undocumented version)
    url: "vec_2.0.1-ud-strict.xsd"
weight: 1
---
The version 2.0.1 is a schema compatible bug fix release for Version 2.0.0 (schema compatible except for areas affected by bugs).

This release was necessary due to a model / schema generator bug that resulted in some XML elements that should had a primitive value having no explicit `xs:type` set. Additionally some multiplicities and role names were undefined resulting in a too restrictive schema in some elements. 

Having the necessity of a publication of this release we took the opportunity to improve the documentation of some elements and to extend some _OpenEnumerations_ with new values. Detailed release notes can be found [here]({{< relref release-notes >}}).

{{% callout info %}}
This version of the model description and XML schema is published without a new version of the "PSI21 prostep ivip recommendation VEC". The recommendation remains valid, however the content of chapters 5 and 7 can be considered as replaced by the online documentation of this version.
{{% /callout %}}


