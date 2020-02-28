---
title: CopyrightInformation
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - CopyrightInformation
menu_name: vec-1.1.2
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
|copyrightNote | [LocalizedString]({{< relref "localizedstring.md" >}}) | 1 | <p> An informal text which specifies copyright information.      </p> | [CopyrightInformation]({{< relref "copyrightinformation.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | item | 1..* | 0..1 | References all ItemVersions to which the copyright information applies to. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [VecContent]({{< relref "veccontent.md" >}}) | 1 | copyrightInformation | 0..* | Specifies the CopyrightInformation used in the VEC-file. |
