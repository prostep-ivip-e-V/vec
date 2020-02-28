---
title: WireType
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireType
menu_name: vec-1.2.0
---
<p> Specifies a wire type. A wire type is always defined by a key value. What wire type is meant by this key value is defined by a standard reference system.     </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|type | [String]({{< relref "string.md" >}}) | 1 | <p>Specifies the type of the wire (e.g. FLRY, NYFAZw). Valid values are defined by the wireTypeReferenceSystem.  </p> | [WireType]({{< relref "wiretype.md" >}}) |
|referenceSystem | [String]({{< relref "string.md" >}}) | 1 | <p>Specifies the reference system for the wire type.  </p> | [WireType]({{< relref "wiretype.md" >}}) |

