---
title: ConnectorHousingSpecification
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectorHousingSpecification
menu_name: vec-2.0.1
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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType| [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|averageWireLengthAddOn| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the average wire length add on for this connector.     </p> | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |
|voltageRange| [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies the allowed voltage range for the connector housing.      </p> | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |
|coupleable| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Defines whether the connector is coupleable or not. Connectors that are coupleable can be used in an inline position. Connectors that are not coupleable can be connected only to an ECU or something similar.      </p> | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |
|connectorPositionAssurance| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> If <i>true</i> the <i>ConnectorHousing</i> has a connector position assurance (CPA).     </p>      <p> A CPA is some sort of feature of a connector, that secures the connector in its correctly assembled position with its mating part.       </p> | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |
|outletDirection| [ConnectorOutletDirection]({{< relref "connectoroutletdirection.md" >}}) | 0..1 | <p> Defines the <i>OutletDirection</i> for wires.      </p>      <p> This attribute is defined as an <i>OpenEnumeration</i>.      </p> | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |

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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>segmentConnectionPoint</td>
        <td><a href="{{< relref "segmentconnectionpoint.md" >}}">SegmentConnectionPoint</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the <i>SegmentConnectionPoints </i>the connector housing.      </p></td>
    </tr>
    <tr>
        <td>coding</td>
        <td><a href="{{< relref "coding.md" >}}">Coding</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>Defines coding of the connector housing that is satisfied by the connector housing.</td>
    </tr>
    <tr>
        <td>slot</td>
        <td><a href="{{< relref "abstractslot.md" >}}">AbstractSlot</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the slots forming the ConnectorHousing.</td>
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
        <td>connectorHousingSpecification</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectorhousingrole.md" >}}">ConnectorHousingRole</a></td>
        <td>0..*</td>
        <td><p> References the <i>ConnectorHousingSpecification </i>that is instanced by this <i>ConnectorHousingRole.</i>      </p></td>
    </tr>
    <tr>
        <td>housingSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "housingcomponent.md" >}}">HousingComponent</a></td>
        <td>0..*</td>
        <td>References the ConnectorHousingSpecification that is describing the connector interface of the HousingComponent (e.g. Slots, Cavities, Design, Coding).</td>
    </tr>
    </tbody>
</table>



