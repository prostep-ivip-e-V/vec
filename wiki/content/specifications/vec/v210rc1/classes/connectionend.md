---
title: ConnectionEnd
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectionEnd
menu_name: vec-2.1.0
---
<p> A connection end is the end of a Connection at a ComponentPort.      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the ConnectionEnd. The identification is guaranteed to be unique within the ConnectionSpecification.      </p> | [ConnectionEnd]({{< relref "connectionend.md" >}}) |
|isExternalEnd| [Boolean]({{< relref "boolean.md" >}}) | 1 | <p>Specifies if the ConnectionEnd is connected to the internal or the external side of the ComponentPort.  </p> | [ConnectionEnd]({{< relref "connectionend.md" >}}) |
|gender| [ConnectionEndGender]({{< relref "connectionendgender.md" >}}) | 0..1 | <p>Specifies if the ConnectionEnd is male or female. This may be e.g. important in case of an inliner. </p> | [ConnectionEnd]({{< relref "connectionend.md" >}}) |
|installationInstruction| [Instruction]({{< relref "instruction.md" >}}) | 0..* | <p> Specifies installation instruction for the <i>ConnectionEnd</i>.      </p> | [ConnectionEnd]({{< relref "connectionend.md" >}}) |

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
        <td>connectedComponentPort</td>
        <td><a href="{{< relref "componentport.md" >}}">ComponentPort</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the ComponentPort that is connected by the ConnectionEnd.</td>
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
        <td>connectionEnd</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireend.md" >}}">WireEnd</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>connectionEnd</td>
        <td>2..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connection.md" >}}">Connection</a></td>
        <td>1</td>
        <td>Specifies the ConnectionEnds of the Connection.</td>
    </tr>
    </tbody>
</table>



