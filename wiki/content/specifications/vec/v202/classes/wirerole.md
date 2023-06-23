---
title: WireRole
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireRole
menu_name: vec-2.0.2
---
<p> A WireRole defines the instance specific properties and relationships of a wire.      </p>

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
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>wireSpecification</td>
        <td><a href="{{< relref "wirespecification.md" >}}">WireSpecification</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>WireSpecification</i> that is instanced by this <i>WireRole.</i>      </p></td>
    </tr>
    <tr>
        <td>wireElementReference</td>
        <td><a href="{{< relref "wireelementreference.md" >}}">WireElementReference</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the WireElementReferences used in the WireRole. For multi core wires more than one WireElementReference is needed.</td>
    </tr>
    </tbody>
</table>




