﻿---
title: ConnectorHousingSpecification
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectorHousingSpecification
menu_name: vec-1.2.0
---
<p> Specification for the definition of connector housings. A connector housing consists of a one or more slots. In the means of the VEC, a connector housing can be a conventional connector housing, a contact module or a connector shell.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|averageWireLengthAddOn | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the average wire length add on for this connector.     </p> | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |
|voltageRange | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies the allowed voltage range for the connector housing.      </p> | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |
|coupleable | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Defines whether the connector is coupleable or not. Connectors that are coupleable can be used in an inline position. Connectors that are not coupleable can be connected only to an ECU or something similar.      </p> | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |
|connectorPositionAssurance | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> If <i>true</i> the <i>ConnectorHousing</i> has a connector position assurance (CPA).     </p>      <p> A CPA is some sort of feature of a connector, that secures the connector in its correctly assembled position with its mating part.       </p> | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |
|outletDirection | [ConnectorOutletDirection]({{< relref "connectoroutletdirection.md" >}}) | 0..1 | <p> Defines the <i>OutletDirection</i> for wires.      </p>      <p> This attribute is defined as an <i>OpenEnumeration</i>.      </p> | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [SegmentConnectionPoint]({{< relref "segmentconnectionpoint.md" >}}) | segmentConnectionPoint | 0..* | 1 | <p> Specifies the <i>SegmentConnectionPoints </i>the connector housing.      </p> |
| [Coding]({{< relref "coding.md" >}}) | coding | 0..1 | 0..1 | Defines coding of the connector housing that is satisfied by the connector housing. |
| [AbstractSlot]({{< relref "abstractslot.md" >}}) | slot | 0..* | 1 | Specifies the slots forming the ConnectorHousing. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) | 0..* | connectorHousingSpecification | 1 | <p> References the <i>ConnectorHousingSpecification </i>that is instanced by this <i>ConnectorHousingRole.</i>      </p> |
| [HousingComponent]({{< relref "housingcomponent.md" >}}) | 0..* | housingSpecification | 0..1 | References the ConnectorHousingSpecification that is describing the connector interface of the HousingComponent (e.g. Slots, Cavities, Design, Coding). |
