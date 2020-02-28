---
title: WireElement
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - WireElement
menu_name: vec-1.1.3
---
<p> A <i>WireElement </i>specifies a <i>WireElementSpecification</i> in the context of a <i>WireSpecification</i>. This is necessary to define a unique <i>identification</i> of a <i>WireElementSpecification </i>in the context of a <i>WireSpecification. </i>Additionally the <i>WireElement</i> serves as anchor for the instancing of a wire (<i>WireElementReference</i>).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> The identification of the WireElement. The identification is guaranteed to be unique within a wire and immutable. The identification is guaranteed to be the same for the same WireElement over different VEC documents.      </p> | [WireElement]({{< relref "wireelement.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) | wireElementSpecification | 1 | 0..* | <p> Reference the <i>WireElementSpecification </i>that is represented by the <i>WireElement.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | 0..* | referencedWireElement | 1 | <p> References the WireElement that is represented by the WireElementReference.      </p> |
| [WireSpecification]({{< relref "wirespecification.md" >}}) | 0..1 | wireElement | 1..* | <p> Specifies the WireElements that are available in the <i>WireSpecification</i>.      </p> |
