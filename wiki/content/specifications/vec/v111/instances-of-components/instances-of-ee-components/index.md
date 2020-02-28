---
title: Instances of EE-Components
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
  - Role
  - EEComponentRole
  - PinComponentReference
  - TerminalRole
  - ConnectorHousingRole
  - CavityReference
  - AbstractSlotReference
  - HousingComponentReference
  - PinComponent
  - HousingComponent
  - EEComponentSpecification
menu:
  VEC-1.1.1:    
    parent: instances-of-components
    identifier: instances-of-components/instances-of-ee-components
    weight: 1004007 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1004007
---
{{< svgfigure src="instances-of-ee-components.png" width="963" height="425" caption="Instances of EE-Components" numbered="true" >}}
  {{< svglink relref="../../classes/role.md" x="401.0" y="15.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/eecomponentrole.md" x="371.0" y="126.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../../classes/pincomponentreference.md" x="371.0" y="344.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/terminalrole.md" x="770.0" y="344.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/connectorhousingrole.md" x="714.0" y="120.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/cavityreference.md" x="714.0" y="246.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/abstractslotreference.md" x="714.0" y="183.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/housingcomponentreference.md" x="373.0" y="225.0" width="175.0" height="55.0" >}}
  {{< svglink relref="../../classes/pincomponent.md" x="21.0" y="344.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/housingcomponent.md" x="21.0" y="218.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/eecomponentspecification.md" x="7.0" y="127.0" width="236.0" height="55.0" >}}
{{< / svgfigure >}}
<p> The diagram shows the mapping between the part master data of a EE components (partly displayed on the left side)&#160;and the instance specific information (displayed on the right side). Additionally an <i>EEComponentRole</i> can reference one or more <i>ConnectorHousingRoles</i>, <i>AbstractSlotRoles </i>or <i>CavityReferences</i> onto which it is mounted.      </p>