---
title: NetGroup
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines a logical grouping of specific <i>Nets</i>. For example it can be used to identify all <i>Nets</i> of specific CAN domain, a function, a requirement level (e.g. Safety&#160;&amp;&#160;Security).      </p>  </body> </html>
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the NetGroup. The identification is guaranteed to be unique within the NetSpecification.      </p>    </body> </html>  | [NetGroup]({{< relref "netgroup.md" >}}) |
|netGroupType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies the type of the group.  </p></body></html> | [NetGroup]({{< relref "netgroup.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>Room for additional, human readable information about the NetGroup. </p></body></html> | [NetGroup]({{< relref "netgroup.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Net]({{< relref "net.md" >}}) | net | 2..* | 0..1 | References the Nets that are grouped by the NetGroup.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NetSpecification]({{< relref "netspecification.md" >}}) | 1 | netGroup | 0..* | Specifies the NetGroup defined in the NetSpecification.  |
