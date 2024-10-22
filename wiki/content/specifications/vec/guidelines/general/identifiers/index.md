---
title: Handling of Identifiers
type: specs
toc: true
authors: [becker]
tags: []
categories: []
date: 2024-03-14T00:00:00.000Z
lastmod: 2024-03-14T00:00:00.000Z
draft: false
review: false
history: [{date: 2024-03-14T00:00:00.000Z, description: Extracted information from PSI recommendation and extended it where necesseray., issue: KBLFRM-1191}]
classes: null
menu: {vec-guidelines: {parent: general, weight: 100}}
weight: 5100
---

The VEC and its XML Schema offer different concepts for the identification of model
elements addressing certain requirements and those shall be used accordingly.

## `Identification`-Properties (VEC Model)

Many types defined in the VEC model have an "Identification" property (e.g. the {{< vec-class "OccurrenceOrUsage" >}}). 
This is meant to be a semantic identifier of the object represented by the VEC element. The following rules apply to those identifiers:

1.  The expectations defined in the documentation of the VEC model of the
    corresponding attribute shall be ensured.
2.  The identifications shall be unique for a certain element type, at least within its
    context element. In other words, the VEC model and its representation as XML
    Schema is a hierarchical data model. That means, that an identification shall be
    at least unique within its direct parent element (e.g. the identification of a
    HousingComponent shall be unique within its EEComponentSpecification.
3.  Two elements of different types can have the same Identification. However, this
    is only recommended, when the two VEC elements represent the same domain
    entity from different points of view, otherwise this shall be avoided as far as
    possible.
4.  In general, it is recommended to keep the Identifications stable over the time.
    This means, that if an object is exported multiple times the Identification of it
    should be the same. However, this is not possible in all cases, for all processes
    and all tools. Therefore, a process and / or tool creating VEC files should
    describe for all elements, under which conditions Identifications are stable or
    new ones are created.
    
## `AliasIdentification`-Properties (VEC Model)

Certain elements have the capability to define {{< vec-class "AliasIdentification" >}}s in addition to their
unique identifications. {{< vec-class "AliasIdentification" >}}s are scoped identifiers of the object. The scope can be a system, a company
or or process. One use case of this kind of ids is the creation of traceability links between different sources of information. Examples for usages of the {{< vec-class "AliasIdentification" >}}s are:

- The identifier of a connector in the electrological process (with geometric
variants)
- The identifier of a node or segment in a MCAD tool
- An assigned UUID of an element.


## `id`-Attributes (XML Representation)

All `xs:complexType` define an `id`-Attribute with the type `xs:ID`. These are technical ids
that are necessary for the referencing mechanism of the VEC within a single XML file.
The semantics, constraints and requirements are defined by the XML Standard and
XML Schema itself. These ids do not have any significance outside a VEC file. 
See the Section [id-Attibutes]({{< relref  "../xml-xsd/#id-attributes">}}).

## `immutable-global-id`-Attributes (XML Repesentation)

See the Section [`immutable-global-id`-Attributes]({{< relref "../xml-xsd/#immutable-global-id-attributes">}}).

## `IRI`s (RDF Representation)

In RDF all objects (named resources in RDF) require a global unique identifiers which is an IRI. This is mandatory for resource to be "referencable". 
The maturity of the `IRI` generation strategy decides quality & stability of links within RDF graphs. There it should be thoroughly thought through when representing VEC data in RDF. 
The RDF `IRI` is very similiar to the `immutable-global-id` feature in VEC XML representations. When mapping VEC data from XML to RDF and back, it should be possible to use `immutable-global-id` (when defined), as RDF `IRI` and vice versa. 

However, RDF `IRI`s are a standard concept defined in RDF, whereas the `immutable-global-id` are a specific feature of the VEC XML representation. 

