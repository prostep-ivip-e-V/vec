---
title: VecContent
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - VecContent
menu_name: vec-2.1.0
---
<p> The VecContent is the XML-Root node for any VEC-Document.      </p>      <p> <b>&#160;</b>      </p>      <p> <b>Note about<i> </i><i>GeneratingSystemName</i> and <i>GeneratingSystemVersion:</i></b> Both together are intended to provide meta information to identify the generating system and its version for reasons of traceability (system is used as general term and can also be a system landscape, a highly modularized micro service architecture or a tool chain). It is not intended to provided detailed information about the composition or&#160;configuration of a system and its modules. Especially in a scenario where a system is highly modularized (e.g. a micro service architecture) any detailed information would be subject to very individual interpretation.      </p>      <p> Therefore, the VEC&#160;provides only the means to <u>identify</u> a specific system configuration, <u>not to describe</u> it. The <i>GeneratingSystemName</i> allows identification in space (who did it), and the <i>GeneratingSystemVersion</i> provides identification in time (when was it done, with which version of the configuration). The generator of the dataset is responsible to provide meaningful identifications for both, that satisfy the traceability requirements in the context.      </p>      <p> The following scenarios are explicitly allowed:      </p>      <ol>       <li> Single System: Single identifiers are used which are mapping directly to a system /&#160;system version (e.g. &quot;Component DB&quot; /&#160;&quot;V7.1.0&quot;)        </li>       <li> Combined System: The identifiers are a combination of the participating modules (e.g. &quot;Design System X+Userware&#160;ACME+DBExport&quot; /&#160;&quot;V3+V2.7+V1.2.3&quot;).        </li>       <li> Baseline&#160;/&#160;System Configuration: The identifiers are pointing to a baseline in the configuration management of a system landscape. The systems and their versions are tracked there, outside the VEC (e.g. &quot;Harness Tool&#160;Chain&quot; / &quot;V12-2023-5&quot;).        </li>     </ol>     <p> &#160;      </p>      <p> &#160;      </p>      <p> &#160;      </p>      <p> &#160;      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|vecVersion| [VecVersion]({{< relref "vecversion.md" >}}) | 1 | <p> Specifies the version of the VEC used for the file.      </p> | [VecContent]({{< relref "veccontent.md" >}}) |
|generatingSystemName| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the name of the system that has generated the VEC-file (see note in class documentation).      </p> | [VecContent]({{< relref "veccontent.md" >}}) |
|dateOfCreation| [Date]({{< relref "date.md" >}}) | 0..1 | <p>Specifies the date of creation of the VEC-file.  </p> | [VecContent]({{< relref "veccontent.md" >}}) |
|generatingSystemVersion| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the version of the system that has generated the VEC-file (see note in class documentation).      </p> | [VecContent]({{< relref "veccontent.md" >}}) |

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
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the Projects used in the VEC-file.</td>
    </tr>
    <tr>
        <td>resourceVersion</td>
        <td><a href="{{< relref "resourceversion.md" >}}">ResourceVersion</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td></td>
    </tr>
    <tr>
        <td>partVersion</td>
        <td><a href="{{< relref "partversion.md" >}}">PartVersion</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the PartVersions contained in the VEC-file.</td>
    </tr>
    <tr>
        <td>documentVersion</td>
        <td><a href="{{< relref "documentversion.md" >}}">DocumentVersion</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the DocumentVersions contained in the VEC-file.</td>
    </tr>
    <tr>
        <td>copyrightInformation</td>
        <td><a href="{{< relref "copyrightinformation.md" >}}">CopyrightInformation</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the CopyrightInformation used in the VEC-file.</td>
    </tr>
    <tr>
        <td>unit</td>
        <td><a href="{{< relref "unit.md" >}}">Unit</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the Units used in the VEC-file.</td>
    </tr>
    <tr>
        <td>itemHistoryEntry</td>
        <td><a href="{{< relref "itemhistoryentry.md" >}}">ItemHistoryEntry</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the ItemVersionHistoryEntries for ItemVersions contained in the VEC-file.</td>
    </tr>
    <tr>
        <td>contract</td>
        <td><a href="{{< relref "contract.md" >}}">Contract</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the contracts used in the VEC-file.</td>
    </tr>
    <tr>
        <td>standardCopyrightInformation</td>
        <td><a href="{{< relref "copyrightinformation.md" >}}">CopyrightInformation</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>CopyrightInformation</i> that is in effect for the complete content of this <i>VecContent</i>. It is applied to all <i>ItemVersions</i> that do not references their own individual <i>CopyrightInformation.</i>      </p></td>
    </tr>
    </tbody>
</table>




