---
title: "Coupling"
#linktitle: Link in Sidemenu
type: specs
toc: true
authors: ["becker"]
tags: ["Coupling", "Mating"]
categories: []
date: 2021-03-01
lastmod: 2023-06-23T15:11:41+01:00
draft: false
review: true

classes:
  - CouplingSpecification
  - Coupling
  - MatingPoint
  - SlotCoupling
  - CavityCoupling
  - MappingSpecification
  - Mapping
  - SlotMapping
  - CavityMapping

history:
  - date: 2023-10-24
    description: "Guideline covering all aspects of a coupling"
    issue: "KBLFRM-609"
  - date: 2023-10-24
    description: "Guideline for the handling of ambigious Mapping."
    issue: "KBLFRM-1212"

menu:
  vec-guidelines:
    parent: product-definition
    weight: 400

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 400
---
{{< review KBLFRM-1212 >}}
The VEC interprets the term "coupling" to encompass various types of plug-in or detachable connections within the wiring system. This includes the linking of wiring harnesses with one another, wiring harnesses with E/E components, and E/E components with one another (for example, fuses within fuse carriers). A distinction must be made between two dimensions: on the one hand, the definition in the master data of the components for valid combinations and the mapping of the different sides (see  {{< vec-diagram "component-characteristics/cavity-mapping">}}), and on the other hand the definition of a coupling in the actual use (see  {{< vec-diagram "connectivity/coupling-specification">}}). This is indicated in the figure below on the left hand side for the part master data and on the right hand side for the harness definition.

{{< figure src="coupling-overview.svg" title="Overview Coupling Concepts" numbered="true" lightbox="true">}}

## Aspects of the Coupling

From a conceptual point of view, the properties of a pluggable connection can be separated into two aspects, mechanical properties like which connectors fit each other or which cavities are opposite each other and electrical properties like which pin is connected to which terminal / wire. Since those information can be defined in different domains and different point in the development process, the VEC allows the definition and exchange of these aspects independant from each other. This is illustrated by the exemplary process below.  

{{< figure src="coupling-definition-process.svg" title="Exemplary Process for Derivation of Couplings" numbered="true" lightbox="true">}}

The following activities are hidden behind the process steps shown.

1. **Abstract Wiring Definition**: Electrical connections ("proto wires") are connected to logical pins of an E/E component (see [Wiring]({{< relref "../../elog-layers/wiring">}})). In terms from above, the definition of the eletrical aspect of the coupling in its usage is required.
2. **ECU Interface Definition**: The mechanical interface of the E/E component ("the Header") is assigned. A mapping between electrical pins of the E/E component and the cavities of the ECU connector is created. This is done in the part master data of the E/E component.
3. **Harness Connector Selection**: A harness connnector that is compabtible to E/E component connector is selected. This is done taking into account the mechanical properties of the connector. Normally, other criteria are also taken into account here, such as the properties of the installation space or compatibility with terminals. However, foundation for this are the mechanical properties of a connector defined in den part master data.
4. **Cavity Assignment Harness Connector**: Based an on a mapping between E/E component connector cavities and harness connector cavities, defined in the part master data, it can be calculated which cavities in the usage are opposite to each other. As it is known which Pin is associated to which E/E component connector cavity and it is also known which harness terminal / wire is associated to which E/E component pin, the accociation between harness connector cavity and harness terminal / wire can be derived.

Following the paradigm of the VEC, both the input data and the results of the steps just described can be represented in the model and used independently of each other. The concepts for each step are described in the sections below (following the order from above).

## Electrical Coupling

The electrical aspects of a coupling in concrete usage are defined with a  {{<vec-class MatingPoint >}} and {{<vec-class MatingDetail>}}s in the case terminals with multiple {{<vec-class TerminalReception>}}s (see figure "Electrical Coupling" below). 


{{< figure src="electrical-coupling.jpg" title="Electrical Coupling" numbered="true" lightbox="true">}}

There are situations, where logical {{<vec-class Connection>}}s are realized in physical layer directly by a pluggable "connection" (e.g. two E/E components are conntected directly to each other, see [Direct Connectivity]({{<relref "../../elog-layers/wiring/#direct-connectivity" >}})). Therefore, the {{<vec-class MatingPoint >}} _can_ create traceability links into the schematic layer.

The {{<vec-class CouplingPoint >}} is used to group the information that is associated with a single coupling operation (e.g. all connections that are created with the plugging of a single connector). If this grouping is already known in the electrologic layer, it is useful (e.g. for traceability reasons) to group the {{<vec-class MatingPoint >}}s in a {{<vec-class CouplingPoint >}}. However, if this is not know at the time of creation, it is perfectly valid to create an individual {{<vec-class CouplingPoint >}} for each mating. Nevertheless, when these ungrouped matings are assigned to a connector at a later stage, they shall be regrouped und a single {{<vec-class CouplingPoint >}}.

## E/E Component Interface Definition

The assignment of electrical pins in an E/E-component to cavities of the mechanical interface is described in detail in the guideline about [E/E-components]({{<relref "../../ee-components/#basic-structure">}}).

## Mechanical Compatibility and Mapping of Connectors

Coupling compatibility in the part master data is defined with a {{<vec-class Mapping>}} within a {{<vec-class MappingSpecification>}}. Due to the distributed nature of part master data the mapping is not defined with explicit reference, but by defining pairs of keys (e.g. CavityNumber). This is illustrated in the figure below. As you can see, the {{<vec-class Mapping>}} only requires links the {{<vec-class PartVersion>}}s. Apart from that, it is self-contained and independant from the part master data definition. Therefore, it can be exchanged idenpendantly without then to embedd all {{<vec-class "ConnectorHousingSpecification">}}s of the related connectors.

