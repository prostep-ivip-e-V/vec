---
title: WireEndAccessoryRole
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - WireEndAccessoryRole
menu_name: vec-2.0.0-rc1
---
<p> A <i>WireEndAccessoryRole</i> defines the instance specific properties and relationships of a <i>WireEndAccessory</i>.      </p>

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
| [WireEndAccessorySpecification]({{< relref "wireendaccessoryspecification.md" >}}) | wireEndAccessorySpecification | 1 |  | <p> References the <i>WireEndAccessorySpecification</i> that is instanced by this <i>WireEndAccessoryRole.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireMounting]({{< relref "wiremounting.md" >}}) | 0..* | wireEndAccessory | 0..* |  |
