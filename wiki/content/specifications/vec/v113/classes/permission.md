---
title: Permission
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - Permission
menu_name: vec-1.1.3
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
|permission | [TypeOfPermission]({{< relref "typeofpermission.md" >}}) | 1 | <p>Specifies the type of permission. Predefined values are: Seen, Checked, Released.</p> | [Permission]({{< relref "permission.md" >}}) |
|permissionDate | [Date]({{< relref "date.md" >}}) | 0..1 | <p> Specifies the date when the permission was stated.      </p> | [Permission]({{< relref "permission.md" >}}) |
|permitter | [Person]({{< relref "person.md" >}}) | 0..1 | <p> Specifies the person who was involved in the approval process giving a certain Permission.      </p> | [Permission]({{< relref "permission.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Approval]({{< relref "approval.md" >}}) | 1 | permission | 0..* | <p> Specifies the permission issued with the approval.      </p> |
