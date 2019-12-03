---
title: ModuleFamily
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A ModuleFamily is a mechanism to group mutually exclusive modules. This could be for example something like &quot;audio equipment&quot;, &quot;diesel engine&quot;.     </p>      <p> In other words, a module family groups different variants of the same basic feature. In a real car configuration only one member of the family can participate. For the example module family &quot;audio equipment&quot; the members may be named: &quot;Basic Audio Equipment&quot;, &quot;Standard Audio Equipment&quot;, &quot;Premium / High End Audio Equipment&quot;.     </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | modules |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Harness and Variants]({{< relref "../composite-part-descriptions/harness-and-variants" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the ModuleFamily. The identification is guaranteed to be unique within the ModuleFamilySpecification. Over all VEC-documents a ModuleFamily-instance can be trusted to be the same if the ModuleFamilySpecification-instance is the same and the identification of the ModuleFamily is the same.      </p>    </body> </html>  | [ModuleFamily]({{< relref "modulefamily.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>Room for additional, human readable information about the ModuleFamily. </p></body></html> | [ModuleFamily]({{< relref "modulefamily.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartWithSubComponentsRole]({{< relref "partwithsubcomponentsrole.md" >}}) | moduleInFamily | 1..* | 0..* | References the Modules that belong to the ModuleFamily.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ModuleFamilySpecification]({{< relref "modulefamilyspecification.md" >}}) | 1 | moduleFamily | 1..* | Specifies the ModuleFamilies defined in the ModuleFamilySpecification.  |
