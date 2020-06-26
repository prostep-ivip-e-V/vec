---
title: External_reference
toc: false
type: specs
date: "2020-06-25"
draft: false
specification: KBL
version: 2.5.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - External_reference
menu_name: kbl-2.5.sr1
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
|Document_type | [Document_type]({{< relref "document_type.md" >}}) | 1 | <p>The document_type specifies the kind of the document.  Where applicable the following values shall be used:  - 3D-Data set (wiring, construction unit) - 2D-Data set (Ltgs design, symbol, plug face) - cable connection diagram  - set of cables database (VW:  LCS-Container)  - specification of set of cables - standards, technical guidelines</p> | [External_reference]({{< relref "external_reference.md" >}}) |
|Document_number | [String]({{< relref "string.md" >}}) | 1 | <p>The document_number specifies the identifier of the document.</p> | [External_reference]({{< relref "external_reference.md" >}}) |
|Change_level | [String]({{< relref "string.md" >}}) | 1 | <p>The change_level specifies the version of the document.</p> | [External_reference]({{< relref "external_reference.md" >}}) |
|File_name | [String]({{< relref "string.md" >}}) | 0..1 | <p>The file_name specifies the name which is used to locate the file either on a computer system or in a repository of paper documents.</p> | [External_reference]({{< relref "external_reference.md" >}}) |
|Location | [String]({{< relref "string.md" >}}) | 0..1 | <p>The location specifies where a document can be found in a digital or physical data storage system.</p> | [External_reference]({{< relref "external_reference.md" >}}) |
|Data_format | [String]({{< relref "string.md" >}}) | 1 | <p>The data_format specifies the convention that was used to structure the information in the document.</p> | [External_reference]({{< relref "external_reference.md" >}}) |
|Creating_system | [String]({{< relref "string.md" >}}) | 0..1 | <p>The creating_system specifies the computer application or the machine which is used to create the document.</p> | [External_reference]({{< relref "external_reference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 0..1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | External_reference | 0..* |  |
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | 0..* | External_reference | 0..1 |  |
| [Installation_instruction]({{< relref "installation_instruction.md" >}}) | 0..* | External_reference | 0..1 |  |
| [Connection]({{< relref "connection.md" >}}) | 0..* | External_references | 0..* |  |
| [Default_dimension_specification]({{< relref "default_dimension_specification.md" >}}) | 0..* | External_references | 0..* | <p> An External_reference which can be used to reference an external document in which the default values are defined (e.g. a company standard).      </p> |
| [Change_description]({{< relref "change_description.md" >}}) | 0..* | External_references | 0..* | <p> Allows the referencing of external / additional documents related to the change description.      </p> |
| [Part]({{< relref "part.md" >}}) | 0..* | External_references | 0..* |  |
| [Schematic_connection]({{< relref "schematic_connection.md" >}}) | 0..* | External_references | 0..* |  |
