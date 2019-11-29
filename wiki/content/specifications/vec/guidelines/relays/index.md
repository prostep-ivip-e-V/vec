---
title: "Relays"
type: specs
authors: []
tags: ["part-master"]
categories: []
date: 2018-11-29
lastmod: 2019-03-07
draft: false

menu:
  vec-guidelines:
    parent: ee-components
    weight: 4400

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 4400
---
{{< figure src="relays.jpg" title="Relays" numbered="true" >}}

A relay is a component for switching current loads. Unlike fuses, there are more than one input pin and one output pin (number of pins >3). Some components, referred to as relays, are in reality small controllers with up to 17 pins.

In the VEC schema a relay is a special type of an EE-Component. It also owns a {{< vec-class HousingComponent >}} with it's {{< vec-class PinComponent >}}s underneath where these *HousingComponent* can be defined more detailed with a {{< vec-class ConnectorHousingSpecification >}} and the *PinComponents* with a referenced {{< vec-class TerminalSpecification >}}. Also the {{< vec-class InternalComponentConnection >}} for (potentially) connected pins are defined.

Additionally to these standard EE-Component structure the {{< vec-class RelaySpecification >}} also can contain so called {{< vec-class SwitchingState >}}s. Each state describes an {{< vec-class InternalComponentConnection >}} as potentially existing, depending on the current switched state of the relay. In the example above the blue colored {{< vec-class PinComponent >}}s describe the coi contact. The connection between the two pins 30 and 87 is permanently The green colored part describes the switch, whose connection *can* exist depending on the {{< vec-class SwitchingState >}}. So the {{< vec-class InternalComponentConnection >}} between the pins 85 and 86 is not permanently guaranteed.

For more information see [Switching States]( {{< relref "ee-components#switching-states" >}}).

## Instantiating relays 

Instantiating relays is like instantiating any other EE-Component. A {{< vec-class EEComponentRole >}} under a {{< vec-class PartOccurrence >}} references the {{< vec-class RelaySpecification >}} and all structure elements underneath will be instantiated and references their corresponding part master element, too. For more information see chapter [E/E-Components]( {{< relref "ee-components" >}}).
