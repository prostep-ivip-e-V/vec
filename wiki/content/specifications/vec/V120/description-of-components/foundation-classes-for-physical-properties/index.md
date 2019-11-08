---
title: Foundation Classes for Physical Properties
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: description-of-components/foundation-classes-for-physical-properties    
    parent: description-of-components
    weight: 1003001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003001
---
{{< svgfigure src="foundation-classes-for-physical-properties.png" width="728" height="768" caption="Foundation Classes for Physical Properties" numbered="true" >}}
  {{< svglink relref="../classes/powerconsumption.md" x="40.0" y="422.0" width="124.0" height="67.0" >}}
  {{< svglink relref="../classes/valuedetermination.md" x="334.0" y="141.0" width="139.0" height="94.0" >}}
  {{< svglink relref="../classes/robustnessclass.md" x="239.0" y="624.0" width="139.0" height="106.0" >}}
  {{< svglink relref="../classes/size.md" x="43.0" y="349.0" width="142.0" height="67.0" >}}
  {{< svglink relref="../classes/sounddampingclass.md" x="526.0" y="526.0" width="150.0" height="67.0" >}}
  {{< svglink relref="../classes/material.md" x="316.0" y="249.0" width="175.0" height="79.0" >}}
  {{< svglink relref="../classes/temperatureinformation.md" x="15.0" y="259.0" width="198.0" height="67.0" >}}
  {{< svglink relref="../classes/robustnessclassreferencesystem.md" x="22.0" y="624.0" width="205.0" height="130.0" >}}
  {{< svglink relref="../classes/massinformationsource.md" x="309.0" y="15.0" width="209.0" height="94.0" >}}
  {{< svglink relref="../classes/colorreferencesystem.md" x="505.0" y="232.0" width="209.0" height="94.0" >}}
  {{< svglink relref="../classes/massinformation.md" x="15.0" y="85.0" width="231.0" height="79.0" >}}
  {{< svglink relref="../classes/color.md" x="316.0" y="342.0" width="234.0" height="79.0" >}}
  {{< svglink relref="../classes/robustnessproperties.md" x="22.0" y="505.0" width="323.0" height="103.0" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> The diagram displays the common foundation classes necessary for the description of physical properties of a part (e.g. material, mass and size). Most of these classes either define a type of their value (e.g. <i>TemperatureInformation.temperatureType</i>) or a reference system (e.g. <i>Color.referenceSystem</i>). In these cases attributes of these types normally have the multiplicity of [0..*] in order to define different values for different types (e.g. environment temperature, storage temperature, operating temperature) or to define the same value in different references systems (e.g. the same color in RAL, RGB or a company specific value).      </p>    </body> </html> 
