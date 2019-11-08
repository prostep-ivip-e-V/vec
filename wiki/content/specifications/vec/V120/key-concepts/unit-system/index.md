---
title: Unit System
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: key-concepts/unit-system    
    parent: key-concepts
    weight: 1001002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001002
---
{{< svgfigure src="unit-system.png" width="1247" height="800" caption="Unit System" numbered="true" >}}
  {{< svglink relref="../classes/customunit.md" x="938.0" y="358.0" width="139.0" height="55.0" >}}
  {{< svglink relref="../classes/compositeunit.md" x="1085.0" y="358.0" width="139.0" height="43.0" >}}
  {{< svglink relref="../classes/otherunitname.md" x="168.0" y="428.0" width="139.0" height="82.0" >}}
  {{< svglink relref="../classes/iecunitname.md" x="350.0" y="589.0" width="139.0" height="86.0" >}}
  {{< svglink relref="../classes/siprefix.md" x="7.0" y="428.0" width="139.0" height="128.0" >}}
  {{< svglink relref="../classes/valuewithunit.md" x="175.0" y="134.0" width="139.0" height="43.0" >}}
  {{< svglink relref="../classes/valuerange.md" x="49.0" y="15.0" width="139.0" height="67.0" >}}
  {{< svglink relref="../classes/unit.md" x="175.0" y="218.0" width="139.0" height="70.0" >}}
  {{< svglink relref="../classes/siunitname.md" x="7.0" y="561.0" width="139.0" height="140.0" >}}
  {{< svglink relref="../classes/siunit.md" x="6.0" y="353.0" width="145.0" height="67.0" >}}
  {{< svglink relref="../classes/tolerance.md" x="560.0" y="15.0" width="146.0" height="67.0" >}}
  {{< svglink relref="../classes/numericalvalue.md" x="322.0" y="15.0" width="151.0" height="55.0" >}}
  {{< svglink relref="../classes/iecprefix.md" x="350.0" y="428.0" width="139.0" height="154.0" >}}
  {{< svglink relref="../classes/iecunit.md" x="350.0" y="356.0" width="157.0" height="67.0" >}}
  {{< svglink relref="../classes/otherunit.md" x="161.0" y="356.0" width="180.0" height="55.0" >}}
  {{< svglink relref="../classes/imperialunit.md" x="512.0" y="357.0" width="200.0" height="55.0" >}}
  {{< svglink relref="../classes/usunit.md" x="721.0" y="358.0" width="200.0" height="55.0" >}}
  {{< svglink relref="../classes/imperialunitname.md" x="518.0" y="421.0" width="139.0" height="358.0" >}}
  {{< svglink relref="../classes/usunitname.md" x="728.0" y="428.0" width="139.0" height="358.0" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> With Version 1.1.0 a more flexible and meaningful unit system has been introduced. A unit is used to define the dimension of a numerical value. In the VEC a unit is expressed by the abstract class <i>Unit</i>. The different existing types of units are represented by its concrete subclasses. Every unit can have an optional exponent. If no exponent is defined, this is equal to an exponent of 1.     </p>      <p> The class <i>SIUnit</i> defines a unit in the terms of the SI-System. A <i>SIUnit</i> is defined by a combination of an optional <i>SiPrefix</i> (e.g. Milli) and <i>SIUnitName</i> (e.g. Metre).     </p>      <p> The class <i>IECUnit</i> defines a unit in the terms of the IEC-System which is used for measurement of digital data amounts.     </p>      <p> The class <i>ImperialUnit</i> defines a unit in the terms of the imperial unit system (e.g. Inch).     </p>      <p> The class <i>OtherUnit</i> is used to define units that do not belong to any standardized unit system, but which are relevant in the context of the VEC. Currently these are the units Pi (as a unit for angular frequency or circular measure) and Piece.     </p>      <p> The class <i>CustomUnit</i> can be used to define units that are necessary for a specific use case and that are currently not considered in the VEC.     </p>      <p> The class <i>CompositeUnit</i> is used to define units that are created by the multiplication of other units (Association <i>CompositeUnit.factors</i>). For example the Unit &quot;Ohm per Metre&quot; will be created with two instances of <i>SIUnit</i>. One <i>SIUnit</i> <i>Ohm</i> (without prefix and <i>exponent</i>)&#160;and one <i>SIUnit</i> Metre (without prefix and an <i>exponent</i> of &quot;-1&quot;).     </p>      <p> Mainly these <i>Units</i> are used by the class <i>ValueWithUnit</i> which can be either a <i>ValueRange</i> or a <i>NumericalValue</i>. A <i>ValueRange</i> defines a range of a value between <i>minimum</i> and <i>maximum.</i> A <i>NumericalValue </i>defines a single value with an optional <i>Tolerance.</i>     </p>      <p> Note: For the purpose of clarity, not all literals of all enumerations are displayed. If literals are omitted in the graphical representation a &quot;...&quot; is shown.      </p>    </body> </html> 
