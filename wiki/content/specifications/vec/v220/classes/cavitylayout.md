---
title: CavityLayout
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - CavityLayout
menu_name: vec-2.2.0
---
<p> A <i>CavityLayout</i> represents a specific configuration pattern for a component with cavities. It defines a set of <i>virtualCavities</i> that serve as placeholders for the actual cavities provided by component that satisfies this layout (e.g. a contact module).      </p>      <p> It acts as a structural template, such as single-pole, five-pole, or multi-row configurations, that allows the definition of properties (e.g. a cavity mapping) for all components that satisfy this layout, instead of specifying those for each component individually (e.g. a cavity mapping for a contact modules within a specific modular slot of a collector housing). Its purpose is to create a layer of indirection between.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the <i>ModularSlotLayout</i>. The identification is guaranteed to be unique within the <i>ModularSlot</i>.      </p> | [CavityLayout]({{< relref "cavitylayout.md" >}}) |

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
        <td>virtualCavity</td>
        <td><a href="{{< relref "cavity.md" >}}">Cavity</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
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
        <td>cavityLayout</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cablesealspecification.md" >}}">CableSealSpecification</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    <tr>
        <td>cavityLayout</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cablesealplugspecification.md" >}}">CableSealPlugSpecification</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    <tr>
        <td>layout</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "modularslot.md" >}}">ModularSlot</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    <tr>
        <td>validLayoutCombination</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "modularslotconfiguration.md" >}}">ModularSlotConfiguration</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>



