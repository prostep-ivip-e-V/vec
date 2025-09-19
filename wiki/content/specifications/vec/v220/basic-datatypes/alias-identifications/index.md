---
title: Alias Identifications
toc: false
type: specs
layout: diagram
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - AliasIdentificationType
  - AliasIdentification
menu:
  VEC-2.2.0:    
    parent: basic-datatypes
    identifier: basic-datatypes/alias-identifications
    weight: 1002007 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1002007
---
{{< svgfigure src="alias-identifications.png" width="428" height="135" caption="Alias Identifications" numbered="true" >}}
  {{< svglink relref="../../classes/aliasidentificationtype.md" x="267.0" y="15.0" width="147.0" height="94.0" >}}
  {{< svglink relref="../../classes/aliasidentification.md" x="15.0" y="15.0" width="217.0" height="106.0" >}}
{{< / svgfigure >}}
<p> There are many applications where an element can have various technical and functional keys at the same time. The <i>AliasIdentification</i> provides a possibility to transfer these keys along with meta information about their type and scope.      </p>      <p> &#160;      </p>