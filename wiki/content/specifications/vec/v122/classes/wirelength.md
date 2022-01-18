---
title: WireLength
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireLength
menu_name: vec-1.2.2
---
<p> Defines the length of a WireElementReference. A WireElementReference can have multiple lengths of different types but must not have more than one length of the same type.      </p>

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
|lengthType | [WireLengthType]({{< relref "wirelengthtype.md" >}}) | 1 | <p> The type of the length.&#160;Possible values are defined in an open enumeration (see WireLengthType).      </p> | [WireLength]({{< relref "wirelength.md" >}}) |
|lengthValue | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>The length value for the type.  </p> | [WireLength]({{< relref "wirelength.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | 1 | wireLength | 0..* | Specifies the different length of a wire. |
