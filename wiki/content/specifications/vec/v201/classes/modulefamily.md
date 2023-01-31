---
title: ModuleFamily
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ModuleFamily
menu_name: vec-2.0.1
---
<p> A ModuleFamily is a mechanism to group mutually exclusive modules. This could be for example something like &quot;audio equipment&quot;, &quot;diesel engine&quot;.     </p>      <p> In other words, a module family groups different variants of the same basic feature. In a real car configuration only one member of the family can participate. For the example module family &quot;audio equipment&quot; the members may be named: &quot;Basic Audio Equipment&quot;, &quot;Standard Audio Equipment&quot;, &quot;Premium / High End Audio Equipment&quot;.     </p>

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
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the ModuleFamily. The identification is guaranteed to be unique within the ModuleFamilySpecification. For all VEC-documents a ModuleFamily-instance can be trusted to be the same if the ModuleFamilySpecification-instance is the same and the identification of the ModuleFamily is the same.      </p> | [ModuleFamily]({{< relref "modulefamily.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the ModuleFamily. </p> | [ModuleFamily]({{< relref "modulefamily.md" >}}) |

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
        <td>moduleInFamily</td>
        <td><a href="{{< relref "partwithsubcomponentsrole.md" >}}">PartWithSubComponentsRole</a></td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the Modules that belong to the ModuleFamily.</td>
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
        <td>moduleFamily</td>
        <td>1..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "modulefamilyspecification.md" >}}">ModuleFamilySpecification</a></td>
        <td>1</td>
        <td>Specifies the ModuleFamilies defined in the ModuleFamilySpecification.</td>
    </tr>
    </tbody>
</table>



