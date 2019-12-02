---
title: BaselineSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>BaseLineSpecification</i> defines a set of <i>ItemVersion</i>s (<i>Document-</i> and <i>PartVersions</i>) that relate to each other in a certain way e.g. all parts and documents in their specific versions that contributed to a specific manufactured result.      </p>      <p> Baselines are a standard mechanism to support change, release and configuration management.      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Baselines]({{< relref "../key-concepts/baselines" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|state | [BaselineState]({{< relref "baselinestate.md" >}}) | 0..1 | <html>   <head>     </head>   <body> Defines the state of the baseline itself (e.g. if it is finalized or work in progress).</body> </html> | [BaselineSpecification]({{< relref "baselinespecification.md" >}}) |
|content | [BaselineContent]({{< relref "baselinecontent.md" >}}) | 0..1 | <html>   <head>     </head>   <body> Defines the state of the content of the baseline in regard of its defined scope.</body> </html> | [BaselineSpecification]({{< relref "baselinespecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | validVersions | 0..* | 0..* | <html>   <head>     </head>   <body> References the <i>ItemVersions </i>that are the content of the baseline.</body> </html> |
