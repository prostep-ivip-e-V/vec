﻿---
title: ConnectorHousingCapSpecification
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectorHousingCapSpecification
menu_name: vec-2.1.0
---
<p> Specification for the definition of caps (backshells) of connectors. Different caps can add additional wire length addons to a connector housing.      </p>      <p> A 'cap' which already defines the number of cavities, coding etc. is in the&#160;VEC&#160;defined by <i>ConnectorHousingSpecification</i> with <i>ModularSlots</i> and not by a <i>ConnectorHousingCapSpecification</i>.      </p>

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
|wireAddOn| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the wire length add on needed for the cap.      </p> | [ConnectorHousingCapSpecification]({{< relref "connectorhousingcapspecification.md" >}}) |
|outletDirection| [ConnectorOutletDirection]({{< relref "connectoroutletdirection.md" >}}) | 0..1 | <p> Defines the <i>OutletDirection</i> for wires.      </p>      <p> This attribute is defined as an <i>OpenEnumeration</i>.      </p> | [ConnectorHousingCapSpecification]({{< relref "connectorhousingcapspecification.md" >}}) |


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
        <td>connectorHousingCapSpecification</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectorhousingcaprole.md" >}}">ConnectorHousingCapRole</a></td>
        <td>0..*</td>
        <td><p> References the <i>ConnectorHousingCapSpecification </i>that is instanced by this <i>ConnectorHousingCapRole.</i>      </p></td>
    </tr>
    </tbody>
</table>



