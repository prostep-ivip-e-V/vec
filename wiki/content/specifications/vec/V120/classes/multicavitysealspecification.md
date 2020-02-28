---
title: MultiCavitySealSpecification
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - MultiCavitySealSpecification
menu_name: vec-1.2.0
---
<p> Specification for cavity seals that apply to more than one cavity. A CavitySeal is a watertight non-electrical object to fill a populated Cavity. MultiCavitySeals are formed to fit into one connector / slot and to seal more than one cavity at once.      </p>      <p> There are existing two types of MultiCavitySeals:      </p>      <ol>       <li> In first type the MultiCavitySeal has an opening for all cavities of the connector. Each opening can be filled either with a wire (without an individual seal) or with a CavityPlug (e.g. a synthetic pin) or a MultiCavityPlug.        </li>       <li> In the second type, the MultiCavitySeal has a specific configuration of openings for some cavities of the connector. These MultiCavitySeals are sealing all cavities with an opening and a wire in it and all cavities where no opening in the MultiCavitySeal exists. For each opening that has no wire it an additional CavityPlug is needed.&#160;        </li>     </ol>     <p> The cavities that are left open by a MultiCavitySeal are defined with a SealedCavitiesAssignment.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|cavityDimension | [Size]({{< relref "size.md" >}}) | 0..* | <p> Specifies a valid cavity dimensions to which the cavity part fits. The dimension defines the size of the sealing area of the cavity (crimp end), not in the contacting area (box end).      </p>      <p> Note: CavityDimension is of type Size which is defined as x &amp;&#160;y with type NumericalValue. NumericalValue can define tolerances. So, a cavity dimension is not necessarily a single fixed value.      </p> | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |
|hardness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the hardness of the cavity seal.  </p> | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |
|geometry | [SealingGeometry]({{< relref "sealinggeometry.md" >}}) | 0..1 | <p> Defines the geometry of the cavity sealing.      </p>      <p> &#160;     </p>      <p> This attribute is defined as an OpenEnumeration.      </p> | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |
|compatibleTerminalType | [TerminalType]({{< relref "terminaltype.md" >}}) | 0..* | <p> Defines a list of terminal types that are compatible to this CavitySealSpecification. This defines as well the compatible cavities, since a plug is normally used when no terminals are present.      </p> | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |
|compatibleCavityGeometry | [CavityGeometry]({{< relref "cavitygeometry.md" >}}) | 0..* | <p> Defines a list of <i>CavityGeometries</i> that are compatible with this cavity part.      </p> | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |
|wireElementOutsideDiameter | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies a range of valid wire diameters to which the cavity seal fits.      </p> | [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) |
|wireReceptionType | [WireReceptionType]({{< relref "wirereceptiontype.md" >}}) | 0..1 | <p> Specifies the wireReceptionType to which the cavity seal fits.      </p> | [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) |
|insideDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Defines the inside diameter in the relaxed state for a cavity seal.      </p> | [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [OpenCavitiesAssignment]({{< relref "opencavitiesassignment.md" >}}) | assignment | 0..* | 1 | <p> References the <i>OpenCavitiesAssignments</i> that are valid for this <i>MultiCavitySeal</i>. One individual <i>OpenCavitiesAssignment </i>is used for each connector housing that matches witch this <i>MultiCavitySeal.</i>      </p> |
