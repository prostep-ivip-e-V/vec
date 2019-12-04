---
title: "Accessories"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker]
tags: []
categories: []
date: 2019-03-11
lastmod: 2019-12-02T12:42:16+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    #parent: Example Topic
    weight: 7000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 7000
---
{{< figure src="accessories.jpg" title="Accessories" numbered="true" lightbox="true">}}

Part *A* being an accessory for Part *B* means, that if Part *B* is used somewhere in a harness, then Part A might (or must) be used as well. These can be for example backshells, connector housing locks, clips, cable ties. In the VEC, any part classification can be an *accessory* to another part. A relation between {{< vec-class PartVersion >}} and its accessories can be established with a {{< vec-class PartRelation >}} in a {{< vec-class GeneralTechnicalPartSpecification >}}

## Unclassified Parts 
The natural language term "accessory" sums up a vast amount of different part types that are used in a harness, but which are not further specified. Meaning that they are relevant for the bill of material (and some other general properties like weight), but their usage is not defined in detail. If a part has to be used in the VEC, that has no individual specification (like e.g. a {{< vec-class ConnectorHousingSpecification >}}) it is marked with the *{{< vec-class PartVersion >}}.primaryPartType="Other"* and a {{< vec-class PartOrUsageRelatedSpecification >}} that can be used to define which type of "accessory" it is (via the attribute *{{< vec-class PartOrUsageRelatedSpecification >}}.specialPartType*). Common part attributes can be defined with a {{< vec-class GeneralTechnicalPartSpecification >}}.

## Example 
The following table shows examples for the usage of a {{< vec-class PartRelation >}} and the corresponding semantic meanings.

| # | Example | Meaning | In numbers |
|---|---|---|---|
| 1 |  {{< highlight xml "linenos=table,linenostart=1" >}}
<PartRelation id="id_1">
   <RelationType>Mandatory</RelationType>
   <AccessoryPart>A A A</AccessoryPart>
</PartRelation>
<PartRelation id="id_2">
   <RelationType>Optional</RelationType>
   <AccessoryPart>A A A</AccessoryPart>
</PartRelation>
{{< / highlight >}} | The part **A** has to be used exactly **3** times or exactly **6** times. | 3 x **A** ; 6 x **A**  |
| 2 | {{< highlight xml "linenos=table,linenostart=1" >}}
<PartRelation id="id_3">
   <RelationType>Optional</RelationType>
   <AccessoryPart>B B</AccessoryPart>
</PartRelation>
{{< / highlight >}} | The part **B** has to be used exactly **0** times or exactly **2** times. | 0 x **B** ; 2 x **B** |
| 3 | {{< highlight xml "linenos=table,linenostart=1" >}}
<PartRelation id="id_4">
   <RelationType>Mandatory</RelationType>
   <AccessoryPart>C</AccessoryPart>
</PartRelation>
<PartRelation id="id_5">
   <RelationType>Mandatory</RelationType>
   <AccessoryPart>C</AccessoryPart>
</PartRelation>
<PartRelation id="id_6">
   <RelationType>Mandatory</RelationType>
   <AccessoryPart>C</AccessoryPart>
</PartRelation>
{{< / highlight >}}  | The part **C** has to be used exactly **3** times. |  3 x **C** |
| 4 | {{< highlight xml "linenos=table,linenostart=1" >}}
<PartRelation id="id_4">
   <RelationType>Mandatory</RelationType>
   <AccessoryPart>C C C</AccessoryPart>
</PartRelation>
{{< / highlight >}}  | The part **C** has to be used exactly **3** times. This is semantically equivalent with example #3. |  3 x **C** |
| 5 | {{< highlight xml "linenos=table,linenostart=1" >}}
<PartRelation id="id_7">
   <RelationType>Optional</RelationType>
   <AccessoryPart>D E F</AccessoryPart>
</PartRelation>
{{< / highlight >}}  | The parts **D & E & F** have to be used exactly **1** times or **0** times. | 0..1 x (**D,E,F**) |
| 6 | {{< highlight xml "linenos=table,linenostart=1" >}}
<PartRelation id="id_8">
   <RelationType>Optional</RelationType>
   <AccessoryPart>G G G</AccessoryPart>
</PartRelation>
<PartRelation id="id_9">
   <RelationType>Optional</RelationType>
   <AccessoryPart>G G</AccessoryPart>
</PartRelation>
{{< / highlight >}}  | The part **G** have to be used exactly **0** times or **2, 3, 5** times.  | (0,2,3,5) x **G** |
| 7 | {{< highlight xml "linenos=table,linenostart=1" >}}
<PartRelation id="id_10">
   <RelationType>Mandatory</RelationType>
   <AccessoryPart>K K K</AccessoryPart>
</PartRelation>
<PartRelation id="id_11">
   <RelationType>Optional</RelationType>
   <AccessoryPart>K</AccessoryPart>
</PartRelation>
<PartRelation id="id_12">
   <RelationType>Optional</RelationType>
   <AccessoryPart>K</AccessoryPart>
</PartRelation>
<PartRelation id="id_13">
   <RelationType>Optional</RelationType>
   <AccessoryPart>K</AccessoryPart>
</PartRelation>
{{< / highlight >}}  | The part **K** have to be used between **3** and **6** times. |  3..6 x **K** |