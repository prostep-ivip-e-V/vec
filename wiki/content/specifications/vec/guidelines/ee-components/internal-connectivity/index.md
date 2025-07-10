---
title: "Internal Connectivity"
#linktitle: Link in Sidemenu
type: specs
toc: true
authors: ["becker"]
tags: []
categories: []
date: 2025-07-08
lastmod: 2025-07-08
draft: false
review: true
classes:

classes:
  - EEComponentSpecification
  - HousingComponent
  - PinComponent
  - ConnectionSpecification
  - ComponentNode
  - ComponentConnector
  - ComponentPort

history:
  - date: 2024-12-19T00:00:00Z
    description: "Added description for layering and odering of wire elements."
 #   issue: "KBLFRM-1234" 

menu:
  vec-guidelines:
    parent: ee-components
    weight: 10100

links:
  - icon_pack: fas
    icon: file-code
    name: ee-component-with-schematic.vec
    url: 'ee-component-with-schematic.vec'	

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 10100
---
{{< gh-review 915 >}}
{{% callout note %}}
This Guideline applies to VEC 2.2 and later. 
{{% /callout %}}
{{% callout note %}}
Before reading these implementation guidelines, it is highly recommended to read the "Internal Connectivity" section and its subsections in the VEC Online Model Description first.
{{% /callout %}}
With VEC version 2.2, a unified modeling approach for the internal connectivity of E/E-components has been introduced. This enhancement establishes a clear separation between the logical interconnection and the physical characteristics of internal connections and subcomponents.

To achieve this, proven VEC concepts from system schematic modeling and wiring representations are reused. At the same time, the new modeling approach offers two significant advantages:

- It enables a more flexible and open representation of complex aspects of internal connectivity, such as termination resistors or eFuses.
- It allows the consistent use of library components both in the system schematic and on the wiring level.

This approach builds on existing concepts like {{<vec-class "ConnectionSpecification" >}}, {{<vec-class "ComponentNode" >}}, and {{<vec-class "PartUsage" >}} to enable a structured and traceable definition of internal behavior within E/E-components.

## Overview

{{< figure src="internal-connectivity-concept.svg" lightbox="true"  title="Internal Connectivity Concept" numbered="true" >}} 

The illustration above provides a high-level overview of the new internal connectivity concept and is divided into four quadrants. The **right side** represents **master data** or library information, while the **left side** shows the **application in a specific context**. The **upper half** of the diagram covers the **logical layer**, whereas the **lower half** represents the **physical layer**.

### Logical Layer

The logical layer on both sides is modeled using the {{<vec-class "ConnectionSpecification" >}}.

On the **master data side**, the E/E component is represented by a single {{<vec-class "ComponentNode" >}} with associated _childNodes_ and {{<vec-class "Connection" >}}s.

On the **usage side**, this node can be cloned (with or without internal structure) and embedded into a larger system context. The link between the representation in the usage context and the original master data is established through a _ReusageSpecification_.

### Physical Layer

On the physical layer, the **master data side** is described by an {{<vec-class "EEComponentSpecification" >}}, which - under the new modeling approach - only defines the outer envelope of the component.
The previously used {{<vec-class "InternalComponentConnection" >}} and {{<vec-class "FuseComponent" >}} is now deprecated.
Instead, traceability relationships between elements of the {{<vec-class "EEComponentSpecification" >}} (such as {{<vec-class "HousingComponent" >}} and {{<vec-class "PinComponent" >}}) and the logical connectivity model are introduced.

If internal elements of an E/E-component require a physical characterization (e.g., conductor cross-section or fuse trip current), the {{<vec-class "EEComponentSpecification" >}} includes a bill of materials modeled as subcomponents (e.g., {{<vec-class "PartUsage" >}}). These subcomponents define the physical properties and can be linked to the corresponding logical elements via "Realization" relationships (as known from the {{<vec-diagram "connectivity/wiring-specification">}}).

