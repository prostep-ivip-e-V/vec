---
title: CustomProperty
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - CustomProperty
menu_name: vec-2.0.1
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
|propertyType| [String]({{< relref "string.md" >}}) | 1 |  | [CustomProperty]({{< relref "customproperty.md" >}}) |


##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>customProperty</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "complexproperty.md" >}}">ComplexProperty</a></td>
        <td>1</td>
        <td><p> The customProperties that represent the individual values of the complex property.      </p></td>
    </tr>
    <tr>
        <td>customProperty</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "extendableelement.md" >}}">ExtendableElement</a></td>
        <td>1</td>
        <td>Specifies the CustomProperties of the ExtendableElement.</td>
    </tr>
    </tbody>
</table>



