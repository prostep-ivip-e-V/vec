---
title: Release Notes - Version 1.1.3
linktitle: Release Notes
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
category: Release Notes
documentType: "Release Notes"
menu:
  vec-1.1.3:
    weight: 2
weight: 60
---
<h2> Decision </h2>
<ul>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-703">KBLFRM-703</a>] - Erweiterte
        Schemavalidierung mit Schematron </li>
</ul>
<h2> Bug </h2>
<ul>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-628">KBLFRM-628</a>] - Made
        Technical Attributes of RingTerminalSpecification Optional </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-637">KBLFRM-637</a>] - Correct
        Documentation of Color-Attributes </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-701">KBLFRM-701</a>] - Missing
        ReleationShip between ConnectorHousingCapSpecification and ...Role </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-789">KBLFRM-789</a>] - Cardinality
        of [0..1] for Association HousingComponentReference -&gt; ConnectorHousingRole </li>
</ul>
<h2> New Feature </h2>
<ul>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-606">KBLFRM-606</a>] - Add Support
        for Multi-Fuses </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-618">KBLFRM-618</a>] - Add Support
        for CableTies </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-670">KBLFRM-670</a>] - Add Support
        for Component Dimension (Length, Width, Height) to Component Types </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-671">KBLFRM-671</a>] - Add Support
        for Potential Distributors (Kammverbinder) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-673">KBLFRM-673</a>] - Move
        Attribute TerminalSpecification.Angle to WireReception </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-677">KBLFRM-677</a>] - Add
        PluggableTerminalSpecification.terminalType (OpenEnumeration) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-679">KBLFRM-679</a>] - Define
        Contacting Compatibility based on Conductor Material </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-680">KBLFRM-680</a>] -
        OpenEnumeration ConnectorOutletDirection for ConnectorHousingSpecification &amp;
        ConnectorHousingCapSpecification </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-681">KBLFRM-681</a>] - Support for
        Cavity &amp; WireEnd-Accessories at the ContactPoint </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-686">KBLFRM-686</a>] - Add Sizing
        for Flat Cores &amp; Flat Band Wires </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-687">KBLFRM-687</a>] - Add Support
        for Flat Band Wires &amp; Flat Cores </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-689">KBLFRM-689</a>] -
        OpenEnumerations to Improve Description of Corrugated Tubes </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-692">KBLFRM-692</a>] - Support
        Geometries for CavityPlugs &amp; CavitySeals </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-693">KBLFRM-693</a>] - Support
        Grid Spacing for Flat Core Wires </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-694">KBLFRM-694</a>] - Define
        &quot;Connector Position Assurance&quot; for ConnectorHousingSpecifications </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-695">KBLFRM-695</a>] - Define
        Permitted Terminal Suppliers on Slot-Level of Connector Housings </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-696">KBLFRM-696</a>] - Add
        validWireReceptionTypes to WireElementSpecification </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-713">KBLFRM-713</a>] -
        OpenEnumeration for TerminalSpecification.SealingType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-714">KBLFRM-714</a>] - Add Support
        for Integrated Terminals in Cavities </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-718">KBLFRM-718</a>] - Generate
        XML-Schema Version with Embedded Model Documentation </li>
</ul>
<h2> Improvement </h2>
<ul>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-467">KBLFRM-467</a>] -
        OpenEnumeration for UsageNode.usageNodeType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-491">KBLFRM-491</a>] -
        OpenEnumeration for ComponentNode.componentNodeType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-605">KBLFRM-605</a>] - Add
        Tracability-Relation between WireEnd &amp; ConnectionEnd </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-613">KBLFRM-613</a>] - Added
        Attribute NominalSize to FixingSpecification </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-619">KBLFRM-619</a>] -
        OpenEnumeration for NetworkNode.NetworkNodeType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-620">KBLFRM-620</a>] - Removed
        Signal for &quot;Net&quot;-Layer and added NetworkNodeType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-622">KBLFRM-622</a>] - Improved
        Definition of &quot;PinApplianceType&quot; in Class PinComponentBehavior </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-623">KBLFRM-623</a>] - Add
        Optional Attribute &quot;Name&quot; to PinComponentBehavior </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-624">KBLFRM-624</a>] - Add Clamp
        Information to Class Signal </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-632">KBLFRM-632</a>] - Improved
        Documentation of Class Project </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-633">KBLFRM-633</a>] - Revised
        Documentation of &quot;Net&quot;- and &quot;Connection&quot;-Layer </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-634">KBLFRM-634</a>] - Improved
        Documentation for Identity-Requirements of DocumentVersions </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-635">KBLFRM-635</a>] -
        OpenEnumeration for DocumentVersion.documentType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-665">KBLFRM-665</a>] - Add Support
        for Connectors on ComponentNodes </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-674">KBLFRM-674</a>] - Define
        Compatibility between Cavity Seals/Plugs and Cavities / Terminals based on Terminal
        Type </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-676">KBLFRM-676</a>] -
        OpenEnumeration for WireReceptionSpecification.WireReceptionType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-678">KBLFRM-678</a>] -
        OpenEnumeration for TerminalReceptionSpecification.PrimaryLockingType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-683">KBLFRM-683</a>] -
        OpenEnumeration for SegmentCrossSectionArea.CrossSectionAreaType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-684">KBLFRM-684</a>] - Make
        PinComponent &amp; HousingComponent ConfigurableElements to Support 150% E/E
        Component Definition </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-685">KBLFRM-685</a>] - Add Support
        for &quot;Kammverbinder&quot; </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-688">KBLFRM-688</a>] - Support
        Additional Material in Cavity / Contacting Situations (e.g. Wire Fixations) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-698">KBLFRM-698</a>] - Refactoring
        of CopyrightInformation and support for CopyrightInformation VecContent itself </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-700">KBLFRM-700</a>] -
        OpenEnumeration for PartVersion.Nature </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-711">KBLFRM-711</a>] -
        Enumerations to classify MassInformation </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-712">KBLFRM-712</a>] -
        OpenEnumeration for Slot.SealingType </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-717">KBLFRM-717</a>] - Redefine
        Documentation for WireReceptionSpecification.CoreCrossSectionArea </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-719">KBLFRM-719</a>] - Support
        Modular Slots (Connector Housings) when Partitioning Part Master Data in individual
        VEC files. </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-720">KBLFRM-720</a>] - Support
        Modular Slots (E/E Components) when Partitioning Part Master Data in individual VEC
        files. </li>
</ul>