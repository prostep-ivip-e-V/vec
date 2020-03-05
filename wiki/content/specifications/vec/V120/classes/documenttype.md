---
title: DocumentType
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - DocumentType
menu_name: vec-1.2.0
---
<p> Defines the predefined <i>DocumentTypes</i> of a <i>PartVersion.</i> A certain <i>DocumentType </i>has normally a typical set of information that is defined within its scope. E.g. a part master document contains <i>Specifications</i> that are used for the description of a defined <i>PartVersion.</i>     </p>      <p> <i>The content and the degree of information a DocumentType</i> may vary in the different processes.       </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| BaselineDefinition | <p> The <i>DocumentVersion </i>represents the definition of a baseline (see <i>BaselineSpecification</i>).      </p> |
| PartMaster | <p> Documents of this type describe the master data of a part / component (e.g. a <i>ConnectorHousing</i>, a&#160;<i>Terminal</i>, a <i>Wire</i>).      </p> |
| NetworkArchitecture |  |
| SystemSchematic |  |
| WiringDescription |  |
| HarnessDescription | <p> Documents of this type contain the description of a <i>Harness&#160;</i>(which is for example the scope of the KBL).      </p> |
| InstallationDescription |  |
| ManufacturingDescription |  |
| RequirementsDescription | <p> A requirements description is some kind of document that contains requirements for a certain part or a group of parts, their design or their properties. A requirements description can be a requirements specification (e.g. REQ-IF) or any other document containing requirements (e.g. a norm).      </p> |
| ChangeDescription |  |
| GraphicsSymbol | <p> Documents of this type represent a graphical symbol (2D), which is normally an external file (e.g. an SVG, PNG). The use case for this document type are symbols that are used in 2D&#160;harness and form board drawings.      </p> |
| GeometryModel | <p> Documents of this type represent a geometry model (3D), which is normally an external file (e.g. a JT&#160;File or some native file of a 3D modelling tool). Typical use cases are for example the models of components (e.g. connectors) used in a 3D model or the 3D visualization of a Harness.      </p> |
| MasterDataDefinition | <p> Documents of this type master data definition e.g. list valid <i>UsageNodes</i> or list valid <i>Signals</i>.      </p> |
| HarnessCoupling | <p> <i>DocumentVersions </i>of this type define the coupling information of wiring harnesses in a vehicle network. The <i>DocumentVersion </i>contains the necessary <i>CouplingSpecifications </i>and the <i>PartUsages </i>for the coupling devices.      </p> |
| SchematicSymbol | <p> Documents of this type represent a graphical symbol (2D), which is normally an external file (e.g. an SVG, PNG). The use case for this document type are symbols that are used in schematic diagrams.      </p> |
| NetworkSymbol | <p> Documents of this type represent a graphical symbol (2D), which is normally an external file (e.g. an SVG, PNG). The use case for this document type are symbols that are used in network /&#160;architecture diagrams.      </p> |
| ComponentDrawing | <p> <i>DocumentVersion </i>of this type represent the drawing of a component (Deutsch: Einzelteilezeichnung). Those <i>DocumentVersion </i>are normally used as external reference to the document containing the graphical representation of the component and do not contain <i>Specifications</i>. <i>DocumentVersion</i> describing a component in terms of the VEC&#160;(with <i>Specifications</i>) shall have the <i>DocumentType</i> <i>PartMaster.</i>      </p> |
| DeviationTable | <p> Documents that define allowed deviations from specified part numbers.      </p> |
