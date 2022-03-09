---
title: EEComponentRole
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - EEComponentRole
menu_name: vec-2.0.0
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
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [HousingComponentReference]({{< relref "housingcomponentreference.md" >}}) | housingComponentRef | 0..* | 1 | Specifies the HousingComponentReferences used in the EEComponentRole.  (KBLFRM-401) |
| [ComponentNode]({{< relref "componentnode.md" >}}) | componentNode | 0..* | 0..* | References the ComponentNode that is realized by the referenced EEComponent (OccurrenceOrUsage with EEComponentRole). KBLFRM-341 |
| [ExtensionSlotReference]({{< relref "extensionslotreference.md" >}}) | extensionSlotRef | 0..* | 1 | Specifies the ExtensionSlotReferences used in the EEComponentRole. |
| [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) | EEComponentSpecification | 1 | 0..* | <p> References the <i>EEComponentSpecification </i>that is instanced by this <i>EEComponentRole.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ExtensionSlotReference]({{< relref "extensionslotreference.md" >}}) | 0..* | usedInserts | 0..* | Defines the inserts used for extension slot in a defined instance. These can be more than one EEComponentRole, because of variance in a 150% specification. |
