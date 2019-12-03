---
title: ConnectorHousingCapSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specification for the definition of cap's (backshells) of connectors. Different cap's can add additional wire length addons to a connector housing.      </p>      <p> A 'cap' which already defines the number of cavities, coding etc. is in the&#160;VEC&#160;defined by <i>ConnectorHousingSpecification</i> with <i>ModularSlots</i> and not by a <i>ConnectorHousingCapSpecification</i>.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Connector Housings]({{< relref "../description-of-components/connector-housings" >}})<br/> [Instances of Connector Housings]({{< relref "../instances-of-components/instances-of-connector-housings" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|wireAddOn | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the wire length add on needed for the cap.      </p>    </body> </html>  | [ConnectorHousingCapSpecification]({{< relref "connectorhousingcapspecification.md" >}}) |
|outletDirection | [ConnectorOutletDirection]({{< relref "connectoroutletdirection.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines the <i>OutletDirection</i> for wires.      </p>      <p> This attribute is defined as an <i>OpenEnumeration</i>.      </p>    </body> </html>  | [ConnectorHousingCapSpecification]({{< relref "connectorhousingcapspecification.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConnectorHousingCapRole]({{< relref "connectorhousingcaprole.md" >}}) | 0..* | connectorHousingCapSpecification | 1 | <html>   <head>     </head>   <body>     <p> References the <i>ConnectorHousingCapSpecification </i>that is instanced by this <i>ConnectorHousingCapRole.</i>      </p>    </body> </html>  |
