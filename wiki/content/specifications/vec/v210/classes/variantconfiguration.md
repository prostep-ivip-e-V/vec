---
title: VariantConfiguration
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - VariantConfiguration
menu_name: vec-2.1.0
---
<p> A variant configuration defines a condition with which it is possible to express the inclusion or exclusion of ConfigurableElements in different variants of a product.      </p>      <p> A <i>VariantConfiguration </i>can reference another <i>VariantConfiguration</i> as <i>baseInclusion</i>. In this case, a <i>VariantConfiguration</i> can only be satisfied if its <i>baseInclusion </i>is also satisfied.      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the variant configuration. The identification is guaranteed to be unique within the specification and does not change over the time.      </p> | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>On optional human readable description of the variant configuration. </p> | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |
|logisticControlString| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a logisticControlString which can be used if the variant management is not done by boolean logic.      </p> | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |
|logisticControlExpression| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a logisticControlExpression expressed as boolean term.      </p> | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |
|configurationType| [VariantConfigurationType]({{< relref "variantconfigurationtype.md" >}}) | 0..1 | <p> Allows the classification of a VariantConfiguration.     </p>      <p> (see KBLFRM-250, KBLFRM-314, KBLFRM-290)      </p> | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |

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
        <td>baseInclusion</td>
        <td><a href="{{< relref "variantconfiguration.md" >}}">VariantConfiguration</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> A <i>VariantConfiguration </i>can only be satisfied if its <i>baseInclusion </i>is satisfied as well.      </p></td>
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
        <td>baseInclusion</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "variantconfiguration.md" >}}">VariantConfiguration</a></td>
        <td></td>
        <td><p> A <i>VariantConfiguration </i>can only be satisfied if its <i>baseInclusion </i>is satisfied as well.      </p></td>
    </tr>
    <tr>
        <td>configInfo</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "configurableelement.md" >}}">ConfigurableElement</a></td>
        <td>0..*</td>
        <td>{{< deprecated since="2.0.0" reason="Replaced with ConfigurationConstraint.">}}<p> References the configuration information that applies to the ConfigurableElement.      </p></td>
    </tr>
    <tr>
        <td>configInfo</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "configurationconstraint.md" >}}">ConfigurationConstraint</a></td>
        <td></td>
        <td><p> References the configuration information that applies to the ConfigurationConstraint.      </p></td>
    </tr>
    <tr>
        <td>variantConfiguration</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "variantconfigurationspecification.md" >}}">VariantConfigurationSpecification</a></td>
        <td>1</td>
        <td>Specifies the individual VariantConfigurations defined in the VariantConfigurationSpecification.</td>
    </tr>
    </tbody>
</table>



