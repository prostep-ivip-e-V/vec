---
title: Wire
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
  - WireElementShape
  - ConductorType
  - LabelType
  - WireGroupType
  - ConductorStructure
  - FlatCoreSpecification
  - WireElement
  - LabelingTechnology
  - FoilShieldWindingType
  - WireType
  - TransmissionMediumType
  - FillerSpecification
  - WireGroupSpecification
  - CoreSpecification
  - ConductorCurrentInformation
  - InsulationSpecification
  - ShieldSpecification
  - ConductorSpecification
  - WireSpecification
  - PartOrUsageRelatedSpecification
  - WireElementSpecification
menu:
  VEC-2.2.0:    
    parent: component-characteristics
    identifier: component-characteristics/wire
    weight: 1005001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005001
---
{{< svgfigure src="wire.png" width="1239" height="1129" caption="Wire" numbered="true" >}}
  {{< svglink relref="../../classes/wireelementshape.md" x="885.0" y="966.0" width="114.0" height="94.0" >}}
  {{< svglink relref="../../classes/conductortype.md" x="35.0" y="966.0" width="114.0" height="106.0" >}}
  {{< svglink relref="../../classes/labeltype.md" x="447.0" y="966.0" width="114.0" height="106.0" >}}
  {{< svglink relref="../../classes/wiregrouptype.md" x="1015.0" y="966.0" width="114.0" height="70.0" >}}
  {{< svglink relref="../../classes/conductorstructure.md" x="165.0" y="966.0" width="118.0" height="94.0" >}}
  {{< svglink relref="../../classes/flatcorespecification.md" x="395.0" y="833.0" width="124.0" height="55.0" >}}
  {{< svglink relref="../../classes/wireelement.md" x="357.0" y="182.0" width="126.0" height="79.0" >}}
  {{< svglink relref="../../classes/labelingtechnology.md" x="577.0" y="966.0" width="119.0" height="130.0" >}}
  {{< svglink relref="../../classes/foilshieldwindingtype.md" x="299.0" y="966.0" width="132.0" height="82.0" >}}
  {{< svglink relref="../../classes/wiretype.md" x="98.0" y="196.0" width="150.0" height="82.0" >}}
  {{< svglink relref="../../classes/transmissionmediumtype.md" x="712.0" y="966.0" width="157.0" height="106.0" >}}
  {{< svglink relref="../../classes/fillerspecification.md" x="853.0" y="581.0" width="166.0" height="67.0" >}}
  {{< svglink relref="../../classes/wiregroupspecification.md" x="635.0" y="581.0" width="193.0" height="67.0" >}}
  {{< svglink relref="../../classes/corespecification.md" x="143.0" y="833.0" width="202.0" height="55.0" >}}
  {{< svglink relref="../../classes/conductorcurrentinformation.md" x="696.0" y="710.0" width="233.0" height="79.0" >}}
  {{< svglink relref="../../classes/insulationspecification.md" x="7.0" y="581.0" width="278.0" height="175.0" >}}
  {{< svglink relref="../../classes/shieldspecification.md" x="569.0" y="833.0" width="292.0" height="79.0" >}}
  {{< svglink relref="../../classes/conductorspecification.md" x="310.0" y="581.0" width="300.0" height="187.0" >}}
  {{< svglink relref="../../classes/wirespecification.md" x="97.0" y="98.0" width="722.0" height="43.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="97.0" y="14.0" width="722.0" height="55.0" >}}
  {{< svglink relref="../../classes/wireelementspecification.md" x="91.0" y="357.0" width="925.0" height="175.0" >}}
{{< / svgfigure >}}
<p> In the VEC&#160;wires are defined through a <i>WireSpecification,</i> regardless of their type. This means, for all types of wires (e.g. normal single core, multi core or coax wires)&#160;the same structure is used to describe them. Since a wire can be a hierarchical structure the actual definition of the structure is delegated to a <i>WireElementSpecification</i>. A <i>WireElementSpecification</i> can define a certain wire element and more complex structures by referencing the appropriate <i>subWireElementSpecifications. </i>      </p>      <p> This model structure is required, because some <i>WireElements </i>can exist as individual parts and as an element of one or more complex wires with the same technical properties (e.g. a FLRY-0.75 wire can be used standalone or as part of a multi core or twisted wire). In order to allow the reuse of such elements, the structure of a wire element is defined with <i>WireElementSpecification</i>s which can be shared and reused between different other <i>WireElementSpecifications </i>and <i>WireSpecifications</i>. This means a <i>WireSpecification </i>references the root <i>WireElementSpecification</i> that describes its structure, while the <i>subWireElementSpecifications </i>can be used by different <i>WireSpecifications </i>at the same time. Due to increasing complexity of the data structures, the reuse of <i>WireElementSpecifications</i> between <i>WireSpecifications</i> shall be limited to single cores.      </p>      <p> In order to allow an unambiguous identification of a particular <i>WireElementSpecification </i>within the context of a <i>WireSpecification</i>, the <i>WireSpecification</i> defines a list of <i>WireElements</i> for each <i>WireElementSpecification </i>that belongs to the hierarchy of the wire. The <i>WireElement </i>defines the <i>identification</i> of a <i>WireElementSpecification</i> within the context of a wire.      </p>      <p> For complex wires, it may be necessary to define the order and layering of <i>WireElement</i> objects that are <i>subWireElements</i> of the same <i>WireElement</i>. This is relevant, for example, in multi-core wires where multiple <i>WireElements</i> are arranged circularly around an inner <i>WireElement</i>. Similarly, the order is also important for flat ribbon cables. This is defined with the <i>index- </i>and<i> layer</i>-attributes in the <i>WireElement.</i> As a consequence, order and layering cannot be reused between WireSpecifications, offering the advantage of a significantly simpler model structure.      </p>      <p> A <i>WireElementSpecification</i> can reference an <i>InsulationSpecification</i>, a <i>CoreSpecification, </i>a<i> ShieldSpecification, </i>a <i>FillerSpecification</i> and/or a <i>WireGroupSpecification</i> in order to describe its technical details. These aspects are separated into individual <i>Specifications</i> in order to allow the reuse of them. For example, the <i>CoreSpecification </i>of a FLRY-0.75 is the same for a group of wires, regardless of their insulation color. In turn the <i>InsulationSpecification </i>of a blue &amp; green FLRY wire might be the same for a group of wires, regardless of their cross-section area.      </p>      <p> When creating the hierarchy of <i>WireElementSpecifications</i> for a wire the representation with the minimal amount of <i>WireElementSpecifications</i> shall be used. This means that a single core shall be represented by a single <i>WireElementSpecification </i>with an <i>InsulationSpecification</i>&#160;and a <i>ConductorSpecification</i> and not with individual hierarchical <i>WireElementSpecifications</i> for the insulation and the conductor.      </p>      <p> In most cases, a <i>WireElement</i> has a physical representation within the wire. However, there are cases were the <i>WireElementSpecification</i> is just a group of <i>WireElementSpecifications</i> with no real physical manifestation. For example, a twisted pair wire, consists of two single core <i>WireElementSpecifications</i> and a parent <i>WireElementSpecification</i> that just defines the type of twist.      </p>      <p> <i>Note: All Specification in this diagram, where no superclass is displayed inherit directly from Specification.</i>      </p>