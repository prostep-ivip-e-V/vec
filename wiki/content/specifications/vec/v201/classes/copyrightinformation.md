---
title: CopyrightInformation
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - CopyrightInformation
menu_name: vec-2.0.1
---
<p> A CopyrightInformation-instance specifies copyright information for one or more Items.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  | [constant]({{< relref "constant.md" >}})<br/>  |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|copyrightNote | [LocalizedString]({{< relref "localizedstring.md" >}}) | 1..* | <p> An informal text which specifies copyright information.      </p> | [CopyrightInformation]({{< relref "copyrightinformation.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | 0..* | copyrightInformation | 0..1 | <p> References the <i>CopyrightInformation</i> that is in effect for this <i>ItemVersion. </i>If no <i>CopyrightInformation</i> is referenced by the <i>ItemVersion</i>, the <i>CopyrightInformation </i>that is referenced by the <i>VecContent</i> (if defined) shall be considered as in effect for this <i>ItemVersion.</i>      </p> |
| [VecContent]({{< relref "veccontent.md" >}}) | 1 | copyrightInformation | 0..* | Specifies the CopyrightInformation used in the VEC-file. |
| [VecContent]({{< relref "veccontent.md" >}}) | 0..* | standardCopyrightInformation | 0..1 | <p> References the <i>CopyrightInformation</i> that is in effect for the complete content of this <i>VecContent</i>. It is applied to all <i>ItemVersions</i> that do not references their own individual <i>CopyrightInformation.</i>      </p> |
