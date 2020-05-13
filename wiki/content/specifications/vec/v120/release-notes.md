---
title: Release Notes - Version 1.2.0
linktitle: Release Notes
toc: true
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
category: Release Notes
documentType: "Release Notes"
menu:
  vec-1.2.0:
    weight: 2
weight: 60
---
## Overview
Changes that affect the resulting schema in an incompatible way are marked with a &quot;X&quot; in the last column. For more details on compatibility [see]({{< relref "#compatibility-to-preceding-versions" >}}).

| Change | Incompatibility |
| --- | --- |
| Reorganization of the Model Outline (Chapter 5) | |
| Added &quot;General Guidelines&quot; for requirements on VEC implementations that are not strictly related to the model structure (Chapter 4). | |
| Added model documentation to the generated XML Schema files. | |
| General orthogonal grouping concept to represent functional mappings and requirements (see AssignmentGroup) | |
| Added concept for the instantiation of topologies. | |
| Added concept for hierarchical topologies supporting multiple use case (e.g. better traceability between geometry and harness process, splice position optimization, layered segments with a defined inner structure, composite segments, …) | |
| Added concept for assigning topologies to zones. | |
| Completely revised the interpretation of Net- &amp; ConnectionSpecification (Architectural Layer &amp; System Schematic) | X |
| Refactoring of the multi-core representation | X |
| Added support for FIT-Rates for components | |
| Added concept to express conformance with requirements (see RequirementsConformanceSpecification) | |
| Added concept to define application constraints on instances (e.g. component nodes) (see ApplicationConstraint) | |
| Added concept for common variant configurations (base inclusion) | |
| Added concept to define system schematic traceability for directly mated E/E components. | |
| Added concept to define multicores in their usage (similar to twisted pairs) | |
| Added concept for traceability between wires and their respective fusing. | |
| Added concept to define bending restrictions on topologies. | |
| Added concept to define baselines (well defined sets of ItemVersions) | |
| Added concept to integrate with the 3D geometries of individual components (e.g. bounding box, | |
| Added concept for default tolerance definitions | |
| Added concept for wire addons in connectors. | |
| Allowed part usage (component instances without part number) in the bill of material. | |
| Added support for component selection tables. | |
| Added concepts to support 150% E/E component definitions. | |
| Added concepts for the description of fuse boxes and other E/E-Components <ul><li>internal connectivity</li><li>variance of internal connectivity</li><li>modularity</li><ul> | |
| Improved modification tracking / change detection for the digital representation of documents (independent from the approval process in the domain) | |
| Refactored 3D representation of segments. Dropped current 3D-curve model and replaced it by complete representation of NURBS. | X |
| Added concept for integrated terminals and supplementary components in different contacting situations (e.g. wire fixations) | |
| Clarification that contact points are free of variance. | |
| Refactored attributes for compatibility definitions between terminals, plugs, cavities, seals and wires. | X |
| Added concept for flat band wires and flat cores. | |
| Dropped support for conformance classes. | X |
| Added support for grouping component ports by connector. | X |
| Definition of complex part relations | |
| Support for complex custom properties und multiple primitive types. | |
| Added support for hierarchical structures on variant groups and added multiple attributes to the classes in the variant configuration scope. | |
| Added support for grommets sealed with additional single wire seals. | |
| Refactored concept for supplementary parts of components in specified locations (e.g. Slots) | X |
| Added support for diodes | |
| Added support for cable ties | |
| Added support for multi-fuses | |

The following list contains all minor changes, that affected schema compatibility.

| Change | Incompatibility |
| --- | --- |
| Refactored and renamed &quot;ContactSystem&quot; to TerminalPairing | X |
| Path mistakenly inherited from ConfigurableElement | X |
| Moved &quot;referenceElement&quot; Association from PartOccurrence to OccurrenceOrUsage | X |
| Refactoring of WireProtectionRole, introduction of TapeRole | X |
| Redefined semantics for ConnectionGroup and NetGroup | X |
| Removed SealingClass and AbrasionResistanceClass (replaced by general concept RobustnessProperties). | X |
| Removed CompatibilityStatement &amp; CompatibilitySpecification | X |
| Refactored modular slot definition (now using indirect references with PartVersion) | X |
| Refactored CopyrightInformation | X |
| Moved attribute TerminalSpecification.angle to WireReception | X |
| Removed Signal from Net-Layer | X |
| Refactoring of SheetOrChapter | X |
| Deprecation of CavityDesign in TerminalReceptionSpecification and CavitySpecification | X |

## Compatibility to preceding versions

Version 1.2 is an extension of version 1.1. Model changes and extensions are guided by the fundamental principle of keeping already implemented concepts downward compatible as far as possible. However, this was not possible in all cases. 

Compatibility is defined in the context of this document as the possibility that XML documents created for version 1.1 are still (schema) valid version 1.2 documents. In that sense, incompatible changes will result in schema validation errors if the version 1.1 file uses the affected model elements. Such changes are listed in [above]({{< relref "#overview" >}}) explicitly.

Additionally, version 1.2 introduces a large amount of open enumerations. As this reduces the degree of freedom in the model it is very likely that version 1.1 VEC files will not validate against the 1.2 strict schema.

Other changes that might be interpreted as incompatible, even without producing schema validation errors, are all improved or clarified documentations, as it might occur that earlier interpretations are now explicitly invalid model interpretations.

All VEC implementations that currently use custom properties for elements that have now (introduced with this version) explicit concepts should be changed accordingly. 


## Detailed Release Notes 

### Decisions

<ul>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-967">KBLFRM-967</a>] - No official
        Support for Schematron-Constraints </li>
</ul>

### Bugs 

<ul>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-810">KBLFRM-810</a>] - Define
        ChangeDescription.ResponsibleDesigner as Optional </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-842">KBLFRM-842</a>] - Define
        PartWithSubcomponentsRole.SubComponent as Optional </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-843">KBLFRM-843</a>] - Redefine
        Multiplicity of InternalComponentConnection.pins </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-875">KBLFRM-875</a>] - Removed
        Mentioning of &quot;ContactPoint3D&quot; in the Model Description </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-877">KBLFRM-877</a>] - False
        Mandatory Attributes in the TapeSpecification </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-915">KBLFRM-915</a>] - Path
        Mistakenly Inherited From ConfigurableElement </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-947">KBLFRM-947</a>] -
        Documentation of WireElementSpecification &amp; WireGroupSpecification inconsistent.
    </li>
</ul>

### New Features

<ul>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-472">KBLFRM-472</a>] - Assignment
        between Topology Elements and TopologyZones </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-722">KBLFRM-722</a>] - Information
        about the Local Geometry Model of a Component (e.g. Transformation of the Bounding
        Box) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-818">KBLFRM-818</a>] - Add Support
        for Diodes </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-840">KBLFRM-840</a>] - Add Support
        for Bolt Terminals </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-847">KBLFRM-847</a>] - Allow
        Creation of Baselines (well defined sets of ItemVersions) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-852">KBLFRM-852</a>] - Add Support
        for Bending Restrictions in the Topology </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-863">KBLFRM-863</a>] -
        Component&#39;s Supplementary Parts (Accessories) in specified locations (e.g. for
        Slots) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-865">KBLFRM-865</a>] - Mapping
        between Wires and Their Connected E/E-Components (e.g. Fuses) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-874">KBLFRM-874</a>] -
        Hierarchical Structure for VariantGroups and Additional Attributes </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-880">KBLFRM-880</a>] - Sealing of
        Grommets with Additional Parts </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-883">KBLFRM-883</a>] - Refactoring
        of 3D Curve Support - Removal of BSplineCurve - Added Support for NURBS </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-884">KBLFRM-884</a>] -
        Hierarchical Topologies / Nested Topologies </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-894">KBLFRM-894</a>] - Create
        Advanced Multi-Cores in their Usage (e.g. additional shielding) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-899">KBLFRM-899</a>] - Allow
        Application/Usage Constraints for VEC Elements other than PartVersions </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-918">KBLFRM-918</a>] - Express
        Conformance to Requirements for PartVersions and PartUsages </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-925">KBLFRM-925</a>] -
        CustomProperties for n-Tuple (ComplexProperty) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-928">KBLFRM-928</a>] -
        Instantiation of Topologies </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-930">KBLFRM-930</a>] - FIT Rates
        for Parts / Components (via GeneralTechnicalPartSpecification) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-954">KBLFRM-954</a>] - Support for
        XML Schema Pattern Restrictions </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-964">KBLFRM-964</a>] - Create
        Complex PartRelations with Custom Expression Logic. </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-973">KBLFRM-973</a>] - General
        Orthogonal Grouping Concept to Represent Functional Mappings or Requirements </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-974">KBLFRM-974</a>] - Add Support
        for Ferrite </li>
