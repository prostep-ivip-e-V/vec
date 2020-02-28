---
title: Transformation
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Transformation
menu_name: kbl-2.3.sr1
---
<p>A Transformation is a geometric transformation composed of translation and rotation. Scaling is not included.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|U | [Double]({{< relref "double.md" >}}) | 2..3 | <p>The u specifies the rotation by means of the y-axis.</p> | [Transformation]({{< relref "transformation.md" >}}) |
|V | [Double]({{< relref "double.md" >}}) | 2..3 | <p>The v specifies the rotation by means of the z-axis.</p> | [Transformation]({{< relref "transformation.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cartesian_point]({{< relref "cartesian_point.md" >}}) | Cartesian_point | 1 | 0..* |  |
