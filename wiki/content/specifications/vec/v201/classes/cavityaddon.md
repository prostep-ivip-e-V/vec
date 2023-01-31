---
title: CavityAddOn
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - CavityAddOn
menu_name: vec-2.0.1
---
<p> Specifies the wire addon needed to reach a <i>Cavity</i> from a specific <i>SegmentConnectionPoint</i>. More specifically, it is the addon required to calculate the cutting length of a wire. It is not a measured distance between the segment connection point and the insertion point of the cavity. For each <i>SegmentConnectionPoint</i> there shall be no more than one add-on value per cavity and type.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|wireAddOn| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> Specifies the wire length add on needed for the cavity.      </p> | [CavityAddOn]({{< relref "cavityaddon.md" >}}) |
|type| [WireAddOnType]({{< relref "wireaddontype.md" >}}) | 1 | <p> Defines the type of the add-on (see <i>CavityAddOn</i>).      </p> | [CavityAddOn]({{< relref "cavityaddon.md" >}}) |

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
        <td>cavity</td>
        <td><a href="{{< relref "cavity.md" >}}">Cavity</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
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
        <td>cavityAddOns</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "segmentconnectionpoint.md" >}}">SegmentConnectionPoint</a></td>
        <td>1</td>
        <td></td>
    </tr>
    </tbody>
</table>



