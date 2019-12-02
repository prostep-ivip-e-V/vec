---
title: "Component Description & Instantiation (Basics)"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker]
tags: ["Components", "Parts", "Instantiation"]
categories: []
date: 2019-03-07
lastmod: 2019-11-29T10:33:18+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    weight: 4000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 4000
---
## Specification of Parts

{{< figure src="basic_component_description.jpg" title="Basic Component Description" numbered="true" lightbox="true">}}

Many of the classes in the VEC are used for the defintion of the general properties of a component (Part Master Data). This is done with specifications (VEC Naming Convention “*XXXSpecification*”). A specification defines all properties of a component that are that are independant of a specific usage of the component (e.g. the number of cavities of connector or the cross section area of a wire). The type of the component, and thereby the available properties, is defined by the classification of the specification (e.g. {{< vec-class ConnectorHousingSpecification >}} for a connector housing). The PDM Information of a component (e.g. the part number) is defined by a {{< vec-class PartVersion >}}.

Since a component can have properties of different classifications (e.g. a connector can also have properties of a fixing) it is possible in the VEC to define multiple different specifications for a single part. The attribute “*primaryPartType*” defines which the primary character of the component is.

## Instantiation of Parts

{{< figure src="instantiation_of_parts.jpg" title="Instantiation of Parts" numbered="true" lightbox="true">}}

If a component should be used in the VEC it must be instantiated. This can be done in two ways. The first way is used if a concrete part number is known. The second way is used if a part number is unknown and only requirements for a component should be defined.

The first case is illustrated [in this diagram]({{< relref "#instantiation-of-parts" >}}) and is quite similar to the way how components have been used in the KBL. The part is identified by a {{< vec-class PartVersion >}} with a PartNumber, Version and the issuing Company. The general properties of the component are defined by a specification (a {{< vec-class FixingSpecification >}} in the example). The use of the component is expressed by a {{< vec-class PartOccurrence >}}. All usage specific properties of component (e.g. the length of a wire) are defined by a Role. The used role must correspond to a specification. The VEC Naming Convention is XXXRole corresponds to XXXSpecification.

In object oriented terms, one can say the {{< vec-class PartVersion >}} and Specification are defining the type (or classification) of a component, the {{< vec-class PartOccurrence >}} and the Role are defining the instance of a component.

## Instantiation of Specifications without Part Number

{{< figure src="instantiation_of_specifications_without_part_number.jpg" title="Instantiation without Part Number" numbered="true" lightbox="true">}}

As mentioned in the example before, there are use cases where it is necessary to define properties of component (instance), without having a concrete part number. This is quite common for example in the electrological design, where for example the cross section area of a wire is specified, but the colouring of the wire is not yet known. In these cases the requirements for component have to be defined without having a concrete {{< vec-class PartVersion >}}.

For these cases, the VEC offers the concept of *PartUsages*. A {{< vec-class PartUsage >}} behaves like a {{< vec-class PartOccurrence >}} (it has instance specific attributes and can define *Roles*), but it is not necessary to reference a {{< vec-class PartVersion >}}. Instead it is possible to directly reference the needed specifications, which represent the requirements on the concrete component, selected later in the process.

