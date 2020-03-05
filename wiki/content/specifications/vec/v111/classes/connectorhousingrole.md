---
title: ConnectorHousingRole
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectorHousingRole
menu_name: vec-1.1.1
---
<p> A ConnectorHousingRole defines the instance specific properties and relationships of a connector housing.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p> | [Role]({{< relref "role.md" >}}) |
|sealState | [SealState]({{< relref "sealstate.md" >}}) | 0..1 | <p>Specifies if this instance of a connector housing should be sealed (waterproof).  </p> | [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) | connectorHousingSpecification | 1 | 0..* | <p> References the <i>ConnectorHousingSpecification </i>that is instanced by this <i>ConnectorHousingRole.</i>      </p> |
| [ComponentNode]({{< relref "componentnode.md" >}}) | componentNode | 0..1 | 0..* | <p> References the ComponentNode that is realized by the referenced ConnectorHousing (OccurrenceOrUsage with ConnectorHousingRole). This can especially be relevant for inliners. KBLFRM-341.      </p> |
| [AbstractSlotReference]({{< relref "abstractslotreference.md" >}}) | slotReference | 0..* | 1 | Specifies the SlotReferences used in the ConnectorHousingRole. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [EEComponentRole]({{< relref "eecomponentrole.md" >}}) | 0..* | mountingHousing | 0..* | Specifies the connector housing to which into which the EE-component is mounted. |
| [ModularSlotReference]({{< relref "modularslotreference.md" >}}) | 0..* | usedInserts | 0..* | <p> References the inserts that are used in this <i>ModularSlotReference. </i>More than one insert is valid in the case variant dependent equipment of the slot.       </p> |
