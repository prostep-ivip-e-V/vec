---
title: NetSpecification
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - NetSpecification
menu_name: vec-1.1.3
---
<p>Specification for the description of electrological nets.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | net |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [NetType]({{< relref "nettype.md" >}}) | netType | 0..* | 1 |  |
| [NetworkNode]({{< relref "networknode.md" >}}) | networkNode | 0..* | 1 | Specifies the NetWorkNodes defined in the NetSpecification. |
| [NetGroup]({{< relref "netgroup.md" >}}) | netGroup | 0..* | 1 | Specifies the NetGroup defined in the NetSpecification. |
| [Net]({{< relref "net.md" >}}) | net | 0..* | 1 | Specifies the Nets defined in the NetSpecification. |
