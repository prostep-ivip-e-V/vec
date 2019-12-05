---
title: "Fuses"
#linktitle: Link in Sidemenu
type: specs
toc: true
authors: ["becker"]
tags: ["part-master", "instantiation"]
categories: []
date: 2018-11-29
lastmod: 2019-03-07
draft: false

menu:
  vec-guidelines:
    parent: ee-components
    weight: 4300

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 4300
---
{{< figure src="fuses.jpg" title="Fuses" numbered="true" >}}

A single fuse is a two-terminal component that can be plugged or screwed into a compatible fuse slot. There are different types, which differ in their geometry, the type of connection, the tripping characteristics and their rated voltage.

In VEC a fuse is handled as a EE-Component and that is why the {{< vec-class FuseSpecification >}} extends the {{< vec-class "EEComponentSpecification" >}} and describes it's the available connector interface also with a {{< vec-class HousingComponent >}} and - in this case - with two {{< vec-class PinComponent >}}s. The {{< vec-class FuseSpecification >}} defines the typical component attributes, i.e. the maximum electric current information for the fuse.

In addition to that the geometrical structure is described by a {{< vec-class "ConnectorHousingSpecification" >}} with it's {{< vec-class "Slot" >}}s and their *Cavities* ({{< vec-class "Cavity" >}} ). The {{< vec-class PinComponent >}}s can be described in a more detailed way by usage of the {{< vec-class PinComponentBehavior >}}. Special information about the signal, signal direction or voltage can be placed here.

The *PinComponent* can reference a {{< vec-class TerminalSpecification >}} to define the physical properties of the pin. To avoid the confusion by too many crossing lines, the connection t the TermnalSpecification is not explicitly drawn in the diagram above.

## Instantiating fuses 

Instantiating fuses is like instantiating any other EE-Component. A {{< vec-class "EEComponentRole" >}} under a {{< vec-class "PartOccurrence" >}} references the {{< vec-class "FuseSpecification" >}} and all structure elements underneath will be instantiated and references their corresponding part master element, too. For more information see [E/E-Components]({{< relref "ee-components" >}}).
