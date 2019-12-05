---
title: "Fixings"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker]
tags: [""]
categories: []
date: 2018-11-29
lastmod: 2019-12-02T12:41:10+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    weight: 10000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 10000
---
## With PlacementPoints 
{{< figure src="fixing_with_placementpoints_illustration.jpg" title="Fixings with Placement Points" numbered="true" lightbox="true">}}

This illustration shows the *Fixing* with a {{< vec-class PlacementPoint >}} and {{< vec-class MeasurementPoint >}} as a {{< vec-class PartOccurrence >}}.

{{< figure src="fixings_with_placementpoints.jpg" title="Placement Points in the Model" numbered="true" lightbox="true">}}

The ability to place a *Fixing* on a specific point in the topology is similar to Grommets covered by generic mechanism of {{< vec-class PlacementPoint >}} and {{< vec-class PlacementPointReference >}}. Additionally the measurement of *Fixing* is covered by {{< vec-class MeasurementPoint >}} and {{< vec-class MeasurementPointReference >}}.

## Fixings with additional Cable Ties 
{{< figure src="fixings_with_additional_cable_ties.jpg" title="Fixings with Additional Cable Tie" numbered="true" lightbox="true">}}

The diagram illustrates the definition of a *Fixing* with *CableTies* as *Accessory*. The upper half of the diagram is the definition of the part master data.

The Fixing is described with a {{< vec-class PartVersion >}} and a {{< vec-class FixingSpecification >}}. To describe its accessories it has {{< vec-class GeneralTechnicalPartSpecification >}} with {{< vec-class PartRelation >}}s to link the accessories. In this case, one *CableTie* is mandatory, a second one is an optional add on. Both are referencing the {{< vec-class PartVersion >}} of the *CableTie*.

The *CableTie* is currently defined with a not further detailed {{< vec-class PartOrUsageRelatedSpecification >}}, since there is no {{< vec-class CableTieSpecification >}} in the VEC at the moment. That the accessory is a *CableTie* is defined by the value of the *specialPartType* attribute.

If there are any additional properties necessary for the *CableTie*, then they could be specified with *CustomProperties* (see {{< vec-class CustomProperty >}}) for the {{< vec-class PartOrUsageRelatedSpecification >}}.

For the instancing of these components, both are created with a {{< vec-class PartOccurrence >}}. The *Fixing* is defined with a {{< vec-class FixingRole >}}, the *CableTie* with a *SpecificRole* (For the same reasons why a {{< vec-class PartOrUsageRelatedSpecification >}} has been used).
