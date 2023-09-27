---
title: "Coupling"
#linktitle: Link in Sidemenu
type: specs
toc: true
authors: ["fehlmann"]
tags: ["Coupling", "Mating"]
categories: []
date: 2021-03-01
lastmod: 2023-06-23T15:11:41+01:00
draft: false
review: false

classes:
  - ContactingSpecification
  - ContactPoint
  - MatingPoint
  - SlotCoupling
  - CavityCoupling

history:
  - date: 2023-06-23
    description: "Move coupling from the electrological layer wiring"
    issue: "KBLFRM-609"

menu:
  vec-guidelines:
    parent: product-definition
    weight: 400

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 400
---
{{% callout note %}}
Before reading this implementation guideline, it is recommended to read the guideline about the [wiring]({{< relref "../../elog-layers/wiring" >}}) first.
{{% /callout %}}

## Coupling

{{< figure src="mating_specification.jpg" title="Mating Specification" numbered="true" lightbox="true">}}

In the VEC the coupling / mating can be used to connect the harness side to another harness (in the case of an inliner) or to an ECU. The figure above shows a simplified example of the connection between an ECU (highlighted in orange) and a wiring connection (highlighted in blue). The {{< vec-class MatingPoint >}} simply connects the two {{< vec-class TerminalRole >}}s on each side. This method is used for example in a wiring definition, where the concrete connector is not yet known. For this reason this example omits the geometric aspects of a coupling (connector housing, slots, cavities).


### Coupling with given geometrical information

{{< figure src="coupling_specification.jpg" title="Coupling Specification" numbered="true" lightbox="true">}}

When information about the geometrical circumstances are given or at least the final part number is known, the coupling of a connector to another connector or an EEComponent can be done by simply using the {{< vec-class CouplingPoint >}} w/o any underlying constructions (like in the example above). The reference of the first and second connector is sufficient to specify the coupling. This requires that both sides have matching physical properties e.g. size, shape or a coding and the process defines surrounding conditions like the numbering of cavities. And of course, this gemetrical way of coupling can be combined with the electrical one explained the section above.

{{% callout note %}}
Becaus the usage of {{< vec-class SlotCoupling >}} and {{< vec-class CavityCoupling >}} is optional, the information about the facing cavities must be given by the process. For examlpe the counting starts at the top left cavity and goes down row by row to the bottom rigth one.
{{% /callout %}}

If this is not given, the {{< vec-class CouplingPoint >}} has the ability to define a {{< vec-class SlotCoupling >}} to name the slot from the one and the other side. And (if necessary) a {{< vec-class CavityCoupling >}} can be used to couple cavities if the numbering is not matching at all. A full example can be found in the listing below:

```xml
<Specification xsi:type="vec:CompositionSpecification" id="id_composition_1">
    <Component id="id_component_1">
        <Identification>MaleConnector</Identification>
        [...] 
        <Role xsi:type="vec:ConnectorHousingRole" id="connectorHousingRole_1">
            <Identification>MaleConnector</Identification>
            <ComponentNode>componentNode_1</ComponentNode>
            <ConnectorHousingSpecification>connectorHousingSpecification_1</ConnectorHousingSpecification>
            <SlotReference xsi:type="vec:SlotReference" id="slotReference_1">
                <Identification>A</Identification>
                <ReferencedSlot>slot_1</ReferencedSlot>
                <CavityReference id="cavityReference_1">
                    <Identification>1</Identification>
                    <ReferencedCavity>cavity_1</ReferencedCavity>
                </CavityReference>
                <CavityReference id="cavityReference_2">
                    <Identification>2</Identification>
                    <ReferencedCavity>cavity_2</ReferencedCavity>
                </CavityReference>
            </SlotReference>
        </Role>
        <Part>partVersion_1</Part>
    </Component>
    <Component id="id_component_2">
        <Identification>FemaleConnector</Identification>
        [...] 
        <Role xsi:type="vec:ConnectorHousingRole" id="connectorHousingRole_2">
            <Identification>FemaleConnector</Identification>
            <ComponentNode>componentNode_2</ComponentNode>
            <ConnectorHousingSpecification>connectorHousingSpecification_2</ConnectorHousingSpecification>
            <SlotReference xsi:type="vec:SlotReference" id="slotReference_2">
                <Identification>A</Identification>
                <ReferencedSlot>slot_2</ReferencedSlot>
                <CavityReference id="cavityReference_3">
                    <Identification>1</Identification>
                    <ReferencedCavity>cavity_3</ReferencedCavity>
                </CavityReference>
                <CavityReference id="cavityReference_4">
                    <Identification>2</Identification>
                    <ReferencedCavity>cavity_4</ReferencedCavity>
                </CavityReference>
            </SlotReference>
        </Role>
        <Part>partVersion_2</Part>
    </Component>
</Specification>
[...]
<Specification xsi:type="vec:CouplingSpecification" id="id_coupling_1">
    <CouplingPoint  id="id_couplingPoint_1">
        <Identification>Coupling-Male-Female</Identification>
        <FirstConnector>connectorHousingRole_1</FirstConnector>
        <SecondConnector>connectorHousingRole_2</SecondConnector>
        <SlotCoupling id="id_slotCoupling_1">
           <Identification>Coupling-A</Identification>
            <FirstSlot>slotReference_1</FirstSlot>
            <SecondSlot>slotReference_2</SecondSlot>
            <CavityCoupling id="id_cavityCoupling_1">
                <Identification>Coupling-Cavity-1</Identification>
                <FirstCavity>cavityReference_1</FirstCavity>
                <SecondCavity>cavityReference_4</SecondCavity>
            </CavityCoupling>
            <CavityCoupling id="id_cavityCoupling_2">
                <Identification>Coupling-Cavity-2</Identification>
                <FirstCavity>cavityReference_2</FirstCavity>
                <SecondCavity>cavityReference_3</SecondCavity>
            </CavityCoupling>
        </SlotCoupling>
    </CouplingPoint>
</Specification>
```
