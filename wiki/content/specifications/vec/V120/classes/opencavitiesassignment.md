---
title: OpenCavitiesAssignment
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> An OpenCavitiesAssignment groups the cavities of ONE connector that are open in a MultiCavitySeal. If a MultiCavitySeal fits into more than one connector, than there are as many OpenCavitiesAssignments.      </p>    </body> </html> 
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

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cavity]({{< relref "cavity.md" >}}) | openCavities | 1..* | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the cavities that are open.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MultiCavitySealSpecification]({{< relref "multicavitysealspecification.md" >}}) | 1 | assignment | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>OpenCavitiesAssignments</i> that are valid for this <i>MultiCavitySeal</i>. One individual <i>OpenCavitiesAssignment </i>is used for each connector housing that matches witch this <i>MultiCavitySeal.</i>      </p>    </body> </html>  |
