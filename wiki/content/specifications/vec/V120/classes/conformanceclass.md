---
title: ConformanceClass
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> The ConformanceClass element represents a link to a ConformanceClass to which the vec-file is compliant.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>Specifies the name of the conformance class. </p></body></html> | [ConformanceClass]({{< relref "conformanceclass.md" >}}) |
|version | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the version of the conformance class.      </p>    </body> </html>  | [ConformanceClass]({{< relref "conformanceclass.md" >}}) |
|url | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies the URL of the conformance class where conformance class file is available. </p></body></html> | [ConformanceClass]({{< relref "conformanceclass.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [VecContent]({{< relref "veccontent.md" >}}) | 1 | compliantConformanceClass | 0..* | Specifies references to the conformance classes that apply to the VEC-file.   |
