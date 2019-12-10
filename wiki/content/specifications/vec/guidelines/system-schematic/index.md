---
title: "System Schematic"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [fehlmann]
tags: ["System schematic", "Usage Node", "Connection"]
categories: []
date: 2019-03-11
lastmod: 2019-12-02T12:46:09+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    weight: 19000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 19000
---
## System Schematic Basics
The system schematic is used to illustrate the electrical components (e.g. ECUs, sensors or switches) in a vehicle electrical system and their connections to each other on an electrological level without physical realization details. In many companies the system schematic is specific for an individual system and not an individual vehicle variant.
The [example below]({{< relref "#system-schematic-example" >}}) shows such a system schematic with four components (MX1.1, MX3.1, MX3.2 and E1.1), which are connected to each other in some way. On the connection lines the potential names can be found. Furthermore the component E1.1 is connected to additional elements on another sheet / in another system, which is suggested by the arrow on the very bottom. This is explained in more details in the section [Partial Systems]({{< relref "#partial-systems" >}}). 

{{< figure src="basic_schematic.png" title="System Schematic Example" numbered="true" lightbox="true">}}

To represent a system schematic in the VEC the {{< vec-class ConnectionSpecification>}} and its subelements are used. E/E-Components (in some ECAD Systems called Block) are represented by {{< vec-class ComponentNode>}}s. A {{< vec-class ComponentNode>}} is a node where an electrological component is located. It is a representative for an element in the electric system, e.g. an actuator, a sensor, an ECU. [This diagram]({{< relref "#system-schematic-class-diagram" >}}) contains the representation as VEC classes of the system schematic shown in [the example]({{< relref "#system-schematic-example" >}}). The {{< vec-class ComponentPort>}} (Pins) of a {{< vec-class ComponentNode>}} are grouped into Connectors / Slots with the help of {{< vec-class ComponentConnector>}}s. In [the example]({{< relref "#system-schematic-example" >}}) the connectors are only represented implicitly by the prefix "A" to the Pin-Number.

Even if the system schematic in this example only shows pins which are connected to other pins (of other components), the VEC representation of the component ({{< vec-class ComponentNode>}}) is explicitly allowed to contain {{< vec-class ComponentPort>}}s for unused pins. For example a component with 5 pins where just pin no. 1 and 5 are connected in some way __may__ contain ComponentPorts for the pins 2 - 4 (but is not required to). This underlines that these pins do physicaly exists. There is no need of a reference from a {{< vec-class Connection>}} to one of the {{< vec-class ComponentPort>}}s via a {{< vec-class ConnectionEnd>}}.

{{< figure src="simpleschematicconnectionsbasic.png" title="System Schematic Class Diagram" numbered="true" lightbox="true">}}

The following XML listing contains the component nodes and connection from the example above.

