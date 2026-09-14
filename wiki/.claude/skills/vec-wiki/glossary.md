# VEC Wiki Glossary — German ↔ English ↔ VEC Class Mapping

Use this table when a question or discussion uses German terminology. Translate the
German term to the VEC class name(s) before querying the indices.

| German | English | VEC class(es) | Notes |
|---|---|---|---|
| Stecker | Connector | `ConnectorHousingSpecification`, `PartVersion` (when component) | "Stecker" colloquially conflates housing and the whole component |
| Buchse | Socket / Female connector | `ConnectorHousingSpecification` | Opposite gender to Stecker |
| Leitung | Wire / Cable | `Wire`, `WireSpecification` | |
| Kabel | Cable | `WireSpecification`, `CableSpecification` | "Kabel" often refers to multi-core assemblies |
| Systemschaltplan | System schematic | `NetSpecification`, `ConnectionSpecification`, `Connection` | Top-level electrical network description |
| Kabelbaum | Wiring harness | `VecContent`, `PartVersion` (harness-level) | Top-level assembly |
| Komponente | Component | `PartVersion`, `*Specification` | Generic term for any VEC component |
| Empfänger | Receiver / Consumer | (process role, not a class) | Refers to a system consuming a VEC file |
| Sender | Sender / Producer | (process role, not a class) | Refers to a system producing a VEC file |
| Bauteil | Part | `PartVersion` | Same as "Komponente" in most contexts |
| Dokument | Document | `DocumentVersion` | |
| Spezifikation | Specification | `Specification` (abstract base) | Refers to any `*Specification` subclass |
| Klemme | Terminal | `TerminalSpecification`, `TerminalRole` | "Klemme" can mean both terminal and connection point |
| Kontakt | Contact | `ContactPoint`, `TerminalSpecification` | |
| Stift | Pin | `TerminalSpecification` (male terminal) | |
| Abdichtung | Seal | `CavitySealSpecification`, `WireSealSpecification` | |
| Kavität | Cavity | `CavitySpecification`, `CavityReference` | Direct loanword in VEC |
| Schlaufenleitung | Loop wire | `WireSpecification` | Wire that loops without defined direction |
| Topologie | Topology | `TopologySpecification`, `TopologyNode`, `TopologySegment` | |
| Segment | Segment | `TopologySegment` | A section of the harness route |
| Knoten | Node | `TopologyNode` | Junction point in the topology |
| Kanal | Channel | `RouteableElement`, `SegmentConnectionPoint` | Path through a `TopologySegment` |
| Schirmung | Shielding | `ShieldSpecification` | EMC shielding of a cable |
| Verwendungsknoten | Usage node | `UsageNode`, `UsageNodeSpecification` | Represents an ECU slot or port |
| Netz | Net | `Net`, `NetSpecification` | Electrical net in the system schematic |
| Verbindung | Connection | `Connection`, `ConnectionSpecification` | An electrical connection between two pins |
| Steckverbinderpaarung | Connector pairing | `ConnectorHousingSpecification` + mating partner | |
| Querschnitt | Cross section | `WireSpecification.crossSectionArea` | Wire cross-sectional area |
| Farbe | Color | `WireSpecification.colorInformation` | |
| Codierelement | Coding element | `CodingSpecification` | Mechanical anti-mismating feature |
| Protokoll | Protocol | `NetworkPortSpecification` | Communication protocol of a bus/network port |
