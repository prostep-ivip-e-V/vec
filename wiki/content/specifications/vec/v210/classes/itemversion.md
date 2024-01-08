---
title: ItemVersion
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ItemVersion
menu_name: vec-2.1.0
---
<p> Abstract super-class for physical objects (e.g. a Terminal), virtual objects (e.g. a 150% Harness) as well as documents (e.g. a wiring diagram). In difference to AP 212 the VEC makes it only possible to describe/exchange information about Versions since Master-Objects cannot exist without one or more Versions.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [DocumentVersion]({{< relref "documentversion.md" >}}), [PartVersion]({{< relref "partversion.md" >}}), [ResourceVersion]({{< relref "resourceversion.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|abbreviation| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Room for a short name of the Item. In case of a document the attribute is wanted to contain its title.      </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the ItemVersion.  e.g. Buchsengehäuse 26-polig </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|companyName| [String]({{< relref "string.md" >}}) | 1 | <p> Defines the publishing company of the ItemVersion. The companyName is part of the main identifier of an ItemVersion together with the corresponding number (partNumber or documentNumber) and version (partVersion or documentVersion).      </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |
|processingInstruction| [Instruction]({{< relref "instruction.md" >}}) | 0..* | <p>Processing instructions for the application of the part or the document.  </p> | [ItemVersion]({{< relref "itemversion.md" >}}) |

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
        <td>approval</td>
        <td><a href="{{< relref "approval.md" >}}">Approval</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the approval information of the ItemVersion.</td>
    </tr>
    <tr>
        <td>copyrightInformation</td>
        <td><a href="{{< relref "copyrightinformation.md" >}}">CopyrightInformation</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>CopyrightInformation</i> that is in effect for this <i>ItemVersion. </i>If no <i>CopyrightInformation</i> is referenced by the <i>ItemVersion</i>, the <i>CopyrightInformation </i>that is referenced by the <i>VecContent</i> (if defined) shall be considered as in effect for this <i>ItemVersion.</i>      </p></td>
    </tr>
    <tr>
        <td>creation</td>
        <td><a href="{{< relref "creation.md" >}}">Creation</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the information about the creation of the ItemVersion.</td>
    </tr>
    <tr>
        <td>contract</td>
        <td><a href="{{< relref "contract.md" >}}">Contract</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the contracts that apply to an ItemVersion.</td>
    </tr>
    <tr>
        <td>changeDescription</td>
        <td><a href="{{< relref "changedescription.md" >}}">ChangeDescription</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>Specifies the change history of the ItemVersion.</td>
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
        <td>item</td>
        <td>2..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "itemequivalence.md" >}}">ItemEquivalence</a></td>
        <td>0..*</td>
        <td><p> References all ItemVersion that are considered to be equivalent by the ItemEquivalence. A single <i>ItemEquivalence</i> shall only reference <i>ItemVersions</i> of the same class (either <i>DocumentVersions</i> or <i>PartVersions</i>).      </p></td>
    </tr>
    <tr>
        <td>predecessorVersion</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "itemhistoryentry.md" >}}">ItemHistoryEntry</a></td>
        <td>0..*</td>
        <td>References the ItemVersion that is the predecessor in the ItemHistoryEntry.</td>
    </tr>
    <tr>
        <td>successorVersion</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "itemhistoryentry.md" >}}">ItemHistoryEntry</a></td>
        <td>0..*</td>
        <td>References the ItemVersion that is the successor in the ItemHistoryEntry.</td>
    </tr>
    <tr>
        <td>validVersions</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "baselinespecification.md" >}}">BaselineSpecification</a></td>
        <td>0..*</td>
        <td><p> References the <i>ItemVersions </i>that are the content of the baseline.      </p>      <p> &#160;      </p></td>
    </tr>
    </tbody>
</table>



