---
title: Instances of EE-Components
toc: false
type: specs
layout: diagram
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - Role
  - EEComponentRole
  - PinComponentReference
  - TerminalRole
  - ConnectorHousingRole
  - HousingComponentReference
  - ExtensionSlotReference
  - ExtensionSlot
  - ConfigurableElement
  - PinComponent
  - EEComponentSpecification
  - HousingComponent
menu:
  VEC-2.0.2:    
    parent: instances-of-components
    identifier: instances-of-components/instances-of-ee-components
    weight: 1007007 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1007007
---
{{< svgfigure src="instances-of-ee-components.png" width="1213" height="674" caption="Instances of EE-Components" numbered="true" >}}
  {{< svglink relref="../../classes/role.md" x="695.0" y="42.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/eecomponentrole.md" x="665.0" y="153.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../../classes/pincomponentreference.md" x="756.0" y="455.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/terminalrole.md" x="1015.0" y="448.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/connectorhousingrole.md" x="973.0" y="329.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/housingcomponentreference.md" x="667.0" y="329.0" width="175.0" height="55.0" >}}
  {{< svglink relref="../../classes/extensionslotreference.md" x="364.0" y="168.0" width="202.0" height="55.0" >}}
  {{< svglink relref="../../classes/extensionslot.md" x="154.0" y="231.0" width="202.0" height="55.0" >}}
  {{< svglink relref="../../classes/configurableelement.md" x="357.0" y="602.0" width="202.0" height="43.0" >}}
  {{< svglink relref="../../classes/pincomponent.md" x="0.0" y="441.0" width="234.0" height="79.0" >}}
  {{< svglink relref="../../classes/eecomponentspecification.md" x="7.0" y="147.0" width="236.0" height="55.0" >}}
  {{< svglink relref="../../classes/housingcomponent.md" x="49.0" y="315.0" width="246.0" height="79.0" >}}
{{< / svgfigure >}}
<p> The diagram shows the mapping between the part master data of an EE-component (partly displayed on the left side)&#160;and the instance specific information (displayed on the right side). Additionally, an <i>EEComponentRole</i> can reference one or more <i>ConnectorHousingRoles</i>, <i>AbstractSlotRoles </i>or <i>CavityReferences</i> onto which it is mounted.      </p>