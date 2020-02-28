---
title: CavityPlugSpecification
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - CavityPlugSpecification
menu_name: vec-1.1.2
---
<p> Specification for the definition of cavity seals. A cavity plug is a water tight non-electrical object to fill an empty cavity.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [MultiCavityPlugSpecification]({{< relref "multicavityplugspecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|cavityDiameter | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies a range of valid cavity diameters to which the cavity plug fits.      </p> | [CavityPlugSpecification]({{< relref "cavityplugspecification.md" >}}) |
|hardness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the hardness of the cavity plug.  </p> | [CavityPlugSpecification]({{< relref "cavityplugspecification.md" >}}) |
|sealingClass | [SealingClass]({{< relref "sealingclass.md" >}}) | 0..* | <p>Specifies the sealing class of the cavity plug. </p> | [CavityPlugSpecification]({{< relref "cavityplugspecification.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CavityPlugRole]({{< relref "cavityplugrole.md" >}}) | 0..* | cavityPlugSpecification | 1 | <p> References the <i>CavityPlugSpecification </i>that is instanced by this <i>CavityPlugRole.</i>      </p> |
| [CompatibilityStatement]({{< relref "compatibilitystatement.md" >}}) | 0..* | cavityPlugSpecification | 0..* | <p> References the CavityPlugSpecifications for which the compatibility statement is stated.      </p> |
