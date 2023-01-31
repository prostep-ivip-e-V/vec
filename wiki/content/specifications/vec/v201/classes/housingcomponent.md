---
title: HousingComponent
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - HousingComponent
menu_name: vec-2.0.1
---
<p> A HousingComponent describes the interface of an EEComponent with which it can be connected to another EEComponent or a harness. The characteristics of the interface can be described with a referenced ConnectorHousingSpecification. (see KBLFRM-300)      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p>Identification of the HousingComponent, which must be distinct for all HousingComponents of an EEComponent.  </p> | [HousingComponent]({{< relref "housingcomponent.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>HousingComponent</i>.      </p> | [HousingComponent]({{< relref "housingcomponent.md" >}}) |
|compatibleTypes| [HousingComponentType]({{< relref "housingcomponenttype.md" >}}) | 0..* | <p> The values of this attribute define the <i>HousingComponentTypes</i> that are valid to be associated with this <i>HousingComponent.</i> In other word, if this <i>HousingComponent </i>can<i> </i>be associated with a relay, a fuse, a connector housing of a harness. The values are matching the <i>PrimaryPartType</i> of the <i>PartVersion</i> of the component that should be associated (plugged) into this housing component.      </p> | [HousingComponent]({{< relref "housingcomponent.md" >}}) |

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
        <td>pinComponent</td>
        <td><a href="{{< relref "pincomponent.md" >}}">PinComponent</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the PinComponents of HousingComponent.   (see KBLFRM-300)</td>
    </tr>
    <tr>
        <td>housingSpecification</td>
        <td><a href="{{< relref "connectorhousingspecification.md" >}}">ConnectorHousingSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the ConnectorHousingSpecification that is describing the connector interface of the HousingComponent (e.g. Slots, Cavities, Design, Coding).</td>
    </tr>
    <tr>
        <td>segmentConnectionPoint</td>
        <td><a href="{{< relref "segmentconnectionpointhc.md" >}}">SegmentConnectionPointHC</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the <i>SegmentConnectionPoints </i>the <i>HousingComponent</i>.      </p></td>
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
        <td>housingComponent</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "eecomponentspecification.md" >}}">EEComponentSpecification</a></td>
        <td>1</td>
        <td>Specifies the available connector interfaces of the EEComponent.</td>
    </tr>
    <tr>
        <td>housingComponent</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "housingcomponentreference.md" >}}">HousingComponentReference</a></td>
        <td>0..*</td>
        <td>Points to the HousingComponent referenced by the HousingComponent reference.  (KBLFRM-401)</td>
    </tr>
    </tbody>
</table>



