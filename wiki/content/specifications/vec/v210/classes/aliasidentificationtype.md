---
title: AliasIdentificationType
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - AliasIdentificationType
menu_name: vec-2.1.0
---


## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| UUID | <p> Defines that this AliasIdentification represents a &quot;Universally Unique Identifier&quot;. Although a UUID&#160;is technical definition of a 128-Bit number, the primary relevance of this type is not its technical representation, but it's other properties. An&#160;AliasIdentification with the type &quot;UUID&quot; of an element is its unique identifier, that is constant over time, never changes and is never reused for other elements. Such an AliasIdentification can be used to trace elements through different systems, companies and processes.      </p> |
| DiagnosticAddress | <p> A <i>DiagnosticAddress </i>identifies a vehicle network participant during diagnosis. This is normally used on <i>NetworkPorts, ComponentPorts </i>and <i>PinComponentBehaviours.</i>      </p> |
| SoftwareAddress | <p> A <i>SoftwareAddress</i><i> </i>identifies a vehicle network participant during regular operation. This is normally used on <i>NetworkPorts, ComponentPorts </i>and <i>PinComponentBehaviours.</i>      </p> |
