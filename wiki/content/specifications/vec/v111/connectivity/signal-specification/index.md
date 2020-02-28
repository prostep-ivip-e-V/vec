---
title: Signal Specification
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
  - SignalInformationType
  - SignalCurve
  - SignalTransmissionMediumType
  - SignalForm
  - InsulationSpecification
  - ConductorSpecification
  - Signal
  - SignalSpecification
menu:
  VEC-1.1.1:    
    parent: connectivity
    identifier: connectivity/signal-specification
    weight: 1006001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006001
---
{{< svgfigure src="signal-specification.png" width="863" height="502" caption="Signal Specification" numbered="true" >}}
  {{< svglink relref="../../classes/signalinformationtype.md" x="652.0" y="102.0" width="132.0" height="82.0" >}}
  {{< svglink relref="../../classes/signalcurve.md" x="652.0" y="403.0" width="189.0" height="82.0" >}}
  {{< svglink relref="../../classes/signaltransmissionmediumtype.md" x="659.0" y="193.0" width="190.0" height="106.0" >}}
  {{< svglink relref="../../classes/signalform.md" x="652.0" y="312.0" width="193.0" height="82.0" >}}
  {{< svglink relref="../../classes/insulationspecification.md" x="38.0" y="15.0" width="194.0" height="139.0" >}}
  {{< svglink relref="../../classes/conductorspecification.md" x="299.0" y="16.0" width="213.0" height="163.0" >}}
  {{< svglink relref="../../classes/signal.md" x="22.0" y="270.0" width="561.0" height="127.0" >}}
  {{< svglink relref="../../classes/signalspecification.md" x="15.0" y="445.0" width="575.0" height="43.0" >}}
{{< / svgfigure >}}
<p> A <i>SignalSpecification </i>defines a set of <i>Signals</i> used in the vehicle electrical system. A <i>Signal </i>is a more general concept than <i>Nets</i>, <i>Connections</i> or <i>Wires, </i>as they are defined in the scope of a certain vehicle electrical system or a wiring harness. A <i>Signal </i>in the VEC&#160;represents a physical signal in contrast to abstract messages that are often used to define ECUs and their interfaces (e.g. in AUTOSAR). Typically the same <i>Signals </i>are used in different vehicles or different sections of a wiring harness. A <i>Signal </i>can define various properties e.g. the <i>SignalType</i> or the <i>SignalForm</i>. Furthermore a <i>Signal </i>can define a recommended <i>ConductorSpecification</i> and a recommended <i>InsulationSpecification. </i>This mechanism can be used for example to provide information about the recommended color coding of a certain <i>Signal</i>, regardless of the vehicle electrical system or wiring harness section where it is implemented.      </p>