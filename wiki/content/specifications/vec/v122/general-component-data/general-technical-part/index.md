---
title: General Technical Part
toc: false
type: specs
layout: diagram
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - PartRelationType
  - PartOrUsageRelatedSpecification
  - PartRelation
  - BoundingBox
  - GeneralTechnicalPartSpecification
  - PartVersion
menu:
  VEC-1.2.2:    
    parent: general-component-data
    identifier: general-component-data/general-technical-part
    weight: 1004002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1004002
---
{{< svgfigure src="general-technical-part.png" width="882" height="401" caption="General Technical Part" numbered="true" >}}
  {{< svglink relref="../../classes/partrelationtype.md" x="568.0" y="281.0" width="114.0" height="106.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="304.0" y="17.0" width="188.0" height="55.0" >}}
  {{< svglink relref="../../classes/partrelation.md" x="302.0" y="303.0" width="205.0" height="67.0" >}}
  {{< svglink relref="../../classes/boundingbox.md" x="659.0" y="99.0" width="209.0" height="79.0" >}}
  {{< svglink relref="../../classes/generaltechnicalpartspecification.md" x="302.0" y="106.0" width="274.0" height="127.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="15.0" y="15.0" width="196.0" height="323.0" >}}
{{< / svgfigure >}}
<p> The class <i>GeneralTechnicalPartSpecification</i> is intended to aggregate common technical attributes that are relevant for most kinds of parts (e.g. <i>massInformation </i>or information about valid temperature environments).      </p>