---
title: "Sicherungsträger, Relaissockelleisten, CAN-Verteiler"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
tags: []
categories: []
date: 2019-11-18
draft: false

menu:
  ces-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    #parent: Example Topic
    weight: 100

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 100
---
{{% callout warning %}}
**Disclaimer**

This material has been developed in the context of the revision of the CES Guidelines. It represents the 
state of work and discussion that was reached at the end of 2019. Thus no warranty is made as to their 
completeness, correctness or consistency. 

Since it is currently mainly a collection of existing information, 
the contents are currently still in German.

The documents are made available in the Wiki to allow the participants to continue working on
the documents in the future. They shall not be used to develop software or services on it or become the 
subject of agreements between development partners.
{{% /callout %}}
## Allgemeine Basis
### Component Type
  * Sicherungsträger: Component Type = CONNECTOR
  * Relaissockelleisten und CAN-/Potential-Verteiler: Component Type = COMPONENT_BOX

### Aufbau und Lage
Die Kammern / Pins werden nur dann ausmodelliert, wenn die Datenmengenvorgabe eingehalten werden kann.
Die Pin- / Kammer-Nummerierung muss sichtbar sein.

Die Positionierung der Bauteilgeometrie im CAD-Modell ist wie folgt vorzunehmen:
  * Der Ursprung des Bauteils liegt in der Ebene der elektrischen Anlagefläche in der Lochmitte der Kammer mit dem kleinsten alphanumerischen Zeichen, z.B. Kammer 1 oder A1.
  * Die Y-Achse liegt in der Ebene der elektrischen Anlagefläche und zeigt in Richtung der Kammer mit dem nächsthöheren alphanumerischen Zeichen, z.B. Kammer 2 oder A2.
  * Die Z-Achse steht normal zur Ebene der elektrischen Anlagefläche und zeigt in Richtung des Sicherungsträgers nach innen.
  * Der Kabelabgangspunkt liegt in der Mitte der Kabelaustrittsfläche und wird mit einem Punkt dargestellt.
  * Bei Steckverbindungen mit seitlichem Kabelabgang wird der Kabelabgangspunkt am Ende des Steckgehäuses platziert.

{{< figure class="float-left w-50" src="sicherungstraeger.jpg" title="Sicherungsträger" numbered="true" lightbox="true">}}
{{< figure class="float-right w-50" src="sicherungstraeger_beispiel.jpg" title="Reales Beispiel eines Sicherungsträgers" numbered="true" lightbox="true">}}


{{< figure class="float-left w-50" src="can-verteiler.jpg" title="CAN-Verteiler Leiste" numbered="true" lightbox="true">}}
{{< figure class="float-right w-50" src="can-verteiler_beispiel.jpg" title="Reales Beispiel einer CAN-Verteiler Leiste" numbered="true" lightbox="true">}}

<p class="clearfix">

### Elektrikeigenschaften

  * Sicherungsträger erhalten 1 Bündelanschlusspunkt mit n logischen Pins inkl. Terminaldarstellung
  * Relaissockelleisten und CAN-/Potential-Verteiler erhalten für jeden Steckplatz einen Einpasspunkt im Pin1 mit Secondary Vektor in Richtung Pin2.

Folgende Darstellung zeigt eine Component Box mit 6 Einpasspunkten:
{{< figure src="compbox-bsp1.jpg" title="Component Box Beispiel 1" numbered="true" lightbox="true">}}

Folgende Darstellung zeigt eine Component Box mit 2 Einpasspunkten und einem Bündelanschlusspunkt mit 6 Pins:
{{< figure src="compbox-bsp2.jpg" title="Component Box Beispiel 2" numbered="true" lightbox="true">}}

Folgende Darstellung zeigt eine Component Box mit 3 Einpasspunkten und und einem Bündelanschlusspunkt mit 8 Pins:
{{< figure src="compbox-bsp3.jpg" title="Component Box Beispiel 3" numbered="true" lightbox="true">}}


----

### Offene Punkte

