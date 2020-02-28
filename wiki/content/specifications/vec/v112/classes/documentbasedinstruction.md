---
title: DocumentBasedInstruction
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - DocumentBasedInstruction
menu_name: vec-1.1.2
---
<p>A DocumentBasedInstruction is an Instruction to a SheetOrChapter in a DocumentVersion or to a complete DocumentVersion. </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instructions |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Instruction]({{< relref "instruction.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [DocumentVersion]({{< relref "documentversion.md" >}}) | referencedDocument | 1 | 0..* | References the DocumentVersion that is used as an Instruction. |
| [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) | referencedSheetOrChapter | 0..1 | 0..* | References the SheetOrChapter that is used as an Instruction. |
