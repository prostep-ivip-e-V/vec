---
title: ConnectorHousingCoverRole
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectorHousingCoverRole
menu_name: vec-2.1.0
---
<p> A&#160;<i>ConnectorHousingCoverRole</i> defines the instance-specific properties of a cover for a connector.&#160;      </p>      <p> The association to the <i>ConnectorHousing</i> is established with the <i>OccurrenceOrUsage.ReferenceElement</i> association.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |
|transportOnly| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | Specifies if the cover is only used during transportation of the harness. Conversely, <i>transportOnly=false</i> means that the cover might remain in the vehicle, depending on the specific circumstances (e.g. the variant configuration of the vehicle). | [ConnectorHousingCoverRole]({{< relref "connectorhousingcoverrole.md" >}}) |

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
        <td>connectorHousingCoverSpecification</td>
        <td><a href="{{< relref "connectorhousingcoverspecification.md" >}}">ConnectorHousingCoverSpecification</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>




