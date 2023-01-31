---
title: GrommetSpecification
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - GrommetSpecification
menu_name: vec-2.0.1
---
<p>Specification for the definition of grommets. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType| [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|hardness| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the hardness of the grommet.  </p> | [GrommetSpecification]({{< relref "grommetspecification.md" >}}) |
|holeDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the valid diameter of a hole into which the grommet fits.  </p> | [GrommetSpecification]({{< relref "grommetspecification.md" >}}) |
|plateThickness| [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p>Specifies valid the plate thickness at the hole into which the grommet fits.  </p> | [GrommetSpecification]({{< relref "grommetspecification.md" >}}) |
|grommetType| [GrommetType]({{< relref "grommettype.md" >}}) | 0..1 | <p> Specifies the type of the grommet.       </p> | [GrommetSpecification]({{< relref "grommetspecification.md" >}}) |
|mountingType| [GrommetMountingType]({{< relref "grommetmountingtype.md" >}}) | 0..1 | Defines how the grommet is mounted onto the harness (not the vehicle body). | [GrommetSpecification]({{< relref "grommetspecification.md" >}}) |

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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>cableLeadThrough</td>
        <td><a href="{{< relref "cableleadthrough.md" >}}">CableLeadThrough</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the CableLeadThroughs of the Grommet.</td>
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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>grommetSpecification</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "grommetrole.md" >}}">GrommetRole</a></td>
        <td>0..*</td>
        <td><p> References the <i>GrommetSpecification</i> that is instanced by this <i>GrommetRole.</i>      </p></td>
    </tr>
    </tbody>
</table>



