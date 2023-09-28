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
Before reading this implementation guideline, it is recommended to read the guideline about [wiring](../../elog-layers/wiring) first.
{{% /callout %}}

## Coupling

{{< figure src="mating_specification.jpg" title="Mating Specification" numbered="true" lightbox="true">}}

In the VEC, coupling/mating can be used to connect the harness side to another harness (in the case of an inliner) or to an ECU. The figure above shows a simplified example of the connection between an ECU (highlighted in orange) and a wiring connection (highlighted in blue). The {{< vec-class MatingPoint >}} class simply connects the two {{< vec-class TerminalRole >}}s on each side. This method is used, for example, in a wiring definition where the concrete connector is not yet known. For this reason, this example omits the geometric aspects of a coupling (connector housing, slots, cavities).

### Coupling with Provided Geometrical Information

{{< figure src="coupling_specification.jpg" title="Coupling Specification" numbered="true" lightbox="true">}}

When information about the geometrical circumstances is given or at least the final part number is known, the geometric coupling of a connector to another connector or an EEComponent can be done by using the {{< vec-class CouplingPoint >}} class with its underlying constructions. Specifying the reference of the first and second connector is sufficient to define the coupling. This requires that both sides have matching physical properties, such as size, shape, or coding. One level below the {{< vec-class CouplingPoint >}} class, you have the ability to define a {{< vec-class SlotCoupling >}} to name the slot on one side and the other. Additionally, a {{< vec-class CavityCoupling >}} can be used to couple cavities. A complete example can be found in the listing below.

{{% callout note %}}
Since the usage of {{< vec-class SlotCoupling >}} and {{< vec-class CavityCoupling >}} is optional, it is allowed to define coupling points without any underlying constructions. This can be done when this information is not yet known or when the implementation of the VEC needs to be minimized. In this case, the information about the facing slots and cavities must be provided by the process, such as the numbering of cavities (cavity '1' in the top-left corner).
{{% /callout %}}

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
