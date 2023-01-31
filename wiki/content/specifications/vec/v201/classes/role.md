---
title: Role
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - Role
menu_name: vec-2.0.1
---
<p> A Role is the corresponding mechanism for OccurrenceOrUsages to the PartOrUsageRelatedSpecifcations for PartVersions or PartUsages. The PartOrUsageRelatedSpecifcations are describing a certain aspect of the master data of a part. A Role describes the corresponding properties and relationships for instances of a part (e.g. the usage specific properties of a wire occurrence like the length or the contacting).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [CableDuctRole]({{< relref "cableductrole.md" >}}), [CableTieRole]({{< relref "cabletierole.md" >}}), [CavityAccessoryRole]({{< relref "cavityaccessoryrole.md" >}}), [CavityPlugRole]({{< relref "cavityplugrole.md" >}}), [CavitySealRole]({{< relref "cavitysealrole.md" >}}), [ConnectorHousingCapRole]({{< relref "connectorhousingcaprole.md" >}}), [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}), [EEComponentRole]({{< relref "eecomponentrole.md" >}}), [FerriteRole]({{< relref "ferriterole.md" >}}), [FixingRole]({{< relref "fixingrole.md" >}}), [GrommetRole]({{< relref "grommetrole.md" >}}), [LabelingRole]({{< relref "labelingrole.md" >}}), [PartWithSubComponentsRole]({{< relref "partwithsubcomponentsrole.md" >}}), [PlaceableElementRole]({{< relref "placeableelementrole.md" >}}), [SpecificRole]({{< relref "specificrole.md" >}}), [TerminalRole]({{< relref "terminalrole.md" >}}), [WireEndAccessoryRole]({{< relref "wireendaccessoryrole.md" >}}), [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}), [WireRole]({{< relref "wirerole.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |


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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>role</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "occurrenceorusage.md" >}}">OccurrenceOrUsage</a></td>
        <td>0..1</td>
        <td><p> Specifies the different roles of the OccurrenceOrUsage.      </p></td>
    </tr>
    </tbody>
</table>



