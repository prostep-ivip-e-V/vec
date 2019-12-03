---
title: FileBasedInstruction
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A FileBasedInstruction is an Instruction that references a file packaged (VEC-Package) together with a VEC-file. Such a file can be for example an image.      </p>  </body> </html>
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
|fileName | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body> The name of the file as it appears in the package, including the folder structure (fully qualified name).</body> </html> | [FileBasedInstruction]({{< relref "filebasedinstruction.md" >}}) |
|lastModified | [Date]({{< relref "date.md" >}}) | 0..1 | <html><body><p>The last modified timestamp of the file.  </p></body></html> | [FileBasedInstruction]({{< relref "filebasedinstruction.md" >}}) |
|dataFormat | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The dataFormat specifies the format of the FileReference. This could be for example the mime-type of the external file.  </p></body></html> | [FileBasedInstruction]({{< relref "filebasedinstruction.md" >}}) |

