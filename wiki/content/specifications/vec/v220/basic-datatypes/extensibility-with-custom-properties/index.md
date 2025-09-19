---
title: Extensibility with Custom Properties
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
  - ValueRangeProperty
  - SimpleValueProperty
  - CustomProperty
  - NumericalValueProperty
  - LocalizedStringProperty
  - BooleanValueProperty
  - DateValueProperty
  - DoubleValueProperty
  - IntegerValueProperty
  - ComplexProperty
  - MultiDimensionalValueProperty
  - ExtendableElement
menu:
  VEC-2.2.0:    
    parent: basic-datatypes
    identifier: basic-datatypes/extensibility-with-custom-properties
    weight: 1002005 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1002005
---
{{< svgfigure src="extensibility-with-custom-properties.png" width="978" height="407" caption="Extensibility with Custom Properties" numbered="true" >}}
  {{< svglink relref="../../classes/valuerangeproperty.md" x="462.0" y="245.0" width="130.0" height="70.0" >}}
  {{< svglink relref="../../classes/simplevalueproperty.md" x="315.0" y="245.0" width="130.0" height="70.0" >}}
  {{< svglink relref="../../classes/customproperty.md" x="322.0" y="126.0" width="131.0" height="70.0" >}}
  {{< svglink relref="../../classes/numericalvalueproperty.md" x="154.0" y="245.0" width="142.0" height="70.0" >}}
  {{< svglink relref="../../classes/localizedstringproperty.md" x="609.0" y="245.0" width="147.0" height="70.0" >}}
  {{< svglink relref="../../classes/booleanvalueproperty.md" x="196.0" y="322.0" width="147.0" height="70.0" >}}
  {{< svglink relref="../../classes/datevalueproperty.md" x="357.0" y="322.0" width="147.0" height="70.0" >}}
  {{< svglink relref="../../classes/doublevalueproperty.md" x="525.0" y="322.0" width="147.0" height="70.0" >}}
  {{< svglink relref="../../classes/integervalueproperty.md" x="686.0" y="322.0" width="147.0" height="70.0" >}}
  {{< svglink relref="../../classes/complexproperty.md" x="770.0" y="245.0" width="147.0" height="49.0" >}}
  {{< svglink relref="../../classes/multidimensionalvalueproperty.md" x="7.0" y="322.0" width="182.0" height="70.0" >}}
  {{< svglink relref="../../classes/extendableelement.md" x="280.0" y="14.0" width="197.0" height="43.0" >}}
{{< / svgfigure >}}
<p> <i>CustomProperties</i> have been introduced to the VEC as the dedicated extension mechanism. All subclasses of <i>ExtendableElement</i> class are extendable by providing the possibility to define <i>CustomProperties</i>. <i>CustomProperties</i> allow the definition and transport of almost any piece of data in an embedded way, for which the VEC does not define a different means of expression.      </p>      <p> If a&#160;VEC&#160;entity shall be extended with multivalued property this is done by adding multiple <i>CustomProperties</i> with the same <i>propertyType.</i> In cases where a custom property value consists of a tuple of other values, a <i>ComplexProperty</i> can be used. This is especially useful, when the respective property is multivalued. An example for such a property /&#160;structure that <u>is already</u> represented in the VEC&#160;are <i>Colors</i> where each color consists of a referenceSystem and a key in that referenceSystem and each entity can have multiple colors (the same color in different reference systems).      </p>      <p> Note: According to this data format specification it is strictly forbidden to store data within <i>CustomProperties</i> for which the VEC knows a special predefined way of expression. VEC-Files that do not obey to this rule are not compliant to this data format specification.      </p>      <p> Note: Please refer to the detailed class description for information about which elements inherit from <i>ExtendableElement.</i>      </p>