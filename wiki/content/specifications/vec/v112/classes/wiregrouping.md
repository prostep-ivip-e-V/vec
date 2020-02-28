---
title: WireGrouping
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireGrouping
menu_name: vec-1.1.2
---
<p> A WireGrouping is the assignment of WireElementReferences to a WireGroupSpecification. A WireGrouping is needed if individual wire (e.g. with own part numbers) should be grouped (e.g. combined to a twisted pair) and the grouping is not have an individual part.      </p>

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
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | relatedWireRole | 2..* | 0..* | References the concrete wire elements (WireElementReference) that are grouped by the WireGrouping. |
| [WireGroupSpecification]({{< relref "wiregroupspecification.md" >}}) | wireGroupSpecification | 1 | 0..* | References the WireGroupSpecification that applies to the WireGrouping. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireGroupingSpecification]({{< relref "wiregroupingspecification.md" >}}) | 1 | wireGrouping | 1..* | Specifies the WireGroupings described by the WireGroupingSpecification. |
