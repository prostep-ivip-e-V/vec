---
title: VEC Version 1.1.3
linktitle: Overview
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec113:
    identifier: index    
    weight: 1
links:
  - icon_pack: fas
    icon: globe
    name: VDA 4968 - Vehicle Electric Container 2nd Edition (www.vda.de)
  - icon_pack: fas
    icon: folder-open
    name: VEC Online Model Description
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

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 50
---
This version brings features in the area of electrical design (especially new semantics for the 3 layers (Net, Connection, and Wiring Specification). Additionally there are a lot of small improvements, mainly new attributes, for the description of components and new OpenEnumerations.
<!--more--> 
For detailed release notes see [VEC JIRA Release Notes](https://track.prostep.com/jira/secure/ReleaseNote.jspa?projectId=10550&version36170).

On the technical side there have been two improvements as well:

  1. The schema is now published with the documentation from the model for classes and attributes embedded in the schema (`<xs:documentation/>`). An undocumented version of the schemas is published as well, mainly to allow an easy comparison with older versions.
  2. Beside the XML Schema Definition there is now also an Schematron schema with additional semantic constraints. The rules in the Schematron schema will become mandatory in future versions. For version 1.1.3 the Schematron schema can be considered to have BETA status.

For this version no new specification document will be published. An updated and extended version of the tutorials will be published on a later date.