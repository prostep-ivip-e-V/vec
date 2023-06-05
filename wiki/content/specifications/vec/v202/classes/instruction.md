---
title: Instruction
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - Instruction
menu_name: vec-2.0.2
---
<p>Abstract super class to specify different types of instructions. Possible instructions are text, file or document based.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instructions |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [DocumentBasedInstruction]({{< relref "documentbasedinstruction.md" >}}), [FileBasedInstruction]({{< relref "filebasedinstruction.md" >}}), [TextBasedInstruction]({{< relref "textbasedinstruction.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|


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
        <td>installationInstruction</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "occurrenceorusage.md" >}}">OccurrenceOrUsage</a></td>
        <td>0..1</td>
        <td>Room to specify InstallationInstruction(s) for the OccurrenceOrUsage.</td>
    </tr>
    </tbody>
</table>