On the **usage side**, the E/E-components are instantiated using an {{<vec-class "EEComponentRole" >}} contained in a {{<vec-class "PartOccurrence" >}} or {{<vec-class "PartUsage" >}} with the corresponding "Instantiation" relationships between usage and part master data. The necessary "Realization" relationships are available to map to the corresponding elements in the logical layer (also aligned with the wiring approach).

### Traceability

As shown in the conceptual illustration, full traceability is ensured within the model. This is achieved by enabling the relevant elements in each quadrant to reference:

- **Horizontally**: from the usage context (left) to the master data definition (right),
- **Vertically**: from the physical layer (bottom) to the logical layer (top).

These directional references are realized through appropriate VEC concepts and allow consistent navigation and validation across different modeling perspectives.

## Concrete Example

The following section uses a concrete example to demonstrate the application of the four-quadrant model and the relationships between them. A schematic representation of the example is shown in the following illustration.

{{< figure src="ee-component-schematic.svg" lightbox="true"  title="E/E-Component Schematic Illustration" numbered="true" >}} 

The example consists of a component with a single external interface _A_ comprising pins _1–5_, a fixed (non-removable) fuse _F1_, a fuse socket _F2_, and a built-in relay _R1_, as well as the corresponding internal connectivity.

{{% callout note %}}
The complete example, including both master data and usage context, is available for download as a VEC file at the bottom of this page, see [Additional Resources]({{<relref "#additional-resources">}})
{{% /callout  %}}

### Part Master Data

{{< figure src="part-master-basic-structure.svg" lightbox="true"  title="Basic Structure of E/E-Component Part Master Data" numbered="true" >}}

The illustration shows the basic structure of the **master data description** of an E/E component with internal connectivity, focusing on the specification level and their overall relationships.

The **logical layer** of the internal connectivity is represented by a {{<vec-class "ConnectionSpecification" >}}, while the **physical layer** is modeled using {{<vec-class "PartUsage" >}}s within a {{<vec-class "PartUsageSpecification" >}}.
Elements on the physical side maintain **traceability links** to the corresponding elements in the {{<vec-class "ConnectionSpecification" >}} (indicated by dashed lines in the diagram).

Each {{<vec-class "PartUsage" >}} references a specific {{<vec-class "PartOrUsageRelatedSpecification" >}} (e.g., a {{<vec-class "FuseSpecification" >}} or {{<vec-class "WireSpecification" >}}) to define the **technical characteristics** of the respective internal element. To clearly indicate that these internal {{<vec-class "PartUsage" >}}s are **contained within the E/E component**, they are referenced by a {{<vec-class "PartStructureSpecification" >}} describing the {{<vec-class PartVersion >}} of the E/E component.

The **technical characteristics of the E/E component itself**, especially its external interface, are defined by a {{<vec-class "EEComponentSpecification" >}}.
The elements of this specification (e.g., {{<vec-class "HousingComponent" >}}, {{<vec-class "PinComponent" >}}) also maintain traceability links (shown as dashed arrows in the diagram) that reference their corresponding elements in the {{<vec-class "ConnectionSpecification" >}}.

