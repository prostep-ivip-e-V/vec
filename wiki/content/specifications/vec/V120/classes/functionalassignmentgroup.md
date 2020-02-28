---
title: FunctionalAssignmentGroup
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - FunctionalAssignmentGroup
menu_name: vec-1.2.0
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the AssignmentGroup. The identification is guaranteed to be unique within the specification.      </p> | [AssignmentGroup]({{< relref "assignmentgroup.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>AssignmentGroup</i>.      </p> | [AssignmentGroup]({{< relref "assignmentgroup.md" >}}) |
|functionalRequirements | [FunctionalRequirement]({{< relref "functionalrequirement.md" >}}) | 0..* | <p> Functional requirements that apply to the members of this group.      </p>      <p> &#160;      </p> | [FunctionalAssignmentGroup]({{< relref "functionalassignmentgroup.md" >}}) |

