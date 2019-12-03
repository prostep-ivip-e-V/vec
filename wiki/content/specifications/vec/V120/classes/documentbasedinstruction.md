---
title: DocumentBasedInstruction
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A DocumentBasedInstruction is an Instruction to a SheetOrChapter in a DocumentVersion or to a complete DocumentVersion. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instructions |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Instruction]({{< relref "instruction.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Installation Instructions]({{< relref "../instances-of-components/installation-instructions" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [DocumentVersion]({{< relref "documentversion.md" >}}) | referencedDocument | 1 | 0..* | References the DocumentVersion that is used as an Instruction.  |
| [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) | referencedSheetOrChapter | 0..1 | 0..* | References the SheetOrChapter that is used as an Instruction.  |
