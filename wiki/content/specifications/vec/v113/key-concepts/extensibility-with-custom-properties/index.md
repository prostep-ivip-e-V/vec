---
title: Extensibility with Custom Properties
toc: false
type: specs
layout: diagram
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Diagram
classes:
  - ValueRangeProperty
  - SimpleValueProperty
  - CustomProperty
  - NumericalValueProperty
  - LocalizedStringProperty
  - BooleanValueProperty
  - DateValueProperty
  - DoubleValueProperty
  - IntegerValueProperty
  - ExtendableElement
menu:
  VEC-1.1.3:    
    parent: key-concepts
    identifier: key-concepts/extensibility-with-custom-properties
    weight: 1001004 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001004
---
{{< svgfigure src="extensibility-with-custom-properties.png" width="708" height="392" caption="Extensibility with Custom Properties" numbered="true" >}}
  {{< svglink relref="../../classes/valuerangeproperty.md" x="323.0" y="245.0" width="130.0" height="55.0" >}}
  {{< svglink relref="../../classes/simplevalueproperty.md" x="176.0" y="245.0" width="130.0" height="55.0" >}}
  {{< svglink relref="../../classes/customproperty.md" x="183.0" y="126.0" width="131.0" height="55.0" >}}
  {{< svglink relref="../../classes/numericalvalueproperty.md" x="15.0" y="245.0" width="142.0" height="55.0" >}}
  {{< svglink relref="../../classes/localizedstringproperty.md" x="470.0" y="245.0" width="147.0" height="55.0" >}}
  {{< svglink relref="../../classes/booleanvalueproperty.md" x="57.0" y="322.0" width="147.0" height="55.0" >}}
  {{< svglink relref="../../classes/datevalueproperty.md" x="218.0" y="322.0" width="147.0" height="55.0" >}}
  {{< svglink relref="../../classes/doublevalueproperty.md" x="386.0" y="322.0" width="147.0" height="55.0" >}}
  {{< svglink relref="../../classes/integervalueproperty.md" x="547.0" y="322.0" width="147.0" height="55.0" >}}
  {{< svglink relref="../../classes/extendableelement.md" x="141.0" y="14.0" width="197.0" height="43.0" >}}
{{< / svgfigure >}}
<p> <i>CustomProperties</i> have been introduced to the VEC as the dedicated extension mechanism. In this way, all classes that are derived subclasses from the <i>ExtendableElement</i> class are extendable having the principal possibility to define various <i>CustomProperties</i>. So <i>CustomProperties</i> make it possible to express and transport almost every piece of data in an embedded way for which the VEC does not define a different means of expression.     </p>      <p> Note: According to this data format specification it is strictly forbidden to store data within <i>CustomProperties</i> for which the VEC knows a special predefined way of expression. VEC-Files that do not obey to this rule are not compliant to this data format specification.     </p>      <p> Note: In contrast to the KOMP-model the VEC model specifies the <i>CustomProperty</i> concept by the four classes <i>SimpleValueProperty</i>, <i>LocalizedStringProperty</i>, <i>NumericalValueProperty</i> and <i>ValueRangeProperty</i>. This improves the definition of extensions providing means to express data values not only as <i>String</i> but also as typed data fields.     </p>      <p> Note: Please refer to the detailed class description for information about which elements inherit from <i>ExtendableElement.</i>      </p>