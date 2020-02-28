---
title: CavitySealSpecification
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - CavitySealSpecification
menu_name: vec-1.1.1
---
<p> Specification for the definition of cavity seals. A Cavity_seal is a water tight non-electrical object to fill a populated Cavity.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [MultiCavitySealSpecification]({{< relref "multicavitysealspecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|cavityDiameter | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies a range of valid cavity diameters to which the cavity seal fits.      </p> | [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) |
|hardness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the hardness of the cavity seal.  </p> | [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) |
|sealingClass | [SealingClass]({{< relref "sealingclass.md" >}}) | 0..* | <p>Specifies the sealing class of the cavity seal. </p> | [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) |
|wireElementOutsideDiameter | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies a range of valid wire diameters to which the cavity seal fits.      </p> | [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) |
|wireReceptionType | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the wireReceptionType to which the cavity seal fits. This should be an enumeration of values defined in a conformance class.      </p> | [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) |
|compatibleTerminalType | [TerminalType]({{< relref "terminaltype.md" >}}) | 0..* | <p> Defines a list of terminal types that are compatible to this CavitySealSpecification.      </p> | [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CavitySealRole]({{< relref "cavitysealrole.md" >}}) | 0..* | cavitySealSpecification | 1 | <p> References the <i>CavitySealSpecification </i>that is instanced by this <i>CavitySealRole.</i>      </p> |
| [CompatibilityStatement]({{< relref "compatibilitystatement.md" >}}) | 0..* | cavitySealSpecification | 0..* | <p> References the CavitySealSpecifications for which the compatibility statement is stated.      </p> |
