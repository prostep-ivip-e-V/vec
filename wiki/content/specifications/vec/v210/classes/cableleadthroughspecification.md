---
title: CableLeadThroughSpecification
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - CableLeadThroughSpecification
menu_name: vec-2.1.0
---
<p> A <i>CableLeadThrough</i> specifies a hole in the grommet through which wires can pass through the grommet. The <i>CableLeadThroughSpecification </i>defines the technical properties of a <i>CableLeadThrough</i> (or a set of similar ones).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|type| [CableLeadThroughType]({{< relref "cableleadthroughtype.md" >}}) | 0..1 | <p> Defines the type of a cable lead through. Standardized values are defined in an <i>OpenEnumeration</i>.      </p> | [CableLeadThroughSpecification]({{< relref "cableleadthroughspecification.md" >}}) |
|geometry| [CableLeadThroughGeometry]({{< relref "cableleadthroughgeometry.md" >}}) | 0..1 | <p> Defines the geometry of a cable lead through in the sealing area. Standardized values are defined in an <i>OpenEnumeration</i>.      </p> | [CableLeadThroughSpecification]({{< relref "cableleadthroughspecification.md" >}}) |
|sealingDimension| [Size]({{< relref "size.md" >}}) | 0..1 | <p> Specifies the dimension of the cable lead through in the sealing area.      </p> | [CableLeadThroughSpecification]({{< relref "cableleadthroughspecification.md" >}}) |
|minSegmentOutsideDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the minimum diameter a segment can have to fit through the cable lead through. This definition is necessary, since segments that are too small might cause movements and unacceptable torsion forces or they are not sealable.      </p> | [CableLeadThroughSpecification]({{< relref "cableleadthroughspecification.md" >}}) |
|maxSegmentOutsideDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the maximum diameter a segment can have to fit into the cable lead through.      </p> | [CableLeadThroughSpecification]({{< relref "cableleadthroughspecification.md" >}}) |
|sealable| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Specifies if the cable lead through is sealable.      </p> | [CableLeadThroughSpecification]({{< relref "cableleadthroughspecification.md" >}}) |


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
        <td>cableLeadThroughSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cableleadthrough.md" >}}">CableLeadThrough</a></td>
        <td></td>
        <td><p> References the <i>CableLeadThroughSpecification </i>that defines the technical properties of this <i>CableLeadThrough.</i>      </p></td>
    </tr>
    </tbody>
</table>



