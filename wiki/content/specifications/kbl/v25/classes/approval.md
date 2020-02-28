---
title: Approval
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Approval
menu_name: kbl-2.5
---
<p>An Approval is a judgment concerning the quality of those modules or harnesses that are subject of the Approval. An Approval represents a statement made by technical personnel or management personnel whether certain requirements are met. The absence of approval information does not imply any approval status by default.</p>
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
|Name | [String]({{< relref "string.md" >}}) | 0..1 | <p>The name specifies the name of the personnel responsible for the Approval.</p> | [Approval]({{< relref "approval.md" >}}) |
|Department | [String]({{< relref "string.md" >}}) | 0..1 | <p>The department specifies the department name of the personnel responsible for the Approval.</p> | [Approval]({{< relref "approval.md" >}}) |
|Date | [String]({{< relref "string.md" >}}) | 1 | <p>The date specifies the date when the Approval actually became valid.</p> | [Approval]({{< relref "approval.md" >}}) |
|Type_of_approval | [String]({{< relref "string.md" >}}) | 1 | <p>The type_of_approval specifies the terms characterizing the Approval.  Note: There are no values pre-defined. Special values have to be negotiated between exchange partners.</p> | [Approval]({{< relref "approval.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Part_with_title_block]({{< relref "part_with_title_block.md" >}}) | Is_applied_to | 1..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | Approval | 0..* |  |
