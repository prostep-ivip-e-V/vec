---
title: CrimpDetail
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - CrimpDetail
menu_name: vec-2.1.0
---
<p> Abstract base class for the definition of <i>CrimpDetail-</i>information. See <i>CoreCrimpDetail</i> &amp;&#160;<i>InsulationCrimpDetail</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [CoreCrimpDetail]({{< relref "corecrimpdetail.md" >}}), [InsulationCrimpDetail]({{< relref "insulationcrimpdetail.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|size| [Size]({{< relref "size.md" >}}) | 0..1 | <p> Defines the expected size of the crimp. The <i>height</i> is measured in direction of the crimp opening. The <i>width</i> is measured in orthogonal to the <i>height</i> and orthogonal to main axis of the terminal (<i>TerminalSpecification.OverallLength</i>).      </p> | [CrimpDetail]({{< relref "crimpdetail.md" >}}) |

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
        <td>manualCrimpTool</td>
        <td><a href="{{< relref "resourceversion.md" >}}">ResourceVersion</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> A list of tools that are permitted for manual crimping processes.      </p></td>
    </tr>
    <tr>
        <td>machineCrimpTool</td>
        <td><a href="{{< relref "resourceversion.md" >}}">ResourceVersion</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> A list of tools that are permitted for machine crimping processes.      </p></td>
    </tr>
    </tbody>
</table>




