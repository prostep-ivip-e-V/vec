---
title: FunctionalAssignmentGroup
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - FunctionalAssignmentGroup
menu_name: vec-2.0.2
---
<p> The <i>FunctionalAssignmentGroup </i>clusters elements that contribute to a specific function or a functional aspect. With such a group, certain functional requirements can be associated.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | assignment_groups |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [AssignmentGroup]({{< relref "assignmentgroup.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the AssignmentGroup. The identification is guaranteed to be unique within the specification.      </p> | [AssignmentGroup]({{< relref "assignmentgroup.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>AssignmentGroup</i>.      </p> | [AssignmentGroup]({{< relref "assignmentgroup.md" >}}) |
|functionalRequirements| [FunctionalRequirement]({{< relref "functionalrequirement.md" >}}) | 0..* | <p> Functional requirements that apply to the members of this group.      </p>      <p> &#160;      </p> | [FunctionalAssignmentGroup]({{< relref "functionalassignmentgroup.md" >}}) |


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
        <td>containedGroups</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "functionalstructurenode.md" >}}">FunctionalStructureNode</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>



