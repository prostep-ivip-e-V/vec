---
title: ProtectionMaterialLength
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ProtectionMaterialLength
menu_name: vec-2.0.1
---
<p> Defines the material length of a <i>WireProtectionRole</i>. A <i>WireProtectionRole</i> can have multiple lengths of different types but must not have more than one length of the same type.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|lengthValue | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 |  | [ProtectionMaterialLength]({{< relref "protectionmateriallength.md" >}}) |
|valueDetermination | [ValueDetermination]({{< relref "valuedetermination.md" >}}) | 1 |  | [ProtectionMaterialLength]({{< relref "protectionmateriallength.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}) | 1 | materialLength | 0..* |  |
