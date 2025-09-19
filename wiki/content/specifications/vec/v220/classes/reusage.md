---
title: Reusage
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - Reusage
menu_name: vec-2.2.0
---
A&#160;<i>Reusage</i> defines a link for of information reuse between model elements that are reused in a different context. The source of information (<i>template</i>)&#160;and the destination (<i>usage</i>) shall have the same type (VEC&#160;model class). For more information see Chapter &quot;Information&#160;Reuse&quot;.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | reusage |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

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
        <td>template</td>
        <td><a href="{{< relref "extendableelement.md" >}}">ExtendableElement</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>The <i>template </i>references a model element that is used as &quot;source&quot; of information.</td>
    </tr>
    <tr>
        <td>usage</td>
        <td><a href="{{< relref "extendableelement.md" >}}">ExtendableElement</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>The <i>usage</i> references a model element that is the reuse of the <i>template.</i> The types of elements referenced by <i>usage</i> and <i>template</i> shall be the same.</td>
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
        <td>reusage</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "reusagespecification.md" >}}">ReusageSpecification</a></td>
        <td>1</td>
        <td>The <i>Reusages </i>that define the actual mapping between information source and</td>
    </tr>
    </tbody>
</table>



