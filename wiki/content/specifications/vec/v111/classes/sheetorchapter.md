---
title: SheetOrChapter
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - SheetOrChapter
menu_name: vec-1.1.1
---
<p> Documents can be structured into sheets or chapters. Since it is possible, that one document describes a couple of parts it is necessary to be able to specify which sheet or chapter contains the description of which part. (see KBLFRM-308)      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p>The identification of the sheet or chapter within the document. This value must be distinct within the context of a document.  </p> | [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartVersion]({{< relref "partversion.md" >}}) | referencedPart | 0..* | 0..* | The association is an informative link which PartVersions are described by the SheetOrChapter. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [DocumentBasedInstruction]({{< relref "documentbasedinstruction.md" >}}) | 0..* | referencedSheetOrChapter | 0..1 | References the SheetOrChapter that is used as an Instruction. |
| [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) | 0..* | sheet | 0..1 | A two dimensional building block can contain one or more sheets. The CartesianPoint can reference the sheet on which it is placed. |
| [DocumentVersion]({{< relref "documentversion.md" >}}) | 1 | sheetOrChapter | 0..* | Specifies SheetOrChapters defined in this DocumentVersion. These are especially useful if the DocumentVersion represents an external reference. |
