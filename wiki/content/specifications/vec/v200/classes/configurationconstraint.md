---
title: ConfigurationConstraint
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - ConfigurationConstraint
menu_name: vec-2.0.0-rc1
---
<p> Represents a <i>ConfigurationContraint </i>(&quot;When does this element exist?&quot;) for a specific application (<i>ApplicationConstraint)</i> and a &quot;configuration universe&quot;&#160;(<i>VariantConfiguration.configurationType</i>)      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the <i>ConfigurationConstraint</i>. The identification is guaranteed to be unique within the <i>ConfigurableElement</i> and does not change over the time.      </p> | [ConfigurationConstraint]({{< relref "configurationconstraint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) | configInfo | 0..1 |  | <p> References the configuration information that applies to the ConfigurationConstraint.      </p> |
| [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) | applicationConstraint | 0..* |  | <p> References the application constraint that applies to the ConfigurationConstraint.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConfigurableElement]({{< relref "configurableelement.md" >}}) | 1 | configurationConstraint | 0..* | <p> Contains or more <i>ConfigurationContraints</i> that apply to this <i>ConfigurableElement.</i> This is explained in more details in the recommendation chapter / model diagram &quot;Variants&quot;.      </p> |
