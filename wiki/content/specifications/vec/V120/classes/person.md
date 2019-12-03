---
title: Person
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Specifies all relevant data of a person.  </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Lifecycle Information]({{< relref "../pdm-information/lifecycle-information" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|companyName | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the name of the company the person belongs to.      </p>    </body> </html>  | [Person]({{< relref "person.md" >}}) |
|department | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the department the person belongs to.      </p>    </body> </html>  | [Person]({{< relref "person.md" >}}) |
|firstName | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the person's first name.      </p>    </body> </html>  | [Person]({{< relref "person.md" >}}) |
|lastName | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>Specifies the person's last name. </p></body></html> | [Person]({{< relref "person.md" >}}) |
|phoneNumber | [String]({{< relref "string.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the person's phone number.      </p>    </body> </html>  | [Person]({{< relref "person.md" >}}) |
|emailAddress | [String]({{< relref "string.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the person's email address.      </p>    </body> </html>  | [Person]({{< relref "person.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies identifiers for the <i>Person</i> in different contexts.      </p>    </body> </html>  | [Person]({{< relref "person.md" >}}) |

