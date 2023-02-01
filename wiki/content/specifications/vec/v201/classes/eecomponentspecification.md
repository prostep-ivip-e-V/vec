---
title: EEComponentSpecification
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - EEComponentSpecification
menu_name: vec-2.0.1
---
<p> Base-class for the specification of electrological components, which are connected to the harness. Usually electrological components are not part of the harness e.g. a fuse, a switch or a control device. All EEComponents can have one or more HousingComponents which are possible interfaces for the connection to a harness.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [AntennaSpecification]({{< relref "antennaspecification.md" >}}), [BatterySpecification]({{< relref "batteryspecification.md" >}}), [CapacitorSpecification]({{< relref "capacitorspecification.md" >}}), [DiodeSpecification]({{< relref "diodespecification.md" >}}), [FuseSpecification]({{< relref "fusespecification.md" >}}), [MultiFuseSpecification]({{< relref "multifusespecification.md" >}}), [PotentialDistributorSpecification]({{< relref "potentialdistributorspecification.md" >}}), [RelaySpecification]({{< relref "relayspecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType| [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|powerConsumption| [PowerConsumption]({{< relref "powerconsumption.md" >}}) | 0..* | <p> Specifies the <i>PowerConsumptions</i> of this <i>EEComponentSpecification.</i> This refers to the internal power consumption of this E/E-component, not the power-consumption that might occur indirectly over other E/E-components that are supplied through this component.      </p> | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) |

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
        <td>connections</td>
        <td><a href="{{< relref "internalcomponentconnection.md" >}}">InternalComponentConnection</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td></td>
    </tr>
    <tr>
        <td>states</td>
        <td><a href="{{< relref "switchingstate.md" >}}">SwitchingState</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the available <i>SwitchingStates</i> of the EEComponent.      </p></td>
    </tr>
    <tr>
        <td>housingComponent</td>
        <td><a href="{{< relref "housingcomponent.md" >}}">HousingComponent</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the available connector interfaces of the EEComponent.</td>
    </tr>
    <tr>
        <td>extensionSlots</td>
        <td><a href="{{< relref "extensionslot.md" >}}">ExtensionSlot</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the available ExtensionSlots of the EEComponent.</td>
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
        <td>EEComponentSpecification</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "eecomponentrole.md" >}}">EEComponentRole</a></td>
        <td>0..*</td>
        <td><p> References the <i>EEComponentSpecification </i>that is instanced by this <i>EEComponentRole.</i>      </p></td>
    </tr>
    </tbody>
</table>



