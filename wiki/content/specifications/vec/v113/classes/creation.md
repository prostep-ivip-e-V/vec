---
title: Creation
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - Creation
menu_name: vec-1.1.3
---
<p>A Creation-instance provides additional information to the owning ItemVersion stating personal information on the creator and the creation date. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|creationDate | [Date]({{< relref "date.md" >}}) | 1 | <p>Specifies the date when the associated ItemVersion was created. (see KBLFRM-241) </p> | [Creation]({{< relref "creation.md" >}}) |
|creator | [Person]({{< relref "person.md" >}}) | 0..1 | <p>Specifies the person who has created the Item. </p> | [Creation]({{< relref "creation.md" >}}) |
|responsibleDesigner | [Person]({{< relref "person.md" >}}) | 0..1 | <p> Specifies the person, which is the responsible designer for the ItemVersion at the point of creation.      </p> | [Creation]({{< relref "creation.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | 1 | creation | 0..1 | Specifies the information about the creation of the ItemVersion. |
