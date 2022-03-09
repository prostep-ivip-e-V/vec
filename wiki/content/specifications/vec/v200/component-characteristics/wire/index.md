---
title: Wire
toc: false
type: specs
layout: diagram
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - ConductorType
  - FlatCoreSpecification
  - WireElement
  - FoilShieldWindingType
  - WireType
  - FillerSpecification
  - WireGroupSpecification
  - CoreSpecification
  - WireElementShape
  - ConductorStructure
  - TransmissionMediumType
  - LabelType
  - LabelingTechnology
  - WireGroupType
  - ConductorSpecification
  - ShieldSpecification
  - ConductorCurrentInformation
  - InsulationSpecification
  - WireSpecification
  - PartOrUsageRelatedSpecification
  - WireElementSpecification
menu:
  VEC-2.0.0:    
    parent: component-characteristics
    identifier: component-characteristics/wire
    weight: 1005001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005001
---
{{< svgfigure src="wire.png" width="1155" height="1217" caption="Wire" numbered="true" >}}
  {{< svglink relref="../../classes/conductortype.md" x="574.0" y="700.0" width="114.0" height="106.0" >}}
  {{< svglink relref="../../classes/flatcorespecification.md" x="413.0" y="1022.0" width="124.0" height="55.0" >}}
  {{< svglink relref="../../classes/wireelement.md" x="357.0" y="182.0" width="126.0" height="55.0" >}}
  {{< svglink relref="../../classes/foilshieldwindingtype.md" x="644.0" y="1120.0" width="132.0" height="82.0" >}}
  {{< svglink relref="../../classes/wiretype.md" x="98.0" y="196.0" width="150.0" height="67.0" >}}
  {{< svglink relref="../../classes/fillerspecification.md" x="701.0" y="556.0" width="166.0" height="67.0" >}}
  {{< svglink relref="../../classes/wiregroupspecification.md" x="483.0" y="574.0" width="193.0" height="67.0" >}}
  {{< svglink relref="../../classes/corespecification.md" x="154.0" y="1015.0" width="202.0" height="55.0" >}}
  {{< svglink relref="../../classes/wireelementshape.md" x="791.0" y="238.0" width="209.0" height="94.0" >}}
  {{< svglink relref="../../classes/conductorstructure.md" x="707.0" y="770.0" width="209.0" height="94.0" >}}
  {{< svglink relref="../../classes/transmissionmediumtype.md" x="553.0" y="203.0" width="209.0" height="106.0" >}}
  {{< svglink relref="../../classes/labeltype.md" x="84.0" y="749.0" width="209.0" height="106.0" >}}
  {{< svglink relref="../../classes/labelingtechnology.md" x="28.0" y="868.0" width="209.0" height="130.0" >}}
  {{< svglink relref="../../classes/wiregrouptype.md" x="924.0" y="560.0" width="209.0" height="70.0" >}}
  {{< svglink relref="../../classes/conductorspecification.md" x="322.0" y="686.0" width="213.0" height="163.0" >}}
  {{< svglink relref="../../classes/shieldspecification.md" x="581.0" y="1015.0" width="224.0" height="67.0" >}}
  {{< svglink relref="../../classes/conductorcurrentinformation.md" x="721.0" y="651.0" width="233.0" height="79.0" >}}
  {{< svglink relref="../../classes/insulationspecification.md" x="7.0" y="574.0" width="278.0" height="163.0" >}}
  {{< svglink relref="../../classes/wirespecification.md" x="97.0" y="98.0" width="722.0" height="43.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="97.0" y="14.0" width="722.0" height="55.0" >}}
  {{< svglink relref="../../classes/wireelementspecification.md" x="91.0" y="357.0" width="925.0" height="175.0" >}}
{{< / svgfigure >}}
<p> In the VEC&#160;wires are defined through a <i>WireSpecification,</i> regardless of their type. This means, for all types of wires (e.g. normal single core, multi core or coax wires)&#160;the same structure is used to describe them. Since a wire can be a hierarchical structure the actual definition of the structure is delegated to a <i>WireElementSpecification</i>. A <i>WireElementSpecification</i> can define a certain wire element and more complex structures by referencing the appropriate <i>subWireElementSpecifications. </i>      </p>      <p> This model structure is required, because some <i>WireElements </i>can exist as individual parts and as an element of one or more complex wires with the same technical properties (e.g. a FLRY-0.75 wire can be used standalone or as part of a multi core or twisted wire). In order to allow the reuse of such elements, the structure of a wire element is defined with <i>WireElementSpecification</i>s which can be shared and reused between different other <i>WireElementSpecifications </i>and <i>WireSpecifications</i>. This means a <i>WireSpecification </i>references the root <i>WireElementSpecification</i> that describes its structure, while the <i>subWireElementSpecifications </i>can be used by different <i>WireSpecifications </i>at the same time.      </p>      <p> In order to allow an unambiguous identification of a particular <i>WireElementSpecification </i>within the context of a <i>WireSpecification</i>, the <i>WireSpecification</i> defines a list of <i>WireElements</i> for each <i>WireElementSpecification </i>that belongs to the hierarchy of the wire. The <i>WireElement </i>defines the <i>identification</i> of a <i>WireElementSpecification</i> within the context of a wire.      </p>      <p> A <i>WireElementSpecification</i> can reference an <i>InsulationSpecification</i>, a <i>CoreSpecification, </i>a<i> ShieldSpecification, </i>a <i>FillerSpecification</i> and/or a <i>WireGroupSpecification</i> in order to describe its technical details. These aspects are separated into individual <i>Specifications</i> in order to allow the reuse of them. For example, the <i>CoreSpecification </i>of a FLRY-0.75 is the same for a group of wires, regardless of their insulation color. In turn the <i>InsulationSpecification </i>of a blue &amp; green FLRY wire might be the same for a group of wires, regardless of their cross-section area.      </p>      <p> When creating the hierarchy of <i>WireElementSpecifications</i> for a wire the representation with the minimal amount of <i>WireElementSpecifications</i> shall be used. This means that a single core shall be represented by a single <i>WireElementSpecification </i>with an <i>InsulationSpecification</i>&#160;and a <i>ConductorSpecification</i> and not with individual hierarchical <i>WireElementSpecifications</i> for the insulation and the conductor.      </p>      <p> In most cases, a <i>WireElement</i> has a physical representation within the wire. However, there are cases were the <i>WireElementSpecification</i> is just a group of <i>WireElementSpecifications</i> with no real physical manifestation. For example, a twisted pair wire, consists of two single core <i>WireElementSpecifications</i> and a parent <i>WireElementSpecification</i> that just defines the type of twist. Note: All<i> Specification </i>in this diagram, where no superclass is displayed inherit directly from <i>Specification.</i>      </p>