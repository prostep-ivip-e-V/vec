---
title: Compatibility
toc: false
type: specs
layout: diagram
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - WireSpecification
  - AbstractSlot
  - TerminalSpecification
  - CavityPlugSpecification
  - Cavity
  - CavitySealSpecification
  - ConnectorHousingSpecification
  - CavitySpecification
  - CompatibilityStatement
  - CompatibilitySpecification
menu:
  VEC-1.1.1:    
    parent: description-of-components
    identifier: description-of-components/compatibility
    weight: 1003014 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003014
---
{{< svgfigure src="compatibility.png" width="881" height="603" caption="Compatibility" numbered="true" >}}
  {{< svglink relref="../../classes/wirespecification.md" x="336.0" y="385.0" width="114.0" height="43.0" >}}
  {{< svglink relref="../../classes/abstractslot.md" x="658.0" y="294.0" width="132.0" height="55.0" >}}
  {{< svglink relref="../../classes/terminalspecification.md" x="140.0" y="350.0" width="175.0" height="79.0" >}}
  {{< svglink relref="../../classes/cavityplugspecification.md" x="679.0" y="203.0" width="180.0" height="79.0" >}}
  {{< svglink relref="../../classes/cavity.md" x="455.0" y="336.0" width="181.0" height="79.0" >}}
  {{< svglink relref="../../classes/cavitysealspecification.md" x="358.0" y="199.0" width="247.0" height="115.0" >}}
  {{< svglink relref="../../classes/connectorhousingspecification.md" x="229.0" y="490.0" width="254.0" height="91.0" >}}
  {{< svglink relref="../../classes/cavityspecification.md" x="7.0" y="196.0" width="283.0" height="127.0" >}}
  {{< svglink relref="../../classes/compatibilitystatement.md" x="14.0" y="105.0" width="806.0" height="55.0" >}}
  {{< svglink relref="../../classes/compatibilityspecification.md" x="14.0" y="7.0" width="806.0" height="43.0" >}}
{{< / svgfigure >}}
<p> A <i>CompatibilitySpecification</i> is a container for various <i>CompatibilityStatements</i>. Each <i>CompatibilityStatement</i> can reference dedicated elements in order to state compatibility (in case of the attribute <i>hasCompatibility</i> is true) respectively in order to state non-compatibility (in case of the attribute <i>hasCompatibility </i>is false).     </p>      <p> To express the compatibility between <i>PartVersions</i> the <i>CompatibilityStatement </i>references the <i>PartOrUsageRelatedSpecifications </i>(or sub elements of them) those describe the technical properties of the relevant <i>PartVersions</i>.      </p>