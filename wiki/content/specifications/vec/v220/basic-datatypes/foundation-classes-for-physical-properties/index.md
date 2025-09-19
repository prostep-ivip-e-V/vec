---
title: Foundation Classes for Physical Properties
toc: false
type: specs
layout: diagram
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
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
  VEC-2.2.0:    
    parent: basic-datatypes
    identifier: basic-datatypes/foundation-classes-for-physical-properties
    weight: 1002006 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1002006
---
{{< svgfigure src="foundation-classes-for-physical-properties.png" width="1023" height="520" caption="Foundation Classes for Physical Properties" numbered="true" >}}
  {{< svglink relref="../../classes/valuedetermination.md" x="252.0" y="14.0" width="139.0" height="94.0" >}}
  {{< svglink relref="../../classes/robustnessclass.md" x="651.0" y="154.0" width="139.0" height="118.0" >}}
  {{< svglink relref="../../classes/size.md" x="833.0" y="126.0" width="142.0" height="82.0" >}}
  {{< svglink relref="../../classes/sounddampingclass.md" x="826.0" y="245.0" width="150.0" height="82.0" >}}
  {{< svglink relref="../../classes/temperaturetype.md" x="434.0" y="399.0" width="158.0" height="106.0" >}}
  {{< svglink relref="../../classes/material.md" x="833.0" y="14.0" width="175.0" height="94.0" >}}
  {{< svglink relref="../../classes/robustnessclassreferencesystem.md" x="434.0" y="154.0" width="205.0" height="130.0" >}}
  {{< svglink relref="../../classes/massinformationsource.md" x="182.0" y="119.0" width="209.0" height="94.0" >}}
  {{< svglink relref="../../classes/colorreferencesystem.md" x="14.0" y="392.0" width="209.0" height="94.0" >}}
  {{< svglink relref="../../classes/temperatureinformation.md" x="441.0" y="301.0" width="217.0" height="82.0" >}}
  {{< svglink relref="../../classes/massinformation.md" x="14.0" y="14.0" width="231.0" height="94.0" >}}
  {{< svglink relref="../../classes/color.md" x="28.0" y="259.0" width="234.0" height="94.0" >}}
  {{< svglink relref="../../classes/robustnessproperties.md" x="434.0" y="14.0" width="323.0" height="118.0" >}}
{{< / svgfigure >}}
<p> The diagram displays the common foundation classes necessary for the description of physical properties of a part (e.g. material, mass and size). Most of these classes either define a type of their value (e.g. <i>TemperatureInformation.temperatureType</i>) or a reference system (e.g. <i>Color.referenceSystem</i>). In these cases attributes of these types normally have the multiplicity of [0..*] in order to define different values for different types (e.g. environment temperature, storage temperature, operating temperature) or to define the same value in different references systems (e.g. the same color in RAL, RGB or a company specific value).      </p>