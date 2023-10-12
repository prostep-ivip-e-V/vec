---
title: CableLeadThroughReference
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - CableLeadThroughReference
menu_name: vec-2.1.0
---
<p> A <i>CableLeadThroughReference</i> is the instance of a CableLeadThrough. It can define a set of plugs or seals that are used together with it. Plugs are used if no wire is present, seals are used together with a wire.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the CableLeadThroughReference. The identification is guaranteed to be unique within the GrommetRole.      </p> | [CableLeadThroughReference]({{< relref "cableleadthroughreference.md" >}}) |

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
        <td>cableLeadThrough</td>
        <td><a href="{{< relref "cableleadthrough.md" >}}">CableLeadThrough</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>usedPlugs</td>
        <td><a href="{{< relref "cavityplugrole.md" >}}">CavityPlugRole</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the plugs that are used with this CableLeadThroughReference. This association might be a 150% selection.      </p></td>
    </tr>
    <tr>
        <td>usedSeals</td>
        <td><a href="{{< relref "cavitysealrole.md" >}}">CavitySealRole</a></td>
        <td>0..*</td>
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
        <td>cableLeadThroughReference</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "grommetrole.md" >}}">GrommetRole</a></td>
        <td>1</td>
        <td></td>
    </tr>
    </tbody>
</table>



