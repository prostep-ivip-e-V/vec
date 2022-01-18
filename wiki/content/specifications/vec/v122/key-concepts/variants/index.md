---
title: Variants
toc: false
type: specs
layout: diagram
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - ApplicationConstraintType
  - ApplicationConstraint
  - VariantConfigurationSpecification
  - Specification
  - Project
  - VariantConfiguration
  - ApplicationConstraintSpecification
  - ConfigurableElement
menu:
  VEC-1.2.2:    
    parent: key-concepts
    identifier: key-concepts/variants
    weight: 1001003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001003
---
{{< svgfigure src="variants.png" width="523" height="574" caption="Variants" numbered="true" >}}
  {{< svglink relref="../../classes/applicationconstrainttype.md" x="287.0" y="442.0" width="154.0" height="82.0" >}}
  {{< svglink relref="../../classes/applicationconstraint.md" x="42.0" y="218.0" width="185.0" height="115.0" >}}
  {{< svglink relref="../../classes/variantconfigurationspecification.md" x="298.0" y="126.0" width="192.0" height="34.0" >}}
  {{< svglink relref="../../classes/specification.md" x="182.0" y="15.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/project.md" x="56.0" y="442.0" width="217.0" height="118.0" >}}
  {{< svglink relref="../../classes/variantconfiguration.md" x="287.0" y="218.0" width="217.0" height="103.0" >}}
  {{< svglink relref="../../classes/applicationconstraintspecification.md" x="35.0" y="127.0" width="239.0" height="36.0" >}}
  {{< svglink relref="../../classes/configurableelement.md" x="140.0" y="379.0" width="365.0" height="34.0" >}}
{{< / svgfigure >}}
<p> <span lang="EN-US">A <i>VariantConfigurationSpecification</i> is a container for </span><span lang="EN-GB">various </span><span lang="EN-US"><i>VariantConfigurations</i></span><span lang="EN-US">. Each <i>VariantConfiguration</i> describes a certain constraint which makes it possible to determine whether a relating <i>ConfigurableElement</i> is relevant regarding a certain configuration or not. All classes in the VEC that can reference information about their <i>VariantConfiguration</i> inherit directly or indirectly from <i>ConfigurableElement</i>. </span>      </p>      <p> The <i>ApplicationConstraint </i>is quite like the <i>VariantConfiguration. </i>It restricts or allows the application of a specific configurable element (e.g. a <i>PartOccurrence </i>or an element of a system schematic). It is complementary to the <i>VariantConfiguration </i>which is defined in some form of control string and restricts the existence of an element based on the feature space (within a platform). The <i>ApplicationConstraint </i>is focused on the dimensions of time and product hierarchy in a concise semantic way (attributes and relationships).      </p>      <p> Note: Please refer to the detailed class description for information about which elements inherit from <i>ConfigurableElement.</i>      </p>      <p> <span lang="EN-GB">Note: <i>VariantConfiguration.logisticControlExpression</i> has been introduced as an alternative attribute for <i>VariantConfiguration.logisticControlString</i>. For the <i>logisticControlExpression</i> the VDA project group &ldquo;Fahrzeugelektrik / AP 212&rdquo; wants to introduce a defined syntax in the future. </span>      </p>