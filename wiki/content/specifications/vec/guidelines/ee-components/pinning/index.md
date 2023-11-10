---
title: "Pinning"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: ["Pinning", "Signals", "Current", "Peaks"]
categories: []
date: 2019-03-11
lastmod: 2019-12-02T12:44:44+01:00
draft: false
review: true

classes:
  - PinComponentBehavior
  - PinComponent
  - PinVoltageInformation
  - PinCurrentInformation
  - PinTiming

history:
  - date: 2023-11-10T00:00:00Z
    description: "Added explanations for PinComponentBehavior and SignalDirections & PinComponentTypes."
    issue: "KBLFRM-586"

menu:
  vec-guidelines:
    parent: ee-components
    # Toplevel element. For sub sections the identifier of the subsection
    weight: 16000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 16000
---
The following section contains examples for the definition of Pinning information in the VEC. This means the specification of the electrical behavior of {{< vec-class PinComponent >}}s. Make sure you have read the chapter "{{< vec-diagram "ee-components/pinning-information-pinning-variance">}}" before.

## PinComponentBehaviors

To define the electrical behavior of a {{< vec-class PinComponent >}} the {{< vec-class PinComponentBehavior >}} is used. It is possible, that a {{< vec-class PinComponent >}} has more has multiple behaviors, which are configuration dependent (e.g. software defined pins on an ECU). Therefore, the {{< vec-class PinComponentBehavior >}} is a {{< vec-class ConfigurableElement >}}. With a {{< vec-class PinComponentBehavior >}} various electrical characteristics of the pin can be described. The next sections contain examples for that.

### _PinComponentType_ and _SignalDirection_

{{< review KBLFRM-586 >}}

The figure below illustrates three E/E-components in a power distribution scenario and the logical correlations between them. Please note that the illustration is an excerpt from the master data. Actual relationships would only be established during the use / instantiation e.g. in a wiring. This is taken into account in that the logical relationships are only indicated by dependencies (dashed arrows).

{{< figure src="power-supply-distribution.jpg" title="SPDS - Simple Power Distribution System" numbered="true" lightbox="true">}}

Our _SPDS_ (Simple Power Distribution System :winking_face:) consists of the three components, a _PowerSource_ (e.g. a Battery), a _Distributor_ and a _Consumer_. 

The _PowerSource_ on the left side has a {{< vec-class PinComponent >}} with `pinComponentType='PowerDistribution'` and `signalDirection='Out'`, because it _distributes_ power to other components. 

The _Consumer_ on the right side has a {{< vec-class PinComponent >}} with `pinComponentType='PowerSupply'` and `signalDirection='In'`, because the component itself is _supplied_ with power over that pin. 

The _Distributor_ is software-defined eFuse in the example, it has two {{< vec-class PinComponent >}}s. One _"B1"_ is used to _receive_ power, for _distribution_ to others, therefore it is defined with `pinComponentType='PowerDistribution'` and `signalDirection='In'`. This should not be confused with `pinComponentType='PowerSupply'`, which indicates that the received power is used to supply the component itself with energy. The second pin _"B2"_ is defined with `pinComponentType='PowerDistributionLimited'` and `signalDirection='Out'`. This is because the pin is limited by an eFuse. For a conventional limitation (e.g. melting fuse) the fusing would be available via the internal connectivity of the E/E component and the `pinComponentType='PowerDistribution'` would be used.


### Signal Peak Distance and Duration 
{{< figure src="signal-peak-distance-duration.jpg" title="Signal Peak Distance and Duration" numbered="true" lightbox="true">}}

This example shows how a digital signal with pulse width and pulse separation can be defined. The {{< vec-class PinComponentBehavior >}} of a {{< vec-class PinComponent >}} has {{< vec-class PinVoltageInformation >}}. The {{< vec-class PinVoltageInformation >}} can define multiple {{< vec-class PinTiming >}} definitions. For pulsed digital signals, two *PinTimings* are used. One {{< vec-class PinTiming >}} (Duration) describes the pulse width. The other *PinTiming* (Peak Distance) describes pulse separation.

### Load Type Dependant Maximum Current (Relais) 
{{< figure src="relais-maximum-current-relais.jpg" title="Load Type Dependant Maximum Current for Relais" numbered="true" lightbox="true">}}

Dependant on the load type (inductive, resistive, capacitive) a switching contact of a relais can have different maximum loads.

The diagram shows a {{< vec-class PinComponent >}} of type switch that has two {{< vec-class PinComponentBehavior >}}s with pinType resistive and inductive. Each {{< vec-class PinComponentBehavior >}} has a {{< vec-class PinCurrentInformation >}} with type maxCurrent and different current values.
