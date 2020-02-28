---
title: TextBasedInstruction
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - TextBasedInstruction
menu_name: vec-1.1.1
---
<p>A TextBasedInstruction is used to specify human readable instructions in text.  </p>
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
|installationInstruction | [LocalizedString]({{< relref "localizedstring.md" >}}) | 1..* | <p>Specifies the instruction in a human readable form. Different languages are possible.  </p> | [TextBasedInstruction]({{< relref "textbasedinstruction.md" >}}) |

