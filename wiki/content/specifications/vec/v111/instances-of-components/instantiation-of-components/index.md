---
title: Instantiation of Components
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
  - Role
  - PartOrUsageRelatedSpecification
  - PartVersion
  - PartOccurrence
  - OccurrenceOrUsage
  - PartUsage
  - PrimaryPartType
menu:
  VEC-1.1.1:    
    parent: instances-of-components
    identifier: instances-of-components/instantiation-of-components
    weight: 1004001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1004001
---
{{< svgfigure src="instantiation-of-components.png" width="821" height="556" caption="Instantiation of Components" numbered="true" >}}
  {{< svglink relref="../../classes/role.md" x="418.0" y="483.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="192.0" y="48.0" width="188.0" height="55.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="608.0" y="48.0" width="196.0" height="115.0" >}}
  {{< svglink relref="../../classes/partoccurrence.md" x="605.0" y="209.0" width="202.0" height="55.0" >}}
  {{< svglink relref="../../classes/occurrenceorusage.md" x="376.0" y="329.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/partusage.md" x="180.0" y="206.0" width="227.0" height="55.0" >}}
  {{< svglink relref="../../classes/primaryparttype.md" x="15.0" y="66.0" width="135.0" height="406.0" >}}
{{< / svgfigure >}}
<p> It is a quite common pattern for complex product descriptions, to differentiate between types and their instances. A&#160;type is a general description that applies to all instances of this type. In the VEC&#160;the types of components are described with <i>PartVersions</i> and <i>PartOrUsageRelatedSpecifications</i>. They are describing the general properties of a certain component type (e.g. a connector housing with a certain <i>partNumber</i>). In order to define a more complex product with these elements, instances of the components are necessary (e.g. the connector housing for the left front light). To create such instances of components, the VEC provides two concepts: <i>PartOccurrence</i> and <i>PartUsage</i>.     </p>      <p> The two concepts are necessary to fulfill the requirement for the VEC, that equal design elements are represented equally in the model, regardless of the level abstraction. This means for example, that the specification of a contacting must be represented always in the same way, regardless of the context either in an electrological specification or in a finalised product specification. The difference is that in an electrological specification in many cases defines only requirements for a component (e.g. the wire color, cross section area or number of cavities). In a finalized product specification all components normally have assigned part numbers.     </p>      <p> A <i>PartOccurrence</i> is a concrete occurrence of a certain <i>PartVersion</i> in a real product (Metaphorically spoken: if the product is broken into pieces, there will be a good chance that one of the pieces is the <i>PartOccurrence </i>one is searching for). Therefore the <i>PartOccurrence </i>references directly a <i>PartVersion</i>.     </p>      <p> <i>PartUsages</i> shall be used for the specification of the elements on a more abstract level. This is the case either when not all technical properties required to select a correct <i>PartVersion</i> are known (e.g. only the cross section area of a wire is known, but not the color) or when not all usage properties are known that are required to create a <i>PartOccurrence.</i> This is true for example for a connectivity description and for a pure geometry description. The final occurrences come first into being when a connectivity description and a geometry description is combined. This is even true in the case of connectivity description where the part numbers for the wiring connections are already defined. The reason is that the wire lengths are still undefined, because the length information is dependent on a certain geometry. Additionally it is possible that the same wiring definition is instantiated within different geometries, which might result in different <i>PartOccurrences</i>. For reasons of traceability, each <i>PartOccurrence</i> can reference back to the <i>PartUsage</i> it realizes.     </p>      <p> In order to describe technical properties for a <i>PartUsage</i> without requiring a concrete <i>PartVersion </i>or a pseudo <i>PartVersion</i> the <i>PartUsage</i> can reference a number of <i>PartOrUsageRelatedSpecifications</i> like the <i>PartVersion.</i> As described in the chapter &quot;part master data&quot; the VEC allows the description of components through the combination of different characteristics (the <i>PartOrUsageRelatedSpecifications). </i>Therefore a <i>PartUsage </i>can reference multiple <i>PartOrUsageRelatedSpecification</i>. Its primary characteristic is defined with the <i>PrimaryPartType</i>.     </p>      <p> However different characteristics of component types may require different properties for instances of them. Therefore a symmetrical concept to the <i>PartOrUsageRelatedSpecification </i>for instances was created in the VEC: the <i>Role.</i> Quite simplified: A <i>Role </i>is an instance of a <i>PartOrUsageRelatedSpecification</i> in the context of an <i>OccurrenceOrUsage</i> which is an instance of an abstract or concrete part (difference between <i>PartUsage</i> and <i>PartOccurrence</i>).     </p>      <p> <i>Roles, </i>their subclasses and the sub elements of them are used whenever type specific usage information is required (e.g. a reference to a cavity in a certain use of a connector). Every other concept in VEC&#160;that requires references to instances uses these elements (e.g. the contacting). Since a <i>Role </i>can be used without knowing if it belongs to a <i>PartUsage</i> or a <i>PartOccurrence</i> concepts like the contacting can be reused regardless of the level of abstract (e.g. in a system wiring without concrete part numbers or in the product specification of wiring harness).      </p>