{{< highlight xml "linenos=table,linenostart=1" >}}
<Specification xsi:type="vec:ConnectionSpecification" id="id_connect_spec_2506">
            <Identification>ConSpec_V..58L..</Identification>
            <ComponentNode id="id_comp_node_2507">
                <Identification>MX1.1</Identification>
                <ComponentConnector id="id_component_connector_2509">
                    <Identification>A</Identification>
                    <ComponentPort id="id_comp_port_2510">
                        <Identification>1</Identification>
                    </ComponentPort>
                </ComponentConnector>
            </ComponentNode>
            <ComponentNode id="id_comp_node_2513">
                <Identification>MX3.1</Identification>
                <ComponentConnector id="id_component_connector_2518">
                    <Identification>A</Identification>
                    <ComponentPort id="id_comp_port_2519">
                        <Identification>1</Identification>
                    </ComponentPort>
                </ComponentConnector>
            </ComponentNode>
            <ComponentNode id="id_comp_node_2521">
                <Identification>MX3.2</Identification>
                <ComponentConnector id="id_component_connector_2523">
                    <Identification>A</Identification>
                    <ComponentPort id="id_comp_port_2524">
                        <Identification>1</Identification>
                    </ComponentPort>
                </ComponentConnector>
            </ComponentNode>
            <ComponentNode id="id_comp_node_2533">
                <Identification>E1.1</Identification>
                <ComponentConnector id="id_component_connector_2535">
                    <Identification>A</Identification>
                    <ComponentPort id="id_comp_port_2538">
                        <Identification>1</Identification>
                    </ComponentPort>
                </ComponentConnector>
            </ComponentNode>
            <Connection id="id_connection_2784">
                <Identification>V..58L..</Identification>
                <ConnectionEnd id="id_conn_end_2785">
                    <Identification>MX1.1-A1</Identification>
                    <ConnectedComponentPort>id_comp_port_2510</ConnectedComponentPort>
                </ConnectionEnd>
                <ConnectionEnd id="id_conn_end_2786">
                    <Identification>MX3.1-A1</Identification>
                    <ConnectedComponentPort>id_comp_port_2519</ConnectedComponentPort>
                </ConnectionEnd>
                <ConnectionEnd id="id_conn_end_2787">
                    <Identification>MX3.2-A1</Identification>
                    <ConnectedComponentPort>id_comp_port_2524</ConnectedComponentPort>
                </ConnectionEnd>
            </Connection>
            [...]
        </Specification>
{{< / highlight >}}

### Potential Nodes

{{< figure src="simple_schematic_connections_plan.png" title="Example of Potential Nodes on System Schematics" numbered="true" lightbox="true" class="float-right">}}

As mentioned before, the level of abstraction of the system schematic in the VEC (represented by the {{< vec-class ConnectionSpecification>}}) contains only the electrological design and no physical design of the wiring harness. Therefore, the black dots (circled in red) in the [graphical example]({{< relref "#example-of-potential-nodes-on-system-schematics" >}}) have only a layouting purpose and do not represent a technical design decision (e.g. to place a splice on this spot). 

The expressed engineering intention is only that the connected pins (all “A1”) have the same potential (are connected in some way). The decision about a technical realization (e.g. splice, multicrimp, single wires) can not be made is most cases at the stage of a system schematic, because a technical realization depends on concrete variant combinations and might be even different for different variants (see section Wiring) or is can be unnecessary, because in a reduced 100% variant, there might be just two of the three components and a realization with a single wire would be possible. As the VEC does not represent the graphical layout of documents these nodes have no representation in VEC.

If the system schematic should explicitly contain the engineering intention of a star like connection topology (e.g. with a splice or a potential distributor) the center of this "star" must be explicitly represented with an individual {{< vec-class ComponentNode>}}



### Partial Systems
During the development of individual systems or sub systems for a vehicle the corresponding system schematic is often incomplete (partial). This situation arises from the fact, that most systems depend on some kind of infrastructure of the integrated overall vehicle system (e.g. power, ground or bus connections), which is only a available in the context of the complete vehicle. In [the example at the top]({{< relref "#system-schematic-example" >}}) such a link to an unspecified infrastructure is represented by the down arrow, in the following sections this is called an **open link**. 

To create a fully functional system, a partial system must be merged / combined with other partial systems. In this process matching open links are connected (and thus removed) in order to create complete overall system. In [the extended example]({{< relref "#system-schematic-example-with-two-parts" >}}) this is illustrated by adding a second partial system schematic (framed in red) to the original example from [the top]({{< relref "#system-schematic-example" >}}). The resulting overall system schematic of such a merge process would just contain a simple connection between **E.1.1** and **M31**. 

{{< figure src="simple_schematic_connections_plan2.png" title="System Schematic Example with two parts" numbered="true" lightbox="true">}}

{{< figure src="componentnode_types.png" title="Open Enumeration with OpenLink" numbered="true" lightbox="true" class="float-right">}}

