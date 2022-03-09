---
title: CavityReference
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - CavityReference
menu_name: vec-2.0.0
---
<p> A CavityReference represents the usage of a Cavity in the context of PartUsage or PartOccurrence.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the CavityReference. The identification is guaranteed to be unique within the ConnectorHousingRole. The cavity &amp; slot number is defined by the associated cavity and slot.      </p> | [CavityReference]({{< relref "cavityreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TerminalRole]({{< relref "terminalrole.md" >}}) | integratedTerminalRole | 0..1 | 0..1 | <p> Contains the terminal role if the cavity has an integrated terminal (e.g. an IDC).      </p> |
| [Cavity]({{< relref "cavity.md" >}}) | referencedCavity | 1 | 0..* | Points to the cavity referenced by the cavity reference. |
| [ComponentPort]({{< relref "componentport.md" >}}) | componentPort | 0..* | 0..* | <p> References the <i>ComponentPort</i> that is implemented by this <i>CavityReference</i>.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SlotReference]({{< relref "slotreference.md" >}}) | 1 | cavityReference | 0..* | Specifies the CavityReferences used in the SlotReference. |
| [CavityMountingDetail]({{< relref "cavitymountingdetail.md" >}}) | 0..* | equippedCavityRef | 1 | References the cavity that is used for the detailed description of the cavity mounting. |
| [CavityMounting]({{< relref "cavitymounting.md" >}}) | 0..* | equippedCavityRef | 1..* | References the cavities that are used for the cavity mounting. |
| [CavityCoupling]({{< relref "cavitycoupling.md" >}}) | 0..* | firstCavity | 1 |  |
| [CavityPlugRole]({{< relref "cavityplugrole.md" >}}) | 0..* | pluggedCavityRef | 0..* | Defines which cavity / cavities in a connector instance is sealed by the plug. |
| [CavityCoupling]({{< relref "cavitycoupling.md" >}}) | 0..* | secondCavity | 1 |  |
