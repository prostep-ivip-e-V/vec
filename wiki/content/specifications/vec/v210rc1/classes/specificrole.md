---
title: SpecificRole
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - SpecificRole
menu_name: vec-2.1.0
---
<p> A <i>SpecificRole</i> is the possibility to define instance specific properties with custom properties (see <i>ExtendableElement</i>). This is necessary, if the part is described by custom properties of a <i>PartOrUsageRelatedSpecification</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |
|specificRoleType| [String]({{< relref "string.md" >}}) | 1 | <p>Specifies the type for role.  </p> | [SpecificRole]({{< relref "specificrole.md" >}}) |

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
        <td>specification</td>
        <td><a href="{{< relref "partorusagerelatedspecification.md" >}}">PartOrUsageRelatedSpecification</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>PartOrUsageRelatedSpecification </i>that is instantiated by this <i>SpecificRole.</i>      </p></td>
    </tr>
    </tbody>
</table>