The mapping of this advanced schematic example into the VEC context it is the following (see [this diagram]({{< relref "#advanced-system-schematic-example" >}})). 

  - To maintain the logical grouping of each partial system schematic, the content of each is contained in its own {{< vec-class DocumentVersion>}} with a single {{< vec-class ConnectionSpecification>}} in the same {{< vec-class VecContent>}}.
  -  The open link is represented by a "virtual" {{< vec-class ComponentNode>}}. Its naming is arbitrary and shall be choosen in a way, that a merge algorithm has the required information. For the clarity of the example it is here named *GROUND*. Depending on the used merge algorithm the name can be irrelevant if the merge algorithm for example only requires signal information.
  - The "virtual" component node shall be marked with the {{< vec-class ComponentNodeType>}} literal *OpenLink* (see [on the right]({{< relref "#open-enumeration-with-openLink" >}})).

[This diagram]({{< relref "#advanced-system-schematic-example" >}}) shows the extended version with the {{< vec-class ComponentNode>}} "GROUND". As you can see the {{< vec-class ComponentNode>}} is marked with the node type “OpenLink” (red mark) to clarify that this component is NOT part of the system schematic but components from the plan DO HAVE a connection to it. 

**__Caution:__** The strategy and algorithm to merge partial systems if individual for the different ECAD systems and development processes. The VEC does not define an algorithm or requires a specific strategy. The VEC only the means to store and exchange the information that is required by those algorithms. When merging the definition of these partial systems together into one vehicle system, it is mandatory to resolve these open links and replace them by determined {{< vec-class ComponentNode>}} elements or {{< vec-class Connection>}}:

  - **Case 1:** The open link component node is replaced by a real component with the required connectivity.
  - **Case 2:** If multiple real component nodes have connections to different open link component nodes, the open link nodes can be merged to a single connection among the real component nodes.

__**Note:**__ It is possible to reference a {{< vec-class ComponentPort>}} from a {{< vec-class Connection>}}.{{< vec-class ConnectionEnd>}} even if they are contained in different {{< vec-class DocumentVersion>}}s.

{{< figure src="simple_schematic_connections.png" title="Advanced System Schematic Example" numbered="true" lightbox="true">}}

The following listing shows the additional {{< vec-class ComponentNode>}} as XML.

{{< highlight xml "linenos=table,linenostart=1" >}}
<Specification xsi:type="vec:ConnectionSpecification" id="id_connect_spec_2506">
            <Identification>ConSpec_V..58L..</Identification>
            [...]
            <ComponentNode id="id_comp_node_2533">
                <Identification>E1.1</Identification>
                <ComponentConnector id="id_component_connector_2535">
                    <Identification>A</Identification>
                    <ComponentPort id="id_comp_port_2538">
                        <Identification>1</Identification>
                    </ComponentPort>
                </ComponentConnector>
            </ComponentNode>
            <ComponentNode id="id_comp_node_2634">
                <Identification>GROUND</Identification>
                <ComponentNodeType>OpenLink</ComponentNodeType>
                <ComponentConnector id="id_component_connector_2636">
                    <Identification>A</Identification>
                    <ComponentPort id="id_comp_port_2639">
                        <Identification>1</Identification>
                    </ComponentPort>
                </ComponentConnector>
            </ComponentNode>
            [...]
            <Connection id="id_connection_2885">
                <Identification>GROUND..SYS_055A</Identification>
                <ConnectionEnd id="id_conn_end_2886">
                    <Identification>E1.1-A1</Identification>
                    <ConnectedComponentPort>id_comp_port_2538</ConnectedComponentPort>
                </ConnectionEnd>
                <ConnectionEnd id="id_conn_end_2887">
                    <Identification>GROUND-A1</Identification>
                    <ConnectedComponentPort>id_comp_port_2639</ConnectedComponentPort>
                </ConnectionEnd>
            </Connection>
        </Specification>
{{< / highlight >}}


## Coupling Devices
### Basics
{{< figure src="basics.jpg" title="Coupling Device Basics" numbered="true" lightbox="true">}}

The figure above illustrates the model of the smallest appearance of a coupling device (e.g. an inliner) with just one connector with only one pin on each side. The coupling device is represented in the VEC by a {{< vec-class ComponentNode>}} with the componentNodeType ‘*CouplingDevice’* and contains for each side of the coupling device a {{< vec-class ComponentConnector>}}. These connectors include the {{< vec-class ComponentPort>}}s, which represent the pins of the connector. 

