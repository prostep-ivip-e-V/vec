---
title: Default- and Missing-Value Handling
type: specs
toc: true
authors: [becker]
tags: []
categories: []
date: 2024-03-14T00:00:00.000Z
lastmod: 2024-03-14T00:00:00.000Z
draft: false
review: false
history: [
    {date: 2024-03-14T00:00:00.000Z, description: Extracted information from PSI recommendation and extended it where necesseray., issue: KBLFRM-1191},
    {date: 2024-03-14T00:00:00.000Z, description: Added section for handling of 'double' values., issue: KBLFRM-1190}
]
classes: null
menu: {vec-guidelines: {parent: general, weight: 400}}
weight: 5400
---
For various reasons, there may be attributes of entities where no value can be
exported, or a special semantics is required. The cases are:
- The information is not supported by the system / process. So, it is never
available for this system / process.
- The information is supported by the system; however, the value is not defined
by the user.
- The information is explicitly defined as “arbitrary” for the use case (e.g. the part
version in a bill of material or a compatibility statement).

All cases might exist for mandatory attributes as well as for optional attributes. Due to
the design, numerical values in the VEC and its high level of optionality the following
definition of special values should be only relevant for `xs:string`-Attributes:

|                |   Mandatory Attribute |   Optional Attribute   |
|----------------|--------------------|------------------------|
| Unsupported    | `<tag>/NULL</tag>` | `omitted tag`          |
| Undefined      | `<tag></tag>`      | `<tag></tag>`          |
| Arbitrary      | `<tag>/ANY</tag>`  | `<tag>/ANY</tag>`      |

- `/NULL` & `/ANY` means, that the attributes with the name “tag” in the VEC
receive these values.
- `<tag></tag>` means, that an attribute with the name “tag” and an undefined
value is represented in the VEC as an existing XML element with no value (no
contained text() node).
- `omitted tag`: means the element tag for the attribute is not present in the VEC

{{% callout note %}}
The datatype `xs:double` has less flexibility of allowed values. If the equivalent of  `/NULL` is required for `xs:double` valued attributes, `NaN` shall be used. The other cases for `xs:string`-Attributes, mentioned above, are not supported by `xs:double`-Attributes.
{{% /callout %}}