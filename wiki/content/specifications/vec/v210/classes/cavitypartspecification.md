﻿---
title: CavityPartSpecification
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - CavityPartSpecification
menu_name: vec-2.1.0
---
<p> The <i>CavityPartSpecification</i> is an abstract class for common properties of non-electrical parts that are used in <i>Cavities</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [CavityAccessorySpecification]({{< relref "cavityaccessoryspecification.md" >}}), [CavityPlugSpecification]({{< relref "cavityplugspecification.md" >}}), [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType| [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|cavityDimension| [Size]({{< relref "size.md" >}}) | 0..* | <p> Specifies a valid cavity dimensions to which the cavity part fits. The dimension defines the size of the sealing area of the cavity (crimp end), not in the contacting area (box end).      </p>      <p> Note: CavityDimension is of type Size which is defined as x &amp;&#160;y with type NumericalValue. NumericalValue can define tolerances. So, a cavity dimension is not necessarily a single fixed value.      </p> | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |
|hardness| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the hardness of the cavity seal.  </p> | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |
|geometry| [SealingGeometry]({{< relref "sealinggeometry.md" >}}) | 0..1 | <p> Defines the geometry of the cavity sealing.      </p>      <p> &#160;     </p>      <p> This attribute is defined as an OpenEnumeration.      </p> | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |
|compatibleTerminalType| [TerminalType]({{< relref "terminaltype.md" >}}) | 0..* | <p> Defines a list of terminal types that are compatible to this CavitySealSpecification. This defines as well the compatible cavities, since a plug is normally used when no terminals are present.      </p> | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |
|compatibleCavityGeometry| [CavityGeometry]({{< relref "cavitygeometry.md" >}}) | 0..* | <p> Defines a list of <i>CavityGeometries</i> that are compatible with this cavity part.      </p> | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |





