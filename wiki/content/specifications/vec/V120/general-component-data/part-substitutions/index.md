---
title: Part Substitutions
toc: false
type: specs
layout: diagram
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - PartOrUsageRelatedSpecification
  - PartVersion
  - PartSubstitutionSpecification
  - Specification
  - PartUsage
menu:
  VEC-1.2.0:    
    parent: general-component-data
    identifier: general-component-data/part-substitutions
    weight: 1004006 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1004006
---
{{< svgfigure src="part-substitutions.png" width="615" height="496" caption="Part Substitutions" numbered="true" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="199.0" y="378.0" width="188.0" height="55.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="381.0" y="217.0" width="196.0" height="127.0" >}}
  {{< svglink relref="../../classes/partsubstitutionspecification.md" x="234.0" y="140.0" width="209.0" height="43.0" >}}
  {{< svglink relref="../../classes/specification.md" x="192.0" y="0.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/partusage.md" x="21.0" y="238.0" width="227.0" height="55.0" >}}
{{< / svgfigure >}}
<p> A <i>PartSubstitutionSpecification</i> defines a set of <i>PartVersions</i> that can be used alternatively, due to an incomplete specification for the 150% product description. For a concrete wiring harness only one valid <i>PartVersion</i> remains. The selection logic for valid <i>PartVersions</i> is not included in the VEC. It is NOT valid to use a <i>PartSubstitutionSpecification</i> for <i>PartVersions</i> with identical properties that just have different <i>PartNumbers</i> in different contexts (e.g. multi supplier topics). For these cases an <i>ItemEquivalence </i>shall be used.      </p>      <p> A <i>PartSubstitutionSpecification </i>can be used e.g. for tubes or ring terminals, where a part of the specification is known at design time, but not yet the complete specification. E.g. for tubes the required inside diameter is not known at design time, since it depends on the bundle diameter of a specific configuration.      </p>      <p> In order to represent a component instance that utilizes such a <i>PartSubstitutionSpecification</i> a <i>PartUsage </i>is necessary. The <i>PartUsage </i>is the element in the VEC which defines instances of components, where a specific <i>PartVersion</i> is not yet known. It references one or more <i>PartOrUsageRelatedSpecifications</i> to describe the known properties of the component. If the <i>PartUsage</i> references an additional <i>PartSubstitutionSpecification </i>the set of valid <i>PartVersions</i> can be further constrained.      </p>