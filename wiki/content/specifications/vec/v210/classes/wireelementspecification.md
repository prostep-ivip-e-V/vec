---
title: WireElementSpecification
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireElementSpecification
menu_name: vec-2.1.0
---
<p> A WireElementSpecification is the basic element to describe a wire in the VEC. A WireElementSpecification can be atomic or composed recursively out of other WireElementSpecifications. A WireElementSpecification can reference an InsulationSpecification, if it has an insulation, a CoreSpecification, if it has a core or a WireGroupSpecification if it is a grouping of other WireElementSpecifications in the Wire (e.g. a multi-core wire with twisted pairs).      </p>

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
|type| [WireType]({{< relref "wiretype.md" >}}) | 0..* | <p> Defines the type of the wire. A wire must not have more than one type. This attribute allows more than one value for the reason, that the same type can be expressed in multiple reference systems.      </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|minBendRadiusDynamic| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the minimum bend radius for wire element, if it is used in a dynamic environment, where it is bended repeatedly (e.g. in grommet of the back door). (see KLBFRM-311)      </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|minBendRadiusStatic| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the minimum bend radius for wire element, if it is used in a static environment, where it is bended once during installation. After that it remains unchanged in its bended position during usage.  (see KLBFRM-311) </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|outsideDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the outside diameter of the WireElement.  </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|suitedForDynamicUse| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>Specifies if it is allowed to use the WireElement in a dynamic environment.  (see KBLFRM-311)  </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|impedance| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Defines the impedance of this wireElement. Typically used for WireElements that have subWireElements e.g. twisted pair or coax wires. </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|size| [Size]({{< relref "size.md" >}}) | 0..1 | <p> Defines the size of a WireElement if it has not the shape of circle. If it has the shape of a circle the size is normally defined by its outside diameter.      </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|validWireReceptionTypes| [WireReceptionType]({{< relref "wirereceptiontype.md" >}}) | 0..* | <p> Defines the <i>WireReceptionTypes</i> that are allowed for joining with the specified <i>WireElement.</i>      </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|gridSpacing| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Defines the grid spacing. The grid spacing is the distance between the centres of two adjacent sub wire elements.      </p>      <p> This attribute is only valid for <i>WireElementSpecifications </i>that have <i>SubWireElementSpecifications.</i>      </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|shape| [WireElementShape]({{< relref "wireelementshape.md" >}}) | 0..1 | <p> Defines the shape of a <i>WireElement. </i>Circular wire elements are defined by their outsideDiameter, all others are defined by their size.      </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|transmissionMediumType| [TransmissionMediumType]({{< relref "transmissionmediumtype.md" >}}) | 0..1 | Defines the transmission medium in this wire element. | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |

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
        <td>conductorSpecification</td>
        <td><a href="{{< relref "conductorspecification.md" >}}">ConductorSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> If the <i>WireElement</i> has a core then the specification of the core is referenced here.      </p></td>
    </tr>
    <tr>
        <td>fillerSpecification</td>
        <td><a href="{{< relref "fillerspecification.md" >}}">FillerSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> If the <i>WireElement</i> is a filler then the specification of the filler is referenced here.      </p></td>
    </tr>
    <tr>
        <td>subWireElementSpecification</td>
        <td><a href="{{< relref "wireelementspecification.md" >}}">WireElementSpecification</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> Specifies the contained subWireElements if the WireElement has sub elements. If a <i>WireElementSpecification </i>contains the same <i>WireElementSpecification </i>multiple times, then it shall be referenced as often as it occurs in the reality. Otherwise the <i>WireElementSpecification </i>wouldn't specify a wire element unambiguously, because the representation in the model would be the same, regardless of the number of sub elements. Therefore, this association must not be realized with a &quot;set&quot; semantic.      </p>      <p> &#160;      </p></td>
    </tr>
    <tr>
        <td>insulationSpecification</td>
        <td><a href="{{< relref "insulationspecification.md" >}}">InsulationSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> If the <i>WireElement</i> has an insulation then the specification of the insulation is referenced here.      </p></td>
    </tr>
    <tr>
        <td>wireGroupSpecification</td>
        <td><a href="{{< relref "wiregroupspecification.md" >}}">WireGroupSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> If the <i>WireElementSpecification</i> is representing a wire group, then the specification of the wire group is referenced here. That means as well, that the <i>WireElementSpecification</i> shall have <i>subWireElementSpecifications</i>.      </p></td>
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
        <td>subWireElementSpecification</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireelementspecification.md" >}}">WireElementSpecification</a></td>
        <td>0..*</td>
        <td><p> Specifies the contained subWireElements if the WireElement has sub elements. If a <i>WireElementSpecification </i>contains the same <i>WireElementSpecification </i>multiple times, then it shall be referenced as often as it occurs in the reality. Otherwise the <i>WireElementSpecification </i>wouldn't specify a wire element unambiguously, because the representation in the model would be the same, regardless of the number of sub elements. Therefore, this association must not be realized with a &quot;set&quot; semantic.      </p>      <p> &#160;      </p></td>
    </tr>
    <tr>
        <td>wireElementSpecification</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wirespecification.md" >}}">WireSpecification</a></td>
        <td>0..*</td>
        <td><p> References the <i>WireElementSpecification </i>that defines the properties of the top-most <i>WireElement.</i>      </p></td>
    </tr>
    <tr>
        <td>wireElementSpecification</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireelement.md" >}}">WireElement</a></td>
        <td>0..*</td>
        <td><p> Reference the <i>WireElementSpecification </i>that is represented by the <i>WireElement.</i>      </p></td>
    </tr>
    </tbody>
</table>



