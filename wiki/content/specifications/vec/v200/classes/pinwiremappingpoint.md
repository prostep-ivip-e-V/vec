---
title: PinWireMappingPoint
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - PinWireMappingPoint
menu_name: vec-2.0.0-rc1
---
<p> The <i>PinWireMappingPoint </i>creates a single variance free mapping between a <i>ContactPoint</i> and a <i>PinComponentReference </i>within a <i>PinWireMappingSpecification</i> (more details there)<i>.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pin_wire_mapping |
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
| [ContactPoint]({{< relref "contactpoint.md" >}}) | contactPoint | 1 |  |  |
| [PinComponentReference]({{< relref "pincomponentreference.md" >}}) | pinComponentReference | 1 |  |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PinWireMappingSpecification]({{< relref "pinwiremappingspecification.md" >}}) |  |  |  |  |
