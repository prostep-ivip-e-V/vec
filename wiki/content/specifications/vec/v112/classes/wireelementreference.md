---
title: WireElementReference
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireElementReference
menu_name: vec-1.1.2
---
<p> A WireElementReference represents the usage of a WireElement in the context of a PartUsage or PartOccurrence. For contacting purposes a WireElementReference has WireEnds. KBLFRM-384      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [RoutableElement]({{< relref "routableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the WireElementReference. The identification is guaranteed to be unique within the WireRole.      </p> | [WireElementReference]({{< relref "wireelementreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Signal]({{< relref "signal.md" >}}) | signal | 0..1 | 0..* | References the signal that is transmitted by the WireElementReference. |
| [Connection]({{< relref "connection.md" >}}) | connection | 0..1 | 0..* | References the Connection that is realized by the referenced WireElement (WireElementReference). KBLFRM-341 |
| [WireEnd]({{< relref "wireend.md" >}}) | wireEnd | 0..* | 1 | Specifies the ends of the WireElementReference for contacting purposes. |
| [WireLength]({{< relref "wirelength.md" >}}) | wireLength | 0..* | 1 | Specifies the different length of a wire. |
| [WireElement]({{< relref "wireelement.md" >}}) | referencedWireElement | 1 | 0..* | <p> References the WireElement that is represented by the WireElementReference.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireGrouping]({{< relref "wiregrouping.md" >}}) | 0..* | relatedWireRole | 2..* | References the concrete wire elements (WireElementReference) that are grouped by the WireGrouping. |
| [WireRole]({{< relref "wirerole.md" >}}) | 1 | wireElementReference | 0..* | Specifies the WireElementReferences used in the WireRole. For multi core wires more than one WireElementReference is needed. |
