---
title: DocumentType
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines the predefined <i>DocumentTypes</i> of a <i>PartVersion.</i> A certain <i>DocumentType </i>has normally a typical set of information that is defined within its scope. E.g. a part master document contains <i>Specifications</i> that are used for the description of a defined <i>PartVersion.</i>     </p>      <p> <i>The content and the degree of information a DocumentType</i> may vary in the different processes.       </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| BaselineDefinition | <html>   <head>     </head>   <body> The <i>DocumentVersion </i>represents the definition of a baseline (see <i>BaselineSpecification</i>).  </body> </html> |
| PartMaster | <html>   <head>     </head>   <body> Documents of this type describe the master data of a part / component (e.g. a <i>ConnectorHousing</i>, a&#160;<i>Terminal</i>, a <i>Wire</i>).   </body> </html>  |
| NetworkArchitecture | <html>   <head>     </head>   <body>   </body> </html>  |
| SystemSchematic | <html>   <head>     </head>   <body>   </body> </html>  |
| WiringDescription | <html>   <head>     </head>   <body>   </body> </html>  |
| HarnessDescription | <html>   <head>     </head>   <body> Documents of this type contain the description of a <i>Harness&#160;</i>(which is for example the scope of the KBL).   </body> </html>  |
| InstallationDescription | <html>   <head>     </head>   <body>   </body> </html>  |
| ManufacturingDescription | <html>   <head>     </head>   <body>   </body> </html>  |
| RequirementsDescription | <html>   <head>     </head>   <body> A requirements description is some kind of document that contains requirements for a certain part or a group of parts, their design or their properties. A requirements description can be a requirements specification (e.g. REQ-IF) or any other document containing requirements (e.g. a norm).</body> </html> |
| ChangeDescription | <html>   <head>     </head>   <body>   </body> </html>  |
| GraphicsSymbol | <html>   <head>     </head>   <body> Documents of this type represent a graphical symbol (2D), which is normally an external file (e.g. a SVG, PNG). The use case for this document type are symbols that are used in 2D&#160;harness and form board drawings.   </body> </html>  |
| GeometryModel | <html>   <head>     </head>   <body> Documents of this type represent a geometry model (3D), which is normally an external file (e.g. a JT&#160;File or some native file of a 3D modelling tool). Typical use cases are for example the models of components (e.g. connectors) used in a 3D model or the 3D visualization of a Harness.   </body> </html>  |
| MasterDataDefinition | <html>   <head>     </head>   <body> Documents of this type master data definition e.g. list valid <i>UsageNodes</i> or list valid <i>Signals</i>.   </body> </html>  |
| HarnessCoupling | <html>   <head>     </head>   <body>     <p> <i>DocumentVersions </i>of this type define the coupling information of wiring harnesses in a vehicle network. The <i>DocumentVersion </i>contains the necessary <i>CouplingSpecifications </i>and the <i>PartUsages </i>for the coupling devices.      </p>    </body> </html>  |
| SchematicSymbol | <html>   <head>     </head>   <body> Documents of this type represent a graphical symbol (2D), which is normally an external file (e.g. a SVG, PNG). The use case for this document type are symbols that are used in schematic diagrams.   </body> </html>  |
| NetworkSymbol | <html>   <head>     </head>   <body> Documents of this type represent a graphical symbol (2D), which is normally an external file (e.g. a SVG, PNG). The use case for this document type are symbols that are used in network /&#160;architecture diagrams.   </body> </html>  |
| ComponentDrawing | <html>   <head>     </head>   <body>     <p> <i>DocumentVersion </i>of this type represent the drawing of a component (Deutsch: Einzelteilezeichnung). Those <i>DocumentVersion </i>are normally used as external reference to the document containing the graphical representation of the component and do not contain <i>Specifications</i>. <i>DocumentVersion</i> describing a component in terms of the VEC&#160;(with <i>Specifications</i>) shall have the <i>DocumentType</i> <i>PartMaster.</i>      </p>    </body> </html>  |
| DeviationTable | <html>   <head>     </head>   <body>     <p> Documents that define allowed deviations from specified part numbers.      </p>  </body> </html> |
