---
title: VEC-Package
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
menu: {vec-guidelines: {parent: general, weight: 600}}
weight: 5600
---

## Background

A Vehicle Electric Container (VEC) in XML representation is a single file following the structure defined in the VEC XML schema. It contains all the information of a harness, a set of harnesses, or other related information defined in the VEC specification. A VEC Container can reference other files via the {{< vec-class "DocumentVersion" >}} element and information contained in other files via the different ["External References"]({{< relref "../external-references" >}}) concepts.

There are use cases where one wants to exchange the VEC together with these
referenced files. There is also the need to exchange a set of VEC files together (see {{< vec-diagram "xml-representation-of-the-model/partitioning-and-sizing-of-vec-files" >}}). The _VEC-Package_ addresses these use cases and specifies the mechanism to exchange VEC files and any associated files as a single package.

## Detailed Solution

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
