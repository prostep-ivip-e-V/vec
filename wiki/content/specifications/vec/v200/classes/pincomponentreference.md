---
title: PinComponentReference
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - PinComponentReference
menu_name: vec-2.0.0-rc1
---
<p>A PinComponentReference represents the usage of a PinComponent in the context of a PartUsage or PartOccurrence.  (KBLFRM-401) </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the PinComponentReference. The identification is guaranteed to be unique within the HousingComponentReference.      </p> | [PinComponentReference]({{< relref "pincomponentreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TerminalRole]({{< relref "terminalrole.md" >}}) | terminalRole | 0..1 | 0..1 | References the TerminalRole of PinComponentReference. This is required to specify a Mating for EEComponents with other EEComponents or a Harness.  (KBLFRM-401) |
| [PinComponent]({{< relref "pincomponent.md" >}}) | pinComponent | 1 | 0..* | Points to the PinComponent referenced by the PinComponent reference.  (KBLFRM-401) |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [HousingComponentReference]({{< relref "housingcomponentreference.md" >}}) | 1 | pinComponentRef | 0..* | Specifies the PinComponentReferences used in the HousingComponentReference.  (KBLFRM-401) |
| [PinWireMappingPoint]({{< relref "pinwiremappingpoint.md" >}}) |  | pinComponentReference | 1 |  |
