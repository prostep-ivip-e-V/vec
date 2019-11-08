---
title: TextBasedInstruction
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A TextBasedInstruction is used to specify human readable instructions in text.  </p></body></html>
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
|installationInstruction | [LocalizedString]({{< relref "localizedstring.md" >}}) | 1..* | <html><body><p>Specifies the instruction in a human readable form. Different languages are possible.  </p></body></html> | [TextBasedInstruction]({{< relref "textbasedinstruction.md" >}}) |

