---
title: OccurrenceOrUsageViewItem3D
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - OccurrenceOrUsageViewItem3D
menu_name: vec-1.2.1
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the OccurrenceOrUsageViewItem. The identification is guaranteed to be unique within the BuildingBlockSpecification3D.      </p> | [OccurrenceOrUsageViewItem3D]({{< relref "occurrenceorusageviewitem3d.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the OccurrenceOrUsageViewItem3D.      </p> | [OccurrenceOrUsageViewItem3D]({{< relref "occurrenceorusageviewitem3d.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Transformation3D]({{< relref "transformation3d.md" >}}) | orientation | 0..1 | 0..1 | Specifies the orientation of the view item. |
| [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) | occurrenceOrUsage | 0..* | 0..* | <p> Specifies the <i>OccurrenceOrUsages</i> which are represented by the view item.      </p>      <p> <b>Important: </b>To use one <i>OccurenceOrUsageViewItem</i> for multiple <i>OccurrenceOrUsages </i>is only valid, if the referenced items are true alternatives to each other. That means, they must have an identical placement, the geometrical models used for each item must be substitutable and the item must be mutually exclusive to each other.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}) | 1 | placedElementViewItem3D | 0..* | Specifies the view items for OccurrenceOrUsages in a BuildingBlockSpecification3D. |
