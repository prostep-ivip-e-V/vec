---
title: InternalComponentConnection
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - InternalComponentConnection
menu_name: vec-2.1.0
---
<p> An <i>InternalComponentConnection</i> defines a conductive connection between <i>PinComponents </i>within an <i>EEComponent</i>. Such a connection can be statically permanent or dynamically switch (e.g. by a relais). This behaviour can be defined with a <i>SwitchingState</i>.      </p>      <p> The electrical behaviour of an <i>InternalComponentConnection </i>can be further specified by a referenced <i>ConductorSpecification.</i>      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Identification of the <i>InternalComponentConnection</i>, which must be distinct for all <i>InternalComponentConnection</i> of an <i>EEComponent</i>.      </p> | [InternalComponentConnection]({{< relref "internalcomponentconnection.md" >}}) |

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
        <td>pins</td>
        <td><a href="{{< relref "pincomponent.md" >}}">PinComponent</a></td>
        <td>2..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>conductorSpecification</td>
        <td><a href="{{< relref "conductorspecification.md" >}}">ConductorSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
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
        <td>connections</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "eecomponentspecification.md" >}}">EEComponentSpecification</a></td>
        <td>1</td>
        <td></td>
    </tr>
    <tr>
        <td>switchedConnections</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "switchingstate.md" >}}">SwitchingState</a></td>
        <td>0..*</td>
        <td><p> Specifies the <i>InternalComponentConnections</i> that are switched by this <i>SwitchingState.</i>      </p></td>
    </tr>
    </tbody>
</table>



