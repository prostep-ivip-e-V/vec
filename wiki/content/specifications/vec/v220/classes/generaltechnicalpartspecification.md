---
title: GeneralTechnicalPartSpecification
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - GeneralTechnicalPartSpecification
menu_name: vec-2.2.0
---
<p>Specification for the definition of common properties for technical parts.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType| [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|colorInformation| [Color]({{< relref "color.md" >}}) | 0..* | <p> Specifies the color of the part.      </p> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|massInformation| [MassInformation]({{< relref "massinformation.md" >}}) | 0..* | <p> Specifies the overall mass of the part per Unit of quantity (e.g. g/piece or g/meter...)      </p> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|materialInformation| [Material]({{< relref "material.md" >}}) | 0..* | <p> Specifies the material of a part with the syntax and nomenclature of an arbitrary reference system. Multiple <i>Material</i> entries in this attribute are only allowed to express the same value in the different reference systems. For parts that are composed of different materials, e.g. wiring harness modules, these materials and their weight proportions can be defined via the <i>MaterialComposition</i>.      </p> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|materialComposition| [MaterialComposition]({{< relref "materialcomposition.md" >}}) | 0..* | <p> Parts and components are often composed from a material-mix. The <i>MaterialComposition </i>allows the definition of the various <i>Material</i>s in a part and their mass. For example, the proportion of copper or other precious metals in a component. It is permissible to list only individual relevant components. A complete listing of all components is not required.       </p> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|robustnessProperties| [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) | 0..* | <p>Specifies the robustness of a part.  </p> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|temperatureInformation| [TemperatureInformation]({{< relref "temperatureinformation.md" >}}) | 0..* | <p>Specifies valid temperatures for a part.  </p> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|fitRate| [Double]({{< relref "double.md" >}}) | 0..1 | <p> The Failures In Time (FIT) rate of a device is the number of failures that can be expected in one billion (109) device-hours of operation.[14]&#160;(E.g. 1000 devices for 1 million hours, or 1 million devices for 1000 hours each, or some other combination.) (see <a href="https://en.wikipedia.org/wiki/Failure_rate#Units">https://en.wikipedia.org/wiki/Failure_rate#Units</a>)      </p> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|unspecifiedAccessoryPermitted| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Defines whether accessories which are not explicitly defined by a <i>PartRelation</i> may be used with instances of this part. If this attribute is not specified the default value is <i>true.</i>      </p> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|voltageRating| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | The <i>voltageRating</i> of a component indicates the maximum voltage for which the component (e.g. a fuse, connector housing,...)&#160;is designed to operate safely. | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|voltageLevelCompliance| [NominalVoltage]({{< relref "nominalvoltage.md" >}}) | 0..* | Defines the voltage levels (in terms of <i>NominalVoltage)</i> for which the part is approved. | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|applicationType| [ApplicationType]({{< relref "applicationtype.md" >}}) | 0..* | <p> Defines the valid application types (or fields of application) for the <i>PartVersion</i> described by this <i>GeneralTechnicalPartSpecification.</i>&#160;An application type usually implies a wide variety of aspects, such as process requirements, specifications, applicable standards, procedures to be followed etc.      </p>      <p> &#160;      </p>      <p> <u>Differentiation from <i>VoltageComplianceLevel</i>:</u> Although there is an overlap between the literals of the <i>NominalVoltage</i> and the <i>ApplicationType</i> the statements expressed with the <i>applicationType</i> and the <i>voltageComplianceLevel</i> are different. The <i>voltageComplianceLevel</i> only refers to a statement about the voltage compatibility of a part, but does not include the other aspects, e.g. process requirements. For example, a connector or cable might withstand high voltage levels (<i>voltageLevelCompliance</i>) but might not be allowed for high voltage applications in a vehicle due to an insufficient color coding.      </p> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |

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
        <td>partRelation</td>
        <td><a href="{{< relref "partrelation.md" >}}">PartRelation</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies possible relations (accessories) of the specified part with other PartVersion (e.g. caps, clips).</td>
    </tr>
    <tr>
        <td>boundingBox</td>
        <td><a href="{{< relref "boundingbox.md" >}}">BoundingBox</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> Defines the bounding box of the part.      </p></td>
    </tr>
    </tbody>
</table>




