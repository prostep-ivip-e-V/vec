---
title: CopyrightInformation
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A CopyrightInformation-instance specifies copyright information for one or more Items.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  | [constant]({{< relref "constant.md" >}})<br/>  |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Lifecycle Information]({{< relref "../pdm-information/lifecycle-information" >}})<br/> [VEC-Root]({{< relref "../xml-representation-of-the-model/vec-root" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|copyrightNote | [LocalizedString]({{< relref "localizedstring.md" >}}) | 1..* | <html>   <head>     </head>   <body>     <p> An informal text which specifies copyright information.      </p>    </body> </html>  | [CopyrightInformation]({{< relref "copyrightinformation.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | 0..* | copyrightInformation | 0..1 | <html>   <head>     </head>   <body>     <p> References the <i>CopyrightInformation</i> that is in effect for this <i>ItemVersion. </i>If no <i>CopyrightInformation</i> is referenced by the <i>ItemVersion</i>, the <i>CopyrightInformation </i>that is referenced by the <i>VecContent</i> (if defined) shall be considered as in effect for this <i>ItemVersion.</i>      </p>    </body> </html>  |
| [VecContent]({{< relref "veccontent.md" >}}) | 1 | copyrightInformation | 0..* | Specifies the CopyrightInformation used in the VEC-file.   |
| [VecContent]({{< relref "veccontent.md" >}}) | 0..* | standardCopyrightInformation | 0..1 | <html>   <head>     </head>   <body>     <p> References the <i>CopyrightInformation</i> that is in effect for the complete content of this <i>VecContent</i>. It is applied to all <i>ItemVersions</i> that do not references their own individual <i>CopyrightInformation.</i>      </p>    </body> </html>  |
