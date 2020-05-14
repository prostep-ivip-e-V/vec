---
title: Release Notes - Version 1.2.0
linktitle: Release Notes
toc: true
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
category: Release Notes
documentType: "Release Notes"
menu:
  vec-1.2.0:
    weight: 2
    identifier: release-notes
weight: 60
---
## Overview
The following list shows all major changes to the preceding recommendation (VEC Version 1.1). Changes that affect the resulting schema in an incompatible way are marked with a &quot;X&quot; in the last column. For more details on compatibility [see]({{< relref "#compatibility-to-preceding-versions" >}}). A detailed listing of all issues resolved version with this 
version can be found ind the [detailed release notes]({{< relref "detailed-release-notes.md" >}}).

| Change | Incompatibility |
| --- | --- |
| Reorganization of the Model Outline (Chapter 5) | |
| Added &quot;General Guidelines&quot; for requirements on VEC implementations that are not strictly related to the model structure (Chapter 4). | |
| Added model documentation to the generated XML Schema files. | |
| General orthogonal grouping concept to represent functional mappings and requirements (see AssignmentGroup) | |
| Added concept for the instantiation of topologies. | |
| Added concept for hierarchical topologies supporting multiple use case (e.g. better traceability between geometry and harness process, splice position optimization, layered segments with a defined inner structure, composite segments, …) | |
| Added concept for assigning topologies to zones. | |
| Completely revised the interpretation of Net- &amp; ConnectionSpecification (Architectural Layer &amp; System Schematic) | X |
| Refactoring of the multi-core representation | X |
| Added support for FIT-Rates for components | |
| Added concept to express conformance with requirements (see RequirementsConformanceSpecification) | |
| Added concept to define application constraints on instances (e.g. component nodes) (see ApplicationConstraint) | |
| Added concept for common variant configurations (base inclusion) | |
| Added concept to define system schematic traceability for directly mated E/E components. | |
| Added concept to define multicores in their usage (similar to twisted pairs) | |
| Added concept for traceability between wires and their respective fusing. | |
| Added concept to define bending restrictions on topologies. | |
| Added concept to define baselines (well defined sets of ItemVersions) | |
| Added concept to integrate with the 3D geometries of individual components (e.g. bounding box, | |
| Added concept for default tolerance definitions | |
| Added concept for wire addons in connectors. | |
| Allowed part usage (component instances without part number) in the bill of material. | |
| Added support for component selection tables. | |
| Added concepts to support 150% E/E component definitions. | |
| Added concepts for the description of fuse boxes and other E/E-Components <ul><li>internal connectivity</li><li>variance of internal connectivity</li><li>modularity</li><ul> | |
| Improved modification tracking / change detection for the digital representation of documents (independent from the approval process in the domain) | |
| Refactored 3D representation of segments. Dropped current 3D-curve model and replaced it by complete representation of NURBS. | X |
| Added concept for integrated terminals and supplementary components in different contacting situations (e.g. wire fixations) | |
| Clarification that contact points are free of variance. | |
| Refactored attributes for compatibility definitions between terminals, plugs, cavities, seals and wires. | X |
| Added concept for flat band wires and flat cores. | |
| Dropped support for conformance classes. | X |
| Added support for grouping component ports by connector. | X |
| Definition of complex part relations | |
| Support for complex custom properties und multiple primitive types. | |
| Added support for hierarchical structures on variant groups and added multiple attributes to the classes in the variant configuration scope. | |
| Added support for grommets sealed with additional single wire seals. | |
| Refactored concept for supplementary parts of components in specified locations (e.g. Slots) | X |
| Added support for diodes | |
| Added support for cable ties | |
| Added support for multi-fuses | |

The following list contains all minor changes, that affected schema compatibility.

| Change | Incompatibility |
| --- | --- |
| Refactored and renamed &quot;ContactSystem&quot; to TerminalPairing | X |
| Path mistakenly inherited from ConfigurableElement | X |
| Moved &quot;referenceElement&quot; Association from PartOccurrence to OccurrenceOrUsage | X |
| Refactoring of WireProtectionRole, introduction of TapeRole | X |
| Redefined semantics for ConnectionGroup and NetGroup | X |
| Removed SealingClass and AbrasionResistanceClass (replaced by general concept RobustnessProperties). | X |
| Removed CompatibilityStatement &amp; CompatibilitySpecification | X |
| Refactored modular slot definition (now using indirect references with PartVersion) | X |
| Refactored CopyrightInformation | X |
| Moved attribute TerminalSpecification.angle to WireReception | X |
| Removed Signal from Net-Layer | X |
| Refactoring of SheetOrChapter | X |
| Deprecation of CavityDesign in TerminalReceptionSpecification and CavitySpecification | X |

## Compatibility to preceding versions

Version 1.2 is an extension of version 1.1. Model changes and extensions are guided by the fundamental principle of keeping already implemented concepts downward compatible as far as possible. However, this was not possible in all cases. 

Compatibility is defined in the context of this document as the possibility that XML documents created for version 1.1 are still (schema) valid version 1.2 documents. In that sense, incompatible changes will result in schema validation errors if the version 1.1 file uses the affected model elements. Such changes are listed in the tables above explicitly.

Additionally, version 1.2 introduces a large amount of open enumerations. As this reduces the degree of freedom in the model it is very likely that version 1.1 VEC files will not validate against the 1.2 strict schema.

Other changes that might be interpreted as incompatible, even without producing schema validation errors, are all improved or clarified documentations, as it might occur that earlier interpretations are now explicitly invalid model interpretations.

All VEC implementations that currently use custom properties for elements that have now (introduced with this version) explicit concepts should be changed accordingly. 
