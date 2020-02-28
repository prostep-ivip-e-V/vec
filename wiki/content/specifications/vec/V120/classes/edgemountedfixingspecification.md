---
title: EdgeMountedFixingSpecification
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - EdgeMountedFixingSpecification
menu_name: vec-1.2.0
---
<p> Specification for fixings that are mounted onto an edge.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [FixingSpecification]({{< relref "fixingspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|offset | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 |  | [FixingSpecification]({{< relref "fixingspecification.md" >}}) |
|nominalSize | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 |  | [FixingSpecification]({{< relref "fixingspecification.md" >}}) |
|edgeThickness | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p>Defines a range of valid thicknesses, onto which the fixing can be mounted.  </p> | [EdgeMountedFixingSpecification]({{< relref "edgemountedfixingspecification.md" >}}) |

