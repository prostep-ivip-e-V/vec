---
title: CableLeadThrough
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - CableLeadThrough
menu_name: vec-2.0.2
---
<p> A <i>CableLeadThrough</i> specifies a hole in the grommet through which wires can pass through the grommet. There can be different technical realizations of a lead through, e.g. it can be realized with a shrinking material or an additional seal. The properties of a <i>CableLeadThrough</i> are defined in the referenced <i>CableLeadThroughSpecification</i>.      </p>      <p> For a precise placement in topology, a <i>CableLeadThrough</i> specifies outlets.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the identification of the CableLeadThrough. This must be unique within a GrommetSpecification.  </p> | [CableLeadThrough]({{< relref "cableleadthrough.md" >}}) |

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
        <td>outlet</td>
        <td><a href="{{< relref "cableleadthroughoutlet.md" >}}">CableLeadThroughOutlet</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specfies the outlets of a <i>CableLeadThrough.</i></td>
    </tr>
    <tr>
        <td>cableLeadThroughSpecification</td>
        <td><a href="{{< relref "cableleadthroughspecification.md" >}}">CableLeadThroughSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> References the <i>CableLeadThroughSpecification </i>that defines the technical properties of this <i>CableLeadThrough.</i>      </p></td>
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
        <td>cableLeadThrough</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cableleadthroughreference.md" >}}">CableLeadThroughReference</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>cableLeadThrough</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "grommetspecification.md" >}}">GrommetSpecification</a></td>
        <td>1</td>
        <td>Specifies the CableLeadThroughs of the Grommet.</td>
    </tr>
    </tbody>
</table>



