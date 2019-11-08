---
title: WireProtectionRole
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A WireProtectionRole defines the instance specific properties and relationships of a wire protection. This is a general purpose role for instances of all types of <i>WireProtectionSpecifications</i> that do not have specific instance attributes. For <i>TapeSpecifications</i> the more specific <i>TapeRole</i> shall be used.      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [TapeRole]({{< relref "taperole.md" >}}) |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p></body></html> | [Role]({{< relref "role.md" >}}) |
|protectionLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the length of the protection. </p></body></html> | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}}) | wireProtectionSpecification | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>WireProtectionSpecification</i> that is instanced by this <i>WireProtectionRole.</i>      </p>    </body> </html>  |