</ul>

### Improvements

<ul>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-365">KBLFRM-365</a>] - Deprecation
        of CavityDesign for TerminalReceptionSpecification and CavitySpecification </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-630">KBLFRM-630</a>] - Adding
        ComponentNodeType &#39;OpenEnd&#39; for schematic and OpenWireEndTerminal for wiring
        layer </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-643">KBLFRM-643</a>] - Allow
        PartUsages to be in the Content of a Bill of Material (BoM) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-697">KBLFRM-697</a>] - Guideline
        for &quot;Partitioning and Sizing of VEC Files&quot; </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-726">KBLFRM-726</a>] -
        Instantiation of Integrated Terminals (e.g. IDC Terminals in Connectors) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-732">KBLFRM-732</a>] - Improved
        Documentation of WireReception.angle </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-764">KBLFRM-764</a>] - Define
        TopologySegments with the Length of Zero Invalid </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-785">KBLFRM-785</a>] -
        DocumentType &#39;HarnessCoupling&#39; for DocumentVersions containing Coupling
        Device Definitions </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-788">KBLFRM-788</a>] -
        OpenEnumeration for RobustnessProperties.Class and ClassReferenceSystem </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-793">KBLFRM-793</a>] - Removed
        CompatibilityStatement and CompatibilitySpecification from the Model </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-794">KBLFRM-794</a>] -
        OpenEnumeration for FuseSpecification.fuseType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-796">KBLFRM-796</a>] - Improved
        Documentation for WireReceptionSpecification.MultiContact </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-799">KBLFRM-799</a>] -
        Differentiate &quot;Power&quot; in OpenEnumeration PinComponentType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-800">KBLFRM-800</a>] -
        DocumentTypes for Graphic Symbols </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-804">KBLFRM-804</a>] - Definition
        of Plugging Compatibility for E/E Component&#39;s HousingComponent </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-811">KBLFRM-811</a>] - Remove
        SealingClass and AbrasionResistanceClass (Replaced by RobustnessProperties) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-812">KBLFRM-812</a>] - Redefined
        Semantics for NetGroup and ConnectionGroup </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-816">KBLFRM-816</a>] - Allow
        Typing / Classification of Cavity-Addons </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-817">KBLFRM-817</a>] - Improved
        Definition for Taping with WireProtectionRole </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-820">KBLFRM-820</a>] - Concise
        Definition of the Taping Direction </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-824">KBLFRM-824</a>] - External
        References for all ExtendableElements </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-825">KBLFRM-825</a>] - Add
        Attribute &#39;thickness&#39; to StripeSpecification </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-826">KBLFRM-826</a>] -
        Clarification of PartWithSubComponentsRole.SubComponent vs.
        PartStructureSpecification.inBillOfMaterial </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-830">KBLFRM-830</a>] -
        OpenEnumeration for WireLength.lengthType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-832">KBLFRM-832</a>] -
        Clarification of the Handling of Partial Specifications </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-834">KBLFRM-834</a>] -
        OpenEnumeration for Color.ReferenceSystem </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-837">KBLFRM-837</a>] - Improved
        Modification Tracking for the Digital Content of DocumentVersions </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-839">KBLFRM-839</a>] - Add
        &quot;ComponentDrawing&quot; to OpenEnumeration &quot;DocumentType&quot; </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-848">KBLFRM-848</a>] - Handling of
        Unused Cores in Multi-Cores </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-856">KBLFRM-856</a>] -
        Clarification of the Semantics of FileBasedInstruction &amp; DocumentVersion
        Attributes fileName &amp; location </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-857">KBLFRM-857</a>] - Add
        &quot;DeviationTable&quot; to OpenEnumeration &quot;DocumentType&quot; </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-858">KBLFRM-858</a>] - Improved
        Documentation of Segment Length </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-859">KBLFRM-859</a>] -
        Clarification of the Relationship between Geometry(2D/3D) and Topology </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-860">KBLFRM-860</a>] -
        Representation of Implicitly Positioned Elements in the Geometry (e.g. Wire
        Protections) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-867">KBLFRM-867</a>] -
        Clarification of the Instantiation of Modell Structures </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-878">KBLFRM-878</a>] - Refactoring
        of WireProtectionRole - Introduction of a TapeRole </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-888">KBLFRM-888</a>] -
        Clarification of the Semantics of the &quot;PartRelation&quot; </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-889">KBLFRM-889</a>] - Add Data
        Rate to Signal </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-890">KBLFRM-890</a>] - Add
        CurrentType to Signal for AC/DC/AC 3-Phases </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-891">KBLFRM-891</a>] -
        Differentiation of High Voltage Classes (OpenEnumeration NominalVoltage) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-892">KBLFRM-892</a>] - New Literal
        ClippingCurrent for PinCurrentType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-896">KBLFRM-896</a>] -
        Traceability to System Schematic Connections for directly mated E/E Components </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-897">KBLFRM-897</a>] - Add Bridge
        Terminals with Traceability to Schematic Connections </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-898">KBLFRM-898</a>] -
        VariantConfigurations that are Common for a Set of Elements (Base Inclusion) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-900">KBLFRM-900</a>] - Move
        &#39;referenceElement&#39; Association from PartOccurrence to OccurrenceOrUsage </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-901">KBLFRM-901</a>] - Additional
        Literals for &quot;WireReceptionType&quot; </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-907">KBLFRM-907</a>] - Add
        Traceability between WiringGroup and ConnectionGroup </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-908">KBLFRM-908</a>] -
        Clarification that ContactPoints are Free of Variance </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-912">KBLFRM-912</a>] - Add
        averageWireLengthAddOn to WireReceptionSpecification </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-913">KBLFRM-913</a>] - Impact
        Protection as RobustnessClass </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-917">KBLFRM-917</a>] - Define the
        validity of &quot;unspecified accessories&quot; in component&#39;s part master data </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-921">KBLFRM-921</a>] - Revised
        Representation of the Dependencies between Cavity &amp; Sealing Geometries &amp;
        Sizes </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-922">KBLFRM-922</a>] - Refactoring
        of ContactSystem to TerminalPairing </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-924">KBLFRM-924</a>] - Orientation
        of Coordinate Systems </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-929">KBLFRM-929</a>] -
        Multiplicity of Association between OccurrenceOrUsageViewItem2D/3D and
        OccurrenceOrUsage </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-931">KBLFRM-931</a>] -
        Clarification of the Minimum Content of DocumentVersions for Part Master Data. </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-933">KBLFRM-933</a>] -
        Clarification about Usage of Classes in the Inheritance Structure. </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-934">KBLFRM-934</a>] - Permit
        Usage of TAR, ZIP or Zipped TARs as Archive Format of a VEC-Package. </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-935">KBLFRM-935</a>] - SubType
        with OpenEnumeration for NetworkNode &amp; ComponentNode </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-937">KBLFRM-937</a>] - Guideline
        for the Usage of General or Specific Classes of an Inheritance Tree </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-939">KBLFRM-939</a>] - Default-
        and Special-Values for Attributes </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-940">KBLFRM-940</a>] - Wildcards
        for Part References </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-941">KBLFRM-941</a>] - Improved
        Documentation of DocumentType.RequirementsDescription </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-942">KBLFRM-942</a>] -
        OpenPatternRestriction for Coding Names </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-943">KBLFRM-943</a>] -
        Approval.levelOfApproval Defined as OpenEnumeration </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-949">KBLFRM-949</a>] -
        Clarification on the Structuring of Multi-Cores </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-956">KBLFRM-956</a>] - Add Chapter
        General Guidelines to the VEC Recommendation </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-957">KBLFRM-957</a>] -
        OpenEnumeration for LocalizedTypeString.type in accordance to ISO 7200 </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-959">KBLFRM-959</a>] - Allow
        Typing of AliasIdentifications </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-962">KBLFRM-962</a>] - Remove
        ConformanceClasses from the Recommendation </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-963">KBLFRM-963</a>] - Cardinality
        of PartOccurrence.RealizedPartUsage </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-968">KBLFRM-968</a>] - Refactoring
        of the Model Outline </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-975">KBLFRM-975</a>] - Additional
        Literals for SignalMediumType &amp; SignalSubTyp, allow definition in Network Layer </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-982">KBLFRM-982</a>] - Define
        OpenEnumeration Literals for CableLeadThroughType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-990">KBLFRM-990</a>] -
        OpenEnumeration for DefaultDimension.dimensionType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-991">KBLFRM-991</a>] - Functional
        grouping concept should allow for hierachical structures </li>
</ul>
