---
title: ItemVersion
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - ItemVersion
menu_name: vec-1.1.2
---
<p>Abstract super-class for physical objects (e.g. a Terminal), virtual objects (e.g a 150% Harness) as well as documents (e.g a wiring diagram). In difference to AP 212 the VEC makes it only possible to describe/exchange information about Versions for the reason that Master-Objects cannot exist without one or more Versions. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [DocumentVersion]({{< relref "documentversion.md" >}}), [PartVersion]({{< relref "partversion.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Room for a short name of the Item. In case of a document the attribute is wanted to contain its title.      </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the ItemVersion.  e.g. Buchsengehäuse 26-polig </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|companyName | [String]({{< relref "string.md" >}}) | 1 | <p> Defines the publishing company of the ItemVersion. The companyName is part of the main identifier of an ItemVersion together with the corresponding number (partNumber or documentNumber) and version (partVersion or documentVersion).      </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|processingInstruction | [Instruction]({{< relref "instruction.md" >}}) | 0..* | <p>Processing instructions for the application of the part or the document.  </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Contract]({{< relref "contract.md" >}}) | contract | 0..* | 0..* | References the contracts that apply to an ItemVersion. |
| [ChangeDescription]({{< relref "changedescription.md" >}}) | changeDescription | 0..* | 0..1 | Specifies the change history of the ItemVersion. |
| [Approval]({{< relref "approval.md" >}}) | approval | 0..* | 1 | Specifies the approval information of the ItemVersion. |
| [Creation]({{< relref "creation.md" >}}) | creation | 0..1 | 1 | Specifies the information about the creation of the ItemVersion. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CopyrightInformation]({{< relref "copyrightinformation.md" >}}) | 0..1 | item | 1..* | References all ItemVersions to which the copyright information applies to. |
| [ItemEquivalence]({{< relref "itemequivalence.md" >}}) | 0..* | item | 2..* | References all ItemVersion that are considered to be equivalent by the ItemEquivalence. |
| [ItemHistoryEntry]({{< relref "itemhistoryentry.md" >}}) | 0..* | predecessorVersion | 1 | References the ItemVersion that is the predecessor in the ItemHistoryEntry. |
| [ItemHistoryEntry]({{< relref "itemhistoryentry.md" >}}) | 0..* | successorVersion | 1 | References the ItemVersion that is the successor in the ItemHistoryEntry. |
