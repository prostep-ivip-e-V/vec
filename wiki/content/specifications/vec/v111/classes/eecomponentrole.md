---
title: EEComponentRole
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - EEComponentRole
menu_name: vec-1.1.1
---
<p> An EEComponentRole defines the instance specific properties and relationships of an EE-component.      </p>
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

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CavityReference]({{< relref "cavityreference.md" >}}) | mountingCavity | 0..* | 0..* | Specifies the cavities to which into which the EE-component is mounted. |
| [HousingComponentReference]({{< relref "housingcomponentreference.md" >}}) | housingComponentRef | 0..* | 1 | Specifies the HousingComponentReferences used in the EEComponentRole.  (KBLFRM-401) |
| [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) | EEComponentSpecification | 1 | 0..* | <p> References the <i>EEComponentSpecification </i>that is instanced by this <i>EEComponentRole.</i>      </p> |
| [ComponentNode]({{< relref "componentnode.md" >}}) | componentNode | 0..1 | 0..* | References the ComponentNode that is realized by the referenced EEComponent (OccurrenceOrUsage with EEComponentRole). KBLFRM-341 |
| [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) | mountingHousing | 0..* | 0..* | Specifies the connector housing to which into which the EE-component is mounted. |
| [AbstractSlotReference]({{< relref "abstractslotreference.md" >}}) | mountingSlot | 0..* | 0..* | Specifies the slots to which into which the EE-component is mounted. |
