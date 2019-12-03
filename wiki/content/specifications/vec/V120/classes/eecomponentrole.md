---
title: EEComponentRole
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> An EEComponentRole defines the instance specific properties and relationships of an EE-component.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Instances of EE-Components]({{< relref "../instances-of-components/instances-of-ee-components" >}})<br/> [Wiring Specification]({{< relref "../connectivity/wiring-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p></body></html> | [Role]({{< relref "role.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ExtensionSlotReference]({{< relref "extensionslotreference.md" >}}) | extensionSlotRef | 0..* | 1 | Specifies the ExtensionSlotReferences used in the EEComponentRole.  |
| [ComponentNode]({{< relref "componentnode.md" >}}) | componentNode | 0..1 | 0..* | References the ComponentNode that is realized by the referenced EEComponent (OccurrenceOrUsage with EEComponentRole). KBLFRM-341  |
| [HousingComponentReference]({{< relref "housingcomponentreference.md" >}}) | housingComponentRef | 0..* | 1 | Specifies the HousingComponentReferences used in the EEComponentRole.  (KBLFRM-401)  |
| [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) | EEComponentSpecification | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>EEComponentSpecification </i>that is instanced by this <i>EEComponentRole.</i>      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ExtensionSlotReference]({{< relref "extensionslotreference.md" >}}) | 0..* | usedInserts | 0..* | Defines the inserts used for extension slot in a defined instance. These can be more than one EEComponentRole, because of variance in a 150% specification.  |
