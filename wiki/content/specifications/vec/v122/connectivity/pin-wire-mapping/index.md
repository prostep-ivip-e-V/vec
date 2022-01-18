---
title: Pin Wire Mapping
toc: false
type: specs
layout: diagram
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - ContactPoint
  - PinWireMappingSpecification
  - PinWireMappingPoint
  - PinComponentReference
  - Specification
menu:
  VEC-1.2.2:    
    parent: connectivity
    identifier: connectivity/pin-wire-mapping
    weight: 1009008 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1009008
---
{{< svgfigure src="pin-wire-mapping.png" width="1113" height="434" caption="Pin Wire Mapping" numbered="true" >}}
  {{< svglink relref="../../classes/contactpoint.md" x="288.0" y="364.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/pinwiremappingspecification.md" x="141.0" y="140.0" width="167.0" height="34.0" >}}
  {{< svglink relref="../../classes/pinwiremappingpoint.md" x="148.0" y="238.0" width="167.0" height="34.0" >}}
  {{< svglink relref="../../classes/pincomponentreference.md" x="15.0" y="364.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/specification.md" x="120.0" y="21.0" width="217.0" height="67.0" >}}
{{< / svgfigure >}}
<p> A <i>PinWireMappingSpecification</i> can be used to create <b>variance free </b>mappings between a wire (represented by the contact point) and the pin of an E/E component. This is a possibility to create a shortcut in the model between a wire and its connected E/E-component (e.g. a fuse) that might be only indirectly connected to a wire (e.g. via a fuse and relay carrier). This is a relevant information for e.g. the validation of fusing.      </p>      <p> In a concrete 100%&#160;variant, this is an information that could be derived from the data provided by the VEC, if available. Informally spoken, the way in the model would be from the <i>WireEnd</i> over to the <i>ContactPoint</i> and from there to the cavity of the harness connector. From the harness connector to the fuse and relay carrier <i>PinComponentReference</i>, via the <i>CouplingPoint.</i> From the <i>PinComponentReference</i>, via the <i>InternalComponentConnection</i> to the slot of the fuse and then via another <i>CouplingPoint</i> to the fuse.      </p>      <p> However, in a 150% scenario, even if all component assignments to modules are known, this information cannot be derived unambiguously without extensive knowledge of the variant management mechanisms. This is illustrated with the graphic representation in the diagram. There are two wires (controlled by Variant A &amp;&#160;B) attached to a single cavity&#160;(green). Via an internal connection of the carrier they are connected to a single component slot (light blue). This slot contains two different fuses (controlled by variant Y &amp;&#160;Z). Without knowledge of the conditions between the variant A, B, Y &amp;&#160;Z it is impossible to say what fuse is responsible for the protection of which wire. That knowledge might not be available at all times, for all partners in the process.      </p>      <p> The <i>PinWireMappingPoint </i>provides a possibility to define this information in the VEC (the golden /&#160;yellow arrows in the illustration).      </p>