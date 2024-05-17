---
title: Partitioning, Sizing & Packaging (XML)
linktitle: Partitioning, Sizing & Packaging
type: specs
toc: true
authors: [becker]
tags: []
categories: []
date: 2024-03-14T00:00:00.000Z
lastmod: 2024-03-14T00:00:00.000Z
draft: false
review: true
history: [{date: 2024-03-14T00:00:00.000Z, description: Extracted information from PSI recommendation and extended it where necesseray., issue: KBLFRM-1191}, {date: 2024-03-19T00:00:00.000Z, description: 'Consolidated information about the VEC package, added path format', issue: KBLFRM-1230}]
classes: null
menu: {vec-guidelines: {parent: general, weight: 60}}
weight: 5600
---

## Partitioning and Sizing of a VEC XML File

In theory it is possible to export all data of a company that relates to the vehicle network in a single VEC XML file. However, this is not a very reasonable approach for several reasons. Amongst those are:

* **Intellectual Property Protection**: For everything that is contained in a single VEC file, the "All or Nothing Principle" applies and it is hard or impossible to enforce a "Need to Know". A recipient of a file, who requires only a single detail, always receives the complete information.
* **Partial Changes**: Even if only a single content element is changed, the complete file must be created and read, because only after reading the complete file the recipient knows which elements have changed.
* **Tool Support**: Tools must support large areas of the VEC in their Import- / Export interfaces, even if the areas do not belong to their use case.
* **Technical Feasibility**: If all information is contained in a single VEC file, the file itself can become huge, which places new requirements on the creating and reading tools (e.g. required memory).

Therefore, the general recommendation is to make a VEC files **as small as possible and as large as necessary**. The correct scoping of a generated VEC file depends on the use case of the information and the intended interface. Scoping means in this context the process of defining which information shall be bundled together in a single file for data exchange.


The following paragraphs contain guidelines for the decision, whether some information shall be packaged together or not:

1. If the elements specified with the VEC are described, published and changed independently from each other regarding time and content, then they shall be placed in separate files (unit of publication). For example, this is the case for the description of harness components (connectors, wires etc.), represented by a part number. This rule applies only for the publication as master information from the original source of information. If the information is used to create other information, it can be embedded in a single file. For example, the description (complete or partial) of the used harness components will be embedded in the VEC describing a harness.
2. If elements specified with the VEC have no relationships between each other (except reference base on PartVersions and DocumentVersions), then they shall be placed in separate files. For example, the specifications of a connector housing and a wire have no reference.
3. If the relationship between two elements is indirectly over shared information, then this is **no reason** for the elements themselves to be placed in a single file (e.g. two connectors share the same CavitySpecification or two wires share the same CoreSpecification). If this piece of shared information is defined centrally, then it would have its own unit of publication, probably in its own DocumentVersion. In this case rule #1 can be applied. This means that, if the specification (e.g. a CoreSpecification) shall be exchanged, it shall be placed in its own VEC file. If the specification is used to describe another element (e.g. a wire) it shall be embedded in the VEC file of the described element. However, this is no reason to place all elements using this information in the same VEC file.

## VEC Package

### Background

A Vehicle Electric Container (VEC) in XML representation is a single XML file, following the structure defined in the VEC XML schema. It contains information about a harness, a set of harnesses, or other related information defined in the VEC specification. A VEC model can reference other documents via the {{< vec-class "DocumentVersion" >}} element and information contained in other files via the different ["External References"]({{< relref "../../key-concepts/external-references" >}}) concepts.

There are also good reasons for distributing information between multiple VEC files (see above [Partitioning and Sizing of a VEC XML File]({{< relref "#partitioning-and-sizing-of-a-vec-xml-file">}}))

However, there are use cases where one wants to exchange a VEC together with its external files and/or together with a set of somehow related VEC files. One use case for this is, for example, the exchange of a part master data library. The concept to do this, in the context of the VEC is called **VEC-Package** specifies how to exchange VEC files and any associated files as a single package.

### Solution

A VEC-Package is an archive containing two things:

-   One index file: `index.vec` (a VEC file)
-   At least one data file (not required to be a VEC file)

Depending on the individual requirements the technical format of the archive can be:

-   TAR
-   ZIP
-   or a zipped tar.

In addition, the archive can contain any number of addditional data files. There is no restriction on the type or format of these files. A VEC-Package may contain multiple VEC files and /or it may contain, for example drawings as SVG, CAD models of the harness or components as JT models.

The structure of the archive is not restricted. A VEC-Package may contain a flat set of files, but may also have a folder structure. It is recommended to use a folder structure to organize the files in the archive: e.g. to apply a grouping of all drawings or project related groupings.

There is no naming convention for files and folders inside the VEC-Package defined. It is up to the user to name a folder or a file. However, it is recommended to use the known and established file name extensions for the files in the package. I.e., `.vec` for a VEC file, `.svg` for a SVG file, or `.jt` for a JT file.

A VEC-Package shall contain an index file providing further information about the context of the package. The index file has the reserved name `index.vec` and it must be a valid VEC file, conforming to the VEC XML schema.

The elements of the index VEC file are restricted to the classes {{< vec-class "DocumentVersion" >}} and {{< vec-class "PartVersion" >}}. The index file contains a {{< vec-class "DocumentVersion" >}} for each file in the package. The attributes of the {{< vec-class "DocumentVersion" >}} are used to provide further information on the files:

-   **dataFormat**: the format of the file in the VEC-Package (as MIME-Type if available).
-   **documentNumber**: the number of the document
-   **documentVersion**: the version of the document
-   **fileName**: the name of the file as it appears in the package, including the folder structure. It must not point to any file location which is not part of the VEC-Package (e.g. a File on a central server file share). The fileName is relative to the VEC-Package root. It MUST NOT contain a drive or device letter, or a leading slash. All slashes MUST be forward slashes `/` (UNIX-style).

A {{< vec-class "DocumentVersion" >}} may reference one or more {{< vec-class "PartVersion" >}} objects via _referencedPart_ to give further details on the usage of the file. For example, the fact,
that an SVG file which represents the wiring diagram of a harness, can be expressed
in the index file by a {{< vec-class "DocumentVersion" >}} pointing to a {{< vec-class "PartVersion" >}}, which represents the
harness.

{{< figure src="vec-package-index.jpg" title="Index of a VEC-Package" numbered="true" lightbox="true" >}}

The figure above illustrates the structure of such a VEC-Package and the corresponding `index.vec`. The upper half of the diagram illustrates the file structure within the archive. In the root of the archive is the mandatory `index.vec` file that describes the content of the package. The content of `index.vec` is illustrated in the lower half of the diagram.

In the the example, the package consists of the following files:

-   `index.vec`: Describes the content of the package.
-   Information about a _harness_ with the part number _4811_ specified by:
    -   `drawings/4811_a.vec`: A VEC file, containing the definition of the harness.
    -   `drawings/4811_a.svg`: A 2D SVG representation of the harness.
-   Information about a _connector housing_ (part number: _4711_) specified by:
    -   `components/4711_a.vec`: A VEC file containing the part master data of the connector. 
    -   `components/4711_a.svg`: A component symbol (to be used in the 2D-drawing) defined in SVG.

In the VEC (especially in the `index.vec`) a {{< vec-class "DocumentVersion" >}} object is created for each external document (see lower half of the diagram). This {{< vec-class "DocumentVersion" >}} object references the {{< vec-class "PartVersion" >}} to which it is related.
