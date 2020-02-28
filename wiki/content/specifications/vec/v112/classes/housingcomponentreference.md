---
title: HousingComponentReference
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - HousingComponentReference
menu_name: vec-1.1.2
---
<p>A HousingComponentReference represents the usage of a HousingComponent in the context of a PartUsage or PartOccurrence.  (KBLFRM-401) </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the HousingComponentReference. The identification is guaranteed to be unique within the EEComponentRole.      </p> | [HousingComponentReference]({{< relref "housingcomponentreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) | connectorHousingRole | 0..* | 0..1 |  |
| [HousingComponent]({{< relref "housingcomponent.md" >}}) | housingComponent | 1 | 0..* | Points to the HousingComponent referenced by the HousingComponent reference.  (KBLFRM-401) |
| [PinComponentReference]({{< relref "pincomponentreference.md" >}}) | pinComponentRef | 0..* | 1 | Specifies the PinComponentReferences used in the HousingComponentReference.  (KBLFRM-401) |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [EEComponentRole]({{< relref "eecomponentrole.md" >}}) | 1 | housingComponentRef | 0..* | Specifies the HousingComponentReferences used in the EEComponentRole.  (KBLFRM-401) |
