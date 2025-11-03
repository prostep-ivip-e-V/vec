---
title: "Architectural Layer"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: []
categories: []
date: 2025-11-02
lastmod: 2025-11-02
draft: false
review: true

classes:
  - NetSpecification
  - NetworkNode
  - Net
  - NetworkPort
  - NetType

history:
  - date: 2025-10-30T00:00:00Z
    description: "Added Implementation Guideline for the Architectural Layer."
    ghIssue: "573" 

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: elog-layers
    weight: 500

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)

weight: 5000
---
{{< gh-review "573" >}}

The _Architectural Layer_ is the highest abstraction layer for describing electrological aspects in the VEC. It focuses on defining the connectivity between components without specifying the physical realization of that connectivity. This layer is particularly useful for early design phases, where the overall system architecture needs to be established without delving into implementation details.

{{< figure src="architecture-illustration.svg" lightbox="true" title="Simple Architectural Layer (Illustration)" numbered="true">}}

The figure above illustrates a simple sketch of a "Power Window (Driver Side)" system in the architectural layer. It shows the main components involved (Body Controller, Door Module Driver, and Power Window Engine Driver) and the communication links between them. However, it does not specify how these connections are physically realized (e.g., electrical potentials, wire types, connectors). The instantiation of this sketch in the VEC is shown in the figure below.

{{< figure src="architecture.svg" lightbox="true" title="Simple Architectural Layer" numbered="true">}}

The VEC instantiation in this example contains slightly more detail than the sketch, but still refrains from defining physical realization aspects. The VEC elements used to describe the _Architectural Layer_ are contained in the {{< vec-class NetSpecification >}}. Each E/E Component is represented by a {{< vec-class NetworkNode >}}. The communication links between the components are represented by three {{< vec-class "Net" >}}s. A {{< vec-class "Net" >}} is the usage of a {{< vec-class NetType >}}, e.g., "CAN Bus" or "HAL", defining the technology used for communication. The {{< vec-class "Net" >}} defines a specific instance of this technology in the system, e.g., "Body-CAN Bus" or "HAL for Power Window Driver Side".

The _XML_ representation of the above example within the {{< vec-class "NetSpecification" >}} is shown below:

```xml
<?xml version="1.0" ?>
<vec:VecContent xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:vec="http://www.prostep.org/ecad-if/2011/vec" id="Content_00000" xsi:schemaLocation="">
  <VecVersion>2.2.0</VecVersion>
  <GeneratingSystemName>VEC Samples</GeneratingSystemName>
  <DateOfCreation>2025-11-03T14:05:24.068903900Z</DateOfCreation>
  <GeneratingSystemVersion>0.0.1</GeneratingSystemVersion>
  <DocumentVersion id="DocumentVersion_00001">
    <CompanyName>Acme Inc.</CompanyName>
    <DocumentNumber>1234567</DocumentNumber>
    <DocumentType>NetworkArchitecture</DocumentType>
    <DocumentVersion>a</DocumentVersion>
    <Specification xsi:type="vec:NetSpecification" id="NetSpecification_00002">
      <Net id="Net_00003">
        <Identification>PWED-Engine</Identification>
        <NetType>NetType_00006</NetType>
        <NetworkPort>NetworkPort_00017 NetworkPort_00014</NetworkPort>
      </Net>
      <Net id="Net_00004">
        <Identification>HAL</Identification>
        <NetType>NetType_00007</NetType>
        <NetworkPort>NetworkPort_00016 NetworkPort_00013</NetworkPort>
      </Net>
      <Net id="Net_00005">
        <Identification>Body-CAN</Identification>
        <NetType>NetType_00008</NetType>
        <NetworkPort>NetworkPort_00010 NetworkPort_00012</NetworkPort>
      </Net>
      <NetType id="NetType_00006">
        <Identification>12V-Power</Identification>
        <SignalType>Energy</SignalType>
      </NetType>
      <NetType id="NetType_00007">
        <Identification>HAL</Identification>
        <SignalType>Information</SignalType>
        <SignalInformationType>Analog</SignalInformationType>
      </NetType>
      <NetType id="NetType_00008">
        <Identification>CAN</Identification>
        <SignalType>Information</SignalType>
        <SignalSubType>CAN</SignalSubType>
        <SignalInformationType>Digital</SignalInformationType>
      </NetType>
      <NetworkNode id="NetworkNode_00009">
        <Identification>BCM</Identification>
        <Port id="NetworkPort_00010">
          <Identification>CAN1</Identification>
          <NetType>NetType_00008</NetType>
        </Port>
      </NetworkNode>
      <NetworkNode id="NetworkNode_00011">
        <Identification>DMD</Identification>
        <Port id="NetworkPort_00012">
          <Identification>CAN</Identification>
          <NetType>NetType_00008</NetType>
        </Port>
        <Port id="NetworkPort_00013">
          <Identification>PWED-HAL</Identification>
          <NetType>NetType_00007</NetType>
        </Port>
        <Port id="NetworkPort_00014">
          <Identification>PWED-Engine</Identification>
          <NetType>NetType_00006</NetType>
        </Port>
      </NetworkNode>
      <NetworkNode id="NetworkNode_00015">
        <Identification>PWED</Identification>
        <Port id="NetworkPort_00016">
          <Identification>HAL</Identification>
          <NetType>NetType_00007</NetType>
        </Port>
        <Port id="NetworkPort_00017">
          <Identification>Engine</Identification>
          <NetType>NetType_00006</NetType>
        </Port>
      </NetworkNode>
    </Specification>
  </DocumentVersion>
</vec:VecContent>
```

