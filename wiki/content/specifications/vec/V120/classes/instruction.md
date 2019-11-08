---
title: Instruction
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Abstract super class to specify different types of instructions. Possible instructions are text, file or document based.  </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instructions |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [DocumentBasedInstruction]({{< relref "documentbasedinstruction.md" >}}), [FileBasedInstruction]({{< relref "filebasedinstruction.md" >}}), [TextBasedInstruction]({{< relref "textbasedinstruction.md" >}}) |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) | 0..1 | installationInstruction | 0..* | Room to specify InstallationInstruction(s) for the OccurrenceOrUsage.   |
