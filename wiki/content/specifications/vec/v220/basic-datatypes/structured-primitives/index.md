---
title: Structured Primitives
toc: false
type: specs
layout: diagram
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - StructuredPrimitive
menu:
  VEC-2.2.0:    
    parent: basic-datatypes
    identifier: basic-datatypes/structured-primitives
    weight: 1002001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1002001
---
{{< svgfigure src="structured-primitives.png" width="145" height="78" caption="Structured Primitives" numbered="true" >}}
  {{< svglink relref="../../classes/structuredprimitive.md" x="15.0" y="15.0" width="116.0" height="49.0" >}}
{{< / svgfigure >}}
<p> The <i>StructuredPrimitive</i> stereotype is used to mark model classes that represent structured value containers. These classes group multiple primitive attributes (e.g., strings, numbers, enumerations) into a cohesive structure, typically for the purpose of expressing a concept such as a value with unit, a localized string, or a categorized length.      </p>      <p> <i>StructuredPrimitives</i> are semantically like primitive types in that:      </p>      <ul>       <li> They are used as attribute types in other model elements.        </li>       <li> They are not independently identifiable.        </li>       <li> They shall not be referenced from other parts of the model.        </li>       <li> They shall not be an <i>ExtendableElement.</i>        </li>     </ul>     <p> Since they are not independently identifiable and shall not be referenced from other parts of the model, the following is true:      </p>      <ul>       <li> <i>StructuredPrimitives</i> are compared by value in a diff- or change-scenario and not by ID.&#160;Meaning, if all attributes are the same, the object is the same.        </li>       <li> They do not require an object identity in an overall scenario (no IRI/URI).        </li>       <li> In RDF representations those objects can be represented as BNodes.        </li>     </ul>     <p> &#160;      </p>