﻿---
title: WireElementReference
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireElementReference
menu_name: vec-2.0.0
---
<p> A WireElementReference represents the usage of a WireElement in the context of a PartUsage or PartOccurrence. For contacting purposes, a WireElementReference has WireEnds. KBLFRM-384      </p>

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
|unconnected | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> If this attribute is <i>true</i>, the <i>WireElementReference</i> is not connected (unused) on purpose. This can be the case for example if a multi core is used, but not all cores are necessary in a specific situation.      </p>      <p> However, for all <i>WireElements</i> defined in the <i>WireSpecification</i> a corresponding <i>WireElementReference</i> shall exist. This attribute can be used to mark these unused cores explicitly.      </p> | [WireElementReference]({{< relref "wireelementreference.md" >}}) |
|labelValue | [String]({{< relref "string.md" >}}) | 0..1 | Specifies the value of label, if this <i>WireElementReference</i> is labled. | [WireElementReference]({{< relref "wireelementreference.md" >}}) |
|labelType | [LabelType]({{< relref "labeltype.md" >}}) | 0..1 |  | [WireElementReference]({{< relref "wireelementreference.md" >}}) |
|labelPosition | [LabelPosition]({{< relref "labelposition.md" >}}) | 0..1 | Specifies the position of label, if this <i>WireElementReference</i> is labled. | [WireElementReference]({{< relref "wireelementreference.md" >}}) |
|labelingTechnology | [LabelingTechnology]({{< relref "labelingtechnology.md" >}}) | 0..1 | Specifies the used <i>LabelingTechnology</i>, if this <i>WireElementReference</i> is labled. | [WireElementReference]({{< relref "wireelementreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireLength]({{< relref "wirelength.md" >}}) | wireLength | 0..* | 1 | Specifies the different length of a wire. |
| [WireEnd]({{< relref "wireend.md" >}}) | wireEnd | 0..* | 1 | Specifies the ends of the WireElementReference for contacting purposes. |
| [ConnectionGroup]({{< relref "connectiongroup.md" >}}) | connectionGroup | 0..* |  | <p> References the <i>ConnectionGroup</i> that is realized by this <i>WireElementReference.</i> This applies normally to <i>WireElementReference </i>that have <i>subWireElements</i>.      </p> |
| [Signal]({{< relref "signal.md" >}}) | signal | 0..1 | 0..* | References the signal that is transmitted by the WireElementReference. |
| [Connection]({{< relref "connection.md" >}}) | connection | 0..* | 0..* | References the Connection that is realized by the referenced WireElement (WireElementReference). KBLFRM-341 |
| [WireElement]({{< relref "wireelement.md" >}}) | referencedWireElement | 1 | 0..* | <p> References the WireElement that is represented by the WireElementReference.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireGrouping]({{< relref "wiregrouping.md" >}}) | 0..* | relatedWireElementReference | 0..* | <p> References the concrete wire elements (<i>WireElementReference</i>) that are grouped by the WireGrouping.      </p> |
| [WireRole]({{< relref "wirerole.md" >}}) | 1 | wireElementReference | 0..* | Specifies the WireElementReferences used in the WireRole. For multi core wires more than one WireElementReference is needed. |
