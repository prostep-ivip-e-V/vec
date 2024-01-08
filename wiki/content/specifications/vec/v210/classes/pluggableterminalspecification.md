---
title: PluggableTerminalSpecification
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - PluggableTerminalSpecification
menu_name: vec-2.1.0
---
<p>Specification for the definition of pluggable terminals. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [TerminalSpecification]({{< relref "terminalspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType| [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|voltageRange| [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies the allowed voltage range for the connector housing.      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|sealingType| [TerminalSealingType]({{< relref "terminalsealingtype.md" >}}) | 0..1 | <p> Defines the <i>SealingType</i> of the Terminal. This type always refers to the sealing of the terminal itself. However, even a terminal which is not sealable can be used in sealed locations with additional measures (e.g. on the slot).        </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|connectionALength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the terminal between the contact area (terminal reception) and the crimp are (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|overallLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the overall length the terminal (see diagram &quot;Terminal Dimensions&quot;).      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|terminalType| [PluggableTerminalType]({{< relref "pluggableterminaltype.md" >}}) | 0..1 | <p> Defines the type of the terminal. The type defines constraints about the numbers of wire and&#160;terminal receptions and their relations.      </p> | [PluggableTerminalSpecification]({{< relref "pluggableterminalspecification.md" >}}) |
|maximumInsertionForce| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The maximum force that may be applied to the terminal during the insertion process of the terminal into the housing      </p> | [PluggableTerminalSpecification]({{< relref "pluggableterminalspecification.md" >}}) |

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
        <td>extractionTool</td>
        <td><a href="{{< relref "resourceversion.md" >}}">ResourceVersion</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>




