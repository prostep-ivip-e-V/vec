---
title: PartStructureContentType
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - PartStructureContentType
menu_name: vec-2.0.1
---
<p> OpenEnumeration that defines standard content types for the <i>PartStructureSpecification.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | part_structure |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Assembly | Definition of part / component without variance, that has a bill of material (100%). |
| ConfigurableAssembly | <p> Definition of part / component that has variance, that has a bill of material (150%).      </p> |
| Module | <p> A module /&#160;option in a customer specific or configurable harness (KSK&#160;/&#160;Stufenleitungssatz). The content of a module is normally free of variance, but does not represent a functional subset on its own. (10%)      </p> |
| Variant | A concrete variant of a harness (100%). |
| Harness | A definition of harness, containing variance (150%). |
