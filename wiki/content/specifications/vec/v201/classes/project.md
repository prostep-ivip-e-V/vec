---
title: Project
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - Project
menu_name: vec-2.0.1
---
<p> Specifies a certain vehicle project. Instances of this class are assumed to be constant. Thus, this is located directly under VEC-root element.      </p>      <p> A vehicle project can be some abstract or concrete node in the product structure, addressed by the car classification levels.      </p>

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
|carClassificationLevel2| [String]({{< relref "string.md" >}}) | 0..1 | <p> Provides a classification according to &quot;CC8 Recommended Practices Specification and Configuration, Product Structures&quot;. Car classification is the identification of a set of similar cars to be offered to the market. Level 2 stands for &quot;Technical information / platform&quot; and reflects the level of a product class in a BoM system which represents a main technical product base (e.g. project, platform, engineering series etc.). In some cases, this level carries a complete BoM (&quot;Maximum BoM&quot;) for a project, platform, engineering series etc. This level is in some cases called technical documentation.      </p> | [Project]({{< relref "project.md" >}}) |
|carClassificationLevel3| [String]({{< relref "string.md" >}}) | 0..1 | <p> Provides a classification according to &quot;CC8 Recommended Practices Specification and Configuration, Product Structures&quot;. Car classification is the identification of a set of similar cars to be offered to the market. Level 3 stands for &quot;Configuration information / product family&quot; where all variant control mechanisms are attached.      </p> | [Project]({{< relref "project.md" >}}) |
|carClassificationLevel4| [String]({{< relref "string.md" >}}) | 0..1 | <p> Provides a classification according to &quot;CC8 Recommended Practices Specification and Configuration, Product Structures&quot;. Car classification is the identification of a set of similar cars to be offered to the market. Level 4 stands for &quot;Furthest pre-configured abstract product class&quot; and represents the furthest configured class of a product, which is not yet a real product. E.g. this could be a complete vehicle, engine, gearbox etc. which has not been evaluated against customer special choices or an abstract vehicle, engine, gear-box etc. which could become a real one after the associated BoM is evaluated. The purpose of this level of a product class instance is in any case to reflect that level of product class of a BoM system which leads to the individual BoM for a single product.      </p> | [Project]({{< relref "project.md" >}}) |
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the development order number (car or engine project) </p> | [Project]({{< relref "project.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional information about the item. </p> | [Project]({{< relref "project.md" >}}) |


##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>project</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "veccontent.md" >}}">VecContent</a></td>
        <td>1</td>
        <td>Specifies the Projects used in the VEC-file.</td>
    </tr>
    <tr>
        <td>project</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "applicationconstraint.md" >}}">ApplicationConstraint</a></td>
        <td></td>
        <td><p> &#160;Defines the projects for which the application constraint applies.      </p></td>
    </tr>
    <tr>
        <td>project</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "partversion.md" >}}">PartVersion</a></td>
        <td>0..*</td>
        <td>References the project that develops the PartVersion.</td>
    </tr>
    <tr>
        <td>project</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "usageconstraint.md" >}}">UsageConstraint</a></td>
        <td>0..*</td>
        <td><p> References the <i>Projects</i> to which the <i>UsageConstraint</i> applies. This means the described PartVersion is allowed / denied in the referenced UsageConstraint.      </p></td>
    </tr>
    <tr>
        <td>usedInProject</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "usagenode.md" >}}">UsageNode</a></td>
        <td>0..*</td>
        <td><p> Specifies the <i>Projects</i> in which the <i>UsageNode</i> can be used.      </p></td>
    </tr>
    </tbody>
</table>



