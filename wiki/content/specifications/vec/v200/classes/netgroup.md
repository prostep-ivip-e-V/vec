---
title: NetGroup
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - NetGroup
menu_name: vec-2.0.0-rc1
---
<p> Defines a logical grouping of specific <i>Nets</i>. For example, it can be used to identify all <i>Nets</i> of specific CAN domain, a function, a requirement level (e.g. Safety&#160;&amp;&#160;Security).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | net |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the NetGroup. The identification is guaranteed to be unique within the NetSpecification.      </p> | [NetGroup]({{< relref "netgroup.md" >}}) |
|netGroupType | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the type of the group.  </p> | [NetGroup]({{< relref "netgroup.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the NetGroup. </p> | [NetGroup]({{< relref "netgroup.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Net]({{< relref "net.md" >}}) | net | 2..* | 0..1 | References the Nets that are grouped by the NetGroup. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NetSpecification]({{< relref "netspecification.md" >}}) | 1 | netGroup | 0..* | Specifies the NetGroup defined in the NetSpecification. |
