---
title: VariantConfiguration
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A variant configuration defines a condition with which it is possible to express the inclusion or exclusion of ConfigurableElements in different variants of a product.      </p>      <p> A <i>VariantConfiguration </i>can reference another <i>VariantConfiguration</i> as <i>baseInclusion</i>. In this case, a <i>VariantConfiguration</i> can only be satisfied if its <i>baseInclusion </i>is also satisfied.      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | variants |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Variants]({{< relref "../key-concepts/variants" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the variant configuration. The identification is guaranteed to be unique within the specification and does not change over the time.      </p>    </body> </html>  | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>On optional human readable description of the variant configuration. </p></body></html> | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |
|logisticControlString | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a logisticControlString which can be used if the variant management is not done by boolean logic.      </p>    </body> </html>  | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |
|logisticControlExpression | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a logisticControlExpression expressed as boolean term.      </p>    </body> </html>  | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |
|configurationType | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Allows the classification of a VariantConfiguration.     </p>      <p> (see KBLFRM-250, KBLFRM-314, KBLFRM-290)      </p>    </body> </html>  | [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) | baseInclusion | 0..1 |  | <html>   <head>     </head>   <body> A <i>VariantConfiguration </i>can only be satisfied if its <i>baseInclusion </i>is satisfied as well.</body> </html> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) |  | baseInclusion | 0..1 | <html>   <head>     </head>   <body> A <i>VariantConfiguration </i>can only be satisfied if its <i>baseInclusion </i>is satisfied as well.</body> </html> |
| [ConfigurableElement]({{< relref "configurableelement.md" >}}) | 0..* | configInfo | 0..1 | References the configuration information that applies to the ConfigurableElement.  |
| [VariantConfigurationSpecification]({{< relref "variantconfigurationspecification.md" >}}) | 1 | variantConfiguration | 0..* | Specifies the individual VariantConfigurations defined in the VariantConfigurationSpecification.  |
