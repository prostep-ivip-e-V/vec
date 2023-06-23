---
title: NodeType
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - NodeType
menu_name: vec-2.0.2
---
<p> Enumeration for the definition of the type of a TopologyNode.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| EndNode | <p> Electrical components are normally placed on an EndNode.      </p> |
| Junction | <p>A Junction is a TopologyNode where no electrical component is placed.  </p> |
| Inliner | <p>An Inliner is a TopologyNode where one section of the electrical system is connected to another section. </p> |
