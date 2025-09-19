---
title: FileBasedInstruction
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - FileBasedInstruction
menu_name: vec-2.2.0
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
|fileName| [String]({{< relref "string.md" >}}) | 1 | <p> The name of the file as it appears in the VEC-Package, including the folder structure (fully qualified name) that contains this <i>FileBasedInstruction</i>. The usage of this attribute is only valid, if the original document is distributed along with the VEC-file in a VEC-Package. It must not point to any file location which is not part of the VEC-Package (e.g. a file on a central server file share). The <i>fileName</i> is relative to the VEC-Package root. It MUST&#160;NOT contain a drive or device letter, or a leading slash. All slashes MUST&#160;be forward slashes '/' (UNIX-style).      </p> | [FileBasedInstruction]({{< relref "filebasedinstruction.md" >}}) |
|lastModified| [Date]({{< relref "date.md" >}}) | 0..1 | <p>The last modified timestamp of the file.  </p> | [FileBasedInstruction]({{< relref "filebasedinstruction.md" >}}) |
|dataFormat| [String]({{< relref "string.md" >}}) | 0..1 | <p> The dataFormat specifies the format of the FileReference. The dataFormat has to be a valid &quot;Internet Media Type&quot; (see <a href="https://www.iana.org/assignments/media-types/media-types.xhtml">https://www.iana.org/assignments/media-types/media-types.xhtml</a>).      </p> | [FileBasedInstruction]({{< relref "filebasedinstruction.md" >}}) |





