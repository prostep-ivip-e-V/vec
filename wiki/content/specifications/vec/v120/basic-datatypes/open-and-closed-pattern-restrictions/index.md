---
title: Open and Closed Pattern Restrictions
toc: false
type: specs
layout: diagram
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - OpenPatternRestriction
  - ClosedPatternRestriction
menu:
  VEC-1.2.0:    
    parent: basic-datatypes
    identifier: basic-datatypes/open-and-closed-pattern-restrictions
    weight: 1002007 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1002007
---
{{< svgfigure src="open-and-closed-pattern-restrictions.png" width="341" height="78" caption="Open and Closed Pattern Restrictions" numbered="true" >}}
  {{< svglink relref="../../classes/openpatternrestriction.md" x="190.0" y="15.0" width="137.0" height="49.0" >}}
  {{< svglink relref="../../classes/closedpatternrestriction.md" x="15.0" y="15.0" width="147.0" height="49.0" >}}
{{< / svgfigure >}}
<p> The concept of open enumerations mentioned before is useful in cases where a restriction to a limited amount of well-known values is necessary. However, the continuous evolution of the VEC&#160;has shown, that this approach is not feasible in all situations.      </p>      <p> Therefore, the concept of pattern restrictions has been introduced. A pattern restriction is a regular expression that defines valid attribute values. Those restrictions can be used when a valid pattern is known, but the explicit enumeration of the values is not possible. For example, it is known that valid values for the coding of a connector are only strings with two digits of alphanumerical characters. To represent this as an enumeration would require 1296 enumeration literals.      </p>      <p> In the UML&#160;model attributes that shall be restricted with a pattern are defined like regular class attributes with a custom <i>Primitive Type</i> as datatype (e.g. +coding: CodingName[1]).&#160;The <i>Primitive Type </i>is stereotyped either with <i>ClosedPatternRestriction </i>or <i>OpenPatternRestriction. </i>The semantic for open and closed is the same as for enumerations. <i>ClosedPatternRestrictions</i> are included in all schema versions, <i>OpenPatternRestrictions </i>only in the strict schema versions. The actual pattern of the restriction is defined as &quot;class constraint&quot; on the <i>Primitive Type.</i>      </p>      <p> In the XML&#160;Schema the <i>Primitive Types </i>are translated as <i>&lt;xs:simpleType&gt;</i> based on <i>xs:string</i> with a <i>xs:pattern </i>restriction.      </p>      <p> &#160;      </p>      <p> &#160;      </p>