The XML representation of this top level structure for the example would look like this:
```xml
<vec:VecContent xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:vec="http://www.prostep.org/ecad-if/2011/vec" id="Content_00000" xsi:schemaLocation="">
  ...
  <DocumentVersion id="DocumentVersion_00001">
    <CompanyName>Acme Inc.</CompanyName>
    <DocumentNumber>DRAW-EE-COMP</DocumentNumber>
    <DocumentType>PartMaster</DocumentType>
    <DocumentVersion>1</DocumentVersion>
    <ReferencedPart>PartVersion_00151</ReferencedPart>
    <!-- General Properties of the E/E component -->
    <Specification xsi:type="vec:GeneralTechnicalPartSpecification" id="GeneralTechnicalPartSpecification_00002">...</Specification>
    <!-- Internal Connectivity (Logical Layer) -->
    <Specification xsi:type="vec:ConnectionSpecification" id="ConnectionSpecification_00003">...</Specification>
    <!-- Technical properties of pins & connectors (A & F2) of the E/E component -->
    <Specification xsi:type="vec:PluggableTerminalSpecification" id="PluggableTerminalSpecification_00054">...</Specification>
    <Specification xsi:type="vec:ConnectorHousingSpecification" id="ConnectorHousingSpecification_00055">...</Specification>
    <Specification xsi:type="vec:ConnectorHousingSpecification" id="ConnectorHousingSpecification_00062">...</Specification>
    <!-- Technical properties of the E/E component itself -->
    <Specification xsi:type="vec:EEComponentSpecification" id="EEComponentSpecification_00066">...</Specification>
    <!-- Technical properties of the Fuse subcomponent component (F1) -->
    <Specification xsi:type="vec:FuseSpecification" id="FuseSpecification_00076">...</Specification>
	<!-- Technical properties of the Relay subcomponent component (R1) -->
    <Specification xsi:type="vec:RelaySpecification" id="RelaySpecification_00078">...</Specification>
	<!-- Technical properties of the internal conductors -->
    <Specification xsi:type="vec:CoreSpecification" id="CoreSpecification_00079">...</Specification>
    <Specification xsi:type="vec:WireElementSpecification" id="WireElementSpecification_00081">...</Specification>
    <Specification xsi:type="vec:WireSpecification" id="WireSpecification_00082">...</Specification>
	<!-- The internal bill of material of the E/E component -->
    <Specification xsi:type="vec:PartStructureSpecification" id="PartStructureSpecification_00084">...</Specification>
	<!-- Part usages for sub components of the E/E component (F1, R1, internal conductors) -->
    <Specification xsi:type="vec:PartUsageSpecification" id="PartUsageSpecification_00085">...</Specification>
  </DocumentVersion>
  ...
  <PartVersion id="PartVersion_00151">
    <CompanyName>Acme Inc.</CompanyName>
    <PartNumber>EE-COMP</PartNumber>
    <PartVersion>1</PartVersion>
    <PrimaryPartType>EEComponent</PrimaryPartType>
  </PartVersion>
```

#### Logical Layer

As previously mentioned, the logical layer is represented by a {{<vec-class "ConnectionSpecification" >}}.

For the sake of clarity, the following XML snippet includes only the elements required to describe the red supply connection from A.1 to F1.A.1 and F2.A.1.
The complete logical structure can be found in the accompanying XML file.

```xml
  <Specification xsi:type="vec:ConnectionSpecification" id="ConnectionSpecification_00003">
      <Identification>SCHEMATIC</Identification>
      <ComponentNode id="ComponentNode_00004">
        <Identification>EE-COMP</Identification>
        <ChildNode id="ComponentNode_00005">
          <Identification>F1</Identification>
          <ComponentConnector id="ComponentConnector_00006">
            <Identification>A</Identification>
            <ComponentPort id="ComponentPort_00007">
              <Identification>1</Identification>
            </ComponentPort>
            ...
          </ComponentConnector>
        </ChildNode>
        <ChildNode id="ComponentNode_00009">
          <Identification>R1</Identification>
          <ComponentConnector id="ComponentConnector_00010">
            <Identification>A</Identification>
            ...
          </ComponentConnector>
        </ChildNode>
        <ComponentConnector id="ComponentConnector_00019">
          <Identification>A</Identification>
          <ComponentPort id="ComponentPort_00020">
            <Identification>1</Identification>
            <Description xsi:type="vec:LocalizedString" id="LocalizedString_00021">
              <LanguageCode>En</LanguageCode>
              <Value>Power</Value>
            </Description>
          </ComponentPort>
          ...
        </ComponentConnector>
        <ComponentConnector id="ComponentConnector_00030">
          <Identification>F2</Identification>
          <ComponentPort id="ComponentPort_00031">
            <Identification>1</Identification>
            <Description xsi:type="vec:LocalizedString" id="LocalizedString_00032">
              <LanguageCode>En</LanguageCode>
              <Value>F2 - Pluggable</Value>
            </Description>
          </ComponentPort>
          ...
        </ComponentConnector>
      </ComponentNode>
      <Connection id="Connection_00035">
        <Identification>POWER</Identification>
        <ConnectionEnd id="ConnectionEnd_00036">
          <Identification>EE-COMP.A.1</Identification>
          <IsExternalEnd>false</IsExternalEnd>
          <ConnectedComponentPort>ComponentPort_00020</ConnectedComponentPort>
        </ConnectionEnd>
        <ConnectionEnd id="ConnectionEnd_00037">
          <Identification>EE-COMP.F2.1</Identification>
          <IsExternalEnd>false</IsExternalEnd>
          <ConnectedComponentPort>ComponentPort_00031</ConnectedComponentPort>
        </ConnectionEnd>
        <ConnectionEnd id="ConnectionEnd_00038">
          <Identification>F1.A.1</Identification>
          <IsExternalEnd>true</IsExternalEnd>
          <ConnectedComponentPort>ComponentPort_00007</ConnectedComponentPort>
        </ConnectionEnd>
      </Connection>
      ...
    </Specification>
``` 

