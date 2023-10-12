---
title: ComponentConnector
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ComponentConnector
menu_name: vec-2.1.0
---
<p> A <i>ComponentConnector</i> is a grouping of <i>ComponentPorts</i> and represents a logical abstraction of a connector of an <i>EEComponent</i>. When the <i>ComponentNode</i> is realized by an <i>EEComponentRole</i> the <i>ComponentConnector</i> will result in a <i>HousingComponent.</i>      </p>      <p> It is permitted that a <i>ComponentConnector</i> is a 150% definition of connector.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | Specifies a unique identification of the ComponentConnector. The identification is guaranteed to be unique within the ComponentNode. | [ComponentConnector]({{< relref "componentconnector.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* |  | [ComponentConnector]({{< relref "componentconnector.md" >}}) |

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
        <td>componentPort</td>
        <td><a href="{{< relref "componentport.md" >}}">ComponentPort</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the ComponentPorts of the ComponentConnector.</td>
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
        <td>componentConnector</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectorhousingrole.md" >}}">ConnectorHousingRole</a></td>
        <td>0..*</td>
        <td><p> References the ComponentConnector that is realized by the referenced ConnectorHousing (OccurrenceOrUsage with ConnectorHousingRole). This can especially be relevant for inliners. KBLFRM-341.      </p></td>
    </tr>
    <tr>
        <td>componentConnector</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "componentnode.md" >}}">ComponentNode</a></td>
        <td>1</td>
        <td>Specifies the ComponentConnectors of a ComponentNode.</td>
    </tr>
    <tr>
        <td>componentConnector</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "housingcomponentreference.md" >}}">HousingComponentReference</a></td>
        <td>0..*</td>
        <td>References the ComponentConnector that is realized by the referenced HousingComponentReference.</td>
    </tr>
    </tbody>
</table>



