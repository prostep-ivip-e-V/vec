---
title: CavityReference
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - CavityReference
menu_name: vec-2.0.2
---
<p> A CavityReference represents the usage of a Cavity in the context of PartUsage or PartOccurrence.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the CavityReference. The identification is guaranteed to be unique within the ConnectorHousingRole. The cavity &amp; slot number is defined by the associated cavity and slot.      </p> | [CavityReference]({{< relref "cavityreference.md" >}}) |

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
        <td>integratedTerminalRole</td>
        <td><a href="{{< relref "terminalrole.md" >}}">TerminalRole</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td><p> Contains the terminal role if the cavity has an integrated terminal (e.g. an IDC).      </p></td>
    </tr>
    <tr>
        <td>componentPort</td>
        <td><a href="{{< relref "componentport.md" >}}">ComponentPort</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>ComponentPort</i> that is implemented by this <i>CavityReference</i>.      </p></td>
    </tr>
    <tr>
        <td>referencedCavity</td>
        <td><a href="{{< relref "cavity.md" >}}">Cavity</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>Points to the cavity referenced by the cavity reference.</td>
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
        <td>cavityReference</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "slotreference.md" >}}">SlotReference</a></td>
        <td>1</td>
        <td>Specifies the CavityReferences used in the SlotReference.</td>
    </tr>
    <tr>
        <td>equippedCavityRef</td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavitymounting.md" >}}">CavityMounting</a></td>
        <td>0..*</td>
        <td>References the cavities that are used for the cavity mounting.</td>
    </tr>
    <tr>
        <td>equippedCavityRef</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavitymountingdetail.md" >}}">CavityMountingDetail</a></td>
        <td>0..*</td>
        <td>References the cavity that is used for the detailed description of the cavity mounting.</td>
    </tr>
    <tr>
        <td>firstCavity</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavitycoupling.md" >}}">CavityCoupling</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>pluggedCavityRef</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavityplugrole.md" >}}">CavityPlugRole</a></td>
        <td>0..*</td>
        <td>Defines which cavity / cavities in a connector instance is sealed by the plug.</td>
    </tr>
    <tr>
        <td>secondCavity</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavitycoupling.md" >}}">CavityCoupling</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>



