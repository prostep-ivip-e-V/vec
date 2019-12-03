---
title: Variant Structure
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: key-concepts/variant-structure    
    parent: key-concepts
    weight: 1001007 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001007
---
{{< svgfigure src="variant-structure.png" width="940" height="442" caption="Variant Structure" numbered="true" >}}
  {{< svglink relref="../classes/variantgrouptype.md" x="294.0" y="357.0" width="108.0" height="70.0" >}}
  {{< svglink relref="../classes/variantcodespecification.md" x="42.0" y="133.0" width="146.0" height="34.0" >}}
  {{< svglink relref="../classes/variantgroupspecification.md" x="336.0" y="133.0" width="151.0" height="34.0" >}}
  {{< svglink relref="../classes/variantstructurespecification.md" x="609.0" y="133.0" width="169.0" height="34.0" >}}
  {{< svglink relref="../classes/specification.md" x="273.0" y="14.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../classes/variantstructurenode.md" x="623.0" y="224.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../classes/variantgroup.md" x="301.0" y="224.0" width="217.0" height="103.0" >}}
  {{< svglink relref="../classes/variantcode.md" x="7.0" y="228.0" width="217.0" height="103.0" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> <span lang="EN-GB">The classes displayed in this diagram can be used to describe meta information about the elements used to described variance properties. The description of the variance information of a concrete element (<i>ConfigurableElement</i>) ist done with a <i>VariantConfiguration </i>and the contained <i>logisticControlString</i>. These strings are normally created from <i>VariantCodes</i> and a proprietary boolean syntax. </span>      </p>      <p> <span lang="EN-GB">A <i>VariantCodeSpecification</i> is a container for various <i>VariantCodes</i>. Each <i>VariantCode</i> describes an elementary literal which can be used as part of a <i>VariantConfiguration</i>.<i>logisticControlString</i> or <i>VariantConfiguration.logisticControlExpression</i>.</span>      </p>      <p> <span lang="EN-US">A <i>VariantGroupSpecification</i> is a container for various <i>VariantGroups</i>. A <i>VariantGroup</i> describes a grouping for <i>VariantCodes</i>. There can be a wide variety of reasons to group VariantCodes. However, the most common is to mark <i>VariantCodes</i> that belong to the same family (mutally exclusive) variant codes. </span>      </p>      <p> A <i>VariantStructureSpecification </i>with its <i>VariantStructureSpecificationNode</i> can be used to define any kind of hierarchical structure upon the <i>VariantGroups</i>.      </p>      <p> <span lang="EN-US">Note: The VEC does not constrain a <i>VariantCodeSpecification</i> or a <i>VariantGroup­Specification</i> to a precondition for use in <i>VariantConfigurations</i>. <i>VariantCodeSpecification</i> and <i>VariantGroupsSpecification</i> are intended as an optional means to exchange information independently about the &ldquo;vocabulary&rdquo; which is possible to express <i>VariantConfigurations</i></span><span lang="EN-GB">.</span>      </p>  </body> </html>
