---
title: ReferenceSurfaceDefinition
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - ReferenceSurfaceDefinition
menu_name: vec-2.2.0
---
A connector housing can define reference surfaces that serve as contact surfaces in a work piece holder. Those reference surfaces normally have defined tolerance limits to support accurate determination of cavity positions for example during the insertion process.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|hasSurfaces| [Boolean]({{< relref "boolean.md" >}}) | 1 | Specifies whether the connector has defined references surfaces or not. | [ReferenceSurfaceDefinition]({{< relref "referencesurfacedefinition.md" >}}) |
|dimensionX| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Specifies the distance and tolerance between the middle axis of the lowest alpha numerical cavity (origin of the connector coordinate system) and the reference surface in direction of the X-axis. | [ReferenceSurfaceDefinition]({{< relref "referencesurfacedefinition.md" >}}) |
|dimensionY| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Specifies the distance and tolerance between the middle axis of the lowest alpha numerical cavity (origin of the connector coordinate system) and the reference surface in direction of the X-axis. | [ReferenceSurfaceDefinition]({{< relref "referencesurfacedefinition.md" >}}) |


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
        <td>referenceSurfaceDefinition</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectorhousingspecification.md" >}}">ConnectorHousingSpecification</a></td>
        <td>1</td>
        <td>Contains the information about reference surfaces of the connector.</td>
    </tr>
    </tbody>
</table>