To display the connectivity between the two sides connectors and their pins, the VEC also contains a {{< vec-class Connection>}} with two {{< vec-class ConnectionEnd>}}s, which reference the connected {{< vec-class ComponentPort>}}s. The flag *isExternalEnd* of the Ends is set to false, because the connection represent the internal mapping of the coupling device. The connection to other {{< vec-class ComponentNode>}}s is represented by different {{< vec-class Connection>}}s with  {{< vec-class ConnectionEnd>}}s where *isExternal=true.*

### Variance
{{< figure src="variance.jpg" title="Example with Variance" numbered="true" lightbox="true">}}

A more complex situation is displayed in this diagram. A coupling device can consist of one or more connectors for each side. Because of variance it is possible, that more than one connector from a side are mapping onto one connector of the other side.

If there is a second connector placed on one of the sides, this connector gets its own {{< vec-class ComponentConnector>}} with the underneath {{< vec-class ComponentPort>}}s.

## Variant Management For ECUs
{{< figure src="variant_management_for_ecus.jpg" title="Variant Management for ECUs" numbered="true" lightbox="true">}}

This example demonstrates how the variant management can be handled in the systems schematic on different levels of abstraction.

The top most element is the usage node. It defines an abstract position / function in the vehicle. In the example it is the back light on the left hand side (named “MX3”). This function can be realized by two different electrological variants (interfaces). These variants are represented by {{< vec-class ComponentNode>}}s. In the example there is one variant with two pins (MX3.1) and one variant with three pins (MX3.2). On a more concrete level these interfaces can be satisfied by one or more EE-components (alternatives). These EE-Components are defined by {{< vec-class PartVersion>}} with a {{< vec-class EEComponentSpecification>}}. In order to define restrictions a corresponding {{< vec-class PartOccurrence>}} with a {{< vec-class VariantConfiguration>}} can be defined.

The {{< vec-class PartUsage>}}s in the example are needed for to reasons:

  - They serve as a container to group the different possible alternatives (“realizedPartUsage”).
  - It is necessary to declare one of the EEComponents as the representative of all alternatives of a variant. This is done by the reference between the PartUsage and the corresponding {{< vec-class EEComponentSpecification>}}.


## Realization Constraints

Even if the schematic layer does not make statements about concrete technical realizations, for special use cases there is some background know how to avoid trouble or simply the need (e.g. because of law or company directives) to define the later realization in this early stadium. In the following section these realization constraints are explained in detail, devided into chapers for each type of constraint.

### Wire Constraints

#### Constraints for Single Core Wires or Conductors

In the case of technical constraints against a single core wire or the conductor of a multi core wire e.g. to specify a must use wire color or type (or even a complete part number from the pdm system), a PartUsage is used to do so. This part usage is placed in a PartUsageSpecification which lays in one of the DocumentVersions of the schematic layer. The PartUsage contains a WireRole which has the ability to reference the Connection for which the constraint should be defined. On the other hand this role references it's corresponding WireSpecification with which the technical statements can be made. For details to the definition of master data for wires, please see [this tutorial]({{< relref "wires" >}})

{{< figure src="wire_constraint.png" title="Wire Constraints" numbered="true" lightbox="true">}}

#### Constraints for Multi Cores

Constraints that concern more than one wire element can be realized with the help of the ConnectionGroup. For e.g. a shield or a twist a ConnectionGroup is placed beside the connections in a ConnectionSpecification of the system schematic layer. Be aware that there can be more than one of those specification in the vec content, because the system schematic can be devided into multiple parts to express the organization of them on several sheets. 
As you can see in the diagram above the WireElements of the PartUsage multi core wire references a connection from the schematic layer each and these connections are grouped together in the ConnectionGroup which defines a twist for them.
Now in the group the affected connections will be referenced and the GroupType attribute specifies the expected constraint type like e.g. twisted.


