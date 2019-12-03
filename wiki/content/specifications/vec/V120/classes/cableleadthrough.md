---
title: CableLeadThrough
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A CableLeadThrough specifies a hole in the grommet through which wires can pass through the grommet.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Fixings, Grommets and CableDucts]({{< relref "../description-of-components/fixings-grommets-and-cableducts" >}})<br/> [Placeable Elements]({{< relref "../description-of-components/placeable-elements" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies the identification of the CableLeadThrough. This must be unique within a GrommetSpecification.  </p></body></html> | [CableLeadThrough]({{< relref "cableleadthrough.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 0..1 | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>PlacementPoint</i> that represents this <i>CableLeadThrough</i> in a PlaceableElementSpecification.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GrommetSpecification]({{< relref "grommetspecification.md" >}}) | 1 | cableLeadThrough | 0..* | Specifies the CableLeadThroughs of the Grommet.   |