#### Physical Layer

The first building block of the physical layer is the {{<vec-class EEComponentSpecification >}} itself, which represent the outer interface of the E/E component. 
The XML representation below is shortened down to the Pin _1_ in the Connector _A_.

```xml
    <Specification xsi:type="vec:EEComponentSpecification" id="EEComponentSpecification_00066">
      <Identification>EECS-EE-COMP</Identification>
      <DescribedPart>PartVersion_00151</DescribedPart>
      <!-- Traceability link to the logical layer -->
      <ComponentNode>ComponentNode_00004</ComponentNode>
      <HousingComponent id="HousingComponent_00067">
        <Identification>A</Identification>
        <!-- Traceability link to the logical layer -->
        <ComponentConnector>ComponentConnector_00019</ComponentConnector>
        <HousingSpecification>ConnectorHousingSpecification_00055</HousingSpecification>
        <PinComponent id="PinComponent_00068">
          <Identification>1</Identification>
          <!-- Traceability link to the logical layer -->
          <ComponentPort>ComponentPort_00020</ComponentPort>
          <PinSpecification>PluggableTerminalSpecification_00054</PinSpecification>
          <ReferencedCavity>Cavity_00057</ReferencedCavity>
        </PinComponent>
        ...
      </HousingComponent>
      <HousingComponent id="HousingComponent_00073">
        <Identification>F2</Identification>
        ...
      </HousingComponent>
    </Specification>
```
The second building block of the physical layer are the technical properties of the internal components. The XML listing below shows the relevant elements for the fuse F1 and for a single internal connection.

