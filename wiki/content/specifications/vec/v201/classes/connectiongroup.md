---
title: ConnectionGroup
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectionGroup
menu_name: vec-2.0.1
---
<p> A ConnectionGroup references two or more Connections expressing that the physical realization of the referenced Connection shall be somehow grouped e.g. twisted. For complex structures a ConnectionGroup can specify subgroups.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the ConnectionGroup. The identification is guaranteed to be unique within the ConnectionSpecification.      </p> | [ConnectionGroup]({{< relref "connectiongroup.md" >}}) |
|connectionGroupType| [ConnectionGroupType]({{< relref "connectiongrouptype.md" >}}) | 1 | <p> Specifies the type of the connectionGroup, valid literals are defined in the open enumeration <i>ConnectionGroupType</i>.      </p> | [ConnectionGroup]({{< relref "connectiongroup.md" >}}) |
|installationInstruction| [Instruction]({{< relref "instruction.md" >}}) | 0..* | <p>Specifies additional InstallationInstructions for the ConnectionGroup.  </p> | [ConnectionGroup]({{< relref "connectiongroup.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the ConnectionGroup. </p> | [ConnectionGroup]({{< relref "connectiongroup.md" >}}) |

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
        <td>subGroup</td>
        <td><a href="{{< relref "connectiongroup.md" >}}">ConnectionGroup</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>Specifies the ConnectionGroups that are a subgroup of this ConnectionGroup.</td>
    </tr>
    <tr>
        <td>connection</td>
        <td><a href="{{< relref "connection.md" >}}">Connection</a></td>
        <td>2..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the Connections that are grouped by the ConnectionGroup.</td>
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
        <td>connectionGroup</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectionspecification.md" >}}">ConnectionSpecification</a></td>
        <td>0..1</td>
        <td>Specifies the ConnectionGroup defined by the ConnectionSpecification.</td>
    </tr>
    <tr>
        <td>connectionGroup</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireelementreference.md" >}}">WireElementReference</a></td>
        <td></td>
        <td><p> References the <i>ConnectionGroup</i> that is realized by this <i>WireElementReference.</i> This applies normally to <i>WireElementReference </i>that have <i>subWireElements</i>.      </p></td>
    </tr>
    <tr>
        <td>connectionGroup</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wiregrouping.md" >}}">WireGrouping</a></td>
        <td></td>
        <td><p> References the <i>ConnectionGroup</i> that is realized by this <i>WireGrouping.</i>      </p></td>
    </tr>
    <tr>
        <td>subGroup</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectiongroup.md" >}}">ConnectionGroup</a></td>
        <td>0..1</td>
        <td>Specifies the ConnectionGroups that are a subgroup of this ConnectionGroup.</td>
    </tr>
    </tbody>
</table>



