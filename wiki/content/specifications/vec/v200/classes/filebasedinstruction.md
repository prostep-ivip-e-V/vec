---
title: FileBasedInstruction
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - FileBasedInstruction
menu_name: vec-2.0.0-rc1
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
|dataFormat | [String]({{< relref "string.md" >}}) | 0..1 | <p> The dataFormat specifies the format of the FileReference. The dataFormat has to be a valid &quot;Internet Media Type&quot; (see <a href="https://www.iana.org/assignments/media-types/media-types.xhtml">https://www.iana.org/assignments/media-types/media-types.xhtml</a>).      </p> | [FileBasedInstruction]({{< relref "filebasedinstruction.md" >}}) |

