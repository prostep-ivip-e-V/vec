---
title: CavityPlugRole
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A CavityPlugRole defines the instance specific properties and relationships of a cavity plug.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p></body></html> | [Role]({{< relref "role.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CavityPlugSpecification]({{< relref "cavityplugspecification.md" >}}) | cavityPlugSpecification | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>CavityPlugSpecification </i>that is instanced by this <i>CavityPlugRole.</i>      </p>    </body> </html>  |
| [CavityReference]({{< relref "cavityreference.md" >}}) | pluggedCavityRef | 0..* | 0..* | Defines which cavity / cavities in a connector instance is sealed by the plug.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CavityMounting]({{< relref "cavitymounting.md" >}}) | 0..* | replacedPlug | 0..* | References the cavity plugs that are obsolete if the cavity mounting is realized.   |