* Beschreibung aus NX-Leitfaden übernommen und neutralisiert
  * CES-Leitfaden erlaubt n BCPs
  * NX-Leitfaden behandelt Längenzuschläge; nicht übernommen, da nicht im CES-Leitfaden
  * In NX werden FITTING PORTs definiert. Gibt es vergleichbares in CATIA?
  * In NX werden für einen FITTING PORT zusätzliche Attribute (Slot Name, etc.) definiert. Geht das in CATIA?

## YAZAKI:

### Sicherungs und Stromverteiler Box

Component Box Beispiel 1a YAZAKI - zeigt eine Sicherungs und Relaisbox mit 1 Einlasspunkt und einem Bündelanschlusspunkt mit 71 Pins:

{{< figure src="compbox-bsp1_YAZAKI.jpg" title="Component Box Beispiel 1 YAZAKI" numbered="true" lightbox="true">}}

Vorteile:

  * Keine Electrifizierung der Komponenten (Sicherungen, Relais, Eyelets und Stecker) in der Box erforderlich.
  * Geringer Aufwand bei 3D Kabelbaum Erstellung. Nur ein Kabelanschluss an Box.
  * Vereinfachtes Boxlayout möglich (Sicherungen, Stromschienen, Relais werden nicht als Eizelkomponente benötigt.
  * Nur eine Bauteilbezeichnung (ConnectorID) wird benötigt.

Nachteile:

  * Bauteile innerhalb der Box (Sicherungen, Relais, Eyelets und Stecker) sind nicht an 3D Kabelbaum angeschlossen und werden in der Zeichnung nach einem 3D import nicht übertragen.
  * Fehlende Leitungslängen und Kabelverlauf beim Prozess "3D, Export XML, Import Zeichnung" sind das Resultat.
  * Das bedeutet hoher manueller Aufwand bei der Zeichnungserstellung.

Component Box Beispiel 1a YAZAKI - zeigt das Ergebnis des XML Importes in eine Zeichnung der Sicherungs und Relaisbox mit 1 Einlasspunkt und einem Bündelanschlusspunkt mit 71 Pins:

{{< figure src="compbox-bsp1a_YAZAKI.jpg" title="Component Box Beispiel 1a YAZAKI" numbered="true" lightbox="true">}}

Component Box Beispiel 2 YAZAKI - zeigt eine Sicherungs und Relaisbox mit Anschluß auf Komponentenbasis mit 1 Bündelanschlusspunkt an Komponenten. Anzahl der Pins auf Komponentenbasis (Sicherungen, Relays, Eyelets, etc.):

{{< figure src="compbox-bsp2_YAZAKI.jpg" title="Component Box Beispiel 2 YAZAKI" numbered="true" lightbox="true">}}

Vorteile:
  * Bauteile innerhalb der Box sind an 3D Kabelbaum angeschlossen.
  * Leitungslängen und Kabelverlauf  in der Box werden in 3D CAD definiert.

Nachteile:
  * Elektrifizierung der Komponenten in der Box erforderlich (Relais, Sicherungen) oder Dummystecker müssen verbaut werden.
  * Hoher Aufwand bei 3D Kabelbaum Erstellung und Plege.
  * Komplizierter  und Komplexer Kabelverlauf in Box für 3D CAD Designer, Schematic Info für Kabelverlauf benötigt.

Component Box Beispiel 2a YAZAKI - zeigt das Ergebnis des XML Importes in eine Zeichnung der Sicherungs und Relaisbox mit 1 Einlasspunkt und einem Bündelanschlusspunkt mit 71 Pins:

{{< figure src="compbox-bsp2a_YAZAKI.jpg" title="Component Box Beispiel 2a YAZAKI" numbered="true" lightbox="true">}}

#### Regeln

**Schaltplan und 3D Geometrie müssen die gleichen Komponentennamen (Bauteilbezeichnungen) zum Zusammenfügen der Daten beinhalten d.h. Die Namen müssen übereinstimmen.**

**Wenn der Schaltplan einen Komponentennamen für die Box benutzt, darf das 3D Design auch nur einen Komponentennamen benutzen.**
Hier wären die Methodik „Ein Bündelanschlusspunkt an Box“ zu verwenden. 
„Mehrfachbündelanschlusspunkte“ an Box können durch fehlende Zuordnung der Bündelenden zwischen Schematic und 3D (pro 3D Komponente nur ein Komponentenname und ein Bündelanschluss möglich) nicht verwendet werden.

**Wenn der Schaltplan mehrere Komponentennamen für die Komponenten in der Box benutzt, muss das 3D Design auch mehrere Komponentennamen benutzen. Hier wäre die Methodik „Kabelanschlüsse an Box Komponenten (Sicherungen, Relais oder Steckerdummies) zu verwenden!**

Zuordnung Schematic und 3D: 
CATIA: Komponentenname in Schematic = CATIA Instance Name oder Ref ID

NX: Komponentenname in Schematic = Unique Id (Additional Attribute) oder Connector ID (Electrical Component Nav.) 

### Relaishalter – Additional Part (CATIA, Nicht elektrifizierte Bauteile)

Relaishalter Beispiel 1 YAZAKI - zeigt einen Relaishalter mit Relais verdunden mit einem "Constraint":

{{< figure src="Relaishalter_bsp1_YAZAKI.jpg" title="Relaishalter Beispiel 1 YAZAKI" numbered="true" lightbox="true">}}

Relaishalter Beispiel 1a YAZAKI - zeigt das Ergebnis des XML Importes in eine Zeichnung mit einem Relais verbunden durch einen "Constraint" mit dem Relaishalter:

{{< figure src="Relaishalter_bsp1a_YAZAKI.jpg" title="Relaishalter Beispiel 1a YAZAKI" numbered="true" lightbox="true">}}

#### Regeln:

**Relaishalter – “Additional Part” Methode (CATIA)**
 
Kabelanschluss an Relaishalter mit Relais (Erfordert „Constraint“ zwischen Relaishalter und Relais).
*  „Elektrifizierung“ des Relais nicht notwendig.
*  „Constraint“ muss additional zwischen Relais and Relaishalter definiert werden.
* Es können auch mehrere „Additional Parts“ für einen Stecker verwendet werden.

### Stromverteiler – Connector Shell (CATIA)

Stromverteiler 1_YAZAKI - zeigt einen Connector (Shell) verbunden mit drei Connectoren (SIC):

{{< figure src="stromverteiler_1_yazaki.jpg" title="Stromverteiler 1 YAZAKI" numbered="true" lightbox="true">}}

Bei der Nutzung von „elektrifizierten“ Bauteilen (hier Shell) können die Bauteile mit „Connect Electrical Devices“ automatisch mit „Constraints“ versehen und plaziert werden. Bauteile werden wie schon beim Relaishalter gezeigt über die „Constraint“ definition gesteuert.
**Die Nutzung von „Connect Electrical Devices“ vereinfacht die Kompomentenplatzierung. Es ist zu beachten das „Connect Electrical Devices“ eine „Elektrifizierung“ der Bauteile vor der Benutzung erfordert (Beispiel: Shell mit Cavitys und Connector mit Cavity Connection Points)!**

Stromverteiler 1a_YAZAKI - zeigt die Zeichnungsdetails nach Import des XML Files für einen Connector (Shell) verdunden mit drei Connectoren (SIC):

{{< figure src="stromverteiler_1a_yazaki.jpg" title="Stromverteiler 1a YAZAKI" numbered="true" lightbox="true">}}

#### Regeln

Stromverteiler – “Shell” Methode (CATIA):
Kabelanschluss an mehreren Steckern plaziert in Stromverteilern.
  * „Elektrifizierung“ des Stromverteilers als „Shell“ mit „Cavitys“ notwendig. Stecker benötigen „Cavity Connection Point“ definition.
  * Plazierung und Verbindung zwischen Steckern und Stromverteiler kann mit „Connect Electrical Devices“ bei vorhandener „Elektrifizierung“ definiert werden. „Constraints“ werden erzeugt.
  * Mehrere Stecker in einem „Stromverteiler“ können definiert werden.
  * **Erkennung von Steckerpositionen nicht unterstüzt.**


## Volkswagen 

[konzept_sicherungstraegervw.pdf](konzept_sicherungstraegervw.pdf)

### Lösungskonzept: Sicherungsträger in CATIA 

**Autor:** Jorgos Kyriazis, FIE/13  
**Verantwortlich:**	Heide Melchior, EEZX/2

#### Übersicht

Eine vollständige Abbildung des fachlichen Modells für einen Sicherungsträger ist mit dem CATIA Typ Equipment möglich. Die der CATIA Dokumentation beschreibt folgende Optionen für ein Equipment:
„Equipment is an electrical component used to assemble mounting equipment, bundle segments, connector shells, single insert connectors, studs, terminal blocks, terminal strips, contacts and filler plugs (placed in cavities).“
Die nachfolgende Abbildung 2 zeigt die Modellierung des Sicherungsträgers in CATIA und die Verknüp-fungen zu bordnetzseitigen Stecker einerseits und zugeordneten Sicherungen oder Relais andererseits.

{{< figure src="vw_abbildung2.jpg" numbered="true" lightbox="true">}}

Ein solches Modell erfordert den Aufbau einer Bibliothek aus Standardelementen, wie z.B. Repräsentati-onen von Sicherungssteckplätzen oder Schraubbolzen. Insgesamt ist die Komplexität des in der Biblio-thek abzulegenden Bauteils relativ hoch.
Bei einer konsequenten Ausmodellierung werden jedoch auch die seitens der Anwender gewünschten Funktionen, wie Abbildung der Sicherungsbestückung auch in 3D damit möglich.
Hinweis: Das Kuppeln von Steckern in der 3D-Verlegung erfolgt in der Workbench „Electrical Assembly design“ und erfordert offensichtlich die Lizenz „ELB“.

#### Baukastenbildung

Um den Bibliothekaren die Arbeit zu erleichtern, ist es sinnvoll eine nicht-öffentliche Bibliothek („FRC-Baukasten“) für die Bestandteile von Sicherungen, Relais und Sicherungsträgern zu erstellen, und die Bauteile im nach außen bereitgestellten Catalog aus diesen Bestandteilen zusammen zu setzen.
Die Bibliothek sollte folgende Basisbausteine enthalten:
  * Je Sicherungsgrundtyp (z.B. Type_C, Type_F) eine vollständige ausgeprägte Sicherung als Ge-ometrie inkl. Elektrifizierung (als Geometrie reicht das Gehäuse ohne Pins aus, CCP ist an der Position von Pin 1, falls diese bezeichnet sind). 
  * Je Relais-Grundgehäusevariante ein Relais als Geometrie inkl Elektrifizierung (als Geometrie reicht das Gehäuse ohne Pins aus, die Pin-Anordnungen sind im Grundsatz je Gehäusetyp gleich, es sind nicht immer alle Pins vorhanden).
  * Steckplatz-SICs („Sockel-Spezifikationen“) für alle Sicherungs- und Relais-Grundtypen (flach und ohne Pinlayout reicht aus) mit ConnectorConnectionPoint (CCP) und CavityConnectionP CavityConnectionPoint (CavConP). Diese geometrischen Randbedingungen müssen mit be-dacht gewählt werden, da sie in allen nutzenden E-Komponenten (FRCs, Sicherungen und Re-lais) verwendet werden sollen. Also möglichst einfach und universell… Für Sicherungssteck-plätze liegt der CCP mittig in der Zuleitungskammer in der Steckebene. In Abbildung 4 ist die Zuleitungskammer jeweils ein Rechteck, während die abgesicherte Kammer kreuzförmig darge-stellt ist.
  * Standard-SICs für externe Anschlüsse, insbesondere Bolzen (5mm /6mm / 8mm). Hinweis: der von Dassault vorgesehene Typ „Stud“ passt hier nicht so recht, da hier direkt ein Bündel ange-schlossen wird. Wir wollen hier aber einen Kabelschuh anschließen und diesen auch geomet-risch sehen. Daher sind sowohl Kabelschuh als auch Bolzen als SIC zu modellieren. 

#### Beispiele für Sicherungsträger

##### Sicherungsträger mit Bündelanschluss 

Der Sicherungsträger hat einen Bündelanschluss für die abgesicherten Leitungen und die (gemeinsame) Versorgung der 16 Sicherungssteckplätze. 
Für die Abbildung in CATIA besteht er aus 
  * 1x  Equipment (Grundkörper)
  * 1x  BundleConnectionPoint (Anschluss des Leitungsstrangs)
  * 16x Cavities (zur Aufnahme der Sicherungssteckplätze)
  * 13x dem gleichen SingleInsertConnector (Sicherungssteckplatz „Type_F“) mit je
  * 1x  CavityConnectionPoint (zur Verbindung mit dem Grundträger)
  * 1x  ConnectorConnectionPoint (zur Verbindung mit der Sicherung)
  * 3x  dem gleichen SingleInsertConnector (Sicherungssteckplatz „Type_C“) mit je
  * 1x  CavityConnectionPoint (zur Verbindung mit dem Grundträger)
  * 1x  ConnectorConnectionPoint (zur Verbindung mit der Sicherung)

{{< figure src="vw_abbildung3.jpg" numbered="true" lightbox="true">}}

Abbildung 3: CATIA Modell des Sicherungsträgers, sowie für die Sicherung

##### Geometrie 

Das aktuelle EKR des Sicherungsträgers ist nur mäßig geeignet, eine Bestückung abzubilden, weil die Sicherungen im modellierten Grundkörper verschwinden würden.
Ggf. könnte man auf der Bestückungsseite eine Tasche ausklinken, die bis auf die Ebene mit den Kammerbildern reicht.

{{< figure src="vw_abbildung4.jpg" numbered="true" lightbox="true">}}

Abbildung 4: EKR-Modell des Sicherungsträgers als CATProdukt

##### Elektrifizierung 

Der Grundkörper des Sicherungsträgers wird als Equipment elektrifiziert. Er benötigt einen Bundle-ConnectionPoint, sowie für jeden Sicherungssteckplatz je ein Cavity mit je einem CavityConnection-Point. Als PartNumber wird die Teilenummer des Sicherungsträgers verwendet. Der Name für die Cavi-tyConnectionPoints lehnt sich an die Steckplatz-Ids an (z.B. „CavConPt_F1“). Die geometrischen Rand-bedingungen für den CavityConnectionPoint müssen passend zu den Sockel-Spezifikationen aus dem „FRC-Baukasten“ gewählt werden.
Zusätzlich werden aus dem „FRC-Baukasten“ zwei verschiedene SingleInsertConnector benötigt, je einer für den Sicherungssteckplatz „Form C“ und „Form F“, die jeweils einen CavityConnectionPoint zur Verbindung mit dem Equipment und einen ConnectorConnectionPoint zur Aufnahme der Sicherung be-sitzen. Eine geometrische Repräsentation spielt für diese Elemente kein wesentliche Rolle. Ein Punkt oder ein kleiner Quader reichen aus. Die PartNumber kann sich z.B. an die Sicherungsbauform anlehnen (z.B. „FuseSlot_FormC“). Der CavityConnectionPoint und der ConnectorConnectionPoint benötigen kei-nen besonderen Name. 
Die SingleInsertConnectors werden je 13-mal („Form F“) bzw. 3.mal („Form C“) instanziiert und mit den CavityConnectionPoints des Equipment verknüpft. Als Instanzname ist jeweils die Steckplatz-ID (F1 – F16) vorzusehen. Bei korrektem Aufbau der geometrischen Randbedingungen richten sich die Steck-plätze auf dem Träger in der richtigen Lage aus.
Der BundleConnectionPoint wird am Austritt aus der Kappe angeordnet. Das EKR weist an der Stelle bereits einen entsprechenden Punkt auf.

##### Sicherungsträger mit Schraubbolzen und MultiFuse 

Dieser Sicherungsträger („Hauptsicherungsträger, E-Box“) ist völlig anders aufgebaut und anders zu bestücken als der Sicherungsträger aus dem Abschnitt ‎1.3.1. Zunächst wird er nicht allein verbaut, son-dern ist Bestandteil des ZSB E-Box. Hier wird er in Kombination mit dem Träger und diversen Haltern und Gehäusen (s. Abbildung 5) als ZSB verbaut. Die beiden Sicherungsträger werden offenbar über den Zuleitungsbolzen „B1“ verschraubt. Weiterhin gibt es hier noch einen vierpoligen Steckeranschluss, der – soweit zu erkennen – mit einem entsprechenden Gegenstück am Sicherungträger gekuppelt wird. Das geometrische Assembly muss man wohl einzeln zusammensetzen, also die beiden Sicherungsträger, den oder die Halter und den Deckel. Für uns ist das nur insofern relevant, als man die beiden Siche-rungsträger mit einem geeigneten geometrischen Constraint versehen sollte. Vielleicht wäre es günstig, es über CCPs an den gekuppelten 4-poligen Steckern vorzubereiten. Wenn eine andere Lösung gewählt wird, könnte man die CCPs an diesen Stecker auch entfallen lassen, da vom Bordnetz aus keine Stecker aufgesteckt werden müssen.

{{< figure src="vw_abbildung5.jpg" numbered="true" lightbox="true">}}

Abbildung 5: Hauptsicherungsbox (Pos.Nr. 3), ZSB E-Box

Neben zwei Relaissockeln gibt es auf der Hauptsicherungsbox (Pos. Nr. 3) eine Mehrfachsicherung mit 5 Absicherungszweigen, die über eine zentrale Zuleitung gespeist wird. Für die mit der MultiFuse ver-schraubten Anschlussleitungen definiert die Zeichnung konkrete Ringkabelschuhe. Das muss aber be-reits der Schaltplan (bzw. der Kontaktassistent) berücksichtigen.
Für die „Elektrifizierung“ in CATIA spielt die MultiFuse eine untergeordnete Rolle, es ist nur eine weitere Bauform, die wie eine einfache Sicherung „am Stück“ als ein zu koppelndes Equipment mit einem Sing-leInsertConnector behandelt werden kann. Aber die Überlegung, wohin mit dem CCP hier wichtig.


In Abbildung 6 ist der versorgende Anschluss durch die rote Linie markiert. Die Anordnung des CCP ist so zu wählen, dass auch der Kabelschuh, der dort aufgesetzt werden muss, korrekt platziert werden kann. 

{{< figure src="vw_abbildung6.jpg" numbered="true" lightbox="true">}}

Abbildung 6: Anordnung der MultiFuse und Zuordnung über Anschluss "B1"

In Abbildung 7 ist die Elektrifizierung des Sicherungsträgers beschrieben. Die Bezeichnungen der Relais-Steckplätze und Bolzen können der nachfolgenden Abbildung entnommen werden.

{{< figure src="vw_abbildung7.jpg" numbered="true" lightbox="true">}}

Abbildung 7: EHI Modell des Sicherungsträgers

{{< figure src="vw_abbildung8.jpg" numbered="true" lightbox="true">}}

Abbildung 8: Bezeichnungen der Relaissteckplätze und Anschlussbolzen (Ansicht von unten)

#### Hauptsicherungsbox (HSB)


Die HSB besteht aus einem zweiteiligen Gehäuse und einer MultiFuse.

{{< figure src="vw_abbildung9.jpg" numbered="true" lightbox="true">}}
  
Abbildung 9: Zusammensetzung der HSB (aus Abbildung 5)

Das Gehäuse hat in Kombination mit anderen MultiFuses andere ZSB-Nummern. 
Relevant für den Einbau sind nur die Positionen, an denen Kabelschuhe angebracht werden müssen. Die MultiFuse trägt nicht zum äußeren Umriss bei und ist somit nicht DMU-relevant.

{{< figure src="vw_abbildung10.jpg" numbered="true" lightbox="true">}}

Abbildung 10: Modell der HSB in CATIA

Aus Sicht von CATIA würde es hier ausreichen, die externen Anschlüsse zu elektrifizieren und die Mul-tiFuse im CATIA Modell zu ignorieren. Wenn jedoch die MultiFuse in CATIA sichtbar sein soll (Cross-Highlighting) dann muss sie berücksichtigt werden. Dann sollte aber der Aufbau des Sicherungsträgers über dessen Grundteilenummer erfolgen und die ZSB-Nummer aus der Kombination mit der MultiFuse abgeleitet werden. Wenn es möglich ist, kombinierte Bauteile im Catalog abzulegen, dann könnten dort auch die ZSB vorkonfiguriert gespeichert werden.


