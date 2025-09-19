---
title: Cable Seal & Plugs
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
  - CableSealSpecification
  - CableSealPlugSpecification
  - CavityLayout
  - Cavity
  - SealingPin
  - CableSealEntry
  - PartOrUsageRelatedSpecification
menu:
  VEC-2.2.0:    
    parent: component-characteristics
    identifier: component-characteristics/cable-seal-plugs
    weight: 1005015 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005015
---
{{< svgfigure src="cable-seal-plugs.png" width="793" height="507" caption="Cable Seal & Plugs" numbered="true" >}}
  {{< svglink relref="../../classes/cablesealspecification.md" x="43.0" y="162.0" width="209.0" height="34.0" >}}
  {{< svglink relref="../../classes/cablesealplugspecification.md" x="568.0" y="155.0" width="209.0" height="34.0" >}}
  {{< svglink relref="../../classes/cavitylayout.md" x="295.0" y="267.0" width="209.0" height="55.0" >}}
  {{< svglink relref="../../classes/cavity.md" x="302.0" y="414.0" width="209.0" height="79.0" >}}
  {{< svglink relref="../../classes/sealingpin.md" x="547.0" y="260.0" width="209.0" height="67.0" >}}
  {{< svglink relref="../../classes/cablesealentry.md" x="15.0" y="260.0" width="247.0" height="79.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="22.0" y="15.0" width="757.0" height="55.0" >}}
{{< / svgfigure >}}
<p> <i>CableSeal</i>s are seals that are used on a wire/cable, outside of the actual crimp, but often within a complex connector housing. A <i>CableSealSpecification </i>defines one or more <i>CableSealEntries.</i> A <i>CableSealPlug </i>is a plug that can seal one or more <i>CableSealEntry</i> that are not occupied by a wire element. The <i>CableSealPlugSpecification</i> defines <i>SealingPins</i> for each <i>CableSealEntry</i> that it might seal.      </p>      <p> Both <i>Specifications</i> can define a <i>CavityLayout</i> with <i>virtualCavities. </i>Those <i>Cavities</i> serve multiple purposes:      </p>      <ol>       <li> By utilizing a <i>CavityMapping</i> it is possible to create a mapping between a <i>CableSealSpecification</i> and its compatible <i>CableSealPlugSpecification</i> and to define which <i>CableSealEntry</i> is plugged by which <i>SealingPin.</i>        </li>       <li> Also, by utilizing a <i>CavityMapping </i>it is possible to create a mapping between a&#160;<i>CableSealSpecification/</i><i>CableSealPlugSpecification </i>and a <i>ConnectorHousingSpecification</i> specifying which <i>CableSealEntry</i> is associated with which <i>Cavity </i>of the connector housing. This information is required for example to determine which <i>CableSealEntry</i> has to be used for specific wire, when it is contacted in a specific cavity of the connector housing.        </li>     </ol>     <p> &#160;      </p>