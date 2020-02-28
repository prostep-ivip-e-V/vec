---
title: Change_description
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Change_description
menu_name: kbl-2.5
---

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
|Id | [String]({{< relref "string.md" >}}) | 0..1 | <p>The id specifies the identifier by which a certain change can be referenced. Example:  reference of a fax, note, etc.</p> | [Change_description]({{< relref "change_description.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p>The description specifies additional information about the change.</p> | [Change_description]({{< relref "change_description.md" >}}) |
|Localized_description | [Localized_string]({{< relref "localized_string.md" >}}) | 0..* | <p> The description specifies additional information about the object. The Localized_description provides the possibility to define descriptions for different language codes.       </p> | [Change_description]({{< relref "change_description.md" >}}) |
|Change_request | [String]({{< relref "string.md" >}}) | 0..1 | <p>The change_request specifies the activity which triggers one ore more changes. Example:  change request, AEKO, VV; "Modellpflegepunkt"</p> | [Change_description]({{< relref "change_description.md" >}}) |
|Change_date | [String]({{< relref "string.md" >}}) | 0..1 | <p>The change_date specifies the date the change was performed.</p> | [Change_description]({{< relref "change_description.md" >}}) |
|Responsible_designer | [String]({{< relref "string.md" >}}) | 1 | <p>The responsible_designer specifies the responsible design engineer.</p> | [Change_description]({{< relref "change_description.md" >}}) |
|Designer_department | [String]({{< relref "string.md" >}}) | 1 | <p>The designer_department specifies the department of the responsible design engineer.</p> | [Change_description]({{< relref "change_description.md" >}}) |
|Approver_name | [String]({{< relref "string.md" >}}) | 0..1 | <p>The approver_name specifies the name of the personnel who approved the Part.</p> | [Change_description]({{< relref "change_description.md" >}}) |
|Approver_department | [String]({{< relref "string.md" >}}) | 0..1 | <p>The approver_department specifies the department of the personnel who approved the Part.</p> | [Change_description]({{< relref "change_description.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Changed_element]({{< relref "changed_element.md" >}}) | Changed_elements | 0..* | 1 |  |
| [External_reference]({{< relref "external_reference.md" >}}) | External_references | 0..* | 0..* | <p> Allows the referencing of external / additional documents related to the change description.      </p> |
| [Change]({{< relref "change.md" >}}) | Related_changes | 0..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | Change_descriptions | 0..* |  |
