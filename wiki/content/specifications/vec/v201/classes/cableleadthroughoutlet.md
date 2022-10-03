---
title: CableLeadThroughOutlet
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - CableLeadThroughOutlet
menu_name: vec-2.0.1
---
Specifies one outlet the a <i>CableLeadThrough</i>. For most <i>CableLeadThroughs</i>, there will be two.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies the identification of the <i>CableLe</i>adThroughOutlet. This must be unique within a <i>CableLeadThrough</i>.      </p> | [CableLeadThroughOutlet]({{< relref "cableleadthroughoutlet.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 0..1 | 0..* | <p> Specifies the <i>PlacementPoint</i> that represents this <i>CableLeadThroughOutlet</i> in a PlaceableElementSpecification.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CableLeadThrough]({{< relref "cableleadthrough.md" >}}) | 1 | outlet | 0..* | Specfies the outlets of a <i>CableLeadThrough.</i> |
