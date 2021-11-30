---
title: PartVersion
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - PartVersion
menu_name: vec-2.0.0-rc1
---
<p> The PartVersion is one of the two anchors for PDM information in the VEC. All technical information about a PartVersion is contained in one or more documents. These describing elements are normally referencing to the PartVersion.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ItemVersion]({{< relref "itemversion.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Room for a short name of the Item. In case of a document the attribute is wanted to contain its title.      </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the ItemVersion.  e.g. Buchsengehäuse 26-polig </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|companyName | [String]({{< relref "string.md" >}}) | 1 | <p> Defines the publishing company of the ItemVersion. The companyName is part of the main identifier of an ItemVersion together with the corresponding number (partNumber or documentNumber) and version (partVersion or documentVersion).      </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|processingInstruction | [Instruction]({{< relref "instruction.md" >}}) | 0..* | <p>Processing instructions for the application of the part or the document.  </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|partNumber | [String]({{< relref "string.md" >}}) | 1 | <p> The partNumber is the major identifier of a PartVersion. The format is user defined and respectively company specific. For all VEC-documents a PartVersion-instance can be trusted to be identical if the combination of partNumber, partVersion and companyName is identical.      </p> | [PartVersion]({{< relref "partversion.md" >}}) |
|partVersion | [String]({{< relref "string.md" >}}) | 1 | <p> The partVersion specifies the version index of a part (see also partNumber).      </p> | [PartVersion]({{< relref "partversion.md" >}}) |
|primaryPartType | [PrimaryPartType]({{< relref "primaryparttype.md" >}}) | 1 | <p> The primary type of the part defines the type of the part (e.g. ConnectorHousing, Fixing, etc.) Since the VEC supports dual use parts (e.g. Fixing &amp; WireProtection) the primary part type is necessary to define which specification associated to part is the primary character of the part. Therefore, all primary part types correspond to a PartOrUsageRelatedSpecification (e.g. ConnectorHousing --&gt; ConnectorHousingSpecification).      </p> | [PartVersion]({{< relref "partversion.md" >}}) |
|isPreferredPart | [String]({{< relref "string.md" >}}) | 0..1 | <p> Flags a part as &quot;preferred&quot; by the means of being a preferred part out of a group of parts with identical technical properties. The preferred part should be used, if the other properties of a couple of parts do not allow a distinct decision.      </p>      <p> Even though the name suggests a boolean value, this attribute has the type &quot;string&quot;. The way in which preference is expressed varies greatly between the  process and usually it is a multi-value flag and not just a yes/no answer.      </p> | [PartVersion]({{< relref "partversion.md" >}}) |
|preferredUseCase | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Contains a part description from the point of view of the preferred use case. Defines the function for which the part was initially designed. (e.g. &quot;Grommet for Hatch&quot;, &quot;...passenger compartment&quot;). This can be an important information for searching and selecting parts.      </p> | [PartVersion]({{< relref "partversion.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the PartVersion. This field must not be used for alternative PartNumbers. It is intended for identifiers others than PartNumbers, such as human readable identifiers printed on the part e.g. a number of fuse or a relay. Therefore, it does not have to be strictly unique.      </p> | [PartVersion]({{< relref "partversion.md" >}}) |
|nature | [PartNature]({{< relref "partnature.md" >}}) | 0..1 | <p> The <i>nature</i> specifies how the <i>PartVersion </i>can be used in the different processes or the significance of the <i>PartVersion</i> in the process.      </p>      <p> The <i>nature</i> of a <i>PartVersion</i> is normally inherent and does not change. If the <i>nature</i> the underlying part changes a new (other) <i>partNumber</i> is assigned to the part and respectively a new <i>PartVersion</i> is created.      </p>      <p> It used to differentiate for example normal (productive) part numbers from preliminary (prototypic) part numbers.      </p> | [PartVersion]({{< relref "partversion.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Project]({{< relref "project.md" >}}) | project | 0..1 | 0..* | References the project that develops the PartVersion. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Mapping]({{< relref "mapping.md" >}}) | 0..* | A | 1 |  |
| [PartRelation]({{< relref "partrelation.md" >}}) | 0..* | accessoryPart | 1..* | References the PartVersions that are related by the PartRelation. |
| [PartSubstitutionSpecification]({{< relref "partsubstitutionspecification.md" >}}) |  | alternativePartVersions | 0..* |  |
| [Mapping]({{< relref "mapping.md" >}}) | 0..* | B | 1 |  |
| [UsageConstraintSpecification]({{< relref "usageconstraintspecification.md" >}}) | 0..* | constrainedParts | 0..* | <p> References the <i>PartVersions</i> to which this <i>UsageConstraintSpecification</i> applies.      </p> |
| [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) | 0..* | describedPart | 0..* | References the PartVersion(s) to which the information defined in this specification applies. Example: If the PartOrUsageRelatedSpecification is a GeneralTechnicalPartSpecifcation and it defines that the color is "green" then all PartVersion referenced by this association are "green". |
| [TerminalPairing]({{< relref "terminalpairing.md" >}}) | 0..* | firstTerminal | 1 | <p> References the first terminal of the TerminalPairing.      </p> |
| [PartOccurrence]({{< relref "partoccurrence.md" >}}) | 0..* | part | 0..1 | <p> References the PartVersion that is instantiated by this PartOccurrence.      </p> |
| [VecContent]({{< relref "veccontent.md" >}}) | 1 | partVersion | 0..* | Specifies the PartVersions contained in the VEC-file. |
| [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) | 0..* | referencedPart | 0..* | The association is an informative link which PartVersions are described by the SheetOrChapter. |
| [DocumentVersion]({{< relref "documentversion.md" >}}) | 0..* | referencedPart | 0..* | The association is an informative link which PartVersions are described by the DocumentVersion. |
| [TerminalPairing]({{< relref "terminalpairing.md" >}}) | 0..* | secondTerminal | 1 | <p> References the second terminal of the TerminalPairing (first and second does not imply any specific order).      </p> |
