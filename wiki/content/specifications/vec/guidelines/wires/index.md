---
title: "Wires"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker, steinbuechler]
tags: ["Review", "Wire", "Single Core", "Multi Core"]
categories: []
date: 2019-03-07
lastmod: 2019-11-29T17:30:52+01:00
draft: false
review: false

classes:
  - WireSpecification
  - WireElement
  - WireElementSpecification
  - InsulationSpecification
  - CoreSpecification

history:
  - date: 2021-03-17T00:00:00Z
    description: "Added an XML example for the structure of a complex wire"
    issue: "KBLFRM-1032"
  - date: 2020-10-29T00:00:00Z
    description: "Adapted to structural changes of wires in VEC version 1.2.0"
    issue: "KBLFRM-953"

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    weight: 5000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 5000
---
## Single Core Specification

{{< figure src="single_core_specification.jpg" lightbox="true" title="Single Core Specification">}}

The figure above illustrates the specification of a single core wire. The {{< vec-class WireSpecification >}} is the {{< vec-class PartOrUsageRelatedSpecification >}} describing the {{< vec-class PartVersion >}}. In order to make it possible to reuse the specifications of wire elements in different wires or multi-cores (see [Multi Core Specification]({{< relref "#multi-core-specification" >}})), the actual properties and the structure of a wire is defined in a {{< vec-class WireElementSpecification >}}. The capabilities of a wire element are defined by the specifications referenced from the {{< vec-class WireElementSpecification >}} (e.g. a {{< vec-class InsulationSpecification >}} or a {{< vec-class CoreSpecification >}})

The {{< vec-class WireElement >}} is the context specific handle of a {{< vec-class WireElementSpecification >}} in the context of a {{< vec-class WireSpecification >}} (primarily needed for multi cores, but due to a consistent modelling approach also mandatory for single cores). The {{< vec-class WireElement >}}s is used as a handle for referencing, when a {{< vec-class WireSpecification >}} is instantiated (e.g. with a {{< vec-class PartOccurrence >}}).

If a wire element has multiple capabilities (e.g. insulation and core), then there are, in theory, multiple possible representations (see the figure below). It is recommended to always use the minimal representation of {{< vec-class WireElementSpecification >}} otherwise it inflates the number of objects without additional information. 

{{< figure src="minimal_representation.jpg" lightbox="true" title="Minimal Representation vs. non-compliant Representation">}}

## Multi Core Illustration

{{< figure src="multi_core_illustration.jpg" lightbox="true" title="Multi Core Illustration">}}

This illustration shows an example of a multi core. The example uses a multi core, which is insulated with a grey insulation, shielded and which contains two FLRY cores of different colouring that are a twisted pair.

## Multi Core Specification

{{< figure src="multi_core_specification.jpg" lightbox="true" title="Multi Core Specification">}}

The figure displays the representation of the multi core wire example in the VEC. The hierarchy of the wire is highlighted in the figure in green. The specification of the brown and green FLRY core (0.35-BRGN) is actually the same as the specification in the single core example (highlighted by the red outline in the figure). It is reused and not defined redundantly. Since it is the same {{< vec-class WireElementSpecification >}} object, the context specific naming of the {{< vec-class WireElement >}} is necessary, as mentioned in the single core example (highlighted in yellow).

The only difference between the two WireElements representing the two cores is the coloring of the insulation. Therefore the two {{< vec-class WireElementSpecification >}}s share the same {{< vec-class CoreSpecification >}}, but have individual {{< vec-class InsulationSpecification >}}s. In the context of the displayed {{< vec-class WireSpecification >}} the Brown & Green Core is addressed with the identification “1”, the second Core is addressed with the identification “2”. The two Cores are grouped together by a third {{< vec-class WireElementSpecification >}} (2x0.35-BRGN-RTBL).

This third {{< vec-class WireElementSpecification >}} defines the type of grouping by a {{< vec-class WireGroupSpecification >}}. In the example the Grouping is the definition of a twist of the two Cores. It also defines the insulation around the two SubWireElements by an {{< vec-class InsulationSpecification >}}. Since the defined wire has a conductive shield as well, the described {{< vec-class WireElementSpecification >}} references a {{< vec-class ShieldSpecification >}}, too. Again, this is the minimal possible representation of the wire element. The cross section area in the ShieldSpecification defines the nominal cross section area of the conductive material used in the shield.

