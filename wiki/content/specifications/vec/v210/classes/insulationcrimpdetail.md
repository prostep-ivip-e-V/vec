---
title: InsulationCrimpDetail
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - InsulationCrimpDetail
menu_name: vec-2.1.0
---
<p> The <i>InsulationCrimpDetail</i><i> </i>defines crimp values for a insulation crimp. The selection criteria to which the <i>InsulationCrimpDetail</i><i> </i>applies are defined by the referenced <i>InsulationSpecification</i> and the <i>ConductorSpecification</i> referenced by the containing <i>CoreCrimpDetail.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [CrimpDetail]({{< relref "crimpdetail.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|size| [Size]({{< relref "size.md" >}}) | 0..1 | <p> Defines the expected size of the crimp. The <i>height</i> is measured in direction of the crimp opening. The <i>width</i> is measured in orthogonal to the <i>height</i> and orthogonal to main axis of the terminal (<i>TerminalSpecification.OverallLength</i>).      </p> | [CrimpDetail]({{< relref "crimpdetail.md" >}}) |
|pullOffForce| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The minimum force that the completed crimp should withstand when wire is being pulled off the terminal. Above that force, the crimp can be expected to be destroyed at any time.      </p> | [InsulationCrimpDetail]({{< relref "insulationcrimpdetail.md" >}}) |

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
        <td>appliesTo</td>
        <td><a href="{{< relref "insulationspecification.md" >}}">InsulationSpecification</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
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
        <td>insulationCrimpDetails</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "corecrimpdetail.md" >}}">CoreCrimpDetail</a></td>
        <td>1</td>
        <td><p> Defines the different <i>InsulationCrimpDetails </i>that are valid combinations for this <i>CoreCrimpDetail.</i>      </p></td>
    </tr>
    </tbody>
</table>



