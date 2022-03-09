---
title: VariantConfiguration
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - VariantConfiguration
menu_name: vec-2.0.0
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
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the variant configuration. The identification is guaranteed to be unique within the specification and does not change over the time.      </p> | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>On optional human readable description of the variant configuration. </p> | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |
|logisticControlString | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a logisticControlString which can be used if the variant management is not done by boolean logic.      </p> | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |
|logisticControlExpression | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a logisticControlExpression expressed as boolean term.      </p> | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |
|configurationType | [VariantConfigurationType]({{< relref "variantconfigurationtype.md" >}}) | 0..1 | <p> Allows the classification of a VariantConfiguration.     </p>      <p> (see KBLFRM-250, KBLFRM-314, KBLFRM-290)      </p> | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) | baseInclusion | 0..1 |  | <p> A <i>VariantConfiguration </i>can only be satisfied if its <i>baseInclusion </i>is satisfied as well.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |  | baseInclusion | 0..1 | <p> A <i>VariantConfiguration </i>can only be satisfied if its <i>baseInclusion </i>is satisfied as well.      </p> |
| [ConfigurableElement]({{< relref "configurableelement.md" >}}) | 0..* | configInfo | 0..1 | <p> <i>Deprecated since VEC&#160;V2.0.0. Use ConfigurationConstraints instead.</i>      </p>      <p> References the configuration information that applies to the ConfigurableElement.      </p> |
| [ConfigurationConstraint]({{< relref "configurationconstraint.md" >}}) |  | configInfo | 0..1 | <p> References the configuration information that applies to the ConfigurationConstraint.      </p> |
| [VariantConfigurationSpecification]({{< relref "variantconfigurationspecification.md" >}}) | 1 | variantConfiguration | 0..* | Specifies the individual VariantConfigurations defined in the VariantConfigurationSpecification. |
