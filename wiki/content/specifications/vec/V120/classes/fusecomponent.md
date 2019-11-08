---
title: FuseComponent
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Identification of the FuseComponent, which must be distinct for all FuseComponents of an MultiFuseSpecification.      </p>    </body> </html>  | [FuseComponent]({{< relref "fusecomponent.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PinComponent]({{< relref "pincomponent.md" >}}) | connectedPins | 0..2 | 0..* |  |
| [FuseSpecification]({{< relref "fusespecification.md" >}}) | fuseSpecification | 0..1 |  |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MultiFuseSpecification]({{< relref "multifusespecification.md" >}}) | 1 | fuseComponents | 0..* |  |
