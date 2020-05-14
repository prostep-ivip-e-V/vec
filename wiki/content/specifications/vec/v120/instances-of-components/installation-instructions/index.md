---
title: Installation Instructions
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
  - FileBasedInstruction
  - DocumentBasedInstruction
  - DocumentVersion
  - SheetOrChapter
  - TextBasedInstruction
  - OccurrenceOrUsage
  - Instruction
menu:
  VEC-1.2.0:    
    parent: instances-of-components
    identifier: instances-of-components/installation-instructions
    weight: 1007012 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1007012
---
{{< svgfigure src="installation-instructions.png" width="787" height="562" caption="Installation Instructions" numbered="true" >}}
  {{< svglink relref="../../classes/filebasedinstruction.md" x="122.0" y="247.0" width="132.0" height="79.0" >}}
  {{< svglink relref="../../classes/documentbasedinstruction.md" x="269.0" y="253.0" width="158.0" height="43.0" >}}
  {{< svglink relref="../../classes/documentversion.md" x="556.0" y="239.0" width="204.0" height="151.0" >}}
  {{< svglink relref="../../classes/sheetorchapter.md" x="556.0" y="445.0" width="217.0" height="103.0" >}}
  {{< svglink relref="../../classes/textbasedinstruction.md" x="15.0" y="364.0" width="222.0" height="55.0" >}}
  {{< svglink relref="../../classes/occurrenceorusage.md" x="24.0" y="15.0" width="680.0" height="98.0" >}}
  {{< svglink relref="../../classes/instruction.md" x="17.0" y="162.0" width="687.0" height="43.0" >}}
{{< / svgfigure >}}
<p> Basis for the definition of installation instructions is the abstract class <i>Instruction</i> which allows instructions to be specified as <i>TextBasedInstructions</i>, <i>FileBasedInstructions</i> or <i>DocumentBasedInstructions. </i>     </p>      <p> Note: This diagram only shows the <i>Instruction</i> concept in the context of <i>OccurrenceOrUsage</i>. However, the <i>Instruction</i> concept is used in the context of <i>PartVersions </i>and several elements of a <i>ConnectionSpecification</i> as well.     </p>      <p> Each <i>OccurrenceOrUsage</i> can define various <i>TextBasedInstructions</i> in order to exchange (normally) human readable installation instruction information.     </p>      <p> Note: Unlike the KBL a <i>TextBasedInstruction</i> does not contain a type attribute. This is because a <i>TextBasedInstruction</i> is explicitly not wanted to be used as an extension mechanism. The declared extension concept of the VEC is the <i>CustomProperty</i> concept.     </p>      <p> In addition, each <i>OccurrenceOrUsage</i> can define various<i> FileBasedInstructions</i>. This may be useful to reference for example files that contain graphical information e.g. in form of SVG.     </p>      <p> In addition, each <i>OccurrenceOrUsage</i> can define various<i> DocumentBasedInstructions</i>. This allows to reference a <i>DocumentVersion</i> or alternatively a certain <i>SheetOrChapter</i> in a <i>DocumentVersion</i> that contains the instruction.      </p>