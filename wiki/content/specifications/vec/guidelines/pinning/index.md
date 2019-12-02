---
title: "Pinning"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker]
tags: ["Pinning", "Signals", "Current", "Peaks"]
categories: []
date: 2019-03-11
lastmod: 2019-12-02T12:44:44+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    weight: 16000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 16000
---
The following section contains examples for the definition of Pinning information in the VEC. This means the specification of the electrical behavior of {{< vec-class PinComponent >}}s. 


To define the electrical behavior of a {{< vec-class PinComponent >}}, the class {{< vec-class PinComponentBehavior >}} can be used*.* Since the behavior of a pin is configuration dependent (e.g. the software deployed on an ECU) the *PinComponentBehavior* inherits from {{< vec-class ConfigurableElement >}}. Therefore a {{< vec-class PinComponent >}} can specify multiple {{< vec-class PinComponentBehavior >}}. Additionally the *Behavior* can contain currentInformation for a pin. In combination with its attribute 'singnalDirection', the {{< vec-class PinComponentBehavior >}} can describe power supply components (e.g. batteries or generators; signalDirection 'out') as well as power consumer (e.g. lamps, sensors or actors; signalDirection 'in').

## Signal Peak Distance and Duration 
{{< figure src="signal_peak_distance_and_duration.jpg" title="Signal Peak Distance and Duration" numbered="true" lightbox="true">}}

This example shows how a digital signal with pulse width and pulse separation can be defined. The {{< vec-class PinComponentBehavior >}} of a {{< vec-class PinComponent >}} has {{< vec-class PinVoltageInformation >}}. The {{< vec-class PinVoltageInformation >}} can define multiple {{< vec-class PinTiming >}} definitions. For pulsed digital signals, two *PinTimings* are used. One {{< vec-class PinTiming >}} (Duration) describes the pulse width. The other *PinTiming* (Peak Distance) describes pulse separation.

## Load Type Dependant Maximum Current (Relais) 
{{< figure src="load_type_dependant_maximum_current_relais.jpg" title="Load Type Dependant Maximum Current for Relais" numbered="true" lightbox="true">}}

Dependant on the load type (inductive, resistive, capacitive) a switching contact of a relais can have different maximum loads.

The diagram shows a {{< vec-class PinComponent >}} of type switch that has two {{< vec-class PinComponentBehavior >}}s with pinType resistive and inductive. Each {{< vec-class PinComponentBehavior >}} has a {{< vec-class PinCurrentInformation >}} with type maxCurrent and different current values.
