---
title: PinComponentBehavior
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - PinComponentBehavior
menu_name: vec-2.1.0
---
<p> A <i>PinComponentBehavior</i> specifies the electrical behavior of a <i>PinComponent.</i> Since the behavior of a pin is configuration dependent (e.g. the software deployed on an ECU) the <i>PinComponentBehavior </i>inherits from <i>ConfigurableElement.</i> Therefore, a <i>PinComponent</i> can specify multiple <i>PinComponentBehavior.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Identification of the PinComponentBehavior which identifies it from a user perspective, and which must be distinct for all PinComponentBehaviors of a PinComponent.      </p> | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |
|signalDirection| [SignalDirection]({{< relref "signaldirection.md" >}}) | 0..1 | <p>The direction of the signal on this pin. </p> | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |
|pinType| [PinType]({{< relref "pintype.md" >}}) | 0..1 | <p> Specifies the <i>PinType</i> of the <i>PinComponent</i>.      </p> | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |
|applianceType| [PinApplianceType]({{< relref "pinappliancetype.md" >}}) | 0..1 | <p> Classifies the appliance of a Pin in terms of the duration of the appliance (see PinApplianceType).      </p> | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>PinComponentBehaviour</i>.      </p> | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |

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
        <td>opticalInformation</td>
        <td><a href="{{< relref "pinopticalinformation.md" >}}">PinOpticalInformation</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the optical information of the pin, if it has the type optical.      </p></td>
    </tr>
    <tr>
        <td>currentInformation</td>
        <td><a href="{{< relref "pincurrentinformation.md" >}}">PinCurrentInformation</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the current information of the <i>PinComponent</i> in this <i>PinComponentBehavior</i>. Since the current values of a pin can be defined for different types and times it is possible to define multiple <i>PinCurrentInformations</i> for a <i>PinComponentBehavior</i>.      </p></td>
    </tr>
    <tr>
        <td>voltageInformation</td>
        <td><a href="{{< relref "pinvoltageinformation.md" >}}">PinVoltageInformation</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the voltage information of the <i>PinComponent</i> in this <i>PinComponentBehavior</i>. Since the voltage values of a pin can be defined for different types and times it is possible to define multiple <i>PinVoltageInformations</i> for a <i>PinComponentBehavior</i>.      </p></td>
    </tr>
    <tr>
        <td>signal</td>
        <td><a href="{{< relref "signal.md" >}}">Signal</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> Specifies the <i>Signal </i>associated with the pin in this behavior.      </p></td>
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
        <td>behaviour</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "pincomponent.md" >}}">PinComponent</a></td>
        <td>1</td>
        <td><p> Specifies the configuration dependent electrical behavior of the<i> PinComponent.</i>      </p></td>
    </tr>
    </tbody>
</table>



