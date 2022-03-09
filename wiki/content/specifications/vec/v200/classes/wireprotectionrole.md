---
title: WireProtectionRole
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireProtectionRole
menu_name: vec-2.0.0
---
<p> A WireProtectionRole defines the instance specific properties and relationships of a wire protection. This is a general-purpose role for instances of all types of <i>WireProtectionSpecifications</i> that do not have specific instance attributes. For <i>TapeSpecifications</i> the more specific <i>TapeRole</i> shall be used.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [TapeRole]({{< relref "taperole.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |
|protectionLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The <i>ProtectionLength</i> specifies the length of the area covered by the protection. As a consequence, the <i>ProtectionLength</i> may differ from the real length of the material (e.g. for tapes).      </p> | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}}) | wireProtectionSpecification | 1 | 0..* | <p> References the <i>WireProtectionSpecification</i> that is instanced by this <i>WireProtectionRole.</i>      </p> |
| [ProtectionMaterialLength]({{< relref "protectionmateriallength.md" >}}) | materialLength | 0..* | 1 |  |
