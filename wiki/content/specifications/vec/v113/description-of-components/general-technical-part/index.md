---
title: General Technical Part
toc: false
type: specs
layout: diagram
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Diagram
classes:
  - PartRelationType
  - PartRelation
  - PartOrUsageRelatedSpecification
  - BoundingBox
  - GeneralTechnicalPartSpecification
  - PartVersion
menu:
  VEC-1.1.3:    
    parent: description-of-components
    identifier: description-of-components/general-technical-part
    weight: 1003003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003003
---
{{< svgfigure src="general-technical-part.png" width="882" height="352" caption="General Technical Part" numbered="true" >}}
  {{< svglink relref="../../classes/partrelationtype.md" x="533.0" y="232.0" width="114.0" height="94.0" >}}
  {{< svglink relref="../../classes/partrelation.md" x="299.0" y="254.0" width="178.0" height="55.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="304.0" y="17.0" width="188.0" height="55.0" >}}
  {{< svglink relref="../../classes/boundingbox.md" x="659.0" y="99.0" width="209.0" height="79.0" >}}
  {{< svglink relref="../../classes/generaltechnicalpartspecification.md" x="302.0" y="106.0" width="273.0" height="103.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="15.0" y="15.0" width="196.0" height="323.0" >}}
{{< / svgfigure >}}
<p> The class <i>GeneralTechnicalPartSpecification</i> is intended to aggregate common technical attributes that are relevant for most kinds of parts (e.g. <i>massInformation </i>or information about valid temperature environments).     </p>      <p> With the composition of <i>PartRelations </i>other <i>PartVersions</i> can be defined as accessory parts. The <i>PartRelation.relationType</i> defines how the set of referenced <i>PartVersions </i>of one <i>PartRelation</i> must be interpreted.      </p>