---
title: Wire
toc: false
type: specs
layout: diagram
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - WireElement
  - WireType
  - FillerSpecification
  - WireGroupSpecification
  - InsulationSpecification
  - CoreSpecification
  - ConductorSpecification
  - ShieldSpecification
  - ConductorCurrentInformation
  - WireSpecification
  - PartOrUsageRelatedSpecification
  - WireElementSpecification
menu:
  VEC-1.1.2:    
    parent: description-of-components
    identifier: description-of-components/wire
    weight: 1003004 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003004
---
{{< svgfigure src="wire.png" width="976" height="768" caption="Wire" numbered="true" >}}
  {{< svglink relref="../../classes/wireelement.md" x="619.0" y="184.0" width="126.0" height="55.0" >}}
  {{< svglink relref="../../classes/wiretype.md" x="28.0" y="168.0" width="150.0" height="67.0" >}}
  {{< svglink relref="../../classes/fillerspecification.md" x="781.0" y="475.0" width="166.0" height="67.0" >}}
  {{< svglink relref="../../classes/wiregroupspecification.md" x="570.0" y="472.0" width="193.0" height="67.0" >}}
  {{< svglink relref="../../classes/insulationspecification.md" x="18.0" y="470.0" width="194.0" height="139.0" >}}
  {{< svglink relref="../../classes/corespecification.md" x="203.0" y="686.0" width="202.0" height="55.0" >}}
  {{< svglink relref="../../classes/conductorspecification.md" x="281.0" y="472.0" width="213.0" height="163.0" >}}
  {{< svglink relref="../../classes/shieldspecification.md" x="434.0" y="686.0" width="224.0" height="67.0" >}}
  {{< svglink relref="../../classes/conductorcurrentinformation.md" x="623.0" y="553.0" width="233.0" height="79.0" >}}
  {{< svglink relref="../../classes/wirespecification.md" x="27.0" y="98.0" width="722.0" height="43.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="27.0" y="14.0" width="722.0" height="55.0" >}}
  {{< svglink relref="../../classes/wireelementspecification.md" x="20.0" y="294.0" width="925.0" height="127.0" >}}
{{< / svgfigure >}}
<p> In the VEC&#160;wires are defined through a <i>WireSpecification,</i> regardless of their type. This means, for all types of wires (e.g. normal single core, multi core or coax wires)&#160;the same structure is used to describe them. Since a wire can be a hierarchical structure the actual definition of the structure is delegated to a <i>WireElementSpecification</i>. A <i>WireElementSpecification</i> can define a certain wire element and more complex structures by referencing the appropriate <i>subWireElementSpecifications. </i>     </p>      <p> This model structure is required, because some <i>WireElements </i>can exist as individual parts and as an element of one or more complex wires with the same technical properties (e.g. a FLRY-0.75 wire can be used standalone or as part of a multi core or twisted wire). In order to allow the reuse of such elements, the structure of a wire element is defined with <i>WireElementSpecification</i>s which can be shared and reused between different other <i>WireElementSpecifications </i>and <i>WireSpecifications</i>. This means a <i>WireSpecification </i>references the root <i>WireElementSpecification</i> that describes its structure, while the <i>subWireElementSpecifications </i>can be used by different <i>WireSpecifications </i>at the same time.     </p>      <p> In order to allow an unambiguous identification of a particular <i>WireElementSpecification </i>within the context of a <i>WireSpecification</i>, the <i>WireSpecification</i> defines a list of <i>WireElements</i> for each <i>WireElementSpecification </i>that belongs to the hierarchy of the wire. The <i>WireElement </i>defines the <i>identification</i> of a <i>WireElementSpecification</i> within the context of a wire.     </p>      <p> A WireElementSpecification can reference an <i>InsulationSpecification</i>, a <i>CoreSpecification, </i>a<i> ShieldSpecification, </i>a <i>FillerSpecification</i> and/or a <i>WireGroupSpecification</i> in order to describe its technical details. These aspects are separated into individual <i>Specifications</i> in order to allow the reuse of them. For example the <i>CoreSpecification </i>of a FLRY-0.75 is the same for a group of wires, regardless of their insulation color. In turn the <i>InsulationSpecification </i>of a blue &amp; green FLRY wire might be the same for a group wires, regardless of their cross section area.     </p>      <p> In most cases, a <i>WireElement </i>will be something with a physical representation within the wire. However there are cases were the <i>WireElementSpecification</i> is just a group of <i>WireElementSpecifications</i> with no real physical manifestation. For example a twisted pair wire, will consist of two single core <i>WireElementSpecifications</i> and a parent <i>WireElementSpecification</i> that just defines the type of twist. Note: All<i> Specification </i>in this diagram, where no superclass is displayed inherit directly from <i>Specification.</i>      </p>