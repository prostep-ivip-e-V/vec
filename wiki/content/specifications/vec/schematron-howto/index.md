---
title: "Schematron Validation How To"
subtitle: ""
summary: ""
authors: []
tags: []
categories: []
date: 2017-01-26
lastmod: 2019-11-29T16:01:58+01:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
weight: 100
---
Schematron is an ISO Standard and a technology heavily based on XPath und XSLT. For general information about schematron see [http://schematron.com/](http://schematron.com/)

## Requirements 
To do a schematron validation of a VEC File the following requirements are necessary:

  1. A native schematron validator (e.g. integrated in a xml editor) or a XSLT 2.0 Processor (e.g. Saxon).
  2. Validator / Processor __must__ be a __schema aware__ processor (SA). This is because many of the schematron rules defined for the VEC are defined on the meta model of the VEC and therefore require the type information of the xml elements that are validated.
  3. The schematron skeleton, available at [https://github.com/Schematron/schematron](https://github.com/Schematron/schematron) if you are using an XSLT processor to validate.

## Validation 
The following steps are explaining the validation procedure when using the ISO schematron skeleton. For other validators similar steps are necessary. Schematron validation with the skeleton consists of two phases. 

In the first, the schema is compiled into a XSLT stylesheet. This has only to be done once per schema.
In the second phase, the resulting XSLT stylesheet is applied to the file that should be validated. The result of this is an XML file describing the validation errors (normally in Schematron Validation Reporting Language (SVRL).

For the compilation of the schema, the following steps are necessary:   

  1. Ensure schema aware XSLT processing is turned on (e.g. by using Saxon EE).
  2. Ensure that the `import-schema` in the VEC schematron schema is pointing to a valid URL of the corresponding XML Schema. 
```xml
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding"xslt2">
   <xsl:import-schema xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
       schema-location="VEC%201.1.3-strict.xsd"
                      namespace="http://www.prostep.org/ecad-if/2011/vec"/>
   <sch:ns prefix="vec" uri"http://www.prostep.org/ecad-if/2011/vec"/>
```
  1. Normally the compilation pipeline of the ISO skeleton consists of the three XSLT scripts: `iso_dsdl_include.xsl`, `iso_abstract_expand.xsl` and `iso_svrl_for_xslt2.xsl`. Since we currently do not use partial schemas and abstract patterns, the first two can be omitted. So only the processing with `iso_svrl_for_xslt2.xsl` is necessary. Here it is important to turn on the parameter `allow-foreign`, because otherwise the VEC schema information will not be imported.
  2. The resulting XSLT script can be used to validate any VEC file of the given schema version.
