---
title: TopologyZoneSpecification
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - TopologyZoneSpecification
menu_name: vec-1.2.0
---
<p> Specification for the definition of TopologyZones.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologyZone]({{< relref "topologyzone.md" >}}) | zone | 0..* | 0..1 | <p> Specifies the <i>TopologyZones</i> that are part of the <i>TopologyZoneSpecification</i>.      </p> |
