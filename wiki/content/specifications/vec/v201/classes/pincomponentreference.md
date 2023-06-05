---
title: PinComponentReference
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - PinComponentReference
menu_name: vec-2.0.1
---
<p>A PinComponentReference represents the usage of a PinComponent in the context of a PartUsage or PartOccurrence.  (KBLFRM-401) </p>

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
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the PinComponentReference. The identification is guaranteed to be unique within the HousingComponentReference.      </p> | [PinComponentReference]({{< relref "pincomponentreference.md" >}}) |

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
        <td>terminalRole</td>
        <td><a href="{{< relref "terminalrole.md" >}}">TerminalRole</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>References the TerminalRole of PinComponentReference. This is required to specify a Mating for EEComponents with other EEComponents or a Harness.  (KBLFRM-401)</td>
    </tr>
    <tr>
        <td>pinComponent</td>
        <td><a href="{{< relref "pincomponent.md" >}}">PinComponent</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>Points to the PinComponent referenced by the PinComponent reference.  (KBLFRM-401)</td>
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
        <td>pinComponentRef</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "housingcomponentreference.md" >}}">HousingComponentReference</a></td>
        <td>1</td>
        <td>Specifies the PinComponentReferences used in the HousingComponentReference.  (KBLFRM-401)</td>
    </tr>
    <tr>
        <td>pinComponentReference</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "pinwiremappingpoint.md" >}}">PinWireMappingPoint</a></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>



