---
title: PartNumberType
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - PartNumberType
menu_name: vec-2.2.0
---
Specifies the classification of a part number associated, indicating its semantic role within the BOM&#160;methodology of the issuing process. This enables the distinction between different types of part numbers, such as those referencing actual physical parts and those used to represent virtual constructs or implementation logic. In some cases, positions in the bill of material are created to express specific aspects of the product structure, even though they do not (directly) refer to a concrete part.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| RealPart | <p> The part number identifies a physically existing part. It uniquely refers to a concrete, realizable item in the finished product.&#160;      </p> |
| VirtualPart | The part number identifies a virtual part, which is used for structuring or modeling purposes. It does not refer to a physically existing component in the final product. |
| TablePart | The part number identifies a table or list of possible part numbers. A specific real part must be selected from this table during subsequent steps of the development or configuration process (e.g. an <span class="Y2IQFc" lang="en">appropriate ring terminal for a specific configuration of a harness). </span> |
| ImplementationRegulation | The part number refers to a rule or instruction that governs how a part or system must be implemented. It does not directly identify a physical or virtual part but rather describes a processing step, constraints or requirements (e.g. an ultra-sonic splice). |
