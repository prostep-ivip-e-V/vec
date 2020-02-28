---
title: WireEnd
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireEnd
menu_name: vec-1.1.2
---
<p> A WireEnd is the end of a wire. This class mainly needed for the definition of a contacting. As a wire can be contacted on more than two ends (e.g. IDC) the WireEnd has a position on the wire.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the WireEnd. The identification is guaranteed to be unique within the WireElementReference.      </p> | [WireEnd]({{< relref "wireend.md" >}}) |
|positionOnWire | [Double]({{< relref "double.md" >}}) | 1 | <p>Specifies the position of the WireEnd on the wire. This must be a value between 0 and 1.  </p> | [WireEnd]({{< relref "wireend.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireMounting]({{< relref "wiremounting.md" >}}) | 0..* | referencedWireEnd | 1..* | <p> References the wire ends that are used for the wire mounting. The minimum cardinality is one, because a wire mounting without wire end makes no sense.     </p>      <p> The maximum cardinality is * in order to support multi crimps.      </p> |
| [WireMountingDetail]({{< relref "wiremountingdetail.md" >}}) | 0..* | referencedWireEnd | 1..* | References the WireEnds that are mounted to referenced WireReception. A cardinality of more than one is allowed in order support parallel connectors, where multiple wire ends are placed on one side of the connector (one wire reception) and the other wire ends are placed on the other side of the connector (the other wire reception). |
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | 1 | wireEnd | 0..* | Specifies the ends of the WireElementReference for contacting purposes. |
