---
title: ChangeDescription
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A ChangeDescription describes the implemented issues that are reason for the aggregating ItemVersion to be either an initial or successor version. A ChangeDescription can optionally define the person who has approved the change.      </p>    </body> </html> 
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
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies an identifier for the ChangeDescription. This can be the ID of a changeOrder or an ID which indicates model upgrading. (see KBLFRM-249) </p></body></html> | [ChangeDescription]({{< relref "changedescription.md" >}}) |
|label | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the label of the change on a drawing for example. If more than one change is issued with one ItemVersion (e.g. change 0001, 0002), in some cases the different changes are labeled on the drawing (e.g. A, B, C).      </p>    </body> </html>  | [ChangeDescription]({{< relref "changedescription.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>Specifies additional, human readable, information about the ChangeDescription. </p></body></html> | [ChangeDescription]({{< relref "changedescription.md" >}}) |
|approver | [Person]({{< relref "person.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the person who has approved the change.      </p>    </body> </html>  | [ChangeDescription]({{< relref "changedescription.md" >}}) |
|changeDate | [Date]({{< relref "date.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the date when the change was performed.      </p>    </body> </html>  | [ChangeDescription]({{< relref "changedescription.md" >}}) |
|responsibleDesigner | [Person]({{< relref "person.md" >}}) | 0..1 | <html><body><p>Specifies the design engineer who is/was responsible to perform the change. </p></body></html> | [ChangeDescription]({{< relref "changedescription.md" >}}) |
|relatedChangeRequest | [String]({{< relref "string.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the identification of a corresponding changeRequest. (see KBLFRM-249)      </p>    </body> </html>  | [ChangeDescription]({{< relref "changedescription.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) | 0..1 | changeDescription | 0..* | Specifies the change history of the SheetOrChapter. |
| [ItemVersion]({{< relref "itemversion.md" >}}) | 0..1 | changeDescription | 0..* | Specifies the change history of the ItemVersion.   |
