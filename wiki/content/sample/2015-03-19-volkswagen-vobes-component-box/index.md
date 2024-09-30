---
title: "Volkswagen - VOBES - Component Box"
#subtitle: ""
summary: "An implementation of the component box feature in KBL 2.4"
authors: []
tags: []
categories: ["KBL"]
date:  2015-03-19
lastmod: 2015-03-19
featured: false
draft: false
share: false
profile: false
commentable: false
editable: true

company: "Volkswagen"
system:
  name: "VOBES ELENA"
  version: "V2.3.0 (+ manual edit)"
usecase: "Harness with Component Box"
notice: "This file has been modified manually as a sample. It is based on a VOBES KBL (V2.3SR-1) test case file, which does not contain any product relevant design."

resources:
  - src: vobes_sample_kbl24_mit_sicherungstraeger.kbl
    params:
      specification: "KBL"
      version: "2.4"
      creation: 2015-03-19
---
This KBL file contains a component_box with some fuses attached to it. One of the fuses is a multi-fuse, which means a preformed metal sheet that spreads over several fuse slots, providing an integrated fuse for each of them. It connects the fuse slots with one power supply bolt. The multi-fuse itself is represented by an assembly of single dummy-fuses. The internal connections and the links to attached connectors or ring terminals are provided.

The KBL file has been validated against the KBL 2.4 schema. The Component_box(_occurrence) is the only KBL 2.4 feature in this file.


{{% callout info %}}
**License**

All files provided for download below are provided under [CC BY-SA 4.0 License](https://creativecommons.org/licenses/by-sa/4.0/)
{{% /callout %}}
