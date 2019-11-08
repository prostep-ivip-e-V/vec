---
title: SealedCavitiesAssignment
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>SealedCavitiesAssignment</i> groups the cavities of ONE connector that are sealed by a MultiCavityPlug. If a MultiCavityPlug fits into more than one connector, than there are as many <i>SealedCavitiesAssignments</i>.      </p>    </body> </html> 
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
| [Cavity]({{< relref "cavity.md" >}}) | sealedCavities | 1..* | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the Cavities that are sealed.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MultiCavityPlugSpecification]({{< relref "multicavityplugspecification.md" >}}) | 1 | assignment | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>SealedCavitiesAssignments</i> that are valid for this <i>MultiCavityPlug</i>. One individual <i>SealedCavitiesAssignment </i>is used for each connector housing that matches witch this <i>MultiCavityPlug.</i>      </p>    </body> </html>  |