{{< figure src="cavity-mapping.jpg" title="Definition of a Mapping" numbered="true" lightbox="true">}}

The semantic of the mapping is, that it describes a mapping for the {{<vec-class "ConnectorHousingSpecification">}} "_related_" to the {{<vec-class PartVersion>}}s, but what does "_related_" mean? Currently there are two {{<vec-class PrimaryPartType>}}s that utilize the {{<vec-class "ConnectorHousingSpecification">}}, _ConnectorHousing_ and _EEComponent_.

For a _ConnectorHousing_ "related" is defined as the {{<vec-class "ConnectorHousingSpecification">}} that are referencing the {{<vec-class PartVersion>}} as _describedPart_. Usally this is just one. For an _EEComponent_ "related" are the {{<vec-class "ConnectorHousingSpecification">}}s that are used to by the {{<vec-class HousingComponent>}}s of the _EEComponent_. This can be as many as there are {{<vec-class HousingComponent>}}s. To resolve this ambiguity, the _IdentificationA_ & _IdentificationB_ relate to the _Identification_ of the {{<vec-class "ConnectorHousingSpecification">}} upon which the mapping is defined.

These properties (_IdentificationA_ & _IdentificationB_ in the {{<vec-class Mapping>}}) are optional for backwards compatibility, because they where first introduced in VEC 2.1. In versions before, there was chance to have an ambigious mapping for E/E components. See next section for an explanation. 
{{% callout note %}}
Regardless of their formally optionality, it is strongly recommend to define the identifications for the {{<vec-class "ConnectorHousingSpecification">}}s in the {{<vec-class Mapping>}}, for data created with VEC 2.1 and later.
{{% /callout %}}

### Ambiguity of the Mapping (before V2.1)

The diagram below shows the situation for mappings before VEC V2.1. On the right side it is pretty clear, which slot is adressed _SlotMapping.IdentificationB = 1_, since the {{<vec-class PartVersion>}} _6789_ is a "ConnectorHousing" and has only related {{<vec-class "ConnectorHousingSpecification">}}. On the left hand side, this is only the case, because of the special situation illustrated in the diagram, where the {{<vec-class "ConnectorHousingSpecification">}} "I" and "II" define different values for _Slot.SlotNumber_, which are unique within the scope of the E/E component.   

{{< figure src="ambigious-mapping.jpg" title="Ambigious Mapping before VEC V2.1" numbered="true" lightbox="true">}}

But, in general the _SlotNumber_ is only required "to be unique within a ConnectorHousingSpecification". So it would be perfectly valid for an E/E component to use {{<vec-class "ConnectorHousingSpecification">}}s that define {{<vec-class Slot >}}s with identical _SlotNumbers_ like "A", "1", "default" or whatever else the specific naming convention of the process defines as appropriate. However, in this case it would not be possible to associate defined mapping with the correct {{<vec-class "ConnectorHousingSpecification">}}.

Therefore, VEC V2.1 introduced corresponding "IdenticationA" & "IdenticationB" attributes in the {{<vec-class "Mapping">}} (see diagram below). Despite having the same _SlotNumbers_ un the right side, the mapping is defined unambigiously.

{{< figure src="unambigious-mapping.jpg" title="Unambigious Mapping for VEC V2.1 and later" numbered="true" lightbox="true">}}

{{% callout note %}}
For backwards compatibility it is allowed to omit the _Identification_-attributes in the {{<vec-class "Mapping">}}, but this is only permitted in cases where the mapping still can be associated unambigiously, even without the _Identifications_ in the Mapping-class. This is normally the case for regular _ConnectorHousing_, which only a single related {{<vec-class "ConnectorHousingSpecification">}} and _EEComponents_ that satisfy the requirement of unique _SlotNumbers_ within all {{<vec-class "ConnectorHousingSpecification">}}s related to _EECompionent_ (as illustrated in figure "Ambigious Mapping before VEC V2.1").

To simplify the situation for future implementations, it is highly recommended to define the _Identification_-attributes in VEC V2.1 and later, even if they are not mandatory.

The only solution to define an unambigious mapping for situations like the one illustrated in figure "Unambigious Mapping for VEC V2.1 and later" in VEC versions before 2.1, is to define {{<vec-class CustomProperty>}}s for _IdentificationA & B_ on the extendable {{<vec-class "Mapping">}}-class.
{{% /callout %}}

## Mechanical Coupling

As described in section [Aspects of the Coupling](#aspects-of-the-coupling) the mechanical coupling in a specific usage can be derived from the part master data and the {{<vec-class Mapping>}}. The result of that process is stored in the "mechanical" part of the {{<vec-class CouplingPoint >}}. However, this derivation process is not necessarily required. As always, the VEC makes no assumption about the creation process of a specific information item, e.g. if the process requires a manual definition in the usage, this would be perfectly valid as well and the result of the process would stored in the {{<vec-class CouplingSpecification>}}. 

It would also be imaginable to have a process where the definition of the coupling for a bordnet would happen after the development of all involved harnesses. In this case, the {{<vec-class CouplingSpecification>}} might be created in its own {{<vec-class DocumentVersion >}}.

The figure below contains an example of a completely defined {{<vec-class CouplingPoint>}}.

{{< figure src="complete-coupling.jpg" title="Complete Coupling Point" numbered="true" lightbox="true">}}
