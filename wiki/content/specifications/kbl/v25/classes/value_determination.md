---
title: Value_determination
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Value_determination
menu_name: kbl-2.5
---
<p> Defines how the value of the <i>Cross_section_area </i>of a <i>Segment</i> is determined.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  | [ClosedEnumeration]({{< relref "closedenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| calculated | <p> The value is calculated based on a routing result and the cross section areas of the containing wires. The calculated value is always given for the &quot;most critical&quot; variant (the one with greatest cross section area).      </p> |
| reserved | <p> The value defines the reserved space for the harness segment in the packaging process (DMU). Due to add-ons the value is often larger than any current harness variant.       </p> |
| measured | <p> The value is measured on a real harness. The measured value is always given for the &quot;most critical&quot; variant (the one with greatest cross section area).      </p> |
