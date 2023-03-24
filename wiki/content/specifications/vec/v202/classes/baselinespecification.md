---
title: BaselineSpecification
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - BaselineSpecification
menu_name: vec-2.0.2
---
<p> A <i>BaselineSpecification</i> defines a set of <i>ItemVersion</i>s (<i>Document-</i> and <i>PartVersions</i>) that relate to each other in a certain way e.g. all parts and documents in their specific versions that contributed to a specific manufactured result.      </p>      <p> Baselines are a standard mechanism to support change, release and configuration management.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|state| [BaselineState]({{< relref "baselinestate.md" >}}) | 0..1 | <p> Defines the state of the baseline itself (e.g. if it is finalized or work in progress).      </p>      <p> &#160;      </p> | [BaselineSpecification]({{< relref "baselinespecification.md" >}}) |
|content| [BaselineContent]({{< relref "baselinecontent.md" >}}) | 0..1 | <p> Defines the state of the content of the baseline in regard of its defined scope.      </p>      <p> &#160;      </p> | [BaselineSpecification]({{< relref "baselinespecification.md" >}}) |

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
        <td>validVersions</td>
        <td><a href="{{< relref "itemversion.md" >}}">ItemVersion</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>ItemVersions </i>that are the content of the baseline.      </p>      <p> &#160;      </p></td>
    </tr>
    </tbody>
</table>




