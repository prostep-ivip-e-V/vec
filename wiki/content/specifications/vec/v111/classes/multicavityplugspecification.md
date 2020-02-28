---
title: MultiCavityPlugSpecification
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - MultiCavityPlugSpecification
menu_name: vec-1.1.1
---
<p> Specification for the definition of cavity plugs that apply to more than one cavity. A cavity plug is a water tight non-electrical object to fill an empty cavity. MultiCavityPlugs are formed to fit into one connector / slot and to seal more than one cavity at once. Normally there are different variants of these MultiCavityPlugs that can seal a connector in different pinning scenarios. The cavities that are plugged by a MultiCavityPlug are defined with a SealedCavitiesAssignment.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [CavityPlugSpecification]({{< relref "cavityplugspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|cavityDiameter | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies a range of valid cavity diameters to which the cavity plug fits.      </p> | [CavityPlugSpecification]({{< relref "cavityplugspecification.md" >}}) |
|hardness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the hardness of the cavity plug.  </p> | [CavityPlugSpecification]({{< relref "cavityplugspecification.md" >}}) |
|sealingClass | [SealingClass]({{< relref "sealingclass.md" >}}) | 0..* | <p>Specifies the sealing class of the cavity plug. </p> | [CavityPlugSpecification]({{< relref "cavityplugspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [SealedCavitiesAssignment]({{< relref "sealedcavitiesassignment.md" >}}) | assignment | 0..* | 1 | <p> References the <i>SealedCavitiesAssignments</i> that are valid for this <i>MultiCavityPlug</i>. One individual <i>SealedCavitiesAssignment </i>is used for each connector housing that matches witch this <i>MultiCavityPlug.</i>      </p> |
