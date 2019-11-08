---
title: CavityAddOn
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specifies the wire addon needed to reach a <i>Cavity</i> from a specific <i>SegmentConnectionPoint</i>. For each <i>SegmentConnectionPoint</i> there shall be no more than one add-on value per cavity and type.      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|wireAddOn | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the wire length add on needed for the cavity.      </p>    </body> </html>  | [CavityAddOn]({{< relref "cavityaddon.md" >}}) |
|type | [WireAddOnType]({{< relref "wireaddontype.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Defines the type of the add-on (see <i>CavityAddOn</i>).      </p>  </body> </html> | [CavityAddOn]({{< relref "cavityaddon.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cavity]({{< relref "cavity.md" >}}) | cavity | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SegmentConnectionPoint]({{< relref "segmentconnectionpoint.md" >}}) | 1 | cavityAddOns | 0..* |  |
