---
title: Instruction_classification
toc: false
type: specs
date: "2020-06-25"
draft: false
specification: KBL
version: 2.5.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Instruction_classification
menu_name: kbl-2.5.sr1
---
<p> The <i>Instruction_classification</i> of an instruction defines how <i>Instruction_type</i> and <i>Instruction_value</i> of a <i>Processing_instruction</i> or a <i>Installation_instruction</i> shall be interpreted. The interpretations and constraints are defined per literal.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  | [ClosedEnumeration]({{< relref "closedenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| custom property | <p> The instruction shall be interpreted as custom property of the containing object. A custom property is a key / value pair. The Instruction_type is the key (name of the custom property), the Instruction_value is the value of the custom property.      </p> |
| text | <p> The instruction shall be interpreted as human readable text (e.g. a manufacturing /&#160;handling instruction). The <i>Instruction_value </i>contains the text, the <i>Instruction_type</i> is irrelevant (&quot;/NULL&quot;).       </p> |
| external reference | <p> The instruction shall be interpreted as instruction in an external document (analogue to 'text', e.g. a manufacturing /&#160;handling instruction). Instruction_type &amp;&#160;Instruction_value are irrelevant ('/NULL'). The <i>External_reference </i>association must be set.      </p> |
| file | <p> The instruction shall be interpreted as instruction in an external file (analogue to 'text', e.g. a manufacturing /&#160;handling instruction). Instruction_type is irrelevant ('/NULL'). The instruction_value defines a file path <b>relative</b> to the KBL file that is containing the instruction&#160;(e.g. a SVG).      </p> |
