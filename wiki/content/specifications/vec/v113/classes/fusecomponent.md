---
title: FuseComponent
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - FuseComponent
menu_name: vec-1.1.3
---


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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Identification of the FuseComponent, which must be distinct for all FuseComponents of an MultiFuseSpecification.      </p> | [FuseComponent]({{< relref "fusecomponent.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [FuseSpecification]({{< relref "fusespecification.md" >}}) | fuseSpecification | 0..1 |  |  |
| [PinComponent]({{< relref "pincomponent.md" >}}) | connectedPins | 0..2 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MultiFuseSpecification]({{< relref "multifusespecification.md" >}}) | 1 | fuseComponents | 0..* |  |
