---
title: ContactPoint
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ContactPoint
menu_name: vec-2.0.1
---
<p> A contact point defines the relationship between Terminals, Seals, Plugs, Cavities and Wires. It specifies a single contacting variant. This means that the contacting is manufactured, as specified by the <i>Contact</i>Point. Either all participants (Cavities, Terminals, Seals, Wires) set into a relationship by the <i>ContactPoint</i> exist in a specific harness or none. There is no requirement, to filter the participants of a contacting situation with information derived from VariantConfigurations or assembly /&#160;module associations in order to create a manufacturing variant.      </p>      <p> The <i>ContactPoint </i>represents a single potential. Consequently, all cavities and wires referencing / being referenced by a <i>ContactPoint </i>are short-circuited and have the same potential (even if the signals on the wires are named differently. If a contacting of a terminal has more than one potential (e.g. a coax-contact) one contact point for each potential is needed.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | contacting |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the ContactPoint. The identification is guaranteed to be unique within the ContactingSpecification.      </p> | [ContactPoint]({{< relref "contactpoint.md" >}}) |

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
        <td>wireMounting</td>
        <td><a href="{{< relref "wiremounting.md" >}}">WireMounting</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the WireMouting defined by ContactPoint. More than one WireMounting is allowed in order to support variance. In concrete configuration the WireMounting with all referenced elements present is used.</td>
    </tr>
    <tr>
        <td>mountedTerminal</td>
        <td><a href="{{< relref "terminalrole.md" >}}">TerminalRole</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the terminal that is used for contacting defined by the ContactPoint.</td>
    </tr>
    <tr>
        <td>cavityMounting</td>
        <td><a href="{{< relref "cavitymounting.md" >}}">CavityMounting</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Defines the mounting to a cavity of the terminal associated with the ContactPoint.  The cardinality is 0..* in order to allow a variant dependant cavity mounting. In such a scenario a cavity mounting is valid in a configuration if all addressed cavities and therefore the associated connector housing is available.</td>
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
        <td>contactPoint</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "contactingspecification.md" >}}">ContactingSpecification</a></td>
        <td>1</td>
        <td>Specifies the ContactPoints defined by the ContactingSpecification.</td>
    </tr>
    <tr>
        <td>contactPoint</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "pinwiremappingpoint.md" >}}">PinWireMappingPoint</a></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>



