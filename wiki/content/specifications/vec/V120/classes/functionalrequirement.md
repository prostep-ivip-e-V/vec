---
title: FunctionalRequirement
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - FunctionalRequirement
menu_name: vec-1.2.0
---
<p> Allows the definition of functional requirements in an enumerable way (e.g. conformance to a certain ASIL&#160;level). Attributes of this type have the multiplicity of [0..*].&#160;The following restrictions apply:      </p>      <ul>       <li> For a combination of type &amp;&#160;referenceSystem only a single value is allowed. For single type        </li>       <li> For a specific type and different references systems, multiple values are allowed.&#160;However, they must express the same semantic value.        </li>       <li> For different types multiple values are allowed.        </li>     </ul>     <p> &#160;      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | assignment_groups |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|type | [FunctionalRequirementType]({{< relref "functionalrequirementtype.md" >}}) | 0..1 | <p> The type defines to which category a requirement belongs (e.g. &#160;Functional&#160;Safety).      </p> | [FunctionalRequirement]({{< relref "functionalrequirement.md" >}}) |
|referenceSystem | [String]({{< relref "string.md" >}}) | 1 | <p> The reference system identifies the system in which the values are defined (e.g. ISO26262)      </p> | [FunctionalRequirement]({{< relref "functionalrequirement.md" >}}) |
|value | [String]({{< relref "string.md" >}}) | 1 | <p> The value that represents the functional requirement (e.g. ASIL&#160;D).      </p>      <p> &#160;      </p> | [FunctionalRequirement]({{< relref "functionalrequirement.md" >}}) |

