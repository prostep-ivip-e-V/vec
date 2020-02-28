---
title: FixingSpecification
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - FixingSpecification
menu_name: vec-1.1.1
---
<p> Specification for the definition of fixings. A fixing is used to fix the harness in a certain position (e.g. at the car body, a seat, an ECU etc.). The FixingSpecification describes how the fixing is attached to the &quot;non-harness&quot; element. The attachment to harness is described by a PlaceableElementSpecification.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [BoltMountedFixingSpecification]({{< relref "boltmountedfixingspecification.md" >}}), [EdgeMountedFixingSpecification]({{< relref "edgemountedfixingspecification.md" >}}), [HoleMountedFixingSpecification]({{< relref "holemountedfixingspecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|offset | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 |  | [FixingSpecification]({{< relref "fixingspecification.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [FixingRole]({{< relref "fixingrole.md" >}}) | 0..* | fixingSpecification | 1 | <p> References the <i>FixingSpecification</i> that is instanced by this <i>FixingRole.</i>      </p> |