```xml
    <!-- technical properties for the fuse -->
    <Specification xsi:type="vec:FuseSpecification" id="FuseSpecification_00076">
      <Identification>FS-F1</Identification>
      <DescribedPart></DescribedPart>
      <IMax id="NumericalValue_00077">
        <UnitComponent>SIUnit_00152</UnitComponent>
        <ValueComponent>15.0</ValueComponent>
      </IMax>
    </Specification>
	<!-- technical properties for the conductor -->
    <Specification xsi:type="vec:CoreSpecification" id="CoreSpecification_00079">
      <Identification>BUSBAR</Identification>
      <CrossSectionArea id="NumericalValue_00080">
        <UnitComponent>SIUnit_00153</UnitComponent>
        <ValueComponent>5.0</ValueComponent>
      </CrossSectionArea>
    </Specification>
    <Specification xsi:type="vec:WireElementSpecification" id="WireElementSpecification_00081">
      <Identification>BUSBAR</Identification>
      <ConductorSpecification>CoreSpecification_00079</ConductorSpecification>
    </Specification>
    <Specification xsi:type="vec:WireSpecification" id="WireSpecification_00082">
      <Identification>WS-BUSBAR</Identification>
      <DescribedPart></DescribedPart>
      <WireElementSpecification>WireElementSpecification_00081</WireElementSpecification>
      <WireElement id="WireElement_00083">
        <Identification>BUSBAR</Identification>
        <WireElementSpecification>WireElementSpecification_00081</WireElementSpecification>
      </WireElement>
    </Specification>
    ...
    <Specification xsi:type="vec:PartUsageSpecification" id="PartUsageSpecification_00085">
      <Identification>VIRTUAL COMPONENTS</Identification>
	  <!-- PartUsage for the internal conductor -->
      <PartUsage id="PartUsage_00086">
        <Identification>POWER</Identification>
        <Role xsi:type="vec:WireRole" id="WireRole_00087">
          <Identification>POWER</Identification>
          <WireSpecification>WireSpecification_00082</WireSpecification>
          <WireElementReference id="WireElementReference_00088">
            <Identification>BUSBAR</Identification>
			<!-- traceability link to the logical layer -->
            <Connection>Connection_00035</Connection>
            <ReferencedWireElement>WireElement_00083</ReferencedWireElement>
          </WireElementReference>
        </Role>
        <PrimaryPartUsageType>Wire</PrimaryPartUsageType>
        <PartOrUsageRelatedSpecification>WireSpecification_00082</PartOrUsageRelatedSpecification>
      </PartUsage>
      ...
	  <!-- PartUsage for the integrated fuse -->
      <PartUsage id="PartUsage_00104">
        <Identification>F1</Identification>
        <Role xsi:type="vec:FuseRole" id="FuseRole_00105">
          <Identification>F1</Identification>
          <EEComponentSpecification>FuseSpecification_00076</EEComponentSpecification>
		  <!-- traceability link to the logical layer -->
          <ComponentNode>ComponentNode_00005</ComponentNode>
        </Role>
        <PrimaryPartUsageType>Fuse</PrimaryPartUsageType>
        <PartOrUsageRelatedSpecification>FuseSpecification_00076</PartOrUsageRelatedSpecification>
      </PartUsage>
    </Specification>
```
Last but not least, the {{<vec-class partusage >}}s are assigned to the E/E-component as subcomponents with a {{<vec-class partstructurespecification >}}.
```xml
    <Specification xsi:type="vec:PartStructureSpecification" id="PartStructureSpecification_00084">
      <Identification>STRUCTURE</Identification>
      <DescribedPart>PartVersion_00151</DescribedPart>
      <InBillOfMaterial>PartUsage_00086 PartUsage_00089 PartUsage_00092 PartUsage_00095 PartUsage_00098 PartUsage_00101 PartUsage_00104 PartUsage_00106</InBillOfMaterial>
    </Specification>
```

### Usage

The master data definitions described in the previous sections can be used on both the logical and the physical layer. However, the instantiation concepts differ between the two layers.

#### Logical Layer

On the logical layer, this constitutes a reuse of information. The same concepts (i.e., classes and attributes) are used in both the master data and the usage context. That means a {{<vec-class "ConnectionSpecification" >}} is used on both sides to describe the logical connectivity. However, the usage of a {{<vec-class "ComponentNode" >}} may deviate from its master definition, according to process-specific rules. For example, the identification (name) of a {{<vec-class "ComponentNode" >}} in the master data may differ from its designation in a specific usage context.
<!--TODO: Create link to ReusageSpecification after release of VEC 2.2 -->
To enable traceability between usage and master data, a `ReusageSpecification` is used. 

The corresponding XML representation is shown below.
The {{<vec-class "ConnectionSpecification" >}} from the master data was already listed earlier.

