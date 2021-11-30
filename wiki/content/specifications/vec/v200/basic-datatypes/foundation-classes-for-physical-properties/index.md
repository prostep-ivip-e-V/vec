---
title: Foundation Classes for Physical Properties
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
  - ValueDetermination
  - RobustnessClass
  - Size
  - SoundDampingClass
  - TemperatureType
  - Material
  - RobustnessClassReferenceSystem
  - MassInformationSource
  - ColorReferenceSystem
  - TemperatureInformation
  - MassInformation
  - Color
  - RobustnessProperties
menu:
  VEC-2.0.0-rc1:    
    parent: basic-datatypes
    identifier: basic-datatypes/foundation-classes-for-physical-properties
    weight: 1002004 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1002004
---
{{< svgfigure src="foundation-classes-for-physical-properties.png" width="679" height="828" caption="Foundation Classes for Physical Properties" numbered="true" >}}
  {{< svglink relref="../../classes/valuedetermination.md" x="309.0" y="126.0" width="139.0" height="94.0" >}}
  {{< svglink relref="../../classes/robustnessclass.md" x="407.0" y="539.0" width="139.0" height="118.0" >}}
  {{< svglink relref="../../classes/size.md" x="22.0" y="336.0" width="142.0" height="67.0" >}}
  {{< svglink relref="../../classes/sounddampingclass.md" x="22.0" y="413.0" width="150.0" height="67.0" >}}
  {{< svglink relref="../../classes/temperaturetype.md" x="260.0" y="700.0" width="158.0" height="106.0" >}}
  {{< svglink relref="../../classes/material.md" x="22.0" y="231.0" width="175.0" height="79.0" >}}
  {{< svglink relref="../../classes/robustnessclassreferencesystem.md" x="190.0" y="539.0" width="205.0" height="130.0" >}}
  {{< svglink relref="../../classes/massinformationsource.md" x="309.0" y="7.0" width="209.0" height="94.0" >}}
  {{< svglink relref="../../classes/colorreferencesystem.md" x="456.0" y="231.0" width="209.0" height="94.0" >}}
  {{< svglink relref="../../classes/temperatureinformation.md" x="29.0" y="693.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/massinformation.md" x="15.0" y="77.0" width="231.0" height="79.0" >}}
  {{< svglink relref="../../classes/color.md" x="211.0" y="231.0" width="234.0" height="79.0" >}}
  {{< svglink relref="../../classes/robustnessproperties.md" x="190.0" y="420.0" width="323.0" height="103.0" >}}
{{< / svgfigure >}}
<p> The diagram displays the common foundation classes necessary for the description of physical properties of a part (e.g. material, mass and size). Most of these classes either define a type of their value (e.g. <i>TemperatureInformation.temperatureType</i>) or a reference system (e.g. <i>Color.referenceSystem</i>). In these cases attributes of these types normally have the multiplicity of [0..*] in order to define different values for different types (e.g. environment temperature, storage temperature, operating temperature) or to define the same value in different references systems (e.g. the same color in RAL, RGB or a company specific value).      </p>