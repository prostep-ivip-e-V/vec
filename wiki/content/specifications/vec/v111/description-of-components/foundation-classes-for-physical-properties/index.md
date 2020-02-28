---
title: Foundation Classes for Physical Properties
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
  - PowerConsumption
  - ValueDetermination
  - Size
  - AbrasionResistanceClass
  - SoundDampingClass
  - Material
  - Color
  - RobustnessProperties
  - TemperatureInformation
  - SealingClass
  - MassInformation
menu:
  VEC-1.1.1:    
    parent: description-of-components
    identifier: description-of-components/foundation-classes-for-physical-properties
    weight: 1003001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003001
---
{{< svgfigure src="foundation-classes-for-physical-properties.png" width="526" height="565" caption="Foundation Classes for Physical Properties" numbered="true" >}}
  {{< svglink relref="../../classes/powerconsumption.md" x="57.0" y="484.0" width="124.0" height="67.0" >}}
  {{< svglink relref="../../classes/valuedetermination.md" x="334.0" y="15.0" width="139.0" height="94.0" >}}
  {{< svglink relref="../../classes/size.md" x="60.0" y="411.0" width="142.0" height="67.0" >}}
  {{< svglink relref="../../classes/abrasionresistanceclass.md" x="56.0" y="231.0" width="150.0" height="67.0" >}}
  {{< svglink relref="../../classes/sounddampingclass.md" x="329.0" y="414.0" width="150.0" height="67.0" >}}
  {{< svglink relref="../../classes/material.md" x="316.0" y="123.0" width="175.0" height="79.0" >}}
  {{< svglink relref="../../classes/color.md" x="316.0" y="216.0" width="175.0" height="79.0" >}}
  {{< svglink relref="../../classes/robustnessproperties.md" x="41.0" y="105.0" width="179.0" height="103.0" >}}
  {{< svglink relref="../../classes/temperatureinformation.md" x="32.0" y="321.0" width="198.0" height="67.0" >}}
  {{< svglink relref="../../classes/sealingclass.md" x="295.0" y="309.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/massinformation.md" x="15.0" y="15.0" width="231.0" height="67.0" >}}
{{< / svgfigure >}}
<p> The diagram displays the common foundation classes necessary for the description of physical properties of a part (e.g. material, mass and size). Most of these classes either define a type of their value (e.g. <i>TemperatureInformation.temperatureType</i>) or a reference system (e.g. <i>Color.referenceSystem</i>). In these cases attributes of these types normally have the multiplicity of [0..*] in order to define different values for different types (e.g. environment temperature, storage temperature, operating temperature) or to define the same value in different references systems (e.g. the same color in RAL, RGB or a company specific value).      </p>