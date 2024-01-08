---
title: DiodeSpecification
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - DiodeSpecification
menu_name: vec-2.1.0
---
<p> Specification of the electrological aspects of a diode.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType| [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|powerConsumption| [PowerConsumption]({{< relref "powerconsumption.md" >}}) | 0..* | <p> Specifies the <i>PowerConsumptions</i> of this <i>EEComponentSpecification.</i> This refers to the internal power consumption of this E/E-component, not the power-consumption that might occur indirectly over other E/E-components that are supplied through this component.      </p> | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) |
|voltageRating| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | The <i>voltageRating</i> of an <i>EEComponentSpecification</i> indicates the maximum voltage of the circuit for which the E/E component (e.g. a fuse)&#160;is designed to operate safely. | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) |
|thresholdVoltage| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Voltage at which the diode starts conducting in forward direction.      </p> | [DiodeSpecification]({{< relref "diodespecification.md" >}}) |
|breakDownVoltage| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Voltage at which the diode starts conducting in reverse direction.      </p> | [DiodeSpecification]({{< relref "diodespecification.md" >}}) |
|iMax| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the maximum electric current tolerated by the diode.      </p> | [DiodeSpecification]({{< relref "diodespecification.md" >}}) |

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
        <td>cathode</td>
        <td><a href="{{< relref "pincomponent.md" >}}">PinComponent</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>anode</td>
        <td><a href="{{< relref "pincomponent.md" >}}">PinComponent</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>




