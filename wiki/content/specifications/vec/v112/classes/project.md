---
title: Project
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - Project
menu_name: vec-1.1.2
---
<p> Specifies a certain development project. Instances of this class are assumed to be constant. Thus this is located directly under VEC-root element.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  | [constant]({{< relref "constant.md" >}})<br/>  |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|carClassificationLevel2 | [String]({{< relref "string.md" >}}) | 0..1 | <p> Provides a classification according to &quot;CC8 Recommended Practices Specification and Configuration, Product Structures&quot;. Car classification is the identification of a set of similar cars to be offered to the market. Level 2 stands for &quot;Technical information / platform&quot; and reflects the level of a product class in a BoM system which represents a main technical product base (e.g. project, platform, engineering series etc.). In some cases this level carries a complete BoM (&quot;Maximum BoM&quot;) for a project, platform, engineering series etc. This level is in some cases called technical documentation.      </p> | [Project]({{< relref "project.md" >}}) |
|carClassificationLevel3 | [String]({{< relref "string.md" >}}) | 0..1 | <p> Provides a classification according to &quot;CC8 Recommended Practices Specification and Configuration, Product Structures&quot;. Car classification is the identification of a set of similar cars to be offered to the market. Level 3 stands for &quot;Configuration information / product family&quot; where all variant control mechanism are attached.      </p> | [Project]({{< relref "project.md" >}}) |
|carClassificationLevel4 | [String]({{< relref "string.md" >}}) | 0..1 | <p> Provides a classification according to &quot;CC8 Recommended Practices Specification and Configuration, Product Structures&quot;. Car classification is the identification of a set of similar cars to be offered to the market. Level 4 stands for &quot;Furthest pre-configured abstract product class&quot; and represents the furthest configured class of a product, which is not yet a real product. E.g. this could be a complete vehicle, engine, gear-box etc. which has not been evaluated against customer special choices or an abstract vehicle, engine, gear-box etc. which could become a real one after the associated BoM is evaluated. The purpose of this level of a product class instance is in any case to reflect that level of product class of a BoM system which leads to the individual BoM for a single product.      </p> | [Project]({{< relref "project.md" >}}) |
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the development order number (car or engine project) </p> | [Project]({{< relref "project.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional information about the item. </p> | [Project]({{< relref "project.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PartVersion]({{< relref "partversion.md" >}}) | 0..* | project | 0..1 | References the project that develops the PartVersion. |
| [UsageConstraint]({{< relref "usageconstraint.md" >}}) | 0..* | project | 0..* | <p> References the <i>Projects</i> to which the <i>UsageConstraint</i> applies. This means the described PartVersion is allowed / denied in the referenced UsageConstraint.      </p> |
| [VecContent]({{< relref "veccontent.md" >}}) | 1 | project | 0..* | Specifies the Projects used in the VEC-file. |
| [UsageNode]({{< relref "usagenode.md" >}}) | 0..* | usedInProject | 0..* | <p> Specifies the <i>Projects</i> in which the <i>UsageNode</i> can be used.      </p> |
