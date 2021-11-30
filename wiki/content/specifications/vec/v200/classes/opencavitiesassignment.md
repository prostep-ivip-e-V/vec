---
title: OpenCavitiesAssignment
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - OpenCavitiesAssignment
menu_name: vec-2.0.0-rc1
---
<p> An OpenCavitiesAssignment groups the cavities of ONE connector that are open in a MultiCavitySeal. If a MultiCavitySeal fits into more than one connector, than there are as many OpenCavitiesAssignments.      </p>

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

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cavity]({{< relref "cavity.md" >}}) | openCavities | 1..* | 0..* | <p> Specifies the cavities that are open.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MultiCavitySealSpecification]({{< relref "multicavitysealspecification.md" >}}) | 1 | assignment | 0..* | <p> References the <i>OpenCavitiesAssignments</i> that are valid for this <i>MultiCavitySeal</i>. One individual <i>OpenCavitiesAssignment </i>is used for each connector housing that matches witch this <i>MultiCavitySeal.</i>      </p> |
