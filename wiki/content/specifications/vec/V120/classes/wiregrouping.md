---
title: WireGrouping
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireGrouping
menu_name: vec-1.2.0
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the WireGrouping. The identification is guaranteed to be unique within the WireGroupingSpecification.      </p> | [WireGrouping]({{< relref "wiregrouping.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConnectionGroup]({{< relref "connectiongroup.md" >}}) | connectionGroup | 0..1 |  | <p> References the <i>ConnectionGroup</i> that is realized by this <i>WireGrouping.</i>      </p> |
| [WireGroupSpecification]({{< relref "wiregroupspecification.md" >}}) | wireGroupSpecification | 0..1 | 0..* | <p> References the <i>WireGroupSpecification</i> that applies to the <i>WireGrouping</i>.      </p> |
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | relatedWireElementReference | 0..* | 0..* | <p> References the concrete wire elements (<i>WireElementReference</i>) that are grouped by the WireGrouping.      </p> |
| [WireGrouping]({{< relref "wiregrouping.md" >}}) | containedWireGroupings | 0..* | 0..1 | <p> References the <i>WireGroupings</i> that are contained in this <i>WireGrouping</i>.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireGrouping]({{< relref "wiregrouping.md" >}}) | 0..1 | containedWireGroupings | 0..* | <p> References the <i>WireGroupings</i> that are contained in this <i>WireGrouping</i>.      </p> |
| [WireGroupingSpecification]({{< relref "wiregroupingspecification.md" >}}) | 0..1 | wireGrouping | 1..* | Specifies the WireGroupings described by the WireGroupingSpecification. |
