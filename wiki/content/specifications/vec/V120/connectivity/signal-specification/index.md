---
title: Signal Specification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: connectivity/signal-specification    
    parent: connectivity
    weight: 1006001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006001
---
{{< svgfigure src="signal-specification.png" width="811" height="863" caption="Signal Specification" numbered="true" >}}
  {{< svglink relref="../../classes/signalinformationtype.md" x="454.0" y="171.0" width="132.0" height="82.0" >}}
  {{< svglink relref="../../classes/signaltype.md" x="440.0" y="610.0" width="138.0" height="94.0" >}}
  {{< svglink relref="../../classes/nominalvoltage.md" x="34.0" y="605.0" width="138.0" height="166.0" >}}
  {{< svglink relref="../../classes/signalcurve.md" x="608.0" y="381.0" width="189.0" height="82.0" >}}
  {{< svglink relref="../../classes/signaltransmissionmediumtype.md" x="594.0" y="171.0" width="190.0" height="106.0" >}}
  {{< svglink relref="../../classes/signalform.md" x="594.0" y="283.0" width="193.0" height="82.0" >}}
  {{< svglink relref="../../classes/insulationspecification.md" x="15.0" y="189.0" width="194.0" height="139.0" >}}
  {{< svglink relref="../../classes/conductorspecification.md" x="220.0" y="169.0" width="213.0" height="163.0" >}}
  {{< svglink relref="../../classes/signalsubtype.md" x="622.0" y="479.0" width="138.0" height="250.0" >}}
  {{< svglink relref="../../classes/nettype.md" x="111.0" y="15.0" width="456.0" height="103.0" >}}
  {{< svglink relref="../../classes/signal.md" x="20.0" y="388.0" width="561.0" height="199.0" >}}
  {{< svglink relref="../../classes/signalspecification.md" x="20.0" y="806.0" width="575.0" height="43.0" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> A <i>SignalSpecification </i>defines a set of <i>Signals</i> used in the vehicle electrical system. A <i>Signal </i>is a more general concept than <i>Nets</i>, <i>Connections</i> or <i>Wires, </i>as they are defined in the scope of a certain vehicle electrical system or a wiring harness. A <i>Signal </i>in the VEC&#160;represents a physical signal in contrast to abstract messages that are often used to define ECUs and their interfaces (e.g. in AUTOSAR). Typically the same <i>Signals </i>are used in different vehicles or different sections of a wiring harness. A <i>Signal </i>can define various properties e.g. the <i>SignalType</i> or the <i>SignalForm</i>. Furthermore a <i>Signal </i>can define a recommended <i>ConductorSpecification</i> and a recommended <i>InsulationSpecification. </i>This mechanism can be used for example to provide information about the recommended color coding of a certain <i>Signal</i>, regardless of the vehicle electrical system or wiring harness section where it is implemented.      </p>    </body> </html> 
