---
title: SlotMapping
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Defines the mapping of two slots contained PartVersion A &amp; B of the containing Mapping-object. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | mapping |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Cavity Mapping]({{< relref "../description-of-components/cavity-mapping" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identificationA | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>The identification of the Slot on side A </p></body></html> | [SlotMapping]({{< relref "slotmapping.md" >}}) |
|identificationB | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>The identification of the Slot on side B </p></body></html> | [SlotMapping]({{< relref "slotmapping.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CavityMapping]({{< relref "cavitymapping.md" >}}) | cavityMapping | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Mapping]({{< relref "mapping.md" >}}) | 1 | slotMapping | 0..* |  |
