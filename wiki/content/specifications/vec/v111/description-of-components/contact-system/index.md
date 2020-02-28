---
title: Contact System
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
  - ContactSystemSpecification
  - PartVersion
  - ConductorSpecification
  - ContactSystem
  - Specification
menu:
  VEC-1.1.1:    
    parent: description-of-components
    identifier: description-of-components/contact-system
    weight: 1003015 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003015
---
{{< svgfigure src="contact-system.png" width="649" height="477" caption="Contact System" numbered="true" >}}
  {{< svglink relref="../../classes/contactsystemspecification.md" x="42.0" y="131.0" width="162.0" height="43.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="51.0" y="348.0" width="196.0" height="115.0" >}}
  {{< svglink relref="../../classes/conductorspecification.md" x="422.0" y="133.0" width="213.0" height="163.0" >}}
  {{< svglink relref="../../classes/contactsystem.md" x="47.0" y="225.0" width="215.0" height="67.0" >}}
  {{< svglink relref="../../classes/specification.md" x="43.0" y="15.0" width="217.0" height="67.0" >}}
{{< / svgfigure >}}
<p> A <i>ContactSystemSpecification</i> is a container for various <i>ContactSystems</i>. Each <i>ContactSystem</i> references exactly two <i>PartVersions</i> representing the interconnected terminals. Furthermore, each <i>ContactSystem</i> references a <i>ConductorSpecification</i> for which the <i>ContactSystem</i> is defined.      </p>