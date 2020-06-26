---
title: Part_number_type
toc: false
type: specs
date: "2020-06-25"
draft: false
specification: KBL
version: 2.5.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Part_number_type
menu_name: kbl-2.5.sr1
---
<p> Defines the type of a Part_number since part numbers are used in the process to identify different characteristics.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 2_Parts |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| real part | <p> The part number identifies a real part uniquely.      </p> |
| virtual part | <p> The part number identifies a virtual part, that does not exist in the finished product.      </p> |
| table part | <p> The part number identifies a table of part numbers from which a real part has to be selected in the further process.      </p> |
| implementation regulation | <p> The part number identifies an implementation regulation.      </p> |
