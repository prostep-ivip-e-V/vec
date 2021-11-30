---
title: ShrinkableTubeSpecification
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - ShrinkableTubeSpecification
menu_name: vec-2.0.0-rc1
---
<p>Specification of tubes that are shrinkable.  </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|soundDampingClass | [SoundDampingClass]({{< relref "sounddampingclass.md" >}}) | 0..* | <p>Specifies the class of sound damping. According to the VDA this is a value between A &amp; E. KBLFRM-311  </p> | [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}}) |
|bendRadius | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the bend radius of the tube.      </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|innerDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Defines the inner diameter of a tube. In the case of a shrinkable tube, it is the diameter of the tube in the unshrinked state.  </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|wallThickness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the thickness of the wall of the tube.      </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|isSlit | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Specifies whether the tube is slit or not. The style of the slitting can be defined with the <i>slitStyle.</i> If a <i>slitStyle</i> is defined, it implies that <i>isSlit=true</i>.      </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|slitStyle | [TubeSlitStyle]({{< relref "tubeslitstyle.md" >}}) | 0..1 | <p> Specifies the style of the slitting of the tube. If a <i>slitStyle</i> is defined, it implies that <i>isSlit=true</i>.     </p>      <p> This attribute is defined as an <i>OpenEnumeration.</i>      </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|nominalSize | [String]({{< relref "string.md" >}}) | 0..1 | <p> Defines the nominal size of a tube. The nominal size is a name for the size of the tube that is somehow related to the inner diameter of the tube. However, it is not the inner diameter (e.g. &quot;10.5&quot;).      </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|secondaryNominalSize | [String]({{< relref "string.md" >}}) | 0..1 | <p> Defines the secondary nominal size of a tube. The nominal size is a name for the size of the tube that is somehow related to the inner diameter of the tube. However, it is not the inner diameter (e.g. &quot;10.5&quot;).      </p>      <p> The secondary nominal size shall only be used for two-parted tubes (see&#160;TubeSlitStyle = TwoParts). The secondary nominal size defines the size of the outer (larger) tube of a two-parted tube.      </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|shape | [TubeShape]({{< relref "tubeshape.md" >}}) | 0..1 | <p> Specifies the shape of the cross section of the tube.     </p>      <p> This attribute is defined as an <i>OpenEnumeration</i>      </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|outerDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the outer diameter of the tube. The outer diameter of a tube shall only be used for circular tubes (shape = Circular). For other shapes, height and width shall be used.      </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|height | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the height of the tube. If the height is defined, a width shall be defined, too. The height and width of a tube shall only be used for tubes that are not circular (shape != Circular). For circular shapes, the outside diameter shall be used.      </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|width | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the width of the tube. If the width is defined, a height shall be defined, too. The height and width of a tube shall only be used for tubes that are not circular (shape != Circular). For circular shapes, the outside diameter shall be used.      </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|length | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the tube if it is a predefined value.      </p> | [TubeSpecification]({{< relref "tubespecification.md" >}}) |
|shrinkingFactor | [Double]({{< relref "double.md" >}}) | 0..1 | <p>Defines the factor of shrinking for the tube.  </p> | [ShrinkableTubeSpecification]({{< relref "shrinkabletubespecification.md" >}}) |
|maximumLongitudinalShrinkage | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Defines the shrinkage in longitudinal direction. </p> | [ShrinkableTubeSpecification]({{< relref "shrinkabletubespecification.md" >}}) |
|resin | [Material]({{< relref "material.md" >}}) | 0..* | <p>Defines the material of the resin usable for this shrinkable tube. </p> | [ShrinkableTubeSpecification]({{< relref "shrinkabletubespecification.md" >}}) |
|waterAbsorbtion | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Defines the water absorption of the shrinkable tube specification.      </p> | [ShrinkableTubeSpecification]({{< relref "shrinkabletubespecification.md" >}}) |

