---
title: Document_type
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Document_type
menu_name: kbl-2.5
---
<p> Defines the predefined <i>Document_types</i> of an <i>External_reference.</i> A certain <i>Document_type </i>has normally a typical set of information that is defined within its scope.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| part master | <p> Documents of this type describe the master data of a part / component (e.g. a connector housing, a&#160;terminal, a wire).      </p> |
| network architecture |  |
| system schematic |  |
| wiring description |  |
| harness description | <p> Documents of this type contain the description of a Harness&#160;(which is for example the scope of the KBL).      </p> |
| installation description |  |
| manufacturing description |  |
| requirements description |  |
| change description |  |
| graphics symbol | <p> Documents of this type represent a graphical symbol (2D), which is normally an external file (e.g. a SVG, PNG). The use case for this document type are symbols that are used in 2D&#160;harness and form board drawings.      </p> |
| geometry model | <p> Documents of this type represent a geometry model (3D), which is normally an external file (e.g. a JT&#160;File or some native file of a 3D modelling tool). Typical use cases are for example the models of components (e.g. connectors) used in a 3D model or the 3D visualization of a Harness.      </p> |
| master data definition | <p> Documents of this type master data definition e.g. list valid UsageNodes or list valid Signals.      </p> |
| harness coupling | <p> <i>External_references </i>of this type define the coupling information of wiring harnesses in a vehicle network.      </p> |
| schematic symbol | <p> Documents of this type represent a graphical symbol (2D), which is normally an external file (e.g. a SVG, PNG). The use case for this document type are symbols that are used in schematic diagrams.      </p> |
| network symbol | <p> Documents of this type represent a graphical symbol (2D), which is normally an external file (e.g. a SVG, PNG). The use case for this document type are symbols that are used in network /&#160;architecture diagrams.      </p> |
| deviation table | <p> Documents that define allowed deviations from specified part numbers.      </p> |