## Multi Core with multiple Usage of the same WireElementSpecification - Illustration

{{< figure src="simplified_cat_cable.svg" lightbox="true" title="Multi Core Illustration">}}

This illustration show an example of a more complex multi core. The example is a simplified CAT cable with only two twisted pairs, which are insulated with a grey insulation and shielded. In theory the white wires of both pairs are "red-striped" and "green-striped" to match the corresponding coloured wires. In reality they are often just pain white and therefore can be defined with the same wire specification.

## Multi Core with multiple Usage of the same WireElementSpecification - Specification

{{< figure src="complex_multi_core_specification.jpg" lightbox="true" title="Multi Core with multiple Usage of the same WireElementSpecification">}}

To display the CAT cable and its SubWireElements, the hierarchy of the {{< vec-class WireElementSpecification >}}s (green) must be reflected in the hierarchy of the {{< vec-class WireElement >}}s (yellow). The figure shows the CAT cable itself with its shield (*"SHIELD"*) and the contained cable pairs (*"PAIR-1"* and *"PAIR-2"*). Each cable pair consists of the wires themselves (e.g. *"CORE-1a"* and *"CORE-1b"* for *"PAIR-1"*). As each of the cable pairs has a white wire with the same {{< vec-class WireElementSpecification >}}, they share the this specification. However, there are individual {{< vec-class WireElement >}} in order the keep them distinctive and unambiguously referenceable (e.g. from a {{< vec-class WireElementReference >}}.

The following XML snippet illustrates the structural composition of such a complex wire. 
All technical attributes and specifications for the detailed properties (e.g. insulation, twisting, conductor) are omitted for the clarity of the example.

```xml
<Specification id="id_1001_0" xsi:type="vec:WireElementSpecification">
  <Identification>RDWH-GRWH</Identification>
  <SubWireElementSpecification>id_2001_1 id_2001_2</SubWireElementSpecification>
</Specification>
<Specification id="id_1001_1" xsi:type="vec:WireElementSpecification">
  <Identification>GRWH</Identification>
  <SubWireElementSpecification>id_2001_3 id_2001_4</SubWireElementSpecification>
</Specification>
<Specification id="id_1001_2" xsi:type="vec:WireElementSpecification">
  <Identification>RDWH</Identification>
  <SubWireElementSpecification> id_2001_5 id_2001_4</SubWireElementSpecification>
</Specification>
<Specification id="id_1001_3" xsi:type="vec:WireElementSpecification">
  <Identification>GR</Identification>
</Specification>
<Specification id="id_1001_4" xsi:type="vec:WireElementSpecification">
  <Identification>WH</Identification>
</Specification>
<Specification id="id_1001_5" xsi:type="vec:WireElementSpecification">
  <Identification>RD</Identification>
</Specification>
<Specification id="id_1002_0" xsi:type="vec:WireSpecification">
  <Identification>Cat-Cable</Identification>
  <SpecialPartType>MultiCoreWire</SpecialPartType>
  <DescribedPart>id_2000_0</DescribedPart>
  <WireElementSpecification>id_1001_0</WireElementSpecification>
  <SubWireElement id="id_1002_1">
      <Identification>Green-White Twisted Cable</Identification>
      <WireElementSpecification>id_1001_1</WireElementSpecification>
      <SubWireElement id="id_1002_2">
          <Identification>Green Cable</Identification>
          <WireElementSpecification>id_1001_3</WireElementSpecification>
      </SubWireElement>
      <SubWireElement id="id_1002_3">
          <Identification>White Cable</Identification>
          <WireElementSpecification>id_1001_4</WireElementSpecification>
      </SubWireElement>
  </SubWireElement>
  <SubWireElement id="id_1002_4">
      <Identification>Red-White Twisted Cable</Identification>
      <WireElementSpecification>id_1001_2</WireElementSpecification>
      <SubWireElement id="id_1002_5">
          <Identification>Red Cable</Identification>
          <WireElementSpecification>id_1001_5</WireElementSpecification>
      </SubWireElement>
      <SubWireElement id="id_1002_6">
          <Identification>White Cable</Identification>
          <WireElementSpecification>id_1001_4</WireElementSpecification>
      </SubWireElement>
  </SubWireElement>
</Specification>
```