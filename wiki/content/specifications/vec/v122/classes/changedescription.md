---
title: ChangeDescription
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - ChangeDescription
menu_name: vec-1.2.2
---
<p> A ChangeDescription describes the implemented issues that are reason for the aggregating ItemVersion to be either an initial or successor version. A ChangeDescription can optionally define the person who has approved the change.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies an identifier for the ChangeDescription. This can be the ID of a change order or an ID which indicates model upgrading. (see KBLFRM-249)      </p> | [ChangeDescription]({{< relref "changedescription.md" >}}) |
|label | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the label of the change on a drawing for example. If more than one change is issued with one ItemVersion (e.g. change 0001, 0002), in some cases the different changes are labelled on the drawing (e.g. A, B, C).      </p> | [ChangeDescription]({{< relref "changedescription.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Specifies additional, human readable, information about the ChangeDescription. </p> | [ChangeDescription]({{< relref "changedescription.md" >}}) |
|approver | [Person]({{< relref "person.md" >}}) | 0..1 | <p> Specifies the person who has approved the change.      </p> | [ChangeDescription]({{< relref "changedescription.md" >}}) |
|changeDate | [Date]({{< relref "date.md" >}}) | 0..1 | <p> Specifies the date when the change was performed.      </p> | [ChangeDescription]({{< relref "changedescription.md" >}}) |
|responsibleDesigner | [Person]({{< relref "person.md" >}}) | 0..1 | <p>Specifies the design engineer who is/was responsible to perform the change. </p> | [ChangeDescription]({{< relref "changedescription.md" >}}) |
|relatedChangeRequest | [String]({{< relref "string.md" >}}) | 0..* | <p> Specifies the identification of a corresponding change request. (see KBLFRM-249)      </p> | [ChangeDescription]({{< relref "changedescription.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | 0..1 | changeDescription | 0..* | Specifies the change history of the ItemVersion. |
| [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) | 0..1 | changeDescription | 0..* | Specifies the change history of the SheetOrChapter. |
