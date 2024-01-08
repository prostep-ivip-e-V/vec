---
title: Crimp Details
toc: false
type: specs
layout: diagram
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - CrimpDetail
  - CoreCrimpDetail
  - ExtendableElement
  - InsulationCrimpDetail
  - ConductorSpecification
  - ResourceVersion
  - InsulationSpecification
  - WireReceptionSpecification
menu:
  VEC-2.1.0:    
    parent: component-characteristics
    identifier: component-characteristics/crimp-details
    weight: 1005006 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005006
---
{{< svgfigure src="crimp-details.png" width="1254" height="498" caption="Crimp Details" numbered="true" >}}
  {{< svglink relref="../../classes/crimpdetail.md" x="575.0" y="71.0" width="204.0" height="64.0" >}}
  {{< svglink relref="../../classes/corecrimpdetail.md" x="379.0" y="197.0" width="209.0" height="67.0" >}}
  {{< svglink relref="../../classes/extendableelement.md" x="568.0" y="15.0" width="209.0" height="34.0" >}}
  {{< svglink relref="../../classes/insulationcrimpdetail.md" x="778.0" y="204.0" width="211.0" height="57.0" >}}
  {{< svglink relref="../../classes/conductorspecification.md" x="379.0" y="309.0" width="213.0" height="175.0" >}}
  {{< svglink relref="../../classes/resourceversion.md" x="988.0" y="64.0" width="252.0" height="79.0" >}}
  {{< svglink relref="../../classes/insulationspecification.md" x="799.0" y="302.0" width="278.0" height="175.0" >}}
  {{< svglink relref="../../classes/wirereceptionspecification.md" x="15.0" y="36.0" width="267.0" height="283.0" >}}
{{< / svgfigure >}}
<p> <i>Height</i> &amp;&#160;<i>Width</i> of the crimp<i> </i>are important quality criteria for the crimping process defined in the part master data of the terminal.      </p>      <p> The core crimp and the insulation crimp have different heights &amp;&#160;width depending on multiple parameter cross-section, material, insulation thickness etc. Each <i>CrimpDetail</i> represents a pair of <i>Height</i> &amp;&#160;<i>Width </i>(with optional <i>Tolerance)</i> for specific parameter combination.       </p>      <p> Those parameters are not defined in the <i>CrimpDetail </i>itself, but in the referenced <i>Conductor-</i> &amp; <i>InsulationSpecification.</i> There are two possibilities here:      </p>      <ol>       <li> The <i>Conductor-</i> &amp; <i>InsulationSpecification</i> can belong to the description of a specific wire. In this case, the specifications will most likely contain more information than the information required to determine the crimp parameters.         </li>       <li> The <i>Conductor-</i> &amp; <i>InsulationSpecification</i> can belong to the description of the terminal itself. In this case, the specifications represent a pattern for matching wires, by defining only the relevant attributes (e.g. <i>CrossSectionArea &amp;&#160;Material </i>in the <i>ConductorSpecification</i> and <i>InsulationThickness &amp;&#160;Material</i> in the <i>InsulationSpecification.</i>          </li>     </ol>