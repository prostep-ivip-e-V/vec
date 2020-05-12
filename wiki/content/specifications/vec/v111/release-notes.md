---
title: Release Notes - Version 1.1.1 / Version 1.1.0
linktitle: Release Notes
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
category: Release Notes
documentType: "Release Notes"
menu:
  vec-1.1.1:
    weight: 2
weight: 60
---
*The following release notes are listed in German only, since the VEC issue process currently takes place in German and the maintenance of English headings was only started with version 1.1.2.*
<h2> Task </h2>
<ul>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-552">KBLFRM-552</a>] -
        Versionierung und Schema-Namespaces</li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-458">KBLFRM-458</a>] - Werteliste
        für &quot;Zone&quot; - Attribute und Wertebereiche zur Auswertung durch Regeln </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-473">KBLFRM-473</a>] - Beispiel
        für Stecker mit mehreren Bündelanschlusspunkten </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-476">KBLFRM-476</a>] - Beispiel
        Platzierte Tülle mit mehreren Durchtritten auf Topologie (Kabelbaum) </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-477">KBLFRM-477</a>] - Beispiel
        Kabelkanal mit mehreren Bündeleintrittspunkten </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-481">KBLFRM-481</a>] - Graphische
        Kopplung ins Modell aufnehmen / Entwurf erstellen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-506">KBLFRM-506</a>] - Numerische
        Werte defaultmäßig mit optionalen +-Toleranz-Angaben erweitern </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-507">KBLFRM-507</a>] - Abbildung
        von Schächten bzw. Kabelkanälen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-508">KBLFRM-508</a>] - Abbildung
        von Kabelhaltern und Kabelbindern </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-510">KBLFRM-510</a>] - Behandlung
        von Hochvolt-Teilen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-511">KBLFRM-511</a>] - Attribute
        bei Tüllen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-512">KBLFRM-512</a>] - Attribute
        beim Halter </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-513">KBLFRM-513</a>] - Abbildung
        von Mattendichtungen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-515">KBLFRM-515</a>] - Mehrere
        Kontaktfamilien bei Seals </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-518">KBLFRM-518</a>] - Coding auf
        ConnectorHousing und auf Slot </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-519">KBLFRM-519</a>] -
        Dichtbarkeit des gesamten Kontaktgehäuses abbilden </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-520">KBLFRM-520</a>] - Attribute
        zur Abbildung von Leitungen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-522">KBLFRM-522</a>] - Attribute
        zur Abbildung von Schrumpfschläuchen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-524">KBLFRM-524</a>] -
        Modellanpassung für Pinning </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-526">KBLFRM-526</a>] - Anpassung
        der Modellierung für Bündelanschlusspunkte und Bemaßungen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-531">KBLFRM-531</a>] - Erweiterung
        der CustomProperties um Internationalisierbare Werte </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-553">KBLFRM-553</a>] - Beispiel
        für Abdeckkappen </li>
</ul>
<h2> Decision </h2>
<ul>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-435">KBLFRM-435</a>] -
        Maßreferenzpunkte außerhalb Topologie </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-463">KBLFRM-463</a>] - Wickelart
        einer Schirm-Folie als Attribut notwendig? </li>
</ul>
<h2> Bug </h2>
<ul>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-450">KBLFRM-450</a>] - Module
        instanceing muss analog zu den Spezifikations aufgeteilt werden. </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-468">KBLFRM-468</a>] - Rolle
        UsageContraintSpecification --&gt; PartVersion falsch benannt </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-514">KBLFRM-514</a>] -
        Abbreviation is not a LocalizedString </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-517">KBLFRM-517</a>] - Beziehung
        zw. GeneralTechicalPart und Color auf 0..n anpassen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-537">KBLFRM-537</a>] -
        Schreibfehler in WireReceptionSpecification </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-542">KBLFRM-542</a>] - SignalType:
        Vermischung von inhaltlicher und physikalischer Ausprägung </li>
</ul>
<h2> New Feature </h2>
<ul>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-287">KBLFRM-287</a>] - Darstellung
        der Druckplatte in den Stammdaten </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-299">KBLFRM-299</a>] -
        Packetierung VEC mit Dateianhängen klären </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-459">KBLFRM-459</a>] - Füller bei
        Kabeln </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-462">KBLFRM-462</a>] - Attribut
        &quot;Optische Überdeckungsdichte&quot; bei Schirm </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-470">KBLFRM-470</a>] - Abbildung
        modularer Stecker / Substecker </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-471">KBLFRM-471</a>] - Kammer mit
        mehreren Kammertypen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-525">KBLFRM-525</a>] - Beispiel
        für Modulare Stecker erstellen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-560">KBLFRM-560</a>] - Beispiel
        für Foundation Classes </li>
</ul>
<h2> Improvement </h2>
<ul>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-439">KBLFRM-439</a>] -
        Anschlusspunkte bei Befestigungsteilen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-442">KBLFRM-442</a>] - The
        attribute primaryPartType should be defined as an enumeration </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-452">KBLFRM-452</a>] - Fertigungs-
        und Verarbeitungshinweise an der DocumentVersion </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-456">KBLFRM-456</a>] - (Betriebs-)
        Stromwerte an Komponenten </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-461">KBLFRM-461</a>] - Litze:
        Querschnitt statt Durchmesser </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-466">KBLFRM-466</a>] - Werteliste
        für (Betriebs-) Stromwerte am Pin der EE-Component definieren </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-478">KBLFRM-478</a>] -
        CoreSpecification überarbeiten um Unterscheidung zwischen Schirm &amp; Ader zu
        ermöglichen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-479">KBLFRM-479</a>] - Tutorials
        an neue Core Modellierung anpassen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-480">KBLFRM-480</a>] -
        CoreCurrentInformation in ConductorCurrentInformation umbenennen </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-492">KBLFRM-492</a>] - Attribut
        primaryPartUsageType sollte eine Enumeration sein </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-493">KBLFRM-493</a>] - Besides
        permissionDate, an optional time information would be need in Persssion to map
        dateTime information. </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-495">KBLFRM-495</a>] - Add
        optional type information to Description </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-499">KBLFRM-499</a>] - Add two
        optional attributes to Slot: codeLetter and sealStatus </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-501">KBLFRM-501</a>] - Complement
        MaxWireElementOutsideDiameter by adding MinWireElementOutsideDiameter to
        CavitySpecification </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-505">KBLFRM-505</a>] - Verbesserte
        Modellierung für Einheitensysteme </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-527">KBLFRM-527</a>] - Vorschlag
        für Enumeration für SlotSpecification.Gender </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-528">KBLFRM-528</a>] - Anpassung
        der Beispiele an neue Modellierung für Platzierung </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-529">KBLFRM-529</a>] -
        PrimaryLocking sollte vom Typ String und nicht Boolean sein. </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-532">KBLFRM-532</a>] - Description
        an den fürs Pinning relevanten Elementen der EEComponentSpecification </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-533">KBLFRM-533</a>] -
        Leistungsaufnahme an der EEComponentSpecification </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-534">KBLFRM-534</a>] -
        AliasIdentification am Signal </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-535">KBLFRM-535</a>] - Erweiterung
        der Person um Attribute identification &amp; role </li>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-536">KBLFRM-536</a>] -
        Einheitensystem sollte auch US-Units berücksichtigen. </li>
</ul>
<h2> Sub-task </h2>
<ul>
    <li>[<a href="https://track.prostep.com/browse/KBLFRM-503">KBLFRM-503</a>] - Anpassung
        des Schema-Generators zur Unterstützung von Zeitwerten </li>
</ul>
