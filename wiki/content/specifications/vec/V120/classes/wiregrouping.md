---
title: WireGrouping
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A WireGrouping is the assignment of WireElementReferences to a WireGroupSpecification. A WireGrouping is needed if individual wire (e.g. with own part numbers) should be grouped (e.g. combined to a twisted pair) and the grouping is not have an individual part.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Wire Grouping Specification]({{< relref "../connectivity/wire-grouping-specification" >}})<br/> [Wiring Specification]({{< relref "../connectivity/wiring-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the WireGrouping. The identification is guaranteed to be unique within the WireGroupingSpecification.      </p>    </body> </html>  | [WireGrouping]({{< relref "wiregrouping.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireGroupSpecification]({{< relref "wiregroupspecification.md" >}}) | wireGroupSpecification | 1 | 0..* | References the WireGroupSpecification that applies to the WireGrouping.   |
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | relatedWireRole | 2..* | 0..* | References the concrete wire elements (WireElementReference) that are grouped by the WireGrouping.   |
| [ConnectionGroup]({{< relref "connectiongroup.md" >}}) | connectionGroup | 0..1 |  | <html>   <head>     </head>   <body> References the <i>ConnectionGroup</i> that is realized by this <i>WireGrouping.</i> </body> </html> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireGroupingSpecification]({{< relref "wiregroupingspecification.md" >}}) | 1 | wireGrouping | 1..* | Specifies the WireGroupings described by the WireGroupingSpecification.  |
