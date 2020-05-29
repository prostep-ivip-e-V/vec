---
title: "Sealed Ring Terminals"
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: []
categories: []
date: 2020-05-29
lastmod: 2020-05-29
draft: false
math: true
diagram: true

classes:
  - Wire_protection_occurrence
  - Special_terminal_occurrence
  - Protection_area
  - Segment

menu:
  kbl-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    #parent: Example Topic
    weight: 4000
---
{{% alert warning %}}
**Disclaimer:** This page is currently under review by the community.  

The content of this page can be subject to change at any time. If you find any issues or if you have any review comments please drop us an issue on the [PROSTEP JIRA](https://track.prostep.com/projects/KBLFRM/). 

This page resolves [KBLFRM-631](https://track.prostep.com/browse/KBLFRM-631)
{{% /alert %}}

{{< figure src="sealed-ring-terminal.png" lightbox="true" class="float-right" numbered="true" title="Sealed ring terminal with overlapping protection" width="400px" >}}

Ring terminals are often installed with a wire protection (e.g. a shrinking tube) that is covering the crimp area (see the figure on the right). This implementation guideline defines how this scenario shall be represented in the KBL.

The necessity for a separate definition of this situation arises from the fact, that in the KBL wire protections are always placed on segments of the topology. For electrical end points (e.g. connectors or ring terminals) the last segment ends at a defined location, the *segment connection point* (a.k.a. bundle connection point). For ring terminals, the start of the crimp area is defined as segment connection point (the blue marker in the figure on the right). That means, that the wire protection (the yellow tube) is overlapping into an area that is outside of the topology (the red arrow). 

A regular {{< kbl-class "Protection_area" >}} assigns a {{< kbl-class "Wire_protection_occurrence" >}} onto a {{< kbl-class "Segment" >}}. It starts and ends on locations defined by a value that relates to the curve parameter of the segment (0.0 &le; x &le; 1.0). A representation of the scenario by these means (e.g. a curve parameter x &lt; 0) is not possible without simultaneously creating a representation that is highly open to interpretation, especially for other cases (e.g. "What does a curve parameter less than zero mean for segments that end at an intersection?").

Therefore the defined representation of this scenario is:

1. The {{< kbl-class "Protection_area" >}} is defined as if it would end at the segment connection point.
2. The {{< kbl-class "Wire_protection_occurrence" >}} uses the ring terminal as *reference_element* (possible with KBL 2.5 SR-1 and later).
3. The *protection_length* is the calculated length from the {{< kbl-class "Protection_area" >}} plus the length of the overlapping area.

