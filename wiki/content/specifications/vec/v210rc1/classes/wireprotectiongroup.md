---
title: WireProtectionGroup
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireProtectionGroup
menu_name: vec-2.1.0
---
<p> A <i>WireProtectionGroup</i> is the definition of a set of <i>WireProtectionRoles</i> to which the following rules apply:      </p>      <ul>       <li> The <i>WireProtectionGroup</i> defines a processing instruction, not a precise product specification.        </li>       <li> All transitions between adjacent elements in group shall be implemented continuous, without interruption, wherever technically possible.        </li>       <li> The elements of a <i>WireProtectionGroup </i>can be subject to variance depending on the scenario in a specific 100%&#160;configuration. Meaning, some elements of the group might only be applicable in some scenarios, e.g. a cross taping might only occur if at least three segments with wire exist in a configuration.        </li>       <li> The existence of the elements of a group in a specific 100%&#160;configuration is not controlled by the <i>WireProtectionGroup, </i>but by the individual variance control applied to the participating <i>Roles </i>and the corresponding <i>OccurrenceOrUsages</i>.        </li>     </ul>     <p> &#160;      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique <i>identification</i> of the <i>WireProtectionGroup</i>. The <i>identification</i> is guaranteed to be unique within the <i>WireProtectionGroupSpecification</i>.      </p> | [WireProtectionGroup]({{< relref "wireprotectiongroup.md" >}}) |

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
        <td>relatedWireProtections</td>
        <td><a href="{{< relref "wireprotectionrole.md" >}}">WireProtectionRole</a></td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td><p> References the members in the <i>WireProtectionGroup.</i>      </p></td>
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
        <td>wireProtectionGroup</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireprotectiongroupspecification.md" >}}">WireProtectionGroupSpecification</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    </tbody>
</table>



