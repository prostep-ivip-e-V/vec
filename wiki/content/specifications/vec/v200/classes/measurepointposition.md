---
title: MeasurePointPosition
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - MeasurePointPosition
menu_name: vec-2.0.0
---
<p> Defines the position of a MeasurementPoint within the coordinate system of the component. MeasurementPoint onto which dimension can be defined<i>.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | local_geometry |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [LocalPosition]({{< relref "localposition.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [MeasurementPoint]({{< relref "measurementpoint.md" >}}) | measurementPoint | 1 | 0..* |  |
