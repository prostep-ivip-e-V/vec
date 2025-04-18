---
title: VEC Version 1.1.3
linktitle: Overview
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
specs:
  toc: true
menu:
  vec-1.1.3:
    identifier: index    
    weight: 1
links:
  - icon_pack: far
    icon: folder-open
    name: VEC Online Model Description
  - icon_pack: fas
    icon: shipping-fast
    name: Release Notes
    url: 'release-notes'
  - icon_pack: far
    icon: file-code
    name: vec_1.1.3.xsd
    url: 'vec_1.1.3.xsd'
  - icon_pack: far
    icon: file-code
    name: vec_1.1.3-strict.xsd
    url: 'vec_1.1.3-strict.xsd'
  - icon_pack: far
    icon: file-code
    name: vec_1.1.3-ud.xsd (undocumented version)
    url: 'vec_1.1.3-ud.xsd'
  - icon_pack: far
    icon: file-code
    name: vec_1.1.3-strict-ud.xsd (undocumented version)
    url: 'vec_1.1.3-strict-ud.xsd'
  - icon_pack: far
    icon: file-code
    name: vec_1.1.3.sch (Schematron Schema)
    url: 'vec_1.1.3.sch'
  - icon_pack: fas
    icon: circle-nodes
    name: vec-1.1.3-ontology.ttl
    url: "vec-1.1.3-ontology.ttl"
  - icon_pack: fas
    icon: circle-nodes
    name: vec-1.1.3-shacl.ttl
    url: "vec-1.1.3-shacl.ttl"    
  - icon_pack: fas
    icon: object-group
    name: vec-1.1.3.mdxml
    url: "vec-1.1.3.mdxml"         

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 50
---
This version brings features in the area of electrical design (especially new semantics for the 3 layers (Net, Connection, and Wiring Specification). Additionally there are a lot of small improvements, mainly new attributes, for the description of components and new OpenEnumerations.
<!--more--> 
For detailed release notes see [VEC JIRA Release Notes](https://prostep-ivip.atlassian.net/projects/KBLFRM/versions/10114).

On the technical side there have been two improvements as well:

  1. The schema is now published with the documentation from the model for classes and attributes embedded in the schema (`<xs:documentation/>`). An undocumented version of the schemas is published as well, mainly to allow an easy comparison with older versions.
  2. Besides the XML Schema Definition there is now also an Schematron schema with additional semantic constraints. The rules in the Schematron schema might become mandatory in future versions. For version 1.1.3 the Schematron schema can be considered to have BETA status. For the usage of the schematron schema see the [Schematron Validation How To]({{< relref "../schematron-howto" >}}).

For this version no new specification document will be published. An updated and extended version of the tutorials will be published on a later date.