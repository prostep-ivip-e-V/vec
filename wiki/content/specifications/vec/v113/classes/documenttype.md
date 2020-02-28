---
title: DocumentType
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - DocumentType
menu_name: vec-1.1.3
---
<p> Defines the predefined <i>DocumentTypes</i> of a <i>PartVersion.</i> A certain <i>DocumentType </i>has normally a typical set of information that is defined within its scope. E.g. a part master document contains <i>Specifications</i> that are used for the description of a defined <i>PartVersion.</i>     </p>      <p> <i>The content and the degree of information a DocumentType</i> may vary in the different processes.       </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| PartMaster | Documents of this type describe the master data of a part / component (e.g. a <i>ConnectorHousing</i>, a&#160;<i>Terminal</i>, a <i>Wire</i>). |
| NetworkArchitecture |  |
| SystemSchematic |  |
| WiringDescription |  |
| HarnessDescription | Documents of this type contain the description of a <i>Harness&#160;</i>(which is for example the scope of the KBL). |
| InstallationDescription |  |
| ManufacturingDescription |  |
| RequirementsDescription |  |
| ChangeDescription |  |
| GraphicsSymbol | Documents of this type represent a graphical symbol (2D), which is normally an external file (e.g. a SVG, PNG). Typical use cases are for example the symbols of connectors used in a 2D drawing. |
| GeometryModel | Documents of this type represent a geometry model (3D), which is normally an external file (e.g. a JT&#160;File or some native file of a 3D modelling tool). Typical use cases are for example the models of components (e.g. connectors) used in a 3D model or the 3D visualization of a Harness. |
| MasterDataDefinition | Documents of this type master data definition e.g. list valid <i>UsageNodes</i> or list valid <i>Signals</i>. |
