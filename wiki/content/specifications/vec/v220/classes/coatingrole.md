---
title: CoatingRole
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - CoatingRole
menu_name: vec-2.2.0
---
A&#160;<i>CoatingRole</i> defines the instance specific properties of a coating for a <i>WireEnd.</i>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [WireEndAccessoryRole]({{< relref "wireendaccessoryrole.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |
|length| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | The length over which the coating is applied at the <i>WireEnd</i>, measured from the wire tip. | [CoatingRole]({{< relref "coatingrole.md" >}}) |
|weight| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | The weight of material that shall be used for the coating of <i>WireEnd.</i> | [CoatingRole]({{< relref "coatingrole.md" >}}) |
|volume| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | The volume of material that shall be used for the coating of <i>WireEnd.</i> | [CoatingRole]({{< relref "coatingrole.md" >}}) |





