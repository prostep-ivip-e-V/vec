---
title: EEComponentRole
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - EEComponentRole
menu_name: vec-2.0.1
---
<p> An EEComponentRole defines the instance specific properties and relationships of an EE-component.      </p>

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
        <td>housingComponentRef</td>
        <td><a href="{{< relref "housingcomponentreference.md" >}}">HousingComponentReference</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the HousingComponentReferences used in the EEComponentRole.  (KBLFRM-401)</td>
    </tr>
    <tr>
        <td>componentNode</td>
        <td><a href="{{< relref "componentnode.md" >}}">ComponentNode</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the ComponentNode that is realized by the referenced EEComponent (OccurrenceOrUsage with EEComponentRole). KBLFRM-341</td>
    </tr>
    <tr>
        <td>EEComponentSpecification</td>
        <td><a href="{{< relref "eecomponentspecification.md" >}}">EEComponentSpecification</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>EEComponentSpecification </i>that is instanced by this <i>EEComponentRole.</i>      </p></td>
    </tr>
    <tr>
        <td>extensionSlotRef</td>
        <td><a href="{{< relref "extensionslotreference.md" >}}">ExtensionSlotReference</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the ExtensionSlotReferences used in the EEComponentRole.</td>
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
        <td>usedInserts</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "extensionslotreference.md" >}}">ExtensionSlotReference</a></td>
        <td>0..*</td>
        <td>Defines the inserts used for extension slot in a defined instance. These can be more than one EEComponentRole, because of variance in a 150% specification.</td>
    </tr>
    </tbody>
</table>



