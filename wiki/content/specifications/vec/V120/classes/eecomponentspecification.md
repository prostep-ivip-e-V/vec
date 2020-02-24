---
title: EEComponentSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

classes:
  - EEComponentSpecification

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Base-class for the specification of electrological components, which are connected to the harness. Usually electrological components are not part of the harness e.g. a fuses, a switch or a control device. All EEComponents can have one or more HousingComponents which are possible interfaces for the connection to a harness.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [AntennaSpecification]({{< relref "antennaspecification.md" >}}), [BatterySpecification]({{< relref "batteryspecification.md" >}}), [CapacitorSpecification]({{< relref "capacitorspecification.md" >}}), [DiodeSpecification]({{< relref "diodespecification.md" >}}), [FuseSpecification]({{< relref "fusespecification.md" >}}), [MultiFuseSpecification]({{< relref "multifusespecification.md" >}}), [PotentialDistributorSpecification]({{< relref "potentialdistributorspecification.md" >}}), [RelaySpecification]({{< relref "relayspecification.md" >}}) |
| **Usage in Diagrams**   | [EE-Component subclasses]({{< relref "../description-of-components/ee-component-subclasses" >}})<br/> [EE-Components]({{< relref "../description-of-components/ee-components" >}})<br/> [Instances of EE-Components]({{< relref "../instances-of-components/instances-of-ee-components" >}})<br/> [Multi Fuse]({{< relref "../description-of-components/multi-fuse" >}})<br/> [Supplementary Parts]({{< relref "../description-of-components/supplementary-parts" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|powerConsumption | [PowerConsumption]({{< relref "powerconsumption.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>PowerConsumptions</i> of this <i>EEComponentSpecification.</i>      </p>    </body> </html>  | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [HousingComponent]({{< relref "housingcomponent.md" >}}) | housingComponent | 0..* | 1 | Specifies the available connector interfaces of the EEComponent.   |
| [ExtensionSlot]({{< relref "extensionslot.md" >}}) | extensionSlots | 0..* | 1 | Specifies the available ExtensionSlots of the EEComponent.  |
| [SwitchingState]({{< relref "switchingstate.md" >}}) | states | 0..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the available <i>SwitchingStates</i> of the EEComponent.      </p>    </body> </html>  |
| [InternalComponentConnection]({{< relref "internalcomponentconnection.md" >}}) | connections | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [EEComponentRole]({{< relref "eecomponentrole.md" >}}) | 0..* | EEComponentSpecification | 1 | <html>   <head>     </head>   <body>     <p> References the <i>EEComponentSpecification </i>that is instanced by this <i>EEComponentRole.</i>      </p>    </body> </html>  |
