---
title: Change
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Change
menu_name: kbl-2.3.sr1
---
<p>A Change is a mechanism to keep track of the change history. The set of changes assigned to a Part covers all modification numbers up to the last modification level of the version of the Part.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 0..1 | <p>The id specifies the identifier by which a certain change can be referenced. Example:  reference of a fax, note, etc.</p> | [Change]({{< relref "change.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p>The description specifies additional information about the change.</p> | [Change]({{< relref "change.md" >}}) |
|Change_request | [String]({{< relref "string.md" >}}) | 0..1 | <p>The change_request specifies the activity which triggers one ore more changes. Example:  change request, AEKO, VV; "Modellpflegepunkt"</p> | [Change]({{< relref "change.md" >}}) |
|Change_date | [String]({{< relref "string.md" >}}) | 0..1 | <p>The change_date specifies the date the change was performed.</p> | [Change]({{< relref "change.md" >}}) |
|Responsible_designer | [String]({{< relref "string.md" >}}) | 1 | <p>The responsible_designer specifies the responsible design engineer.</p> | [Change]({{< relref "change.md" >}}) |
|Designer_department | [String]({{< relref "string.md" >}}) | 1 | <p>The designer_department specifies the department of the responsible design engineer.</p> | [Change]({{< relref "change.md" >}}) |
|Approver_name | [String]({{< relref "string.md" >}}) | 0..1 | <p>The approver_name specifies the name of the personnel who approved the Part.</p> | [Change]({{< relref "change.md" >}}) |
|Approver_department | [String]({{< relref "string.md" >}}) | 0..1 | <p>The approver_department specifies the department of the personnel who approved the Part.</p> | [Change]({{< relref "change.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Part]({{< relref "part.md" >}}) | 1 | Change | 0..* |  |
