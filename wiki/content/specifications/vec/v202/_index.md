---
title: VEC Version 2.0.2
linktitle: Overview
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
menu:
  vec-2.0.2:
    identifier: index
    weight: 1
links:
  - icon_pack: fas
    icon: file-pdf
    name: PSI21 prostep ivip Recommendation VEC V1.2 (last published June 2020 with VEC Schema Version 1.2.0)
    url: https://www.prostep.org/shop/detail?ai%5Baction%5D=detail&ai%5Bcontroller%5D=Catalog&ai%5Bd_name%5D=psi_21&ai%5Bd_pos%5D=
  - icon_pack: far
    icon: folder-open
    name: VEC Online Model Description
  - icon_pack: fas
    icon: shipping-fast
    name: Release Notes
    url: "release-notes"
  - icon_pack: far
    icon: file-code
    name: vec_2.0.2.xsd
    url: "vec_2.0.2.xsd"
  - icon_pack: far
    icon: file-code
    name: vec_2.0.2-strict.xsd
    url: "vec_2.0.2-strict.xsd"
  - icon_pack: far
    icon: file-code
    name: vec_2.0.2-ud.xsd (undocumented version)
    url: "vec_2.0.2-ud.xsd"
  - icon_pack: far
    icon: file-code
    name: vec_2.0.2-ud-strict.xsd (undocumented version)
    url: "vec_2.0.2-ud-strict.xsd"
  - icon_pack: fas
    icon: circle-nodes
    name: vec-2.0.2-ontology.ttl
    url: "vec-2.0.2-ontology.ttl"
  - icon_pack: fas
    icon: circle-nodes
    name: vec-2.0.2-shacl.ttl
    url: "vec-2.0.2-shacl.ttl"    
  - icon_pack: fas
    icon: object-group
    name: vec-2.0.2.mdxml
    url: "vec-2.0.2.mdxml"    
weight: 1
---
The version 2.0.2 is a schema compatible bug fix release for Version 2.0.1 (schema compatible except for areas affected by bugs). The changes were:

1. Renaming of the wrongly named class `ConnectionNodeViewItem`-> `ComponentNodeViewItem`. This was done schema compatible by deprecating the `ConnectionNodeViewItem`.
2. V2.0.0 introduced the {{<vec-class ConfigurationConstraint >}} as subelement to the {{<vec-class ConfigurableElement>}}. This turned out to a unfavorable design decision. With this release, the `ConfigurationConstraint` was moved into its own specification allowing external configuration (from within other documents) of {{<vec-class ConfigurableElement>}}s.
3. We added meta-information from the model to XML Schema with `<xs:annotation>`, for details see [here]({{< relref "../guidelines/general/xml-xsd/#meta-model-annotations-embedded-in-xml-schema" >}}). 

Detailed release notes can be found [here]({{< relref release-notes >}}).

{{% callout info %}}
This version of the model description and XML schema is published without a new version of the "PSI21 prostep ivip recommendation VEC". The recommendation remains valid, however the content of chapters 5 and 7 can be considered as replaced by the online documentation of this version.
{{% /callout %}}


