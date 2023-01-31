---
title: Permission
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - Permission
menu_name: vec-2.0.1
---
<p> Describes an act of acceptance together with information about the responsible person, department and company who directly provoked the approval level and status as described in the referenced Approval-instance. (see KBLFRM-229)      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|permission| [TypeOfPermission]({{< relref "typeofpermission.md" >}}) | 1 | <p>Specifies the type of permission. Predefined values are: Seen, Checked, Released.</p> | [Permission]({{< relref "permission.md" >}}) |
|permissionDate| [Date]({{< relref "date.md" >}}) | 0..1 | <p> Specifies the date when the permission was stated.      </p> | [Permission]({{< relref "permission.md" >}}) |
|permitter| [Person]({{< relref "person.md" >}}) | 0..1 | <p> Specifies the person who was involved in the approval process giving a certain Permission.      </p> | [Permission]({{< relref "permission.md" >}}) |


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
        <td>permission</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "approval.md" >}}">Approval</a></td>
        <td>1</td>
        <td><p> Specifies the permission issued with the approval.      </p></td>
    </tr>
    </tbody>
</table>



