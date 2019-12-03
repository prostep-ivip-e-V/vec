---
title: SheetOrChapter
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Documents can be structured into sheets or chapters. Since it is possible, that one document describes a couple of parts it is necessary to be able to specify which sheet or chapter contains the description of which part. (see KBLFRM-308)      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Description of Parts]({{< relref "../description-of-components/description-of-parts" >}})<br/> [Installation Instructions]({{< relref "../instances-of-components/installation-instructions" >}})<br/> [Lifecycle Information]({{< relref "../pdm-information/lifecycle-information" >}})<br/> [Parts and Documents]({{< relref "../key-concepts/parts-and-documents" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>The identification of the sheet or chapter within the document. This value must be distinct within the context of a document.  </p></body></html> | [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) |
|sheetNumber | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> The sheetNumber is the major identifier of a SheetOrChapter. The format is user defined and respectively company specific. This field has to be used if a SheetOrChapter has its own &quot;DocumentNumber&quot;.      </p>    </body> </html>  | [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) |
|sheetVersion | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> The sheetVersion specifies the version index of a sheet (see also sheetNumber)      </p>    </body> </html>  | [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Room for additional, human readable information about the SheetOrChapter.      </p>    </body> </html>  | [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) |
|sheetFormat | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines the format (e.g. size)&#160;of the SheetOrChapter.      </p>    </body> </html>  | [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ChangeDescription]({{< relref "changedescription.md" >}}) | changeDescription | 0..* | 0..1 | Specifies the change history of the SheetOrChapter. |
| [PartVersion]({{< relref "partversion.md" >}}) | referencedPart | 0..* | 0..* | The association is an informative link which PartVersions are described by the SheetOrChapter.   |
| [Specification]({{< relref "specification.md" >}}) | specification | 0..* | 0..1 | Specifies the Specifications contained in the SheetOrChapter. All structured, technical information in the VEC is described by such Specifications.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [DocumentBasedInstruction]({{< relref "documentbasedinstruction.md" >}}) | 0..* | referencedSheetOrChapter | 0..1 | References the SheetOrChapter that is used as an Instruction.  |
| [DocumentVersion]({{< relref "documentversion.md" >}}) | 1 | sheetOrChapter | 0..* | Specifies SheetOrChapters defined in this DocumentVersion. These are especially useful if the DocumentVersion represents an external reference.   |
