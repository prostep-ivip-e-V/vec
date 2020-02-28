---
title: Parts and Documents
toc: false
type: specs
layout: diagram
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - SheetOrChapter
  - DocumentVersion
  - Specification
  - PartVersion
  - ItemVersion
menu:
  VEC-1.1.1:    
    parent: key-concepts
    identifier: key-concepts/parts-and-documents
    weight: 1001001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001001
---
{{< svgfigure src="parts-and-documents.png" width="637" height="555" caption="Parts and Documents" numbered="true" >}}
  {{< svglink relref="../../classes/sheetorchapter.md" x="339.0" y="378.0" width="126.0" height="55.0" >}}
  {{< svglink relref="../../classes/documentversion.md" x="372.0" y="168.0" width="160.0" height="139.0" >}}
  {{< svglink relref="../../classes/specification.md" x="337.0" y="469.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="29.0" y="168.0" width="197.0" height="372.0" >}}
  {{< svglink relref="../../classes/itemversion.md" x="15.0" y="14.0" width="526.0" height="91.0" >}}
{{< / svgfigure >}}
<p> <span lang="EN-GB"><i>DocumentVersion </i></span><span lang="EN-GB">and <i>PartVersion</i> are representing one of the most fundamental key concepts of the VEC. They are the only classes in the VEC model that are defining version information. In combination with the attributes <i>companyName</i> and <i>partNumber</i> or respectively <i>documentNumber </i>they define an unambiguous context for data exchange. If two instances of the VEC are containing <i>PartVersions</i> or <i>DocumentVersions</i> with equal values of the attributes <i>companyName, partNumber</i> and <i>partVersion</i> or </span><span lang="EN-GB"><i>companyName, documentNumber</i></span><span lang="EN-GB"> and <i>documentVersion, </i>then the two objects can be trusted to be unchanged.</span><span lang="EN-GB"> Since both classes can define PDM&#160;information they are derived from the abstract class <i>ItemVersion</i>.</span>     </p>      <p> <span lang="EN-GB">The differentiation between <i>PartVersion </i>and <i>DocumentVersion </i>in the VEC&#160;is necessary, because a part can be described by multiple documents (e.g. a technical data sheet, a drawing and a 3D-model) and one document can describe multiple parts (e.g. a drawing for a contact family that displays multiple terminals and their corresponding seals). As a result a part can be changed (requiring a <u>new</u> <i>PartVersion</i>)&#160;without the need of changing all of its describing <i>DocumentVersions. </i>For example, if a single property of a component changes, a new version of the part itself and its technical data sheet is necessary, but its 3D model might remain unchanged. Another example is, that a document describing multiple parts might be changed (requiring a <u>new</u> <i>DocumentVersion</i>), but in fact only one of its represented parts is changed (requiring a <u>new</u> <i>PartVersion</i>). This relationship between a <i>PartVersion</i> and its describing <i>DocumentVersions</i> is expressed in the model by the association <i>DocumentVersion.referencedPart</i>.</span>     </p>      <p> <span lang="EN-US">The relationship <i>DocumentVersion.relatedDocument</i> can be used to describe general relationships between <i>DocumentVersions</i> (e.g. the relationship between a technical drawing and a given standard the drawing is compliant with). The composition of <i>SheetOrChapter</i> considers the fact that <i>DocumentVersions</i> may be composed of several sheets or chapters.</span>     </p>      <p> The VEC is designed as a format for data exchange. This requires that all content data can be related to a certain unambiguous version context, in order to allow a receiver of the information to easily check if and what has changed since the last data exchange. For this reason, <u>all</u> content data that is not constant is defined with information specific subclasses of the class <i>Specification</i>. A <i>Specification</i> is always contained in a <i>DocumentVersion </i>and thereby related to an unambiguous version context.      </p>