---
title: Permission
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Describes an act of acceptance together with information about the responsible person, department and company who directly provoked the approval level and status as described in the referenced Approval-instance. (see KBLFRM-229)      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Lifecycle Information]({{< relref "../pdm-information/lifecycle-information" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|permission | [TypeOfPermission]({{< relref "typeofpermission.md" >}}) | 1 | <html><body><p>Specifies the type of permission. Predefined values are: Seen, Checked, Released.</p></body></html> | [Permission]({{< relref "permission.md" >}}) |
|permissionDate | [Date]({{< relref "date.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the date when the permission was stated.      </p>    </body> </html>  | [Permission]({{< relref "permission.md" >}}) |
|permitter | [Person]({{< relref "person.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the person who was involved in the approval process giving a certain Permission.      </p>    </body> </html>  | [Permission]({{< relref "permission.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Approval]({{< relref "approval.md" >}}) | 1 | permission | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the permission issued with the approval.      </p>    </body> </html>  |
