---
title: Approval
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - Approval
menu_name: vec-1.2.1
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
|status | [StatusOfApproval]({{< relref "statusofapproval.md" >}}) | 1 | <p> The approval level concerning approval status. Predefined are the values: NotYetApproved, Approved and Withdrawn. The status refers to the status of the <i>Approval</i>, not the status of the <i>ItemVersion. </i>So, e.g. withdrawn means the approval (with its corresponding level) has been withdrawn, not the <i>ItemVersion</i> itself.      </p> | [Approval]({{< relref "approval.md" >}}) |
|levelOfApproval | [LevelOfApproval]({{< relref "levelofapproval.md" >}}) | 0..1 | <p> Relates to activities that are allowed with the ItemVersion after release for example building pilot tools or production tools. The levelOfApproval applies to the <i>ItemVersion </i>itself without further detailing or additional context. So, for example &quot;Free&quot; means, that from a component's perspective the corresponding <i>PartVersion</i> has satisfied all qualification procedures and can be used within its specified limits without restriction.      </p>      <p> The levels <i>Planned</i>, <i>Free</i>, <i>Invalid</i> refer to a single approval level. The levels <i>Develop</i> and <i>Restricted</i> refer to a category of approval levels in the lifecycle of an <i>ItemVersion</i> that all belong to the same phase but are highly company specific. For example, <i>Develop</i> approvals might be a &quot;a start of construction approval&quot; or a &quot;building of prototypes or tools allowed approval&quot;. &quot;Restricted&quot; approvals might be &quot;only for special purpose vehicles&quot;, &quot;spare part only&quot; or &quot;residual parts may be used up&quot;.      </p>      <p> In these cases, the <i>additionalLevelInformation</i> can be used to provide further information (e.g. a company specific approval level).      </p> | [Approval]({{< relref "approval.md" >}}) |
|additionalLevelInformation | [String]({{< relref "string.md" >}}) | 0..1 | <p> Additional potentially company specific information about the level of approval (e.g. further detailing of a &quot;Restricted&quot; approval.      </p> | [Approval]({{< relref "approval.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Permission]({{< relref "permission.md" >}}) | permission | 0..* | 1 | <p> Specifies the permission issued with the approval.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | 1 | approval | 0..* | Specifies the approval information of the ItemVersion. |
