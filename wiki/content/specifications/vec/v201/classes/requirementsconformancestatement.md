---
title: RequirementsConformanceStatement
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - RequirementsConformanceStatement
menu_name: vec-2.0.1
---
<p> A <i>RequirementsConformanceStatement</i> states that the <i>PartVersions</i> referenced by the parent <i>RequirementsConformanceSpecification</i> satisfy or do not satisfy the requirements defined in the associated <i>DocumentVersion</i> (via the <i>requirementsSpecification</i> association)<i>.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | requirements_conformance |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|satisfies| [Boolean]({{< relref "boolean.md" >}}) | 1 | <p> Defines if the <i>describedParts</i> satisfy (satisfy =&#160;true) or explicitly fail (satisfy = false) to conform with the <i>requirementsSpecification</i>.      </p> | [RequirementsConformanceStatement]({{< relref "requirementsconformancestatement.md" >}}) |
|description| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> A free text description / additional information /&#160;comment for the <i>RequirementsConformanceStatement.</i>      </p> | [RequirementsConformanceStatement]({{< relref "requirementsconformancestatement.md" >}}) |

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
        <td>documentVersion</td>
        <td><a href="{{< relref "documentversion.md" >}}">DocumentVersion</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> References the <i>DocumentVersion</i> that contains the requirements to which a conformance statement shall be expressed.      </p></td>
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
        <td>conformanceStatement</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "requirementsconformancespecification.md" >}}">RequirementsConformanceSpecification</a></td>
        <td>1</td>
        <td></td>
    </tr>
    </tbody>
</table>



