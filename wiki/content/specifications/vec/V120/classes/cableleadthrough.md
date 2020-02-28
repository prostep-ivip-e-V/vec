---
title: CableLeadThrough
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - CableLeadThrough
menu_name: vec-1.2.0
---
<p> A <i>CableLeadThrough</i> specifies a hole in the grommet through which wires can pass through the grommet. There can be different technical realizations of a lead through, e.g. it can be realized with a shrinking material or an additional seal. The properties of a <i>CableLeadThrough</i> are defined in the referenced <i>CableLeadThroughSpecification</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the identification of the CableLeadThrough. This must be unique within a GrommetSpecification.  </p> | [CableLeadThrough]({{< relref "cableleadthrough.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 0..1 | 0..* | <p> Specifies the <i>PlacementPoint</i> that represents this <i>CableLeadThrough</i> in a PlaceableElementSpecification.      </p> |
| [CableLeadThroughSpecification]({{< relref "cableleadthroughspecification.md" >}}) | cableLeadThroughSpecification | 0..1 |  | <p> References the <i>CableLeadThroughSpecification </i>that defines the technical properties of this <i>CableLeadThrough.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CableLeadThroughReference]({{< relref "cableleadthroughreference.md" >}}) |  |  | 0..1 |  |
| [GrommetSpecification]({{< relref "grommetspecification.md" >}}) | 1 | cableLeadThrough | 0..* | Specifies the CableLeadThroughs of the Grommet. |
