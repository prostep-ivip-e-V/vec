---
title: DocumentVersion
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>The DocumentVersion is one of the two anchors for PDM information in the VEC. All technical information about a PartVersion is contained in one or more documents. The documents are containing the actual content of the VEC since all Specifications are an element of a document. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ItemVersion]({{< relref "itemversion.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Conformance to Requirements]({{< relref "../description-of-components/conformance-to-requirements" >}})<br/> [Description of Parts]({{< relref "../description-of-components/description-of-parts" >}})<br/> [External Mapping]({{< relref "../external-mapping/external-mapping" >}})<br/> [Installation Instructions]({{< relref "../instances-of-components/installation-instructions" >}})<br/> [Item Equivalence]({{< relref "../pdm-information/item-equivalence" >}})<br/> [Lifecycle Information]({{< relref "../pdm-information/lifecycle-information" >}})<br/> [Parts and Documents]({{< relref "../key-concepts/parts-and-documents" >}})<br/> [VEC-Root]({{< relref "../xml-representation-of-the-model/vec-root" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Room for a short name of the Item. In case of a document the attribute is wanted to contain its title.      </p>    </body> </html>  | [ItemVersion]({{< relref "itemversion.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>Room for additional, human readable information about the ItemVersion.  e.g. Buchsengehäuse 26-polig </p></body></html> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|companyName | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Defines the publishing company of the ItemVersion. The companyName is part of the main identifier of an ItemVersion together with the corresponding number (partNumber or documentNumber) and version (partVersion or documentVersion).      </p>    </body> </html>  | [ItemVersion]({{< relref "itemversion.md" >}}) |
|processingInstruction | [Instruction]({{< relref "instruction.md" >}}) | 0..* | <html><body><p>Processing instructions for the application of the part or the document.  </p></body></html> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|documentNumber | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> The documentNumber is the major identifier of a DocumentVersion. The format is user defined and respectively company specific.       </p>  </body> </html> | [DocumentVersion]({{< relref "documentversion.md" >}}) |
|documentType | [DocumentType]({{< relref "documenttype.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> The type of the document, that is defined in an <i>OpenEnumeration </i>and gives a hint about the content of the document. Values for typical types of documents in the process are predefined (e.g. a part master document for the specification of a <i>PartVersion</i>).     </p>      <p> At later point, further constraint migth be attached to <i>documentType</i> defining a minimum content for certain types of documents.        </p>    </body> </html>  | [DocumentVersion]({{< relref "documentversion.md" >}}) |
|documentVersion | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>The documentVersion specifies the version index of a document (see also documentNumber).  </p></body></html> | [DocumentVersion]({{< relref "documentversion.md" >}}) |
|digitalRepresentationIndex | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> An arbitrary change index that indicates if the digital representation (the content in VEC) of this <i>DocumentVersion</i> has been changed /&#160;regenerated. This can be for example an index, a timestamp or a checksum. This allows the detection of changes in the content, even when the DocumentNumber &amp;&#160;DocumentVersion is the same.      </p>      <p> For a more detailed explanation in the context see &quot;Parts&#160;&amp;&#160;Documents&quot;. KBLFRM-837.      </p>  </body> </html> | [DocumentVersion]({{< relref "documentversion.md" >}}) |
|creatingSystem | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The creatingSystem specifies the computer application or the machine which is used to create the document. </p></body></html> | [DocumentVersion]({{< relref "documentversion.md" >}}) |
|dataFormat | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> The dataFormat specifies the convention that was used to structure the information in the document. This is useful if the DocumentVersion is actually a pointer to an external document, which is not contained in the VEC or if the content of this DocumentVersion was automatically generated by the extraction of the information out of the original document.      </p>    </body> </html>  | [DocumentVersion]({{< relref "documentversion.md" >}}) |
|fileName | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> The name of the file as it appears in the VEC-Package, including the folder structure (fully qualified name) that contains this <i>DocumentVersion</i>. If this DocumentVersion is a link to an external document (e.g. a ComponentSymbol), then the fileName attribute points to the file containing the original document. The usage of this attribute is only valid, if the original document is distributed along with the VEC-file in a VEC-Package. It must not point to any file location which is not part of the VEC-Package (e.g. a File on a central server file share).      </p>  </body> </html> | [DocumentVersion]({{< relref "documentversion.md" >}}) |
|location | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> The location is a possibility to provide a reference to the source location of the <i>DocumentVersion</i> (e.g. a document management system or a archive system) where the original document can be found<i>.</i> The location shall be provided either as a URN&#160;or URL.       </p>      <p> &#160;      </p>  </body> </html> | [DocumentVersion]({{< relref "documentversion.md" >}}) |
|numberOfSheets | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The number of sheets contained in the document.  </p></body></html> | [DocumentVersion]({{< relref "documentversion.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartVersion]({{< relref "partversion.md" >}}) | referencedPart | 0..* | 0..* | The association is an informative link which PartVersions are described by the DocumentVersion.   |
| [ItemEquivalence]({{< relref "itemequivalence.md" >}}) | itemEquivalence | 0..* | 1 | Specifies ItemEquivalances defined by the DocumentVersion.  |
| [DocumentVersion]({{< relref "documentversion.md" >}}) | relatedDocument | 0..* | 0..* | The association is an informative link which DocumentVersion are related to each other (e.g. by derivation, A Harness-Drawing is related to a 3D-Model).   |
| [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) | sheetOrChapter | 0..* | 1 | Specifies SheetOrChapters defined in this DocumentVersion. These are especially useful if the DocumentVersion represents an external reference.   |
| [Specification]({{< relref "specification.md" >}}) | specification | 0..* | 0..1 | Specifies the Specifications contained in the DocumentVersion. All structured, technical information in the VEC is described by such Specifications.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [RequirementsConformanceStatement]({{< relref "requirementsconformancestatement.md" >}}) |  |  | 1 | <html>   <head>     </head>   <body> References the <i>DocumentVersion</i> that contains the requirements to which a conformance statement shall be expressed.</body> </html> |
| [VecContent]({{< relref "veccontent.md" >}}) | 1 | documentVersion | 0..* | Specifies the DocumentVersions contained in the VEC-file.   |
| [ExternalMappingSpecification]({{< relref "externalmappingspecification.md" >}}) | 0..* | mappedDocument | 1 | <html>   <head>     </head>   <body>     <p> Reference to the <i>DocumentVersion</i> that represents the external data source that connected to the VEC content by the <i>ExternalMappingSpecification</i>.      </p>    </body> </html>  |
| [DocumentBasedInstruction]({{< relref "documentbasedinstruction.md" >}}) | 0..* | referencedDocument | 1 | References the DocumentVersion that is used as an Instruction.  |
| [ExtendableElement]({{< relref "extendableelement.md" >}}) | 0..* | referencedExternalDocuments | 0..* | <html>   <head>     </head>   <body>     <p> This association allows all <i>ExtendableElements</i> in the VEC&#160;to reference <i>DocumentVersions </i>as &quot;external reference&quot;.      </p>      <p> This association shall be used for the extension of elements in the VEC&#160;with information that can not be represented in the VEC&#160;in an appropriate way, but can be expressed in some external format (e.g. a specific symbol for a <i>ComponentNode</i>).       </p>      <p> D<i>ocumentVersions</i> referenced by this association shall not contain any <i>Specifications.</i>      </p>      <p> This association is no replacement for associations with a more precise semantic like the <i>DocumentBasedInstruction</i> or the associations between <i>PartVersion </i>and <i>DocumentVersion.</i>      </p>      <p> &#160;      </p>  </body> </html> |
| [DocumentVersion]({{< relref "documentversion.md" >}}) | 0..* | relatedDocument | 0..* | The association is an informative link which DocumentVersion are related to each other (e.g. by derivation, A Harness-Drawing is related to a 3D-Model).   |
