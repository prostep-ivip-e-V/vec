---
title: OccurrenceOrUsageViewItem2D
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - OccurrenceOrUsageViewItem2D
menu_name: vec-2.1.0
---
<p> An OccurrenceOrUsageViewItem2D specifies the representation of an OccurrenceOrUsage in a 2DDrawing.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_2d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the OccurrenceOrUsageViewItem2D. The identification is guaranteed to be unique within the BuildingBlockSpecification2D.      </p> | [OccurrenceOrUsageViewItem2D]({{< relref "occurrenceorusageviewitem2d.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the OccurrenceOrUsageViewItem2D.      </p> | [OccurrenceOrUsageViewItem2D]({{< relref "occurrenceorusageviewitem2d.md" >}}) |
|gridSquare| [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the grid square in which the OccurrenceOrUsageViewItem2D is placed (e.g. E/40). </p> | [OccurrenceOrUsageViewItem2D]({{< relref "occurrenceorusageviewitem2d.md" >}}) |

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
        <td>orientation</td>
        <td><a href="{{< relref "transformation2d.md" >}}">Transformation2D</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the orientation of the view item.</td>
    </tr>
    <tr>
        <td>occurrenceOrUsage</td>
        <td><a href="{{< relref "occurrenceorusage.md" >}}">OccurrenceOrUsage</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> Specifies the <i>OccurrenceOrUsages</i> which are represented by the view item.      </p>      <p> <b>Important: </b>To use one <i>OccurenceOrUsageViewItem</i> for multiple <i>OccurrenceOrUsages </i>is only valid, if the referenced items are true alternatives to each other. That means, they must have an identical placement, the geometrical models used for each item must be substitutable and the item must be mutually exclusive to each other.      </p></td>
    </tr>
    </tbody>
</table>

##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>placedElementViewItem</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "buildingblockspecification2d.md" >}}">BuildingBlockSpecification2D</a></td>
        <td>1</td>
        <td>Specifies the view items for OccurrenceOrUsages on a BuildingBlockSpecification2D.</td>
    </tr>
    </tbody>
</table>



