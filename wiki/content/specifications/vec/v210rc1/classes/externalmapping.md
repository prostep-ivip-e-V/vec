---
title: ExternalMapping
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ExternalMapping
menu_name: vec-2.1.0
---
<p> An <i>ExternalMapping </i>is used to relate an <i>ExtendableElement </i>in the VEC with an element located in an external data source. The element in the VEC&#160;is referenced by the <i>mappedElement</i>, the external element is identified by the attribute <i>externalReference.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | external_mapping |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|externalReference| [String]({{< relref "string.md" >}}) | 1 | <p> Defines the unique key of the external element. How this key shall be interpreted is dependent from the format of the external data source.      </p> | [ExternalMapping]({{< relref "externalmapping.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>mappedElement</td>
        <td><a href="{{< relref "extendableelement.md" >}}">ExtendableElement</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>

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
        <td>mappings</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "externalmappingspecification.md" >}}">ExternalMappingSpecification</a></td>
        <td>1</td>
        <td><p> Specifies the mappings of individual element.      </p></td>
    </tr>
    </tbody>
</table>



