---
title: ConnectionViewSpecification
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectionViewSpecification
menu_name: vec-2.0.2
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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>cartesianPoint</td>
        <td><a href="{{< relref "cartesianpoint2d.md" >}}">CartesianPoint2D</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>Specifies all the <i>CartesianPoint2Ds</i> that are used within the <i>ConnectionViewSpecification</i><i>.</i></td>
    </tr>
    <tr>
        <td>placedViewItems</td>
        <td><a href="{{< relref "connectionnodeviewitem.md" >}}">ConnectionNodeViewItem</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>{{< deprecated since="2.0.2" reason="Target class was accidentally named incorrectly in 2.0.0. Use ComponentNodeViewItem instead.">}}Specifies all <i>ComponentNodeViewItems</i> that are displayed within a <i>ConnectionViewSpecification</i>.</td>
    </tr>
    <tr>
        <td>placedNodeViewItems</td>
        <td><a href="{{< relref "componentnodeviewitem.md" >}}">ComponentNodeViewItem</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies all <i>ComponentNodeViewItems</i> that are displayed within a <i>ConnectionViewSpecification</i>.      </p></td>
    </tr>
    </tbody>
</table>




