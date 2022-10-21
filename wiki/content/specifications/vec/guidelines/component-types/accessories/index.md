---
title: "Accessories"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: []
categories: []
date: 2019-03-11
lastmod: 2019-12-02T12:42:16+01:00
draft: false
review: false

classes:
  - PartRelation
  - GeneralTechnicalPartSpecification
  - PartOrUsageRelatedSpecification
  - OccurrenceOrUsage

history:
  - date: 2021-06-09T00:00:00Z
    description: "Added examples for the interpretation of the ReferenceElement association in case of multiple ReferenceElements"
    issue: "KBLFRM-1095"
  - date: 2019-03-11T00:00:00Z
    description: "Initial creation in the ECAD-WIKI"


menu:
  vec-guidelines:
    parent: component-types
    # Toplevel element. For sub sections the identifier of the subsection
    #parent: Example Topic
    weight: 7000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 7000
---

## Part Master Definition
{{< figure src="accessories.jpg" title="Accessories" numbered="true" lightbox="true">}}

Part *A* being an accessory for Part *B* means, that if Part *B* is used somewhere in a harness, then Part A might (or must) be used as well. These can be for example backshells, connector housing locks, clips, cable ties. In the VEC, any part classification can be an *accessory* to another part. A relation between {{< vec-class PartVersion >}} and its accessories can be established with a {{< vec-class PartRelation >}} in a {{< vec-class GeneralTechnicalPartSpecification >}}

### Example 
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

## Instantiation


As described in the previous section, definitions can be made the part master data which accessories are required in which combination for a component. In the implementation in the wiring harness, however, there are also degrees of freedom as to which accessories are actually used. Therefore, the master data can only define valid possibilities; which variant is used must be defined at the concrete occurrence.

In the VEC the _accessory occurrence_ &rarr; _parent occurrence_ relationship is represented by the _ReferenceElement_ association, where the _accessory occurrence_ references the {{< vec-class OccurrenceOrUsage >}} it depends on / relates to as _ReferenceElement_(see {{< vec-diagram "instances-of-components/instantiation-of-components">}})

{{< figure src="accessory-instances.jpg" title="Accessory Instances" numbered="true" lightbox="true">}}

The illustration above shows a single accessory that is associated with two reference elements. In cases where the variance control mechanisms are not yet defined[^1] completely, the condition of existence of the reference elements has implications for the accessory. 

{{% callout note %}}
An accessory can only exist if **all** of its _ReferenceElements_ exist, too. However, the existence of all _ReferenceElements_ does **not** automatically imply the existence of the accessory. Additional constraints may apply, whereby the accessory the can only exist if all _ReferenceElements_ exist and the additional constraints are met.
{{% /callout %}}

{{< figure src="grommet-example.svg" lightbox="true" title="Grommet with Individual Wire Sealing" numbered="true" class="float-right w-50" >}}

An example for such case are elaborately sealed grommets for improved waterproofing. Each wire passing through the grommet requires a special individual seal. In this case, each seal is an accessory for both the wire and the grommet to the same extent. In concrete variants of the harness, only if a specific wire exists the corresponding seal is required. However, the association to the grommet is equally relevant, as it defines the position of the seal on the wire and without the grommet the seal is also without purpose. 



[^1]: For example not all elements have a specific {{< vec-class VariantConfiguration >}} or not all {{< vec-class OccurrenceOrUsage >}} are controlled by modules or harness configurations.