```xml
  <DocumentVersion id="DocumentVersion_00108">
    <CompanyName>Acme Inc.</CompanyName>
    <DocumentNumber>SCHEMATIC</DocumentNumber>
    <DocumentVersion>1</DocumentVersion>
    <Specification xsi:type="vec:ConnectionSpecification" id="ConnectionSpecification_00109">
      <Identification>SCHEMATIC</Identification>
	  <!-- Reuse of EE-COMP, renamed to A200 -->
      <ComponentNode id="ComponentNode_00110">	  
        <Identification>A200</Identification>
        <ComponentConnector id="ComponentConnector_00111">
          <Identification>A</Identification>
          <ComponentPort id="ComponentPort_00112">
            <Identification>1</Identification>
          </ComponentPort>
          ...
        </ComponentConnector>
        <ComponentConnector id="ComponentConnector_00117">
          <Identification>F2</Identification>
          ...
        </ComponentConnector>
      </ComponentNode>
    </Specification>
    <Specification xsi:type="vec:ReusageSpecification" id="ReusageSpecification_00120">
      <Identification>RS-DRAW-EE-COMP-SCHEMATIC</Identification>
      <Reusage id="Reusage_00121">
	  	<!-- Traceability link into part master data -->
        <Template>ComponentNode_00004</Template>
        <Usage>ComponentNode_00110</Usage>
      </Reusage>
      <Reusage id="Reusage_00122">
	  	<!-- Traceability link into part master data -->
        <Template>ComponentConnector_00019</Template>
        <Usage>ComponentConnector_00111</Usage>
      </Reusage>
      <Reusage id="Reusage_00123">
	  	<!-- Traceability link into part master data -->
        <Template>ComponentPort_00020</Template>
        <Usage>ComponentPort_00112</Usage>
      </Reusage>
	  ...
    </Specification>
  </DocumentVersion>
```

#### Physical Layer
In the physical layer the VEC has an actual instantiation approach with different concepts for types (e.g. {{<vec-class PartVersion >}}, {{<vec-class PartOrUsageRelatedSpecification >}}) and instances ({{<vec-class PartOccurrence >}}, {{<vec-class Role >}}). However, these concepts have also the capability to provide traceability into the logical layer, as shown the listing below:

```xml
  <DocumentVersion id="DocumentVersion_00131">
    <CompanyName>Acme Inc.</CompanyName>
    <DocumentNumber>HARNESS-1</DocumentNumber>
    <DocumentType>HarnessDescription</DocumentType>
    <DocumentVersion>1</DocumentVersion>
    <Specification xsi:type="vec:CompositionSpecification" id="CompositionSpecification_00132">
      <Identification>COMPONENTS</Identification>
      <Component id="PartOccurrence_00133">
        <Identification>A200*1</Identification>
        <Role xsi:type="vec:EEComponentRole" id="EEComponentRole_00134">
          <Identification>A200*1</Identification>
          <EEComponentSpecification>EEComponentSpecification_00066</EEComponentSpecification>
		  <!-- Traceability link into logical layer -->
          <ComponentNode>ComponentNode_00110</ComponentNode>
          <!--Embedded ConnectorHousingRole omitted.-->
          <HousingComponentRef id="HousingComponentReference_00135">
            <Identification>A</Identification>
			<!-- Traceability link into logical layer -->
            <ComponentConnector>ComponentConnector_00111</ComponentConnector>
            <HousingComponent>HousingComponent_00067</HousingComponent>
            <PinComponentRef id="PinComponentReference_00136">
              <Identification>1</Identification>
              <PinComponent>PinComponent_00068</PinComponent>
              <TerminalRole xsi:type="vec:BoltTerminalRole" id="BoltTerminalRole_00137">
                <Identification>1</Identification>
				<!-- Traceability link into logical layer -->
                <ComponentPort>ComponentPort_00112</ComponentPort>
                <TerminalSpecification>PluggableTerminalSpecification_00054</TerminalSpecification>
              </TerminalRole>
            </PinComponentRef>
            ...
          </HousingComponentRef>
          ...
        </Role>
        <Part>PartVersion_00151</Part>
      </Component>
    </Specification>
  </DocumentVersion>
```