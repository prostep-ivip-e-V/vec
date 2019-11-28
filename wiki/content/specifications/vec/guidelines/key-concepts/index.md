---
title: "Key Concepts"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
authors: ["becker"]
tags: ["Core"]
categories: []
date: 2019-11-06
lastmod: 2019-11-28T15:11:41+01:00
draft: false

menu:
  vec-guidelines:
    weight: 1000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1000
---
## Parts and Documents

{{< figure src="parts_and_documents.jpg" title="Parts and Documents" numbered="true" lightbox="true">}}

The figure above illustrates one of the most fundamental concepts of the VEC -- the separation of a part and its description. In the VEC a part ({{<vec-class PartVersion>}}) does not contain any information about the part, except its PDM Information (PartNumber, PartVersion…). All the information about the technical properties of a part is expressed by a subclass of {{< vec-class PartOrUsageRelatedSpecification>}}s (e.g. a {{< vec-class WireSpecification >}}). The specifications itsselfes are contained in a {{< vec-class DocumentVersion>}}.

This approach enables the VEC to address two scenarios properly:

  * The description of a part is changed, but the part itself is not changed (rereleased). This can happen for example if the actual technical properties of the part stay the same, but the description is extended or corrected.
  * A document and the contained specifications are describing more than one part (e.g. a drawing for a certain class of terminals). In this case it can happen that the document and the specifications are changed, but not all of the described parts have to be changed (rereleased).  

<br/>

## Usage Nodes

{{< figure src="usage_nodes.jpg" title="Usage Nodes" numbered="true" >}}

The example illustrates the use of *UsageNodes*. A {{<vec-class UsageNode>}} represents a position in an abstract vehicle. For example the Head Light Left. *UsageNodes* belong to the master data and they are defined on some company wide level. They can be used to enforce consistent naming over different projects and different development streams (e.g. between geometry and electrologic).

A {{<vec-class UsageNode>}} can be subdivided into more detailed *UsageNodes*. For example the Head Light can be split up into Main Beam, Low Beam and Direction Indicator.