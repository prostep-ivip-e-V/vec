---
title: Project
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specifies a certain vehicle project. Instances of this class are assumed to be constant. Thus this is located directly under VEC-root element.     </p>      <p> A vehicle project can be some abstract or concrete node in the product structure, addressed by the car classification levels.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  | [constant]({{< relref "constant.md" >}})<br/>  |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Lifecycle Information]({{< relref "../pdm-information/lifecycle-information" >}})<br/> [Usage Constraints]({{< relref "../key-concepts/usage-constraints" >}})<br/> [Usage Node]({{< relref "../key-concepts/usage-node" >}})<br/> [Variants]({{< relref "../key-concepts/variants" >}})<br/> [VEC-Root]({{< relref "../xml-representation-of-the-model/vec-root" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|carClassificationLevel2 | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Provides a classification according to &quot;CC8 Recommended Practices Specification and Configuration, Product Structures&quot;. Car classification is the identification of a set of similar cars to be offered to the market. Level 2 stands for &quot;Technical information / platform&quot; and reflects the level of a product class in a BoM system which represents a main technical product base (e.g. project, platform, engineering series etc.). In some cases this level carries a complete BoM (&quot;Maximum BoM&quot;) for a project, platform, engineering series etc. This level is in some cases called technical documentation.      </p>    </body> </html>  | [Project]({{< relref "project.md" >}}) |
|carClassificationLevel3 | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Provides a classification according to &quot;CC8 Recommended Practices Specification and Configuration, Product Structures&quot;. Car classification is the identification of a set of similar cars to be offered to the market. Level 3 stands for &quot;Configuration information / product family&quot; where all variant control mechanism are attached.      </p>    </body> </html>  | [Project]({{< relref "project.md" >}}) |
|carClassificationLevel4 | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Provides a classification according to &quot;CC8 Recommended Practices Specification and Configuration, Product Structures&quot;. Car classification is the identification of a set of similar cars to be offered to the market. Level 4 stands for &quot;Furthest pre-configured abstract product class&quot; and represents the furthest configured class of a product, which is not yet a real product. E.g. this could be a complete vehicle, engine, gear-box etc. which has not been evaluated against customer special choices or an abstract vehicle, engine, gear-box etc. which could become a real one after the associated BoM is evaluated. The purpose of this level of a product class instance is in any case to reflect that level of product class of a BoM system which leads to the individual BoM for a single product.      </p>    </body> </html>  | [Project]({{< relref "project.md" >}}) |
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies the development order number (car or engine project) </p></body></html> | [Project]({{< relref "project.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>Room for additional information about the item. </p></body></html> | [Project]({{< relref "project.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PartVersion]({{< relref "partversion.md" >}}) | 0..* | project | 0..1 | References the project that develops the PartVersion.   |
| [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |  | project | 0..* | <html>   <head>     </head>   <body>     <p> &#160;Defines the projects for which the application constraint applies.      </p>  </body> </html> |
| [UsageConstraint]({{< relref "usageconstraint.md" >}}) | 0..* | project | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>Projects</i> to which the <i>UsageConstraint</i> applies. This means the described PartVersion is allowed / denied in the referenced UsageConstraint.      </p>    </body> </html>  |
| [VecContent]({{< relref "veccontent.md" >}}) | 1 | project | 0..* | Specifies the Projects used in the VEC-file.   |
| [UsageNode]({{< relref "usagenode.md" >}}) | 0..* | usedInProject | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>Projects</i> in which the <i>UsageNode</i> can be used.      </p>    </body> </html>  |
