---
title: VariantConfigurationType
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - VariantConfigurationType
menu_name: vec-2.0.2
---
Defines an OpenEnumeration for VariantConfigurationTypes. The configuration type defines in which &quot;variant code universe&quot; the logistic control expression is defined.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | variants |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Logistic | The <i>VariantConfiguration</i> is a concrete logistic key (e.g. within a vehicle project) that used for example in order /&#160;delivery systems. |
| Technical | The <i>VariantConfiguration</i> is a technical (feature or function oriented) key normally used in a building block set. In a concrete vehicle project those keys are mapped to specific logistic keys within the project. |
