---
title: Variants
toc: false
type: specs
layout: diagram
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - VariantCodeSpecification
  - VariantGroupSpecification
  - VariantConfigurationSpecification
  - VariantGroup
  - VariantCode
  - Specification
  - VariantConfiguration
  - ConfigurableElement
menu:
  VEC-1.1.1:    
    parent: key-concepts
    identifier: key-concepts/variants
    weight: 1001005 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001005
---
{{< svgfigure src="variants.png" width="780" height="429" caption="Variants" numbered="true" >}}
  {{< svglink relref="../../classes/variantcodespecification.md" x="290.0" y="134.0" width="146.0" height="43.0" >}}
  {{< svglink relref="../../classes/variantgroupspecification.md" x="584.0" y="134.0" width="151.0" height="43.0" >}}
  {{< svglink relref="../../classes/variantconfigurationspecification.md" x="28.0" y="133.0" width="192.0" height="43.0" >}}
  {{< svglink relref="../../classes/variantgroup.md" x="549.0" y="225.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/variantcode.md" x="255.0" y="229.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/specification.md" x="255.0" y="15.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/variantconfiguration.md" x="17.0" y="225.0" width="217.0" height="103.0" >}}
  {{< svglink relref="../../classes/configurableelement.md" x="17.0" y="372.0" width="715.0" height="43.0" >}}
{{< / svgfigure >}}
<p> <span lang="EN-US">A <i>VariantConfigurationSpecification</i> is a container for </span><span lang="EN-GB">various </span><span lang="EN-US"><i>VariantConfigurations</i></span><span lang="EN-US">. Each <i>VariantConfiguration</i> describes a certain constraint which makes it possible to determine whether a relating <i>ConfigurableElement</i> is relevant regarding a certain configuration or not. All classes in the VEC that can reference information about their <i>VariantConfiguration</i> inherit directly or indirectly from <i>ConfigurableElement</i>. </span>     </p>      <p> <span lang="EN-GB">Note: <i>VariantConfiguration.logisticControlExpression</i> has been introduced as an alternative attribute for <i>VariantConfiguration.logisticControlString</i>. For the <i>logisticControlExpression</i> the VDA project group “Fahrzeugelektrik / AP 212” wants to introduce a defined syntax in the future. </span>     </p>      <p> <span lang="EN-GB">A <i>VariantCodeSpecification</i> is a container for various <i>VariantCodes</i>. Each <i>VariantCode</i> describes an elementary literal which can be used as part of a <i>VariantConfiguration</i>.<i>logisticControlString</i> or <i>VariantConfiguration.logisticControlExpression</i>.</span>     </p>      <p> <span lang="EN-US">A <i>VariantGroupSpecification</i> is a container for various <i>VariantGroups</i>. A <i>VariantGroup</i> describes a non-exclusive grouping for varying <i>VariantCodes</i> in combination with a specified literal which can be used as part of a <i>VariantConfiguration.logisticControlString</i> or <i>VariantConfiguration.logisticControlExpression</i>.</span>     </p>      <p> <span lang="EN-US">Note: The VEC does not constrain a <i>VariantCodeSpecification</i> or a <i>VariantGroup­Specification</i> to a precondition for use in <i>VariantConfigurations</i>. <i>VariantCodeSpecification</i> and <i>VariantGroupsSpecification</i> are intended as an optional means to exchange information independently about the “vocabulary” which is possible to express <i>VariantConfigurations</i></span><span lang="EN-GB">.</span>     </p>      <p> Note: Please refer to the detailed class description for information about which elements inherit from <i>ConfigurableElement.</i>     </p>