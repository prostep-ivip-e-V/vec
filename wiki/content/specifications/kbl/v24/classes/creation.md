---
title: Creation
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Creation
menu_name: kbl-2.4
---
<p>A Creation assigns creation information to a Module or Harness.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Name | [String]({{< relref "string.md" >}}) | 1 | <p>The name specifies the name of the creator.</p> | [Creation]({{< relref "creation.md" >}}) |
|Department | [String]({{< relref "string.md" >}}) | 1 | <p>The department specifies the department the creator belongs to.</p> | [Creation]({{< relref "creation.md" >}}) |
|Date | [String]({{< relref "string.md" >}}) | 1 | <p>The date specifies the creation date.</p> | [Creation]({{< relref "creation.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Part_with_title_block]({{< relref "part_with_title_block.md" >}}) | Is_applied_to | 1..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | Creation | 0..* |  |
