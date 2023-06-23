---
title: PartOrUsageRelatedSpecification
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - PartOrUsageRelatedSpecification
menu_name: vec-2.0.2
---
<p> Base class for all specifications which are describing a <i>PartVersion</i> or a <i>PartUsage</i>. A <i>PartOrUsageRelatedSpecification</i> specifies a certain aspect of the described part or usage (e.g. general technical part information, connector housing aspects or wire aspects).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [CableDuctSpecification]({{< relref "cableductspecification.md" >}}), [CableTieSpecification]({{< relref "cabletiespecification.md" >}}), [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}), [ConnectorHousingCapSpecification]({{< relref "connectorhousingcapspecification.md" >}}), [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}), [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}), [FerriteSpecification]({{< relref "ferritespecification.md" >}}), [FixingSpecification]({{< relref "fixingspecification.md" >}}), [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}), [GrommetSpecification]({{< relref "grommetspecification.md" >}}), [LabelingSpecification]({{< relref "labelingspecification.md" >}}), [LocalGeometrySpecification]({{< relref "localgeometryspecification.md" >}}), [PartStructureSpecification]({{< relref "partstructurespecification.md" >}}), [PlaceableElementSpecification]({{< relref "placeableelementspecification.md" >}}), [RequirementsConformanceSpecification]({{< relref "requirementsconformancespecification.md" >}}), [TerminalSpecification]({{< relref "terminalspecification.md" >}}), [WireEndAccessorySpecification]({{< relref "wireendaccessoryspecification.md" >}}), [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}}), [WireSpecification]({{< relref "wirespecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType| [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |

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
        <td>describedPart</td>
        <td><a href="{{< relref "partversion.md" >}}">PartVersion</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the PartVersion(s) to which the information defined in this specification applies. Example: If the PartOrUsageRelatedSpecification is a GeneralTechnicalPartSpecifcation and it defines that the color is "green" then all PartVersion referenced by this association are "green".</td>
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
        <td>partOrUsageRelatedSpecification</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "partusage.md" >}}">PartUsage</a></td>
        <td>0..*</td>
        <td>References the PartOrUsageRelatedSpecification(s) that describe the PartOrUsageRelatedSpecification.  KBLFRM-399</td>
    </tr>
    <tr>
        <td>specification</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "specificrole.md" >}}">SpecificRole</a></td>
        <td>0..*</td>
        <td><p> References the <i>PartOrUsageRelatedSpecification </i>that is instantiated by this <i>SpecificRole.</i>      </p></td>
    </tr>
    </tbody>
</table>



