---
title: Creation
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A Creation-instance provides additional information to the owning ItemVersion stating personal information on the creator and the creation date. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Lifecycle Information]({{< relref "../pdm-information/lifecycle-information" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|creationDate | [Date]({{< relref "date.md" >}}) | 1 | <html><body><p>Specifies the date when the associated ItemVersion was created. (see KBLFRM-241) </p></body></html> | [Creation]({{< relref "creation.md" >}}) |
|creator | [Person]({{< relref "person.md" >}}) | 0..1 | <html><body><p>Specifies the person who has created the Item. </p></body></html> | [Creation]({{< relref "creation.md" >}}) |
|responsibleDesigner | [Person]({{< relref "person.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the person, which is the responsible designer for the ItemVersion at the point of creation.      </p>    </body> </html>  | [Creation]({{< relref "creation.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | 1 | creation | 0..1 | Specifies the information about the creation of the ItemVersion.   |
