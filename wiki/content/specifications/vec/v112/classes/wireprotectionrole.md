---
title: WireProtectionRole
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireProtectionRole
menu_name: vec-1.1.2
---
<p> A WireProtectionRole defines the instance specific properties and relationships of a wire protection.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p> | [Role]({{< relref "role.md" >}}) |
|protectionLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the length of the protection. </p> | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}) |
|tapeOverlap | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the amount of overlap two rounds of taping around a segment have.  </p> | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}) |
|tapingDirection | [TapingDirection]({{< relref "tapingdirection.md" >}}) | 0..1 | <p>Specifies the direction of the taping. </p> | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}) |
|gradient | [ValueWithUnit]({{< relref "valuewithunit.md" >}}) | 0..1 | <p>Specifies the gradient of the taping. </p> | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}}) | wireProtectionSpecification | 1 | 0..* | <p> References the <i>WireProtectionSpecification</i> that is instanced by this <i>WireProtectionRole.</i>      </p> |
