---
title: HousingComponentReference
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - HousingComponentReference
menu_name: vec-2.1.0
---
<p>A HousingComponentReference represents the usage of a HousingComponent in the context of a PartUsage or PartOccurrence.  (KBLFRM-401) </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the HousingComponentReference. The identification is guaranteed to be unique within the EEComponentRole.      </p> | [HousingComponentReference]({{< relref "housingcomponentreference.md" >}}) |

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
        <td>componentConnector</td>
        <td><a href="{{< relref "componentconnector.md" >}}">ComponentConnector</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the ComponentConnector that is realized by the referenced HousingComponentReference.</td>
    </tr>
    <tr>
        <td>pinComponentRef</td>
        <td><a href="{{< relref "pincomponentreference.md" >}}">PinComponentReference</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the PinComponentReferences used in the HousingComponentReference.  (KBLFRM-401)</td>
    </tr>
    <tr>
        <td>housingComponent</td>
        <td><a href="{{< relref "housingcomponent.md" >}}">HousingComponent</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>Points to the HousingComponent referenced by the HousingComponent reference.  (KBLFRM-401)</td>
    </tr>
    <tr>
        <td>connectorHousingRole</td>
        <td><a href="{{< relref "connectorhousingrole.md" >}}">ConnectorHousingRole</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
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
        <td>housingComponentRef</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "eecomponentrole.md" >}}">EEComponentRole</a></td>
        <td>1</td>
        <td>Specifies the HousingComponentReferences used in the EEComponentRole.  (KBLFRM-401)</td>
    </tr>
    </tbody>
</table>



