---
title: VEC-Root
toc: false
type: specs
layout: diagram
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - Unit
  - ItemHistoryEntry
  - Contract
  - VecVersion
  - CopyrightInformation
  - PartVersion
  - Project
  - ResourceVersion
  - DocumentVersion
  - VecContent
menu:
  VEC-2.1.0:    
    parent: xml-representation-of-the-model
    identifier: xml-representation-of-the-model/vec-root
    weight: 1012001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1012001
---
{{< svgfigure src="vec-root.png" width="1136" height="704" caption="VEC-Root" numbered="true" >}}
  {{< svglink relref="../../classes/unit.md" x="819.0" y="302.0" width="139.0" height="82.0" >}}
  {{< svglink relref="../../classes/itemhistoryentry.md" x="546.0" y="386.0" width="142.0" height="70.0" >}}
  {{< svglink relref="../../classes/contract.md" x="945.0" y="183.0" width="161.0" height="82.0" >}}
  {{< svglink relref="../../classes/vecversion.md" x="14.0" y="512.0" width="112.0" height="178.0" >}}
  {{< svglink relref="../../classes/copyrightinformation.md" x="644.0" y="190.0" width="189.0" height="70.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="322.0" y="393.0" width="212.0" height="127.0" >}}
  {{< svglink relref="../../classes/project.md" x="406.0" y="190.0" width="217.0" height="118.0" >}}
  {{< svglink relref="../../classes/resourceversion.md" x="28.0" y="400.0" width="252.0" height="79.0" >}}
  {{< svglink relref="../../classes/documentversion.md" x="119.0" y="197.0" width="271.0" height="175.0" >}}
  {{< svglink relref="../../classes/veccontent.md" x="14.0" y="15.0" width="1093.0" height="106.0" >}}
{{< / svgfigure >}}
<p> The diagram above defines the class <i>VecContent</i> which is intended to be regarded as the top-level root element for VEC documents. It is the declared entry point to the information that a VEC file contains.      </p>      <p> A <i>VecContent</i> is a container for various <i>DocumentVersions</i>, <i>PartVersions</i>, <i>Projects</i>, <i>ItemHistoryEntries</i>, <i>CopyrightInformations</i>, <i>Units</i>, and <i>Contracts. </i><i>DocumentVersion</i> and <i>PartVersion</i> are the only two classes in the VEC model that define and contain version information. Almost all information a VEC document can contain is subordinated to one of those two classes. This means, that every piece of information which is represented as an instance of a class of a certain attribute value is distinctly related to a dedicated <i>PartVersion</i> or <i>DocumentVersion</i>.      </p>      <p> The only exceptions are classes with the stereotype <i>&lt;&lt;constant&gt;&gt;</i> as shown in the diagram.      </p>