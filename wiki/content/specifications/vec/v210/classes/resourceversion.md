---
title: ResourceVersion
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ResourceVersion
menu_name: vec-2.1.0
---
<p> A <i>ResourceVersion</i> is unique identifier for a resource in a company context. Resources are elements used to produce, handle or service a harness, e.g. tools or machines, that do not end up in the product (see <i>PartVersion</i>). The <i>ResourceVersion</i> is one of the three anchors for PDM information in the VEC.       </p>

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
|resourceNumber| [String]({{< relref "string.md" >}}) | 1 | <p> The <i>ResourceNumber</i> is the major identifier of a <i>ResourceVersion</i>. The format is user defined and respectively company specific. For all VEC-documents a <i>ResourceVersion-instance</i> can be trusted to be identical if the combination of <i>ResourceNumber</i>, <i>ResourceVersion</i> and <i>CompanyName</i> is identical.      </p> | [ResourceVersion]({{< relref "resourceversion.md" >}}) |
|resourceVersion| [String]({{< relref "string.md" >}}) | 1 | <p> The <i>ResourceVersion</i> specifies the version index of a resource (see also <i>ResourceNumber</i>).      </p> | [ResourceVersion]({{< relref "resourceversion.md" >}}) |
|primaryResourceType| [PrimaryResourceType]({{< relref "primaryresourcetype.md" >}}) | 1 | <p> The primary type of the resource defines the type of the resource. In a future version of the VEC the <i>PrimaryResourceType </i>might correspond to <i>Specifications </i>describing the <i>ResourceVersion</i> (see <i>PrimaryPartType</i>).      </p> | [ResourceVersion]({{< relref "resourceversion.md" >}}) |


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
        <td>extractionTool</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "pluggableterminalspecification.md" >}}">PluggableTerminalSpecification</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>machineCrimpTool</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "crimpdetail.md" >}}">CrimpDetail</a></td>
        <td>0..*</td>
        <td><p> A list of tools that are permitted for machine crimping processes.      </p></td>
    </tr>
    <tr>
        <td>manualCrimpTool</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "crimpdetail.md" >}}">CrimpDetail</a></td>
        <td>0..*</td>
        <td><p> A list of tools that are permitted for manual crimping processes.      </p></td>
    </tr>
    <tr>
        <td>resourceVersion</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "veccontent.md" >}}">VecContent</a></td>
        <td>1</td>
        <td></td>
    </tr>
    </tbody>
</table>



