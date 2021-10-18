---
title: AssignmentGroup
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - AssignmentGroup
menu_name: vec-1.2.1
---
<p> An <i>AssignmentGroup</i> is a concept that allows the clustering of arbitrary elements in ways that are orthogonal to hierarchical and semantic structure of the VEC.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | assignment_groups |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [DocumentRelatedAssignmentGroup]({{< relref "documentrelatedassignmentgroup.md" >}}), [FunctionalAssignmentGroup]({{< relref "functionalassignmentgroup.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the AssignmentGroup. The identification is guaranteed to be unique within the specification.      </p> | [AssignmentGroup]({{< relref "assignmentgroup.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>AssignmentGroup</i>.      </p> | [AssignmentGroup]({{< relref "assignmentgroup.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [AssignmentGroupSpecification]({{< relref "assignmentgroupspecification.md" >}}) | 1 | assignmentGroup | 0..* | <p> Contains the AssignmentGroups that are defined by this AssignmentGroupSpecification.      </p> |
| [ConfigurableElement]({{< relref "configurableelement.md" >}}) | 0..* | associatedAssignmentGroups | 0..* |  |
