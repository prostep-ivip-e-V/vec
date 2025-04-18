﻿---
title: Open and Closed Enumerations
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
  - OpenEnumeration
  - ClosedEnumeration
menu:
  VEC-1.1.3:    
    parent: xml-representation-of-the-model
    identifier: xml-representation-of-the-model/open-and-closed-enumerations
    weight: 1009003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1009003
---
{{< svgfigure src="open-and-closed-enumerations.png" width="290" height="87" caption="Open and Closed Enumerations" numbered="true" >}}
  {{< svglink relref="../../classes/openenumeration.md" x="169.0" y="15.0" width="107.0" height="58.0" >}}
  {{< svglink relref="../../classes/closedenumeration.md" x="15.0" y="15.0" width="117.0" height="58.0" >}}
{{< / svgfigure >}}
<p> In the VEC model we distinguish between two kinds of enumerations:     </p>      <ul>       <li> Closed lists       </li>       <li> Open lists       </li>     </ul>     <p> For a closed list the enumeration values are fixed. At the time of the UML model generation it is known, which values an attribute can take. There is no possibility to use other values later without changing the XML schema definition. Normally these are values which are defined inherently by the Model. An example would be the <i>PartVersion.primaryPartType</i>. As it is defined that there must exist a corresponding <i>Specification,</i> extending a literal would mean at the same time to create new <i>Specification-class</i>.&#160; Another example would be the <i>referenceNode</i> for <i>Locations</i> on <i>TopologySegments</i>. Since one <i>TopologySegment</i> only has one <i>StartNode</i> and one <i>EndNode</i> this is a typical <i>ClosedEnumeration</i>.     </p>      <p> For an open list the allowed values for an attribute are not completely known at the point of the UML model generation or might change in future due to new technical developments. There may be a pre-defined set of values. But it must be possible to add further values in a later stage. An example might be the Gender of a Terminal which is currently restricted to <i>Male</i> and <i>Female</i>. In future new technologies might emerge, where the existing values are not sufficient.&#160; Motivation for this open list concept is, that for known values, standardized literals shall be used, but reading systems must be able to handle additional literals, since they can emerge quite quickly due to technology improvements.     </p>      <p> The diagram shows the representation of open and closed enumeration lists as stereotypes.     </p>      <p> During the UML to XML transformation, closed enumerations are transformed into XML “<i>xs:enumeration</i>”. Open enumerations will be translated into XML „<i>xs:string</i>“.     </p>      <p> The VEC model defines for open enumerations a pre-defined list of commonly agreed values. The idea behind is that these pre-defined values are used if applicable, and further values should be used only, if the pre-defined ones do not fit. However, this cannot be enforced by the XML schema. If an open enumeration is translated into “<i>xs:string</i>”, it is not possible to check if the predefined values are used.     </p>      <p> Therefore, in addition to the standard VEC XML schema, a further XML schema, called the “Strict VEC XML schema” is defined. In this schema, an open enumeration is transformed into XML “<i>xs:enumeration</i>”, too. The enumeration values are restricted to the pre-defined once. With this schema it is possible to check if a VEC used pre-defined values, only.      </p>