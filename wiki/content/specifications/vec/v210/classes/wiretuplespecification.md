---
title: WireTupleSpecification
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireTupleSpecification
menu_name: vec-2.1.0
---
<p> A <i>Specification</i> to define requirements for the handling of wire / wire element tuples (pairs, triple,...) with the focus on twisting. More precisely, the allowed untwisting at the wire ends and required measures against it.      </p>      <p> This definition is made independent from the <i>WireGroup</i>, as the might be defined for the part master data (the wire on the roller). The specifications for untwisting are based on the concrete usage.      </p>

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
|fixationRequired| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | Specifies if an implementation of this specification in a concrete harness required to define a fixation against untwisting of the wire ends. | [WireTupleSpecification]({{< relref "wiretuplespecification.md" >}}) |
|fixationOffset| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | The offset from the wire end, at which the fixation has to be placed. | [WireTupleSpecification]({{< relref "wiretuplespecification.md" >}}) |
|maximumUntwistSingleSided| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Specifies the maximum untwist for one side. | [WireTupleSpecification]({{< relref "wiretuplespecification.md" >}}) |
|maximumUntwistDualSided| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Specifies the maximum untwist for both sides together (A+B). | [WireTupleSpecification]({{< relref "wiretuplespecification.md" >}}) |

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
        <td>fixationAccessory</td>
        <td><a href="{{< relref "partrelation.md" >}}">PartRelation</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies <i>PartRelations</i> that can / have to be used for the fixation.</td>
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
        <td>wireTupleRequirements</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "signal.md" >}}">Signal</a></td>
        <td></td>
        <td><p> Defines a requirement for wire tuples.      </p></td>
    </tr>
    <tr>
        <td>wireTupleSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wiretupletermination.md" >}}">WireTupleTermination</a></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>



