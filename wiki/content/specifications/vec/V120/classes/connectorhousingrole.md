---
title: ConnectorHousingRole
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A ConnectorHousingRole defines the instance specific properties and relationships of a connector housing.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Coupling Specification]({{< relref "../connectivity/coupling-specification" >}})<br/> [Instances of Connector Housings]({{< relref "../instances-of-components/instances-of-connector-housings" >}})<br/> [Instances of EE-Components]({{< relref "../instances-of-components/instances-of-ee-components" >}})<br/> [Wiring Specification]({{< relref "../connectivity/wiring-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p></body></html> | [Role]({{< relref "role.md" >}}) |
|sealState | [SealState]({{< relref "sealstate.md" >}}) | 0..1 | <html><body><p>Specifies if this instance of a connector housing should be sealed (waterproof).  </p></body></html> | [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ComponentNode]({{< relref "componentnode.md" >}}) | componentNode | 0..1 | 0..* | <html>   <head>     </head>   <body>     <p> References the ComponentNode that is realized by the referenced ConnectorHousing (OccurrenceOrUsage with ConnectorHousingRole). This can especially be relevant for inliners. KBLFRM-341.      </p>    </body> </html>  |
| [AbstractSlotReference]({{< relref "abstractslotreference.md" >}}) | slotReference | 0..* | 1 | Specifies the SlotReferences used in the ConnectorHousingRole.   |
| [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) | connectorHousingSpecification | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>ConnectorHousingSpecification </i>that is instanced by this <i>ConnectorHousingRole.</i>      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [HousingComponentReference]({{< relref "housingcomponentreference.md" >}}) | 0..1 | connectorHousingRole | 0..1 |  |
| [CouplingPoint]({{< relref "couplingpoint.md" >}}) | 0..* | firstConnector | 0..1 |  |
| [CouplingPoint]({{< relref "couplingpoint.md" >}}) | 0..* | secondConnector | 0..1 |  |
| [ModularSlotReference]({{< relref "modularslotreference.md" >}}) | 0..* | usedInserts | 0..* | <html>   <head>     </head>   <body>     <p> References the inserts that are used in this <i>ModularSlotReference. </i>More than one insert is valid in the case variant dependent equipment of the slot.       </p>    </body> </html>  |
