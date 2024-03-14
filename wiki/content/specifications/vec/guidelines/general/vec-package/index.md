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
history: [{date: 2024-03-14T00:00:00.000Z, description: Extracted information from PSI recommendation and extended it where necesseray., issue: KBLFRM-1191}]
classes: null
menu: {vec-guidelines: {parent: general, weight: 600}}
weight: 5600
---
## Background

A Vehicle Electric Container (VEC) is a single XML file following the structure defined
in the VEC XML schema. It contains all the information of a harness, a set of
harnesses, or other related information defined in the VEC specification. A VEC
Container can reference other files via the DocumentVersion element and information
contained in other files via the ExternalMapping concept.

There are use cases where one wants to exchange the VEC together with these
referenced files. There is also the need to exchange a set of VEC files together. The
VEC-Package addresses these use cases and specifies the mechanism to exchange
VEC files and any associated files as a package.

## Detailed Solution

A VEC-Package is an archive containing at least 2 files:

- One index file (a VEC file)
- One data file (not required to be a VEC file)

Depending on the individual requirements the technical format of the archive can be:

- TAR
- ZIP
- or a zipped tar.

In addition, the archive can contain any number of further data files. There are no
restrictions on the type or format of these files. A VEC-Package may contain further
VEC files. Or it may contain drawings as SVG, CAD models of the harness or of
connectors as JT models, for example.

The structure of the archive is not restricted. A VEC-Package may contain a flat set of
files but may also have a folder structure. It is recommended to use a folder structure
to organize the files in the archive: e.g. grouping of all drawings, project specific
groupings.

There is no naming convention for files and folders inside the VEC-Package defined.
It is up to the user to name a folder or a file. However, it is recommended to use the
known and established file name extensions for the files in the package. I.e., “.vec” for
a VEC file, “.svg” for a SVG file, or “.jt” for a JT file.

A VEC-Package shall contain an index file providing further information about the
context of the package. The index file has the reserved name “index.vec”. As the file
name suffix already suggests, the index file is a valid VEC file, conforming to the VEC
XML schema.

The elements of the index VEC file are restricted to the classes {{< vec-class DocumentVersion >}} and {{< vec-class PartVersion >}}. The index file contains a {{< vec-class DocumentVersion >}} for each file in the package. The attributes of the {{< vec-class DocumentVersion >}} are used to provide further information on the files:

- _dataFormat:_ the format of the file in the VEC-Package (as MIME-Type if available).
- _documentNumber:_ the number of the document
- _documentVersion:_ the version of the document
- _fileName:_ the name of the file as it appears in the package, including the folder
structure

A {{< vec-class DocumentVersion >}} may reference one or more {{< vec-class PartVersion >}} objects via _referencedPart_ to give further details on the usage of the file. For example, the fact,
that an SVG file which represents the wiring diagram of a harness, can be expressed
in the index file by a {{< vec-class DocumentVersion >}} pointing to a {{< vec-class PartVersion >}}, which represents the
harness.