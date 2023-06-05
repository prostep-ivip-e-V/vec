---
title: WireGroupSpecification
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireGroupSpecification
menu_name: vec-2.0.2
---
<p> Specification for the definition of WireGroups. Wire groups are for example used for the representation of twisted pairs.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|groupType| [WireGroupType]({{< relref "wiregrouptype.md" >}}) | 1 | <p> Specifies the type of the group (e.g. twisted pair, ...).      </p> | [WireGroupSpecification]({{< relref "wiregroupspecification.md" >}}) |
|lengthOfTwist| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the length of twist if the wire group is representing a twisted pair.  </p> | [WireGroupSpecification]({{< relref "wiregroupspecification.md" >}}) |


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
        <td>wireGroupSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireelementspecification.md" >}}">WireElementSpecification</a></td>
        <td>0..*</td>
        <td><p> If the <i>WireElementSpecification</i> is representing a wire group, then the specification of the wire group is referenced here. That means as well, that the <i>WireElementSpecification</i> shall have <i>subWireElementSpecifications</i>.      </p></td>
    </tr>
    <tr>
        <td>wireGroupSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wiregrouping.md" >}}">WireGrouping</a></td>
        <td>0..*</td>
        <td><p> References the <i>WireGroupSpecification</i> that applies to the <i>WireGrouping</i>.      </p></td>
    </tr>
    </tbody>
</table>



