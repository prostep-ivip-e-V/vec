---
title: CableLeadThrough
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - CableLeadThrough
menu_name: vec-1.1.3
---
<p> A CableLeadThrough specifies a hole in the grommet through which wires can pass through the grommet.      </p>

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
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GrommetSpecification]({{< relref "grommetspecification.md" >}}) | 1 | cableLeadThrough | 0..* | Specifies the CableLeadThroughs of the Grommet. |
