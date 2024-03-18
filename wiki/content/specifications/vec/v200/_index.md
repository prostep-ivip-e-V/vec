---
title: VEC Version 2.0.0
linktitle: Overview
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
menu:
  vec-2.0.0:
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
    name: vec_2.0.0.xsd
    url: "vec_2.0.0.xsd"
  - icon_pack: far
    icon: file-code
    name: vec_2.0.0-strict.xsd
    url: "vec_2.0.0-strict.xsd"
  - icon_pack: far
    icon: file-code
    name: vec_2.0.0-ud.xsd (undocumented version)
    url: "vec_2.0.0-ud.xsd"
  - icon_pack: far
    icon: file-code
    name: vec_2.0.0-ud-strict.xsd (undocumented version)
    url: "vec_2.0.0-ud-strict.xsd"
  - icon_pack: fas
    icon: circle-nodes
    name: vec-2.0.0-ontology.ttl
    url: "vec-2.0.0-ontology.ttl"
  - icon_pack: fas
    icon: circle-nodes
    name: vec-2.0.0-shacl.ttl
    url: "vec-2.0.0-shacl.ttl"    
  - icon_pack: fas
    icon: object-group
    name: vec-2.0.0.mdxml
    url: "vec-2.0.0.mdxml"         
weight: 1

cascade:
  - search_index_ignore: true
---

With this version the VEC switched to a [semantic versioning scheme]({{< relref "../publication-process/" >}}). As this version contains schema incompatible changes it is published as a new major version. A new recommendation is not published at this point. This version addresses about 60 Bugs and Features Requests. 

The issues that were resolved came mainly from two areas:

1. Direct feedback from implementation projects, and 
2. Requirements from the [ARENA 2036 IILS](https://www.arena2036.de/en/innovation-initiative-wire-harness). 

<!--more-->

The [ARENA 2036 IILS](https://www.arena2036.de/en/innovation-initiative-wire-harness) is an ongoing initiative that has the objective to "drive forward the automation of the development, production and assembly of the wire harness".

One of the results is DIN 72036, which, among other things, defines design rules to enable the automation of line sets. The possibility of automatic verification of wiring harness designs against these rules is a key requirement. As a result, DIN 72036 defines data profiles for KBL and VEC containing the data requirements to evaluate those design rules. Data requirements of DIN 72036, which were not yet covered in the VEC, have been addressed in this version.  

Highlights in this version are:

1. **Open Enumerations**: To avoid dialects and to improve the semantic sharpness of the VEC, more than twenty `string`-attributes have been replaced with `OpenEnumerations`. In addition, literals have been added to various `OpenEnumerations`.
2. **Support for DIN 72036**: as explained above.
3. **Geometric Properties for Connector Housings**: We added detailed geometric properties for connectors, like cavity positions, locations of segment connection points (see [Geometric Properties of Connector Housings]({{< relref "component-characteristics/geometric-properties-of-connector-housings-definitions">}})). 
4. **Support for generic labeling properties of components and instances**: See [Labeling]({{< relref "general-component-data/labeling" >}}) and [Instances of Labels]({{< relref "instances-of-components/instances-of-labels">}}).

{{% callout info %}}
This version of the model description and XML schema is published without a new version of the "PSI21 prostep ivip recommendation VEC". The recommendation remains valid, however the content of chapters 5 and 7 can be considered as replaced by the online documentation of this version.
{{% /callout %}}


