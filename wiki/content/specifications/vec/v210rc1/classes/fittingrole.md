---
title: FittingRole
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - FittingRole
menu_name: vec-2.1.0
---
<p> Specific <i>WireProtectionRole </i>for instances of <i>FittingSpecification.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |
|protectionLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The <i>ProtectionLength</i> specifies the length of the area covered by the protection. As a consequence, the <i>ProtectionLength</i> may differ from the real length of the material (e.g. for tapes).      </p> | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}) |





