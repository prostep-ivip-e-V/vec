---
title: External_reference
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - External_reference
menu_name: kbl-2.3.sr1
---
<p>An External_reference is a mechanism to provide information of the documents associated with the Part. Example: 3D model, form board drawings, etc.</p>
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
|Document_type | [String]({{< relref "string.md" >}}) | 1 | <p>The document_type specifies the kind of the document.  Where applicable the following values shall be used:  - 3D-Data set (wiring, construction unit) - 2D-Data set (Ltgs design, symbol, plug face) - cable connection diagram  - set of cables database (VW:  LCS-Container)  - specification of set of cables - standards, technical guidelines</p> | [External_reference]({{< relref "external_reference.md" >}}) |
|Document_number | [String]({{< relref "string.md" >}}) | 1 | <p>The document_number specifies the identifier of the document.</p> | [External_reference]({{< relref "external_reference.md" >}}) |
|Change_level | [String]({{< relref "string.md" >}}) | 1 | <p>The change_level specifies the version of the document.</p> | [External_reference]({{< relref "external_reference.md" >}}) |
|File_name | [String]({{< relref "string.md" >}}) | 0..1 | <p>The file_name specifies the name which is used to locate the file either on a computer system or in a repository of paper documents.</p> | [External_reference]({{< relref "external_reference.md" >}}) |
|Location | [String]({{< relref "string.md" >}}) | 0..1 | <p>The location specifies where a document can be found in a digital or physical data storage system.</p> | [External_reference]({{< relref "external_reference.md" >}}) |
|Data_format | [String]({{< relref "string.md" >}}) | 1 | <p>The data_format specifies the convention that was used to structure the information in the document.</p> | [External_reference]({{< relref "external_reference.md" >}}) |
|Creating_system | [String]({{< relref "string.md" >}}) | 0..1 | <p>The creating_system specifies the computer application or the machine which is used to create the document.</p> | [External_reference]({{< relref "external_reference.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | External_reference | 0..* |  |
| [Part]({{< relref "part.md" >}}) | 0..* | External_references | 0..* |  |
| [Connection]({{< relref "connection.md" >}}) | 0..* | External_references | 0..* |  |
