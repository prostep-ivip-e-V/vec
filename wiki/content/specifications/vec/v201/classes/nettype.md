---
title: NetType
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - NetType
menu_name: vec-2.0.1
---
<p> A <i>NetType</i> defines the different types of Nets used in the <i>NetSpecification</i>. The level of detail of the <i>NetTypes</i> for the can be process dependent.      </p>      <p> A NetType could be just used to differentiate between conventional (analogue) communication and bus communication (digital), it can also already define the different types of digital communication (e.g. CAN, MOST, Ethernet).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | net |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the NetType. The identification is guaranteed to be unique within the NetSpecification.      </p> | [NetType]({{< relref "nettype.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Room for additional, human readable information about the <i>NetType</i>.      </p> | [NetType]({{< relref "nettype.md" >}}) |
|signalType| [SignalType]({{< relref "signaltype.md" >}}) | 0..1 |  | [NetType]({{< relref "nettype.md" >}}) |
|signalSubType| [SignalSubType]({{< relref "signalsubtype.md" >}}) | 0..1 |  | [NetType]({{< relref "nettype.md" >}}) |
|signalInformationType| [SignalInformationType]({{< relref "signalinformationtype.md" >}}) | 0..1 |  | [NetType]({{< relref "nettype.md" >}}) |
|signalTransmissionMediumType| [SignalTransmissionMediumType]({{< relref "signaltransmissionmediumtype.md" >}}) | 0..1 | <p> Specifies the type of the transmission medium for signals of this type.      </p> | [NetType]({{< relref "nettype.md" >}}) |


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
        <td>netType</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "signal.md" >}}">Signal</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>netType</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "netspecification.md" >}}">NetSpecification</a></td>
        <td>1</td>
        <td></td>
    </tr>
    <tr>
        <td>netType</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "networkport.md" >}}">NetworkPort</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>netType</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "net.md" >}}">Net</a></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>



