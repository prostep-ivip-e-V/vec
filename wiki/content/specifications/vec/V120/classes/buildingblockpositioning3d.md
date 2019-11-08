---
title: BuildingBlockPositioning3D
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines the position of a BuildingBlock3D in the HarnessGeometry.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Transformation3D]({{< relref "transformation3d.md" >}}) | positioning | 0..1 | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the positioning of the building block in the harness geometry.      </p>    </body> </html>  |
| [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}) | referenced3DBuildingBlock | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the building block that is positioned.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [HarnessGeometrySpecification3D]({{< relref "harnessgeometryspecification3d.md" >}}) | 1 | buildingBlockPositionings | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the BuildingBlockPositioning3Ds that are forming the HarnessGeometrySpecification3D.      </p>    </body> </html>  |
