---
title: Signal Specification
toc: false
type: specs
layout: diagram
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - SignalInformationType
  - SignalType
  - NominalVoltage
  - SignalCurve
  - SignalTransmissionMediumType
  - SignalForm
  - InsulationSpecification
  - ConductorSpecification
  - SignalSubType
  - Signal
  - SignalSpecification
menu:
  VEC-1.1.2:    
    parent: connectivity
    identifier: connectivity/signal-specification
    weight: 1006001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006001
---
{{< svgfigure src="signal-specification.png" width="803" height="620" caption="Signal Specification" numbered="true" >}}
  {{< svglink relref="../../classes/signalinformationtype.md" x="456.0" y="17.0" width="132.0" height="82.0" >}}
  {{< svglink relref="../../classes/signaltype.md" x="365.0" y="409.0" width="138.0" height="94.0" >}}
  {{< svglink relref="../../classes/nominalvoltage.md" x="78.0" y="409.0" width="138.0" height="106.0" >}}
  {{< svglink relref="../../classes/signalcurve.md" x="596.0" y="227.0" width="189.0" height="82.0" >}}
  {{< svglink relref="../../classes/signaltransmissionmediumtype.md" x="596.0" y="17.0" width="190.0" height="106.0" >}}
  {{< svglink relref="../../classes/signalform.md" x="596.0" y="129.0" width="193.0" height="82.0" >}}
  {{< svglink relref="../../classes/insulationspecification.md" x="17.0" y="35.0" width="194.0" height="139.0" >}}
  {{< svglink relref="../../classes/conductorspecification.md" x="222.0" y="15.0" width="213.0" height="163.0" >}}
  {{< svglink relref="../../classes/signalsubtype.md" x="624.0" y="325.0" width="138.0" height="238.0" >}}
  {{< svglink relref="../../classes/signal.md" x="22.0" y="234.0" width="561.0" height="163.0" >}}
  {{< svglink relref="../../classes/signalspecification.md" x="15.0" y="563.0" width="575.0" height="43.0" >}}
{{< / svgfigure >}}
<p> A <i>SignalSpecification </i>defines a set of <i>Signals</i> used in the vehicle electrical system. A <i>Signal </i>is a more general concept than <i>Nets</i>, <i>Connections</i> or <i>Wires, </i>as they are defined in the scope of a certain vehicle electrical system or a wiring harness. A <i>Signal </i>in the VEC&#160;represents a physical signal in contrast to abstract messages that are often used to define ECUs and their interfaces (e.g. in AUTOSAR). Typically the same <i>Signals </i>are used in different vehicles or different sections of a wiring harness. A <i>Signal </i>can define various properties e.g. the <i>SignalType</i> or the <i>SignalForm</i>. Furthermore a <i>Signal </i>can define a recommended <i>ConductorSpecification</i> and a recommended <i>InsulationSpecification. </i>This mechanism can be used for example to provide information about the recommended color coding of a certain <i>Signal</i>, regardless of the vehicle electrical system or wiring harness section where it is implemented.      </p>