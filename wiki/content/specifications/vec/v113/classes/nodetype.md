---
title: NodeType
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - NodeType
menu_name: vec-1.1.3
---
<p> Enumeration for the definition of the type of a TopologyNode.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| EndNode | <p> Electrical components are normally placed on an EndNode.      </p> |
| Junction | <p>A Junction is a TopologyNode where no electrical component is placed.  </p> |
| Inliner | <p>An Inliner is a TopologyNode where one section of the electrical system is connected to another section. </p> |
