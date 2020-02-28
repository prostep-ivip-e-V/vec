---
title: External Mapping
toc: false
type: specs
layout: diagram
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - ExtendableElement
  - ExternalMapping
  - DocumentVersion
  - ExternalMappingSpecification
menu:
  VEC-1.1.2:    
    parent: external-mapping
    identifier: external-mapping/external-mapping
    weight: 1008001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1008001
---
{{< svgfigure src="external-mapping.png" width="627" height="289" caption="External Mapping" numbered="true" >}}
  {{< svglink relref="../../classes/extendableelement.md" x="15.0" y="22.0" width="116.0" height="43.0" >}}
  {{< svglink relref="../../classes/externalmapping.md" x="449.0" y="22.0" width="156.0" height="55.0" >}}
  {{< svglink relref="../../classes/documentversion.md" x="21.0" y="136.0" width="160.0" height="139.0" >}}
  {{< svglink relref="../../classes/externalmappingspecification.md" x="444.0" y="176.0" width="169.0" height="43.0" >}}
{{< / svgfigure >}}
<p> The diagram displays the extensions in the VEC Modell necessary to support a mapping to external sources. The extension consists of two classes <i>ExternalMappingSpecification</i> and <i>ExternalMapping</i>. An <i>ExternalMappingSpecification</i> defines a mapping for a single <i>DocumentVersion </i>specified by the association <i>mappedDocument</i>. The referenced <i>DocumentVersion </i>itself identifies by its attributes the external document which should be mapped (e.g. a SVG-File, a requirements-document).     </p>      <p> The mapping of the individual elements in the VEC is defined with the class <i>ExternalMapping</i>. It points to an <i>ExtendableElement</i> (which can be almost any VEC-Element) as <i>mappedElement</i>. The attribute <i>externalReference</i> contains the unique key of the same element in the context of the mapped <i>DocumentVersion</i>.     </p>      <p> The reason for defining the <i>ExternalMapping</i> elements within a separate <i>Specification</i> is that the <i>ExternalMappingSpecification</i> can be placed in the VEC within its own <i>DocumentVersion. </i>The creation of mapping does not require a modification and thus a versioning of the mapped content in the VEC.      </p>