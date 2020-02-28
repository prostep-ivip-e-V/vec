---
title: Parts and Documents
toc: false
type: specs
layout: diagram
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Diagram
classes:
  - PartNature
  - DocumentVersion
  - DocumentType
  - Specification
  - SheetOrChapter
  - PartVersion
  - ItemVersion
menu:
  VEC-1.1.3:    
    parent: key-concepts
    identifier: key-concepts/parts-and-documents
    weight: 1001001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001001
---
{{< svgfigure src="parts-and-documents.png" width="722" height="683" caption="Parts and Documents" numbered="true" >}}
  {{< svglink relref="../../classes/partnature.md" x="15.0" y="574.0" width="147.0" height="94.0" >}}
  {{< svglink relref="../../classes/documentversion.md" x="330.0" y="168.0" width="193.0" height="139.0" >}}
  {{< svglink relref="../../classes/documenttype.md" x="561.0" y="224.0" width="147.0" height="202.0" >}}
  {{< svglink relref="../../classes/specification.md" x="302.0" y="525.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/sheetorchapter.md" x="297.0" y="378.0" width="217.0" height="103.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="15.0" y="168.0" width="197.0" height="372.0" >}}
  {{< svglink relref="../../classes/itemversion.md" x="15.0" y="14.0" width="526.0" height="91.0" >}}
{{< / svgfigure >}}
<p> <span lang="EN-GB"><i>DocumentVersion </i></span><span lang="EN-GB">and <i>PartVersion</i> are representing one of the most fundamental key concepts of the VEC. They are the only classes in the VEC model that are defining version information. In combination with the attributes <i>companyName</i> and <i>partNumber</i> or respectively <i>documentNumber </i>they define an unambiguous context for data exchange. If two instances of the VEC are containing <i>PartVersions</i> or <i>DocumentVersions</i> with equal values of the attributes <i>companyName, partNumber</i> and <i>partVersion</i> or </span><span lang="EN-GB"><i>companyName, documentNumber</i></span><span lang="EN-GB"> and <i>documentVersion, </i>then the two objects can be trusted to be unchanged.</span><span lang="EN-GB"> </span>     </p>      <p> <span lang="EN-GB">Unchanged in this context does not mean binary identical content of the resulting XML-Subtree, but unchanged user data. So if the content of a <i>DocumentVersion </i>is transfered from one VEC-file to another (e.g. for documents describing part master data) the binary representation can be different (e.g. order of the xml elements, technical ids for xml idrefs), but the information represented by the <i>DocumentVersion</i> <u>must not</u> be different (e.g. property values of a <i>Specification</i>).</span>     </p>      <p> <span lang="EN-GB">Since both classes can define PDM&#160;information they are derived from the abstract class <i>ItemVersion</i>.</span>     </p>      <p> <span lang="EN-GB">The differentiation between <i>PartVersion </i>and <i>DocumentVersion </i>in the VEC&#160;is necessary, because a part can be described by multiple documents (e.g. a technical data sheet, a drawing and a 3D-model) and one document can describe multiple parts (e.g. a drawing for a contact family that displays multiple terminals and their corresponding seals). As a result a part can be changed (requiring a <u>new</u> <i>PartVersion</i>)&#160;without the need of changing all of its describing <i>DocumentVersions. </i>For example, if a single property of a component changes, a new version of the part itself and its technical data sheet is necessary, but its 3D model might remain unchanged. Another example is, that a document describing multiple parts might be changed (requiring a <u>new</u> <i>DocumentVersion</i>), but in fact only one of its represented parts is changed (requiring a <u>new</u> <i>PartVersion</i>). This relationship between a <i>PartVersion</i> and its describing <i>DocumentVersions</i> is expressed in the model by the association <i>DocumentVersion.referencedPart</i>.</span>     </p>      <p> <span lang="EN-US">The relationship <i>DocumentVersion.relatedDocument</i> can be used to describe general relationships between <i>DocumentVersions</i> (e.g. the relationship between a technical drawing and a given standard the drawing is compliant with). The composition of <i>SheetOrChapter</i> considers the fact that <i>DocumentVersions</i> may be composed of several sheets or chapters.</span>     </p>      <p> The VEC is designed as a format for data exchange. This requires that all content data can be related to a certain unambiguous version context, in order to allow a receiver of the information to easily check if and what has changed since the last data exchange. For this reason, <u>all</u> content data that is not constant is defined with information specific subclasses of the class <i>Specification</i>. A <i>Specification</i> is always contained in a <i>DocumentVersion </i>and thereby related to an unambiguous version context.      </p>