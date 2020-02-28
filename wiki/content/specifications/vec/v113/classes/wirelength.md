---
title: WireLength
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - WireLength
menu_name: vec-1.1.3
---
<p> Defines the length of a WireElementReference. A WireElementReference can have multiple lengths of different types, but must not have more than one length of the same type.      </p>
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
|lengthType | [String]({{< relref "string.md" >}}) | 1 | <p>The type of the length (e.g. DMU, CUT). This should be an enumeration of values defined in a conformance class.  </p> | [WireLength]({{< relref "wirelength.md" >}}) |
|lengthValue | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>The length value for the type.  </p> | [WireLength]({{< relref "wirelength.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | 1 | wireLength | 0..* | Specifies the different length of a wire. |
