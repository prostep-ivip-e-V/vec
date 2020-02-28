---
title: ConformanceClass
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - ConformanceClass
menu_name: vec-1.1.1
---
<p> The ConformanceClass element represents a link to a ConformanceClass to which the vec-file is compliant.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p>Specifies the name of the conformance class. </p> | [ConformanceClass]({{< relref "conformanceclass.md" >}}) |
|version | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies the version of the conformance class.      </p> | [ConformanceClass]({{< relref "conformanceclass.md" >}}) |
|url | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the URL of the conformance class where conformance class file is available. </p> | [ConformanceClass]({{< relref "conformanceclass.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [VecContent]({{< relref "veccontent.md" >}}) | 1 | compliantConformanceClass | 0..* | Specifies references to the conformance classes that apply to the VEC-file. |
