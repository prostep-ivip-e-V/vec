---
title: VEC Version 1.1.1
linktitle: Overview
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
specs:
  toc: true
menu:
  vec-1.1.1:
    identifier: index    
    weight: 1
weight: 1
links:
  - icon_pack: fas
    icon: globe
    name: VDA 4968 - Vehicle Electric Container 2nd Edition (www.vda.de)
    url: http://www.vda.de/de/publikationen/publikationen_downloads/detail.php?id=1025
  - icon_pack: far
    icon: folder-open
    name: VEC Online Model Description
  - icon_pack: fas
    icon: shipping-fast
    name: Release Notes
    url: 'release-notes'  
  - icon_pack: far
    icon: file-pdf
    name: VEC Tutorials 1.3
    url: vec_tutorial_v1.3.pdf    
  - icon_pack: far
    icon: file-code
    name: vec_1.1.1.xsd
    url: 'vec_1.1.1.xsd'
  - icon_pack: far
    icon: file-code
    name: vec_1.1.1-strict.xsd
    url: 'vec_1.1.1-strict.xsd'
  - icon_pack: far
    icon: file-archive
    name: Modules VEC 1.1.1.zip
    url: 'modules_vec_1.1.1.zip'
---
This version fixes a technical bug in the namespace declaration, only. The 1.1.0 model description and the associated tutorials are still valid.
<!--more-->
The reason for this is the previous use of the schema namespace. Until the last distributed schema version (1.1.0) the version of the VEC schema was encoded in the XML namespace(e.g. http://www.prostep.org/ecad-if/vec/1.1.0/VEC_modelSchema). This means that when a new version of the schema is released, basically all existing VEC instance documents would no longer be valid, regardless of whether there have been changes to the used schema elements or not. In particular, pure extensions of the schema would automatically invalidate existing instances. This is particularly in the case of backward compatible changes or when using the "VEC schema modules" a highly undesirable side effect.

For this reason, the vehicle electrical PG has decided to publish in future all new versions of the VEC schema under the same target namespace (http://www.prostep.org/ecad-if/2011/vec). The version of the schema is clearly marked by the `version` attribute of the `xs:schema` element. All created instance documents carry their version information in the attribute `VecVersion` at the root element `VecContent`. This attribute has the type enumeration for versions, defining the valid version literals.

Since both at VW and BMW VEC interfaces are about to go live, the VDA project group has decided to fix this issue in short-time and published a version 1.1.1.