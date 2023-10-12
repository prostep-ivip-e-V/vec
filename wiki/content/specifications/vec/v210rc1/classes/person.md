---
title: Person
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - Person
menu_name: vec-2.1.0
---
<p>Specifies all relevant data of a person.  </p>

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
|companyName| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the name of the company the person belongs to.      </p> | [Person]({{< relref "person.md" >}}) |
|department| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the department the person belongs to.      </p> | [Person]({{< relref "person.md" >}}) |
|firstName| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the person's first name.      </p> | [Person]({{< relref "person.md" >}}) |
|lastName| [String]({{< relref "string.md" >}}) | 1 | <p>Specifies the person's last name. </p> | [Person]({{< relref "person.md" >}}) |
|phoneNumber| [String]({{< relref "string.md" >}}) | 0..* | <p> Specifies the person's phone number.      </p> | [Person]({{< relref "person.md" >}}) |
|emailAddress| [String]({{< relref "string.md" >}}) | 0..* | <p> Specifies the person's email address.      </p> | [Person]({{< relref "person.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies identifiers for the <i>Person</i> in different contexts.      </p> | [Person]({{< relref "person.md" >}}) |





