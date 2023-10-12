---
title: CouplingPoint
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - CouplingPoint
menu_name: vec-2.1.0
---
<p> A <i>CouplingPoint</i> defines a single coupling. If a coupling takes place, all sub elements are connected. If the coupling is disconnected, all subelements are disconnected.     </p>      <p> If a coupling occurs between two connectors, and not just between two terminals, the <i>CouplingPoint</i> references the respective <i>ConnectorHousingRoles</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | coupling |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 |  | [CouplingPoint]({{< relref "couplingpoint.md" >}}) |

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
        <td>slotCoupling</td>
        <td><a href="{{< relref "slotcoupling.md" >}}">SlotCoupling</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td></td>
    </tr>
    <tr>
        <td>matingPoint</td>
        <td><a href="{{< relref "matingpoint.md" >}}">MatingPoint</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the <i>MatingPoints</i> defined within the <i>CouplingPoint</i>.      </p></td>
    </tr>
    <tr>
        <td>firstConnector</td>
        <td><a href="{{< relref "connectorhousingrole.md" >}}">ConnectorHousingRole</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>secondConnector</td>
        <td><a href="{{< relref "connectorhousingrole.md" >}}">ConnectorHousingRole</a></td>
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
        <td>couplingPoint</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "couplingspecification.md" >}}">CouplingSpecification</a></td>
        <td>1</td>
        <td></td>
    </tr>
    </tbody>
</table>



