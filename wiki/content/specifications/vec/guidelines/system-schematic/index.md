---
title: "System Schematic"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [fehlmann]
tags: ["System schematic", "Usage Node", "Connection"]
categories: []
date: 2019-12-02T12:46:09+01:00
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
The system schematic is used to illustrate the electrical components (e.g. ECUs, sensors or switches) in a vehicle electrical system and their connections to each other on an electrological level without physical realization details. In many companies the system schematic is specific for an individual system and not an individual vehicle variant.\\ 
The <imgref simple_example> below shows an example of such a system schematic with four components (MX1.1, MX3.1, MX3.2 and E1.1), which are connected to each other in some way. On the connection lines the potential names can be found. Furthermore the component E1.1 is connected to additional elements on another sheet / in another system, which is suggested by the arrow on the very bottom. This is explained in more details in the section [[#partial systems|Partial Systems]]. 

<imgcaption simple_example |Simple System Schematic Example>{{:tutorials:vec:basic_schematic.png?|}}</imgcaption> 

To represent a system schematic in the VEC the [[:models:vec_v1_1_3:classes:connectionspecification|ConnectionSpecification]] and its subelements are used. E/E-Components (in some ECAD Systems called Block) are represented by [[:models:vec_v1_1_3:classes:componentnode|ComponentNodes]]. A [[:models:vec_v1_1_3:classes:componentnode|ComponentNode]] is a node where an electrological component is located. It is a representative for an element in the electric system, e.g. an actuator, a sensor, an ECU. <imgref simple_example_diagram> contains the representation as VEC classes of the system schematic shown in <imgref simple_example>. The [[:models:vec_v1_1_3:classes:componentport|ComponentPort (Pins)]] of a [[:models:vec_v1_1_3:classes:componentnode|ComponentNode]] are grouped into Connectors / Slots with the help of [[:models:vec_v1_1_3:classes:componentconnector|ComponentConnectors]]. In <imgref simple_example> the connectors are only represented implicitly by the prefix "A" to the Pin-Number. \\
Even if the system schematic in this example only shows pins which are connected to other pins (of other components), the VEC representation of the component ([[:models:vec_v1_1_3:classes:componentnode|ComponentNode]]) is explicitly allowed to contain [[:models:vec_v1_1_3:classes:componentport|ComponentPorts]] for unused pins. For example a component with 5 pins where just pin no. 1 and 5 are connected in some way __may__ contain ComponentPorts for the pins 2 - 4 (but is not required to). This underlines that these pins do physicaly exists. There is no need of a reference from a [[:models:vec_v1_1_3:classes:connection|Connection]] to one of the [[:models:vec_v1_1_3:classes:componentport|ComponentPorts]] via a [[:models:vec_v1_1_3:classes:connectionend|ConnectionEnd]].

<imgcaption simple_example_diagram |System Schematic Class Diagram>{{ :tutorials:vec:simpleschematicconnectionsbasic.png |}}</imgcaption>

The following XML listing contains the component nodes and connection from the example above.
<Code:xml linenums|>
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
        </Code>

### Potential Nodes
<WRAP group>
<WRAP half column>
As mentioned before, the level of abstraction of the system schematic in the VEC (represented by the [[:models:vec_v1_1_3:classes:connectionspecification|ConnectionSpecification]]) contains only the electrological design and no physical design of the wiring harness. Therefore, the black dots (circled in red) in the graphical example <imgref nodes> have only a layouting purpose and do not represent a technical design decision (e.g. to place a splice on this spot). 

The expressed engineering intention is only that the connected pins (all “A1”) have the same potential (are connected in some way). The decision about a technical realization (e.g. splice, multicrimp, single wires) can not be made is most cases at the stage of a system schematic, because a technical realization depends on concrete variant combinations and might be even different for different variants (see section Wiring) or is can be unnecessary, because in a reduced 100% variant, there might be just two of the three components and a realization with a single wire would be possible. As the VEC does not represent the graphical layout of documents these nodes have no representation in VEC.

If the system schematic should explicitly contain the engineering intention of a star like connection topology (e.g. with a splice or a potential distributor) the center of this "star" must be explicitly represented with an individual [[:models:vec_v1_1_3:classes:connectionspecification|ComponentNode]]
</WRAP>

<WRAP half column>
<imgcaption nodes |Simple System Schematic Example>{{ :tutorials:vec:simple_schematic_connections_plan.png?400|}}</imgcaption>
</WRAP>
</WRAP>
\\

### Partial Systems
During the development of individual systems or sub systems for a vehicle the corresponding system schematic is often incomplete (partial). This situation arises from the fact, that most systems depend on some kind of infrastructure of the integrated overall vehicle system (e.g. power, ground or bus connections), which is only a available in the context of the complete vehicle. In <imgref simple_example> such a link to an unspecified infrastructure is represented by the down arrow, in the following sections this is called an **open link**. 

To create a fully functional system, a partial system must be merged / combined with other partial systems. In this process matching open links are connected (and thus removed) in order to create complete overall system. In <imgref advanced_example> this is illustrated by adding a second partial system schematic (framed in red) to the original example from <imgref simple_example>. The resulting overall system schematic of such a merge process would just contain a simple connection between //E.1.1// and //M31//. 

<imgcaption advanced_example |System Schematic Example with two parts>{{:tutorials:vec:simple_schematic_connections_plan2.png?|}}</imgcaption>

<imgcaption types |Open Enumeration with OpenLink>{{ :tutorials:vec:componentnode_types.png?200|}}</imgcaption>

The mapping of this advanced schematic example into the VEC context it is the following (see <imgref advanced_example_diagram>). 
  - To maintain the logical grouping of each partial system schematic, the content of each is contained in its own [[:models:vec_v1_1_3:classes:documentversion|DocumentVersion]] with a single [[:models:vec_v1_1_3:classes:connectionspecification|ConnectionSpecification]] in the same [[:models:vec_v1_1_3:classes:veccontent|VecContent]].
  -  The open link is represented by a "virtual" [[:models:vec_v1_1_3:classes:componentnode|ComponentNode]]. Its naming is arbitrary and shall be choosen in a way, that a merge algorithm has the required information. For the clarity of the example it is here named //GROUND//. Depending on the used merge algorithm the name can be irrelevant if the merge algorithm for example only requires signal information.
  - The "virtual" component node shall be marked with the [[:models:vec_v1_1_3:enums:componentnodetype|ComponentNodeType]] literal //OpenLink// (see <imgref types> on the right).

<imgref advanced_example_diagram> shows the extended diagram with the [[:models:vec_v1_1_3:classes:componentnode|ComponentNode]] "GROUND". As you can see the [[:models:vec_v1_1_3:classes:componentnode|ComponentNode]] is marked with the node type “OpenLink” (red mark) to clarify that this component is NOT part of the system schematic but components from the plan DO HAVE a connection to it. 

**//__Caution:__//** The strategy and algorithm to merge partial systems if individual for the different ECAD systems and development processes. The VEC does not define an algorithm or requires a specific strategy. The VEC only the means to store and exchange the information that is required by those algorithms. When merging the definition of these partial systems together into one vehicle system, it is mandatory to resolve these open links and replace them by determined [[:models:vec_v1_1_3:classes:componentnode|ComponentNode]] elements or [[:models:vec_v1_1_3:classes:connectionspecification|Connection]]:
  - **Case 1:** The open link component node is replaced by a real component with the required connectivity.
  - **Case 2:** If multiple real component nodes have connections to different open link component nodes, the open link nodes can be merged to a single connection among the real component nodes.

**//__Note:__//** It is possible to reference a [[:models:vec_v1_1_3:classes:componentport|ComponentPort]] from a Connection/ConnectionEnd even if they are contained in different [[:models:vec_v1_1_3:classes:documentversion|DocumentVersion]].

<imgcaption advanced_example_diagram |Advanced System Schematic Example>{{ :tutorials:vec:simple_schematic_connections3.png?900 |}}</imgcaption>

The following listing shows the additional [[:models:vec_v1_1_3:classes:componentnode|ComponentNode]] as XML.
<Code:xml linenums|>
<Specification xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ns2:ConnectionSpecification" id="id_connect_spec_2506">
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
        </Code>


## Coupling Devices
### Basics
{{ .:diagrams:8_2_1_basics.jpg?854x817 }}

The figure above illustrates the model of the smallest appearance of a coupling device (e.g. an inliner) with just one connector with only one pin on each side. The coupling device is represented in the VEC by a //ComponentNode// with the componentNodeType ‘//CouplingDevice’// and contains for each side of the coupling device a //ComponentConnector//. These connectors ////include the //ComponentPorts//, which represent the pins of the connector.\\ To display the connectivity between the two sides connectors and their pins, the VEC also contains a //Connection// with two //ConnectionEnds//, which reference the connected ComponentPorts. The flag isExternalEnd of the Ends is set to false, because the connection represent the internal mapping of the coupling device. The connection to other //ComponentNodes// is represented by different //Connections// with ConnectionEnds where //isExternal=true.//

### Variance
{{ .:diagrams:8_2_2_variance.jpg?937x658 }}

A more complex situation is displayed in this diagram. A coupling device can consist of one or more connectors for each side. Because of variance it is possible, that more than one connector from a side are mapping onto one connector of the other side.

If there is a second connector placed on one of the sides, this connector gets its own ComponentConnector with the underneath ComponentPorts.

## Variant Management For ECUs
{{ .:diagrams:8_3_variant_management_for_ecus.jpg?1087x744 }}

This example demonstrates how the variant management can be handled in the systems schematic on different levels of abstraction.

The top most element is the usage node. It defines an abstract position / function in the vehicle. In the example it is the back light on the left hand side (named “MX3”). This function can be realized by two different electrological variants (interfaces). These variants are represented by ComponentNodes. In the example there is one variant with two pins (MX3.1) and one variant with three pins (MX3.2). On a more concrete level these interfaces can be satisfied by one or more EE-components (alternatives). These EE-Components are defined by PartVersion with a EEComponentSpecification. In order to define restrictions a corresponding PartOccurrence with a VariantConfiguration can be defined.

The PartUsages in the example are needed for to reasons:

  - They serve as a container to group the different possible alternatives (“realizedPartUsage”).
  - It is necessary to declare one of the EEComponents as the representative of all alternatives of a variant. This is done by the reference between the PartUsage and the corresponding EEComponentSpecification.

