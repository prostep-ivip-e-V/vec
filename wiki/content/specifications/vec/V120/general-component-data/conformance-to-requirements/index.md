---
title: Conformance to Requirements
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
  - DocumentVersion
  - Specification
  - RequirementsConformanceStatement
  - PartUsage
  - RequirementsConformanceSpecification
menu:
  VEC-1.2.0:    
    parent: general-component-data
    identifier: general-component-data/conformance-to-requirements
    weight: 1004007 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1004007
---
{{< svgfigure src="conformance-to-requirements.png" width="926" height="467" caption="Conformance to Requirements" numbered="true" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="324.0" y="169.0" width="188.0" height="55.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="22.0" y="197.0" width="196.0" height="127.0" >}}
  {{< svglink relref="../../classes/documentversion.md" x="617.0" y="15.0" width="204.0" height="151.0" >}}
  {{< svglink relref="../../classes/specification.md" x="309.0" y="43.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/requirementsconformancestatement.md" x="308.0" y="386.0" width="219.0" height="67.0" >}}
  {{< svglink relref="../../classes/partusage.md" x="15.0" y="92.0" width="227.0" height="55.0" >}}
  {{< svglink relref="../../classes/requirementsconformancespecification.md" x="302.0" y="302.0" width="232.0" height="34.0" >}}
{{< / svgfigure >}}
<p> During the life cycle of a given PartVersion manifold situations are existing, where the conformance of that PartVersion to a set of requirements must be demonstrated or is required to be known. To represent the result of such a conformance test<i>, </i>the VEC offers the <i>RequirementsConformanceSpecification</i> and the <i>RequirementsConformanceStatement.</i>      </p>      <p> As the <i>RequirementsConformanceSpecification</i> is a <i>PartOrUsageRelatedSpecification,</i> it can be used to express conformance for a set of <i>PartVersions</i> or <i>PartUsages</i>. The <i>DocumentVersion </i>in which the <i>RequirementsConformanceSpecification </i>is contained, normally represents the original document by which the conformance was approved (e.g. a type rating).      </p>      <p> The actual conformance is expressed with <i>RequirementsConformanceStatements.</i> It can be used to document a successful or explicitly failed conformance test. The requirements for which the state is valid, are referenced as a <i>DocumentVersion</i> via the <i>requirementsSpecification</i> association.      </p>      <p> If a <i>RequirementsConformanceStatement</i> is omitted for a <i>PartVersion</i>, this does not imply any conformance information at all. The <i>RequirementsConformanceStatement</i> can be missing because the component has never been tested according to the specification, or it has been tested, but the information was not transferred within this specific VEC instance, or the information is just not available in a digitally analysable form.      </p>      <p> The VEC does not impose any restrictions on the kind of requirements specifications for which conformance can be expressed. This can be for example:      </p>      <ul>       <li> A standard (company or public) like an ISO&#160;or a DIN.        </li>       <li> A definition of requirements in the sense of a specification sheet.        </li>       <li> Requirements that allow certain handling procedures (e.g. suitability for production automation)        </li>     </ul>     <p> The VEC&#160;does not impose any restrictions on how the conformance must be demonstrated. This can be done with well-defined testing procedure, a manual assessment, an audit, a type examination or anything else. Normally the requirements specification itself defines how conformance to it must be demonstrated.      </p>