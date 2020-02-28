---
title: Approval
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - Approval
menu_name: vec-1.1.2
---
<p> Defines the approval of an ItemVersion. This consists of the StatusOfApproval and the Permissions issued for the approval.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the approval. The identification is guaranteed to be unique over all VEC-documents. Normally this would reference to a company specific approval number or something similar. KBLFRM-349      </p> | [Approval]({{< relref "approval.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional information about the item. </p> | [Approval]({{< relref "approval.md" >}}) |
|companyInScope | [String]({{< relref "string.md" >}}) | 0..* | <p> Room to specify for which companies the Approval is valid. It might be e.g. that an approved Item may only be delivered by some specific company.      </p> | [Approval]({{< relref "approval.md" >}}) |
|status | [StatusOfApproval]({{< relref "statusofapproval.md" >}}) | 1 | <p>The approval level concerning approval status. Predefined are the values: NotYetApproved, Approved and Withdrawn. KBLFRM-349 </p> | [Approval]({{< relref "approval.md" >}}) |
|levelOfApproval | [String]({{< relref "string.md" >}}) | 0..1 | <p> Describes activities that can be started after release for example building pilot tools or production tools.      </p> | [Approval]({{< relref "approval.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Permission]({{< relref "permission.md" >}}) | permission | 0..* | 1 | <p> Specifies the permission issued with the approval.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | 1 | approval | 0..* | Specifies the approval information of the ItemVersion. |
