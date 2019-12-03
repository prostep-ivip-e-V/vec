---
title: ItemVersion
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Abstract super-class for physical objects (e.g. a Terminal), virtual objects (e.g a 150% Harness) as well as documents (e.g a wiring diagram). In difference to AP 212 the VEC makes it only possible to describe/exchange information about Versions for the reason that Master-Objects cannot exist without one or more Versions. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [DocumentVersion]({{< relref "documentversion.md" >}}), [PartVersion]({{< relref "partversion.md" >}}) |
| **Usage in Diagrams**   | [Baselines]({{< relref "../key-concepts/baselines" >}})<br/> [Item Equivalence]({{< relref "../pdm-information/item-equivalence" >}})<br/> [Item History]({{< relref "../pdm-information/item-history" >}})<br/> [Lifecycle Information]({{< relref "../pdm-information/lifecycle-information" >}})<br/> [Parts and Documents]({{< relref "../key-concepts/parts-and-documents" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Room for a short name of the Item. In case of a document the attribute is wanted to contain its title.      </p>    </body> </html>  | [ItemVersion]({{< relref "itemversion.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>Room for additional, human readable information about the ItemVersion.  e.g. Buchsengehäuse 26-polig </p></body></html> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|companyName | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Defines the publishing company of the ItemVersion. The companyName is part of the main identifier of an ItemVersion together with the corresponding number (partNumber or documentNumber) and version (partVersion or documentVersion).      </p>    </body> </html>  | [ItemVersion]({{< relref "itemversion.md" >}}) |
|processingInstruction | [Instruction]({{< relref "instruction.md" >}}) | 0..* | <html><body><p>Processing instructions for the application of the part or the document.  </p></body></html> | [ItemVersion]({{< relref "itemversion.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Approval]({{< relref "approval.md" >}}) | approval | 0..* | 1 | Specifies the approval information of the ItemVersion.   |
| [ChangeDescription]({{< relref "changedescription.md" >}}) | changeDescription | 0..* | 0..1 | Specifies the change history of the ItemVersion.   |
| [Contract]({{< relref "contract.md" >}}) | contract | 0..* | 0..* | References the contracts that apply to an ItemVersion.  |
| [CopyrightInformation]({{< relref "copyrightinformation.md" >}}) | copyrightInformation | 0..1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>CopyrightInformation</i> that is in effect for this <i>ItemVersion. </i>If no <i>CopyrightInformation</i> is referenced by the <i>ItemVersion</i>, the <i>CopyrightInformation </i>that is referenced by the <i>VecContent</i> (if defined) shall be considered as in effect for this <i>ItemVersion.</i>      </p>    </body> </html>  |
| [Creation]({{< relref "creation.md" >}}) | creation | 0..1 | 1 | Specifies the information about the creation of the ItemVersion.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ItemEquivalence]({{< relref "itemequivalence.md" >}}) | 0..* | item | 2..* | References all ItemVersion that are considered to be equivalent by the ItemEquivalence.   |
| [ItemHistoryEntry]({{< relref "itemhistoryentry.md" >}}) | 0..* | predecessorVersion | 1 | References the ItemVersion that is the predecessor in the ItemHistoryEntry.   |
| [ItemHistoryEntry]({{< relref "itemhistoryentry.md" >}}) | 0..* | successorVersion | 1 | References the ItemVersion that is the successor in the ItemHistoryEntry.   |
| [BaselineSpecification]({{< relref "baselinespecification.md" >}}) | 0..* | validVersions | 0..* | <html>   <head>     </head>   <body> References the <i>ItemVersions </i>that are the content of the baseline.</body> </html> |
