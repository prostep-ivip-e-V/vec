---
title: Variants
toc: false
type: specs
layout: diagram
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - VariantConfigurationType
  - ApplicationConstraintType
  - VariantConfigurationSpecification
  - ApplicationConstraint
  - Specification
  - Project
  - ConfigurationConstraint
  - ApplicationConstraintSpecification
  - VariantConfiguration
  - ConfigurableElement
menu:
  VEC-2.0.1:    
    parent: key-concepts
    identifier: key-concepts/variants
    weight: 1001003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001003
---
{{< svgfigure src="variants.png" width="748" height="721" caption="Variants" numbered="true" >}}
  {{< svglink relref="../../classes/variantconfigurationtype.md" x="581.0" y="218.0" width="149.0" height="82.0" >}}
  {{< svglink relref="../../classes/applicationconstrainttype.md" x="287.0" y="589.0" width="154.0" height="82.0" >}}
  {{< svglink relref="../../classes/variantconfigurationspecification.md" x="298.0" y="126.0" width="192.0" height="34.0" >}}
  {{< svglink relref="../../classes/applicationconstraint.md" x="42.0" y="218.0" width="201.0" height="139.0" >}}
  {{< svglink relref="../../classes/specification.md" x="182.0" y="15.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/project.md" x="56.0" y="589.0" width="217.0" height="118.0" >}}
  {{< svglink relref="../../classes/configurationconstraint.md" x="189.0" y="421.0" width="225.0" height="55.0" >}}
  {{< svglink relref="../../classes/applicationconstraintspecification.md" x="35.0" y="127.0" width="239.0" height="36.0" >}}
  {{< svglink relref="../../classes/variantconfiguration.md" x="287.0" y="218.0" width="260.0" height="103.0" >}}
  {{< svglink relref="../../classes/configurableelement.md" x="140.0" y="512.0" width="365.0" height="34.0" >}}
{{< / svgfigure >}}
<p> <span lang="EN-US">With variance management features, the VEC supports two dimensions of variance. <i>VariantConfigurations</i> and <i>ApplicationConstraints. </i></span><span lang="EN-US"><i>VariantConfigurations </i></span><span lang="EN-US">define the validity of an element based on characteristics of the product itself, such as features, functions, options or technical characteristics. <i>ApplicationConstraints</i> define the validity of an element based on conditions &quot;around&quot; the product like manufacturing schedules and change management, association with a specific product derivative or factory dependencies. <i>VariantConfigurations</i> are expressed by a <i>LogisticalControlString </i>or<i> </i></span><i><span lang="EN-US">LogisticalControlExpression</span></i><span lang="EN-US">, typically some kind of Boolean logic in a company specific syntax. <i>ApplicationConstraints </i>are expressed by a concise semantic with attributes and relations or by using <i>EffectivityControlKeys,</i> which are unique references in the logisitics/change/scheduling control systems of an organization.</span>      </p>      <p> <span lang="EN-US">All elements in the VEC that could be subject to product variance are <i>ConfigurableElements </i>(classes that are derived from <i>ConfigurableElement</i>)<i>.</i> Since most variant management conditions do not exclusively affect only one element, </span><span lang="EN-US"><i>ApplicationConstraints</i></span><span lang="EN-US"> and </span><span lang="EN-US"><i>VariantConfigurations</i> are embedded in their own container <i>Specifications</i>, the <i>ApplicationConstraintSpecification</i> and the <i>VariantConfigurationSpecification. </i>&#160;</span>      </p>      <p> <span lang="EN-US">Till VEC 2.0 a <i>ConfigurableElement</i> could only reference a single VariantConfiguration.This is true, if you consider only one specific context, however, there can be different variant management contexts for a single element. Different contexts might be defined by </span><span lang="EN-US"><i>ApplicationConstraints, </i>such as </span><span lang="EN-US">differing variant conditions for different product derivatives or the change of </span><span lang="EN-US"><i>VariantConfigurations</i> over the time. Another reason for different contexts might be, that </span><span lang="EN-US"><i>VariantConfigurations</i> are based on a defined set of variant codes (a universe of variance). Multiple universes can coexist in an organisation and there are a variety of reasons that justify their existence, for example productlines might define their own variant codes and semantics, the variant codes (e.g. feature model) might different for a set of building blocks compared to an actual vehicle, or the variant codes of a generic E/E-component might different from the ones in a specific usage.  </span>      </p>      <p> <span lang="EN-US">Such a context is defined by a combination of <i>ApplicationConstraints</i> and a specific <i>VariantConfiguration.ConfigurationType</i> and is represented by a <i>ConfigurationConstraint.</i> With the </span><span lang="EN-US"><i>ConfigurationConstraint</i>, a</span><span lang="EN-US"> <i>ConfigurableElement</i> can have multiple <i>VariantConfigurations.</i> However, an element shall only have one </span><span lang="EN-US"><i>VariantConfiguration</i> for a specific context (combination of </span><span lang="EN-US"><i>ApplicationConstraints &amp;&#160;</i></span><span lang="EN-US"> </span><span lang="EN-US"><i>VariantConfiguration.ConfigurationType).</i> If an element has multiple variant conditions within a context, those shall be expressed by the boolean logic within the <i>VariantConfiguration.LogisticControlExpression</i>. </span><span lang="EN-US"></span>      </p>      <p> <span lang="EN-US">&#160;</span>      </p>      <p> <span lang="EN-US"><i>Note: </i>The direct associations between </span><span lang="EN-US"><i>ConfigurableElement </i>and<i> </i></span><span lang="EN-US"><i>ApplicationConstraints </i>and<i> </i></span><span lang="EN-US"><i>VariantConfigurations</i> have been deprecated with VEC&#160;2.0 and haven been kept only for backwards compatibility. They will be removed in a future version. It is <u><b>not</b></u> valid to use these associations in combination with <i>ConfigurationConstraints.</i></span>      </p>      <p> <span lang="EN-US"><i>N</i></span><i>ote:</i> Please refer to the detailed class description for information about which elements inherit from <i>ConfigurableElement.</i>      </p>      <p> <span lang="EN-GB"><i>Note:</i> <i>VariantConfiguration.logisticControlExpression</i> has been introduced as an alternative attribute for <i>VariantConfiguration.logisticControlString</i>. For the <i>logisticControlExpression</i> the prostep ivip project group &quot;VES-WF&quot; wants to introduce a defined syntax in the future. </span>      </p>