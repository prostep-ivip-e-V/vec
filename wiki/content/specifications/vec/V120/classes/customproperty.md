---
title: CustomProperty
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - CustomProperty
menu_name: vec-1.2.0
---
<p> Abstract base class for custom properties. Basically, a custom property is key / value pair. The key (propertyType) defines the meaning of the value. A custom property can either be a simple value (string), a numerical value or a value range.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | custom_properties |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [BooleanValueProperty]({{< relref "booleanvalueproperty.md" >}}), [ComplexProperty]({{< relref "complexproperty.md" >}}), [DateValueProperty]({{< relref "datevalueproperty.md" >}}), [DoubleValueProperty]({{< relref "doublevalueproperty.md" >}}), [IntegerValueProperty]({{< relref "integervalueproperty.md" >}}), [LocalizedStringProperty]({{< relref "localizedstringproperty.md" >}}), [NumericalValueProperty]({{< relref "numericalvalueproperty.md" >}}), [SimpleValueProperty]({{< relref "simplevalueproperty.md" >}}), [ValueRangeProperty]({{< relref "valuerangeproperty.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|propertyType | [String]({{< relref "string.md" >}}) | 1 |  | [CustomProperty]({{< relref "customproperty.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ComplexProperty]({{< relref "complexproperty.md" >}}) | 1 | customProperty | 0..* | <p> The customProperties that represent the individual values of the complex property.      </p> |
| [ExtendableElement]({{< relref "extendableelement.md" >}}) | 1 | customProperty | 0..* | Specifies the CustomProperties of the ExtendableElement. |
