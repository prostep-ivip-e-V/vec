---
title: FileBasedInstruction
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - FileBasedInstruction
menu_name: vec-1.2.0
---
<p> A FileBasedInstruction is an Instruction that references a file packaged (VEC-Package) together with a VEC-file. Such a file can be for example an image.      </p>

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
|fileName | [String]({{< relref "string.md" >}}) | 1 | <p> The name of the file as it appears in the package, including the folder structure (fully qualified name).      </p> | [FileBasedInstruction]({{< relref "filebasedinstruction.md" >}}) |
|lastModified | [Date]({{< relref "date.md" >}}) | 0..1 | <p>The last modified timestamp of the file.  </p> | [FileBasedInstruction]({{< relref "filebasedinstruction.md" >}}) |
|dataFormat | [String]({{< relref "string.md" >}}) | 0..1 | <p>The dataFormat specifies the format of the FileReference. This could be for example the mime-type of the external file.  </p> | [FileBasedInstruction]({{< relref "filebasedinstruction.md" >}}) |

