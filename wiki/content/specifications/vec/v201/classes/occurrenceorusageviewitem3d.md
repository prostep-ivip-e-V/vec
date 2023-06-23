---
title: OccurrenceOrUsageViewItem3D
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - OccurrenceOrUsageViewItem3D
menu_name: vec-2.0.1
---
<p> An <i>OccurrenceOrUsageViewItem3D</i> specifies the existence and representation of an <i>OccurrenceOrUsage</i> in a 3D-model.      </p>      <p> The definition of the existence is necessary because a 150% model of a harness might contain different geometric variants and not all of them must be represented in the same <i>BuildingBlockSpecification3D</i>.      </p>      <p> There are two different cases for the representation of <i>OccurrenceOrUsage</i>s in a 3D model. There are components that can be represented explicitly by a 3D model of the component (e.g. connectors, cable ducts, fixings) and there are components that are represented implicitly by a generic visualization and their placement on the topology (e.g. tapes, tubes). If an OccurrenceOrUsage has a 3D&#160;model and it shall be placed explicitly in 3D space, the <i>OccurrenceOrUsageViewItem3D </i>defines a <i>Transformation3D </i>in the <i>orientation </i>role. If no <i>orientation</i> is defined the <i>OccurrenceOrUsage</i> is represented implicitly.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the OccurrenceOrUsageViewItem. The identification is guaranteed to be unique within the BuildingBlockSpecification3D.      </p> | [OccurrenceOrUsageViewItem3D]({{< relref "occurrenceorusageviewitem3d.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the OccurrenceOrUsageViewItem3D.      </p> | [OccurrenceOrUsageViewItem3D]({{< relref "occurrenceorusageviewitem3d.md" >}}) |

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
        <td>occurrenceOrUsage</td>
        <td><a href="{{< relref "occurrenceorusage.md" >}}">OccurrenceOrUsage</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> Specifies the <i>OccurrenceOrUsages</i> which are represented by the view item.      </p>      <p> <b>Important: </b>To use one <i>OccurenceOrUsageViewItem</i> for multiple <i>OccurrenceOrUsages </i>is only valid, if the referenced items are true alternatives to each other. That means, they must have an identical placement, the geometrical models used for each item must be substitutable and the item must be mutually exclusive to each other.      </p></td>
    </tr>
    <tr>
        <td>orientation</td>
        <td><a href="{{< relref "transformation3d.md" >}}">Transformation3D</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>Specifies the orientation of the view item.</td>
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
        <td>placedElementViewItem3D</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "buildingblockspecification3d.md" >}}">BuildingBlockSpecification3D</a></td>
        <td>1</td>
        <td>Specifies the view items for OccurrenceOrUsages in a BuildingBlockSpecification3D.</td>
    </tr>
    </tbody>
</table>



