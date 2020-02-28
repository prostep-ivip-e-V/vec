---
title: CorrugatedPipeSpecification
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - CorrugatedPipeSpecification
menu_name: vec-1.1.1
---
<p> Specification for the definition of corrugated pipes.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [TubeSpecification]({{< relref "tubespecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|abrasionResistanceClass | [AbrasionResistanceClass]({{< relref "abrasionresistanceclass.md" >}}) | 0..* | <p> Specifies the abrasion resistance class of the wire protection. According to the VDA this is a value between A &amp; G.     </p>      <p> KBLFRM-311     </p> | [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}}) |
|soundDampingClass | [SoundDampingClass]({{< relref "sounddampingclass.md" >}}) | 0..* | <p>Specifies the class of sound damping. According to the VDA this is a value between A &amp; E. KBLFRM-311  </p> | [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}}) |
|bendRadius | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the bend radius of the tube.      </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|innerDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Defines the inner diameter of a tube. In the case of a shrinkable tube, it is the diameter of the tube in the unshrinked state.  </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|wallThickness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the thickness of the wall of the tube.      </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|isSlit | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>Specifies whether the tube is slit or not.  </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|nominalSize | [String]({{< relref "string.md" >}}) | 0..1 | <p> Defines the nominal size of a tube. The nominal size is a name for the size of the tube that is somehow related to the inner diameter of the tube. However it is not the inner diameter (e.g. &quot;10.5&quot;).      </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|outerDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the outer diameter of the tube.  </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|corrugationHeight | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the height of a corrugation of the pipe.      </p> | [CorrugatedPipeSpecification]({{< relref "corrugatedpipespecification.md" >}}) |
|corrugationWidth | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the width of a corrugation of the pipe. </p> | [CorrugatedPipeSpecification]({{< relref "corrugatedpipespecification.md" >}}) |
|corrugationGradient | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the gradient of a corrugation of the pipe.      </p> | [CorrugatedPipeSpecification]({{< relref "corrugatedpipespecification.md" >}}) |

