---
title: PartVersion
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - PartVersion
menu_name: vec-2.0.1
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
|abbreviation| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Room for a short name of the Item. In case of a document the attribute is wanted to contain its title.      </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the ItemVersion.  e.g. Buchsengehäuse 26-polig </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|companyName| [String]({{< relref "string.md" >}}) | 1 | <p> Defines the publishing company of the ItemVersion. The companyName is part of the main identifier of an ItemVersion together with the corresponding number (partNumber or documentNumber) and version (partVersion or documentVersion).      </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|processingInstruction| [Instruction]({{< relref "instruction.md" >}}) | 0..* | <p>Processing instructions for the application of the part or the document.  </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|partNumber| [String]({{< relref "string.md" >}}) | 1 | <p> The partNumber is the major identifier of a PartVersion. The format is user defined and respectively company specific. For all VEC-documents a PartVersion-instance can be trusted to be identical if the combination of partNumber, partVersion and companyName is identical.      </p> | [PartVersion]({{< relref "partversion.md" >}}) |
|partVersion| [String]({{< relref "string.md" >}}) | 1 | <p> The partVersion specifies the version index of a part (see also partNumber).      </p> | [PartVersion]({{< relref "partversion.md" >}}) |
|primaryPartType| [PrimaryPartType]({{< relref "primaryparttype.md" >}}) | 1 | <p> The primary type of the part defines the type of the part (e.g. ConnectorHousing, Fixing, etc.) Since the VEC supports dual use parts (e.g. Fixing &amp; WireProtection) the primary part type is necessary to define which specification associated to part is the primary character of the part. Therefore, all primary part types correspond to a PartOrUsageRelatedSpecification (e.g. ConnectorHousing --&gt; ConnectorHousingSpecification).      </p> | [PartVersion]({{< relref "partversion.md" >}}) |
|isPreferredPart| [String]({{< relref "string.md" >}}) | 0..1 | <p> Flags a part as &quot;preferred&quot; by the means of being a preferred part out of a group of parts with identical technical properties. The preferred part should be used, if the other properties of a couple of parts do not allow a distinct decision.      </p>      <p> Even though the name suggests a boolean value, this attribute has the type &quot;string&quot;. The way in which preference is expressed varies greatly between the  process and usually it is a multi-value flag and not just a yes/no answer.      </p> | [PartVersion]({{< relref "partversion.md" >}}) |
|preferredUseCase| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Contains a part description from the point of view of the preferred use case. Defines the function for which the part was initially designed. (e.g. &quot;Grommet for Hatch&quot;, &quot;...passenger compartment&quot;). This can be an important information for searching and selecting parts.      </p> | [PartVersion]({{< relref "partversion.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the PartVersion. This field must not be used for alternative PartNumbers. It is intended for identifiers others than PartNumbers, such as human readable identifiers printed on the part e.g. a number of fuse or a relay. Therefore, it does not have to be strictly unique.      </p> | [PartVersion]({{< relref "partversion.md" >}}) |
|nature| [PartNature]({{< relref "partnature.md" >}}) | 0..1 | <p> The <i>nature</i> specifies how the <i>PartVersion </i>can be used in the different processes or the significance of the <i>PartVersion</i> in the process.      </p>      <p> The <i>nature</i> of a <i>PartVersion</i> is normally inherent and does not change. If the <i>nature</i> the underlying part changes a new (other) <i>partNumber</i> is assigned to the part and respectively a new <i>PartVersion</i> is created.      </p>      <p> It used to differentiate for example normal (productive) part numbers from preliminary (prototypic) part numbers.      </p> | [PartVersion]({{< relref "partversion.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>project</td>
        <td><a href="{{< relref "project.md" >}}">Project</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the project that develops the PartVersion.</td>
    </tr>
    </tbody>
</table>

##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>A</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "mapping.md" >}}">Mapping</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>accessoryPart</td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "partrelation.md" >}}">PartRelation</a></td>
        <td>0..*</td>
        <td>References the PartVersions that are related by the PartRelation.</td>
    </tr>
    <tr>
        <td>alternativePartVersions</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "partsubstitutionspecification.md" >}}">PartSubstitutionSpecification</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>B</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "mapping.md" >}}">Mapping</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>constrainedParts</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "usageconstraintspecification.md" >}}">UsageConstraintSpecification</a></td>
        <td>0..*</td>
        <td><p> References the <i>PartVersions</i> to which this <i>UsageConstraintSpecification</i> applies.      </p></td>
    </tr>
    <tr>
        <td>describedPart</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "partorusagerelatedspecification.md" >}}">PartOrUsageRelatedSpecification</a></td>
        <td>0..*</td>
        <td>References the PartVersion(s) to which the information defined in this specification applies. Example: If the PartOrUsageRelatedSpecification is a GeneralTechnicalPartSpecifcation and it defines that the color is "green" then all PartVersion referenced by this association are "green".</td>
    </tr>
    <tr>
        <td>firstTerminal</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalpairing.md" >}}">TerminalPairing</a></td>
        <td>0..*</td>
        <td><p> References the first terminal of the TerminalPairing.      </p></td>
    </tr>
    <tr>
        <td>part</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "partoccurrence.md" >}}">PartOccurrence</a></td>
        <td>0..*</td>
        <td><p> References the PartVersion that is instantiated by this PartOccurrence.      </p></td>
    </tr>
    <tr>
        <td>partVersion</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "veccontent.md" >}}">VecContent</a></td>
        <td>1</td>
        <td>Specifies the PartVersions contained in the VEC-file.</td>
    </tr>
    <tr>
        <td>referencedPart</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "sheetorchapter.md" >}}">SheetOrChapter</a></td>
        <td>0..*</td>
        <td>The association is an informative link which PartVersions are described by the SheetOrChapter.</td>
    </tr>
    <tr>
        <td>referencedPart</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "documentversion.md" >}}">DocumentVersion</a></td>
        <td>0..*</td>
        <td>The association is an informative link which PartVersions are described by the DocumentVersion.</td>
    </tr>
    <tr>
        <td>secondTerminal</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalpairing.md" >}}">TerminalPairing</a></td>
        <td>0..*</td>
        <td><p> References the second terminal of the TerminalPairing (first and second does not imply any specific order).      </p></td>
    </tr>
    </tbody>
</table>



