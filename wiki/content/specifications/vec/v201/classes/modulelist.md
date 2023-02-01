---
title: ModuleList
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ModuleList
menu_name: vec-2.0.1
---
<p> A ModuleList is a mechanism to control additional / completion PartOccurrences. This means for a car configuration, if at least one of the modules in the list participates in the configuration, the &quot;completionComponent&quot; participates, too.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | modules |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the ModuleList. The identification is guaranteed to be unique within the ModuleListSpecification. For all VEC-documents a ModuleList-instance can be trusted to be the same if the ModuleListSpecification-instance is the same and the identification of the ModuleList is the same.      </p> | [ModuleList]({{< relref "modulelist.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the ModuleList. </p> | [ModuleList]({{< relref "modulelist.md" >}}) |

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
        <td>completionComponents</td>
        <td><a href="{{< relref "occurrenceorusage.md" >}}">OccurrenceOrUsage</a></td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the components that are used as completion, if any of the Modules in the ModuleList appears in a configuration.</td>
    </tr>
    <tr>
        <td>moduleInList</td>
        <td><a href="{{< relref "partwithsubcomponentsrole.md" >}}">PartWithSubComponentsRole</a></td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the Modules that belong to the ModuleList. If any of the referenced Modules participates in a configuration the completion components participate, too.</td>
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
        <td>moduleListConfiguration</td>
        <td>1..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "modulelistspecification.md" >}}">ModuleListSpecification</a></td>
        <td>1</td>
        <td>Specifies the ModuleLists defined in the ModuleListSpecification.</td>
    </tr>
    </tbody>
</table>



