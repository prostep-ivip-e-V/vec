---
title: WireRole
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireRole
menu_name: vec-1.2.0
---
<p> A WireRole defines the instance specific properties and relationships of a wire.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireSpecification]({{< relref "wirespecification.md" >}}) | wireSpecification | 1 | 0..* | <p> References the <i>WireSpecification</i> that is instanced by this <i>WireRole.</i>      </p> |
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | wireElementReference | 0..* | 1 | Specifies the WireElementReferences used in the WireRole. For multi core wires more than one WireElementReference is needed. |
