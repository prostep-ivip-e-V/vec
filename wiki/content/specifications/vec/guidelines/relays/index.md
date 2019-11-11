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
    weight: 4300

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 4300
---
{{< figure src="relays.jpg" title="Relays" numbered="true" >}}

A relay is a component for switching current loads. Unlike fuses, there are more than one input pin and one output pin (number of pins >3). Some components, referred to as relays, are in reality small controllers with up to 17 pins.

In the VEC schema a relay is a special type of an EE-Component. It also owns a *HousingComponent* with it's *PinComponents* underneath where these *HousingComponent* can be defined more detailed with a ConnectorHousingSpecification and the *PinComponents* with a referenced *TerminalSpecification*. Also the InternalComponentConnection for (potentially) connected pins are defined.

Additionally to these standard EE-Component structure the *RelaySpecification* also can contain so called *SwitchingStates.* Each state describes  an *InternalComponentConnection* as potentially existing, depending on the current switched state of the relay. In the example above the blue colored PinComponents describe the coi contact. The connection between the two pins 30 and 87 is permanently The green colored part describes the switch, whose connection *can* exist depending on the SwitchingState. So the InternalComponentConnection between the pins 85 and 86 is not permanently guaranteed.

For more information see [Switching States](  ee_components#switching_states.md).

## Instantiating relays 

Instantiating relays is like instantiating any other EE-Component. A EEComponentRole under a PartOccurrence references the RelaySpecification and all structure elements underneath will be instantiated and references their corresponding part master element, too. For more information see chapter [ee_components]( ee_components.md ).

{{% alert warning %}}
Links not Working!
{{% /alert %}}