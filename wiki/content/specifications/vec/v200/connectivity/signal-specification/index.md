---
title: Signal Specification
toc: false
type: specs
layout: diagram
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Diagram
classes:
  - CurrentType
  - SignalInformationType
  - SignalType
  - NominalVoltage
  - SignalCurve
  - SignalTransmissionMediumType
  - SignalForm
  - ConductorSpecification
  - WireTupleSpecification
  - InsulationSpecification
  - SignalSubType
  - NetType
  - Signal
  - SignalSpecification
menu:
  VEC-2.0.0-rc1:    
    parent: connectivity
    identifier: connectivity/signal-specification
    weight: 1010001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1010001
---
{{< svgfigure src="signal-specification.png" width="932" height="877" caption="Signal Specification" numbered="true" >}}
  {{< svglink relref="../../classes/currenttype.md" x="449.0" y="631.0" width="111.0" height="106.0" >}}
  {{< svglink relref="../../classes/signalinformationtype.md" x="575.0" y="185.0" width="132.0" height="82.0" >}}
  {{< svglink relref="../../classes/signaltype.md" x="596.0" y="631.0" width="138.0" height="94.0" >}}
  {{< svglink relref="../../classes/nominalvoltage.md" x="148.0" y="631.0" width="138.0" height="166.0" >}}
  {{< svglink relref="../../classes/signalcurve.md" x="729.0" y="395.0" width="189.0" height="82.0" >}}
  {{< svglink relref="../../classes/signaltransmissionmediumtype.md" x="722.0" y="141.0" width="190.0" height="142.0" >}}
  {{< svglink relref="../../classes/signalform.md" x="715.0" y="297.0" width="193.0" height="82.0" >}}
  {{< svglink relref="../../classes/conductorspecification.md" x="341.0" y="183.0" width="213.0" height="163.0" >}}
  {{< svglink relref="../../classes/wiretuplespecification.md" x="15.0" y="29.0" width="262.0" height="91.0" >}}
  {{< svglink relref="../../classes/insulationspecification.md" x="52.0" y="182.0" width="278.0" height="163.0" >}}
  {{< svglink relref="../../classes/signalsubtype.md" x="743.0" y="493.0" width="138.0" height="310.0" >}}
  {{< svglink relref="../../classes/nettype.md" x="442.0" y="15.0" width="456.0" height="115.0" >}}
  {{< svglink relref="../../classes/signal.md" x="141.0" y="402.0" width="561.0" height="211.0" >}}
  {{< svglink relref="../../classes/signalspecification.md" x="141.0" y="820.0" width="575.0" height="43.0" >}}
{{< / svgfigure >}}
<p> A <i>SignalSpecification </i>defines a set of <i>Signals</i> used in the vehicle electrical system. A <i>Signal </i>is a more general concept than <i>Nets</i>, <i>Connections</i> or <i>Wires, </i>as they are defined in the scope of a certain vehicle electrical system or a wiring harness. A <i>Signal </i>in the VEC&#160;represents a physical signal in contrast to abstract messages that are often used to define ECUs and their interfaces (e.g. in AUTOSAR). Typically, the same <i>Signals </i>are used in different vehicles or different sections of a wiring harness. A <i>Signal </i>can define various properties e.g. the <i>SignalType</i> or the <i>SignalForm</i>. Furthermore, a <i>Signal </i>can define a recommended <i>ConductorSpecification</i> and a recommended <i>InsulationSpecification. </i>This mechanism can be used for example to provide information about the recommended color coding of a certain <i>Signal</i>, regardless of the vehicle electrical system or wiring harness section where it is implemented.      </p>