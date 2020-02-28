---
title: ModuleFamily
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - ModuleFamily
menu_name: vec-1.1.2
---
<p> A ModuleFamily is a mechanism to group mutually exclusive modules. This could be for example something like &quot;audio equipment&quot;, &quot;diesel engine&quot;.     </p>      <p> In other words, a module family groups different variants of the same basic feature. In a real car configuration only one member of the family can participate. For the example module family &quot;audio equipment&quot; the members may be named: &quot;Basic Audio Equipment&quot;, &quot;Standard Audio Equipment&quot;, &quot;Premium / High End Audio Equipment&quot;.     </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | modules |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the ModuleFamily. The identification is guaranteed to be unique within the ModuleFamilySpecification. Over all VEC-documents a ModuleFamily-instance can be trusted to be the same if the ModuleFamilySpecification-instance is the same and the identification of the ModuleFamily is the same.      </p> | [ModuleFamily]({{< relref "modulefamily.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the ModuleFamily. </p> | [ModuleFamily]({{< relref "modulefamily.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartWithSubComponentsRole]({{< relref "partwithsubcomponentsrole.md" >}}) | moduleInFamily | 1..* | 0..* | References the Modules that belong to the ModuleFamily. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ModuleFamilySpecification]({{< relref "modulefamilyspecification.md" >}}) | 1 | moduleFamily | 1..* | Specifies the ModuleFamilies defined in the ModuleFamilySpecification. |
