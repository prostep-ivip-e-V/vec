---
title: WireGrouping
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireGrouping
menu_name: vec-2.1.0
---
<p> A <i>WireGrouping</i> is the definition of a multi core wire in its usage.&#160;The elements of a <i>WireGrouping </i>are well defined wires (e.g. with a part number). The grouping itself is only created in its concrete usage. The most common use case is the individual definition of unshielded twisted pair wires without creating the full combinatorics of every possible core / insulation / twist combination in a part master data system (and by this creating part numbers for all of them). However, there are other use cases as well.      </p>      <p> A <i>WireGrouping </i>groups the <i>relatedWireElementReferences</i> on an equal level containedWireGroupings are on a lower level. So, in order to create something like a shielded twisted pair, one <i>WireGrouping </i>&quot;A&quot; that references two <i>WireElementReferences </i>is required to represent the twisted pair and another <i>WireGrouping &quot;</i>B&quot; that contains <i>WireGrouping </i>&quot;A&quot; and references the &quot;shield wire element&quot;.      </p>      <p> &#160;The referenced <i>WireGroupSpecification</i> defines the handling of the <i>WireGrouping</i> during its assembly (e.g. twist).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the WireGrouping. The identification is guaranteed to be unique within the WireGroupingSpecification.      </p> | [WireGrouping]({{< relref "wiregrouping.md" >}}) |

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
        <td>containedWireGroupings</td>
        <td><a href="{{< relref "wiregrouping.md" >}}">WireGrouping</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td><p> References the <i>WireGroupings</i> that are contained in this <i>WireGrouping</i>.      </p></td>
    </tr>
    <tr>
        <td>relatedWireElementReference</td>
        <td><a href="{{< relref "wireelementreference.md" >}}">WireElementReference</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the concrete wire elements (<i>WireElementReference</i>) that are grouped by the WireGrouping.      </p></td>
    </tr>
    <tr>
        <td>wireGroupSpecification</td>
        <td><a href="{{< relref "wiregroupspecification.md" >}}">WireGroupSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>WireGroupSpecification</i> that applies to the <i>WireGrouping</i>.      </p></td>
    </tr>
    <tr>
        <td>connectionGroup</td>
        <td><a href="{{< relref "connectiongroup.md" >}}">ConnectionGroup</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> References the <i>ConnectionGroup</i> that is realized by this <i>WireGrouping.</i>      </p></td>
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
        <td>containedWireGroupings</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wiregrouping.md" >}}">WireGrouping</a></td>
        <td>0..1</td>
        <td><p> References the <i>WireGroupings</i> that are contained in this <i>WireGrouping</i>.      </p></td>
    </tr>
    <tr>
        <td>wireGrouping</td>
        <td>1..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wiregroupingspecification.md" >}}">WireGroupingSpecification</a></td>
        <td>0..1</td>
        <td>Specifies the WireGroupings described by the WireGroupingSpecification.</td>
    </tr>
    </tbody>
</table>



