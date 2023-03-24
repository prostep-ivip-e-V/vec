---
title: VariantCode
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - VariantCode
menu_name: vec-2.0.2
---
<p> VariantCodes are defining the literals on which VariantConfiguration are stated. Possible VariantCodes might be different for steering types, optional equipment, engine-power class.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | variants |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the variant code. This is also the literal value for the VariantCode, which shall be used in the logisticControlExpressions of VariantConfigurations.      </p> | [VariantCode]({{< relref "variantcode.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the VariantCode.      </p> | [VariantCode]({{< relref "variantcode.md" >}}) |
|abbreviation| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..1 | <p> Room for a human readable short name, title etc. of the VariantConfiguration.      </p> | [VariantCode]({{< relref "variantcode.md" >}}) |
|codeType| [VariantCodeType]({{< relref "variantcodetype.md" >}}) | 0..1 | <p> Allows the classification of a VariantCodes.      </p> | [VariantCode]({{< relref "variantcode.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>On optional human readable description of the variant code. </p> | [VariantCode]({{< relref "variantcode.md" >}}) |


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
        <td>variantCode</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "variantcodespecification.md" >}}">VariantCodeSpecification</a></td>
        <td>1</td>
        <td>Specifies the individual VariantCodes defined in the VariantCodeSpecification.</td>
    </tr>
    <tr>
        <td>variantCode</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "variantgroup.md" >}}">VariantGroup</a></td>
        <td>0..*</td>
        <td>References the VariantCodes that are member of the VariantGroup.</td>
    </tr>
    </tbody>
</table>



