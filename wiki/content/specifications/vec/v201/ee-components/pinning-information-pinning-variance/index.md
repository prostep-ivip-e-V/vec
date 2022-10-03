---
title: Pinning Information & Pinning Variance
toc: false
type: specs
layout: diagram
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - PinApplianceType
  - PinType
  - ConfigurableElement
  - PinTimingType
  - PinTiming
  - PinComponentType
  - PinVoltageInformation
  - PinCurrentInformation
  - PinVoltageType
  - PinOpticalInformation
  - PinCurrentType
  - PinComponentBehavior
  - Signal
  - PinComponent
menu:
  VEC-2.0.1:    
    parent: ee-components
    identifier: ee-components/pinning-information-pinning-variance
    weight: 1006005 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006005
---
{{< svgfigure src="pinning-information-pinning-variance.png" width="940" height="758" caption="Pinning Information & Pinning Variance" numbered="true" >}}
  {{< svglink relref="../../classes/pinappliancetype.md" x="28.0" y="350.0" width="114.0" height="82.0" >}}
  {{< svglink relref="../../classes/pintype.md" x="21.0" y="210.0" width="114.0" height="118.0" >}}
  {{< svglink relref="../../classes/configurableelement.md" x="210.0" y="175.0" width="129.0" height="52.0" >}}
  {{< svglink relref="../../classes/pintimingtype.md" x="805.0" y="147.0" width="114.0" height="130.0" >}}
  {{< svglink relref="../../classes/pintiming.md" x="791.0" y="322.0" width="134.0" height="127.0" >}}
  {{< svglink relref="../../classes/pincomponenttype.md" x="14.0" y="35.0" width="117.0" height="142.0" >}}
  {{< svglink relref="../../classes/pinvoltageinformation.md" x="568.0" y="390.0" width="148.0" height="67.0" >}}
  {{< svglink relref="../../classes/pincurrentinformation.md" x="567.0" y="308.0" width="148.0" height="67.0" >}}
  {{< svglink relref="../../classes/pinvoltagetype.md" x="567.0" y="476.0" width="114.0" height="154.0" >}}
  {{< svglink relref="../../classes/pinopticalinformation.md" x="385.0" y="532.0" width="178.0" height="67.0" >}}
  {{< svglink relref="../../classes/pincurrenttype.md" x="567.0" y="105.0" width="114.0" height="190.0" >}}
  {{< svglink relref="../../classes/pincomponentbehavior.md" x="231.0" y="259.0" width="217.0" height="197.0" >}}
  {{< svglink relref="../../classes/signal.md" x="14.0" y="532.0" width="355.0" height="211.0" >}}
  {{< svglink relref="../../classes/pincomponent.md" x="182.0" y="14.0" width="484.0" height="79.0" >}}
{{< / svgfigure >}}
<p> The electrical behavior of a <i>PinComponent</i> can be fixed for a certain EE-component but does not have to be fixed. For example, in the case of an ECU, the behavior depends on the deployed software.      </p>      <p> Therefore, the electrical behavior of a <i>PinComponent </i>is not defined directly and fixed in the <i>PinComponent</i>. In fact, a <i>PinComponent</i> can define <i>PinComponentBehaviors</i>, which are <i>ConfigurableElements.</i> This means the actual valid <i>PinComponentBehavior</i> for a <i>PinComponent</i> can be determined when the necessary variant information is available. When no variant information is necessary (the <i>PinComponent</i> has a fixed behavior) then the <i>PinComponent</i> just defines a single <i>PinComponentBehavior.</i>      </p>      <p> The <i>PinCurrentInformation</i> and <i>PinVoltageInformation</i> can be used to describe the characteristic curves for different types and times of currents and voltages.      </p>