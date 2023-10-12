---
title: WireReceptionSpecification
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireReceptionSpecification
menu_name: vec-2.1.0
---
<p> Specification for the definition of wire receptions. A WireReception is the area of a terminal where the contacting with a wire element (e.g. by crimping) takes place.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|coreCrossSectionArea| [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies a value range for cross-section areas of cores that are compatible with the wire reception.      </p>      <p> For wire receptions where a single core is attached to, this value defines the <i>ValueRange</i> of the <i>crossSectionArea </i>of the core. For wire receptions where more than one core is attached to (e.g. ring terminals, splices), this attribute defines the valid value range for the sum of the cross-section areas of all attached cores.      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|insulationDisplacementLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the length of the insulation which must be stripped off to fit to this wire reception.  </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|multiContact| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Specifies if it is possible to contact more than one core at the wire reception. If this attribute is set to true, the wire reception is allowed for more than one wire, but one wire is possible as well. If set to false, only one wire is allowed.      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|wireReceptionType| [WireReceptionType]({{< relref "wirereceptiontype.md" >}}) | 0..1 | <p> Specifies the type of the wire reception. The wireReceptionType defines how the wire is joined with the wire reception.     </p>      <p> This attribute is defined in an OpenEnumeration.      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|wireElementOutsideDiameter| [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies a value range for valid diameters a WireElement must have to fit to the wire reception.      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|platingMaterial| [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the plating material of the wire reception. </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|sealable| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>Specifies if the wire reception can be sealed.  (see KBLFRM-311) </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|frontBellMouthLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the front (facing the terminal reception) bell mouth of the conductor crimp (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|conductorCrimpLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the conductor crimp (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|conductorCrimpShape| [CrimpShape]({{< relref "crimpshape.md" >}}) | 0..1 | <p> &#160;The shape of the conductor crimp (e.g. F).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|conductorCrimpLegHeight| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The maximum height of the legs above the normal plane of the terminal (uncrimped state).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|rearBellMouthLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the rear bell mouth of the conductor crimp (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|crimpConnectionLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the crimp area, conductor + insulation crimp (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|insulationCrimpLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the insulation crimp (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|insulationCrimpShape| [CrimpShape]({{< relref "crimpshape.md" >}}) | 0..1 | <p> &#160;The shape of the insulation crimp (e.g. O).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|insulationCrimpLegHeight| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The maximum height of the legs above the normal plane of the terminal (uncrimped state).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|cutOffTabLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the cut off tab (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|connectionBLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the connection between the conductor and the insulation crimp (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|sheetThickness| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The thickness of the material of terminal (metal sheet)&#160;in the crimp area.      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|wireTipProtrusion| [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Defines the valid length range in which the protrusion of the conductor from the conductor crimp must be located.      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>validConductorMaterials</td>
        <td><a href="{{< relref "conductormaterial.md" >}}">ConductorMaterial</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the materials of a conductor, that are valid to use with this <i>WireReceptionSpecification</i>. This material shall be matched against the <i>ConductorSpecification.material.</i>      </p></td>
    </tr>
    <tr>
        <td>coreCrimpDetails</td>
        <td><a href="{{< relref "corecrimpdetail.md" >}}">CoreCrimpDetail</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Defines the <i>CrimpDetails</i> for this WireReception.      </p></td>
    </tr>
    <tr>
        <td>addOns</td>
        <td><a href="{{< relref "wirereceptionaddon.md" >}}">WireReceptionAddOn</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td></td>
    </tr>
    </tbody>
</table>

##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>wireReceptionSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wirereception.md" >}}">WireReception</a></td>
        <td>0..*</td>
        <td>References the WireReceptionSpecification that specifies the WireReception.</td>
    </tr>
    <tr>
        <td>wireReceptionSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireendaccessoryspecification.md" >}}">WireEndAccessorySpecification</a></td>
        <td></td>
        <td><p> References the single <i>WireReceptionSpecification</i> that is specifying the properties of the <i>WireEndAccessory</i> that are related to wire.      </p></td>
    </tr>
    </tbody>
</table>



