---
title: Approval
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines the approval of an ItemVersion. This consists of the StatusOfApproval and the Permissions issued for the approval.      </p>    </body> </html> 
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
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the approval. The identification is guaranteed to be unique over all VEC-documents. Normally this would reference to a company specific approval number or something similar. KBLFRM-349      </p>    </body> </html>  | [Approval]({{< relref "approval.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>Room for additional information about the item. </p></body></html> | [Approval]({{< relref "approval.md" >}}) |
|companyInScope | [String]({{< relref "string.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Room to specify for which companies the Approval is valid. It might be e.g. that an approved Item may only be delivered by some specific company.      </p>    </body> </html>  | [Approval]({{< relref "approval.md" >}}) |
|status | [StatusOfApproval]({{< relref "statusofapproval.md" >}}) | 1 | <html><body><p>The approval level concerning approval status. Predefined are the values: NotYetApproved, Approved and Withdrawn. KBLFRM-349 </p></body></html> | [Approval]({{< relref "approval.md" >}}) |
|levelOfApproval | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Describes activities that can be started after release for example building pilot tools or production tools.      </p>    </body> </html>  | [Approval]({{< relref "approval.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Permission]({{< relref "permission.md" >}}) | permission | 0..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the permission issued with the approval.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | 1 | approval | 0..* | Specifies the approval information of the ItemVersion.   |
