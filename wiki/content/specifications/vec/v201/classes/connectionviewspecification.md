---
title: ConnectionViewSpecification
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectionViewSpecification
menu_name: vec-2.0.1
---
<p> The <i>ConnectionViewSpecification</i> supports the exchange of a basic layout for a <i>ConnectionSpecification</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConnectionNodeViewItem]({{< relref "connectionnodeviewitem.md" >}}) | placedViewItems | 0..* | 1 | Specifies all <i>ComponentNodeViewItems</i> that are displayed within a <i>ConnectionViewSpecification</i>. |
| [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) | cartesianPoint | 0..* | 0..1 | Specifies all the <i>CartesianPoint2Ds</i> that are used within the <i>ConnectionViewSpecification</i><i>.</i> |
