---
title: InsulationSpecification
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - InsulationSpecification
menu_name: vec-2.0.1
---
<p>Specification for the definition of insulation properties of a WireElement.  </p>

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
|baseColor| [Color]({{< relref "color.md" >}}) | 0..* | <p> Specifies the base color of the insulation.      </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|firstIdentificationColor| [Color]({{< relref "color.md" >}}) | 0..* | <p>Specifies the first identification color of the insulation. </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|secondIdentificationColor| [Color]({{< relref "color.md" >}}) | 0..* | <p>Specifies the second identification color of the insulation. </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|labelIdentificationColor| [Color]({{< relref "color.md" >}}) | 0..* | <p>Specifies the color of a label printed on the insulation of the wire. </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|labelIdentificationType| [LabelType]({{< relref "labeltype.md" >}}) | 0..1 | <p> Specifies the type of a label printed, stamped or integrated on or in the insulation of the wire (e.g. alpha numerical, bar code).      </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|labelIdentificationValue| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the value of a label printed on the insulation of the wire. This value applies to all wire elements that satisfy this specification, so all instances share the same label value (e.g. a wire type or a core number in a multi core wire).       </p>      <p> If instances of a wire require individual labeling it has to be defined on the <i>WireElementReference</i>.      </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|material| [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the material of the insulation. </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|thickness| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the thickness of the insulation. </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|labelingTechnology| [LabelingTechnology]({{< relref "labelingtechnology.md" >}}) | 0..1 | Specifies used labeling technology if the label is already defined in this specification. | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|allowedLabelingTechnology| [LabelingTechnology]({{< relref "labelingtechnology.md" >}}) | 0..* | Specifies the allowed labeling technologies if the insulation is not yet labeled, but support labeling in its usage. | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |


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
        <td>insulationSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireelementspecification.md" >}}">WireElementSpecification</a></td>
        <td>0..*</td>
        <td><p> If the <i>WireElement</i> has an insulation then the specification of the insulation is referenced here.      </p></td>
    </tr>
    <tr>
        <td>recommendedInsulationSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "signal.md" >}}">Signal</a></td>
        <td></td>
        <td><p> Defines a recommended Specification for the insulation (e.g. the color) that implements this signal.      </p></td>
    </tr>
    </tbody>
</table>



