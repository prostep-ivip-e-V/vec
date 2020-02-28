---
title: Pinning Information & Pinning Variance
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
  - PinApplianceType
  - PinType
  - ConfigurableElement
  - PinTimingType
  - PinTiming
  - PinVoltageInformation
  - PinCurrentInformation
  - PinVoltageType
  - PinCurrentType
  - PinOpticalInformation
  - PinComponentBehavior
  - Signal
  - PinComponent
menu:
  VEC-1.1.1:    
    parent: description-of-components
    identifier: description-of-components/pinning-information-pinning-variance
    weight: 1003010 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003010
---
{{< svgfigure src="pinning-information-pinning-variance.png" width="940" height="632" caption="Pinning Information & Pinning Variance" numbered="true" >}}
  {{< svglink relref="../../classes/pinappliancetype.md" x="28.0" y="309.0" width="114.0" height="82.0" >}}
  {{< svglink relref="../../classes/pintype.md" x="28.0" y="183.0" width="114.0" height="106.0" >}}
  {{< svglink relref="../../classes/configurableelement.md" x="210.0" y="120.0" width="129.0" height="52.0" >}}
  {{< svglink relref="../../classes/pintimingtype.md" x="805.0" y="106.0" width="114.0" height="130.0" >}}
  {{< svglink relref="../../classes/pintiming.md" x="791.0" y="281.0" width="134.0" height="127.0" >}}
  {{< svglink relref="../../classes/pinvoltageinformation.md" x="568.0" y="349.0" width="148.0" height="67.0" >}}
  {{< svglink relref="../../classes/pincurrentinformation.md" x="567.0" y="267.0" width="148.0" height="67.0" >}}
  {{< svglink relref="../../classes/pinvoltagetype.md" x="567.0" y="435.0" width="114.0" height="154.0" >}}
  {{< svglink relref="../../classes/pincurrenttype.md" x="567.0" y="85.0" width="114.0" height="154.0" >}}
  {{< svglink relref="../../classes/pinopticalinformation.md" x="385.0" y="491.0" width="178.0" height="67.0" >}}
  {{< svglink relref="../../classes/pincomponentbehavior.md" x="231.0" y="218.0" width="217.0" height="197.0" >}}
  {{< svglink relref="../../classes/signal.md" x="14.0" y="491.0" width="355.0" height="127.0" >}}
  {{< svglink relref="../../classes/pincomponent.md" x="56.0" y="15.0" width="673.0" height="67.0" >}}
{{< / svgfigure >}}
<p> The electrical behavior of a <i>PinComponent</i> can be fixed for a certain EE-component, but does not have to be fixed. For example in the case of an ECU, the behavior depends on the deployed software.      </p>      <p> Therefore the electrical behavior of a <i>PinComponent </i>is not defined directly and fixed in the <i>PinComponent</i>. In fact a <i>PinComponent</i> can define a number of <i>PinComponentBehaviors</i>, which are <i>ConfigurableElements.</i> This means the actual valid <i>PinComponentBehavior</i> for a <i>PinComponent</i> can be determined when the necessary variant information is available. When no variant information is necessary (the <i>PinComponent</i> has a fixed behavior) then the <i>PinComponent</i> just defines a single <i>PinComponentBehavior.</i>     </p>      <p> The <i>PinCurrentInformation</i> and <i>PinVoltageInformation</i> can be used to describe the characteristic curves for different types and times of currents and voltages.       </p>