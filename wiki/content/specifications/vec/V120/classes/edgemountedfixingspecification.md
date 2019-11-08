---
title: EdgeMountedFixingSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specification for fixings that are mounted onto an edge.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [FixingSpecification]({{< relref "fixingspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|offset | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 |  | [FixingSpecification]({{< relref "fixingspecification.md" >}}) |
|nominalSize | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 |  | [FixingSpecification]({{< relref "fixingspecification.md" >}}) |
|edgeThickness | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <html><body><p>Defines a range of valid thicknesses, onto which the fixing can be mounted.  </p></body></html> | [EdgeMountedFixingSpecification]({{< relref "edgemountedfixingspecification.md" >}}) |

