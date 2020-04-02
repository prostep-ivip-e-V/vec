---
title: "Parallele Segmente unter gemeinsamer Wicklung (Methodik)"
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
    weight: 200

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 200
---
## 1. Parallele Segmente unter gemeinsamer Wicklung.

{{< figure class="w-25 float-left" src="ii-segmente-gemeinsame-wicklung.png" title="Parallele Wicklung" numbered="true" lightbox="true">}}

Die Darstellung von einer gemeinsamen Wicklung / Leitungsschutz, die mehrere Segmente überspannt, ist mit Internal- und External-Protection in CATIA und Overstocks in NX derzeit nicht zu realisieren.

Eine Methodik zur Darstellung einer gemeinsamen Wicklung soll zum Ziel haben, dass die Wicklung den zu schützenden Segmenten folgt.

Eine Abbildung des Anwendungsfalls ist in der KBL möglich.

{{< figure src="ii-segmente-as-is-1.png" title="Abbildung in KBL" numbered="true" lightbox="true">}}

Voraussetzungen für den Aufbau einer gemeinsamen Wicklung: 
  * Wahl geeigneter Referenzen (Branch Points, Curves ggf. Joins?).
  * Umgang mit den unterschiedlichen Interpretationen eines KBL-Segments im Vergleich zu den Objekten Segment / Branchable (Split / Flexible.Curve) in CATIA.

{{< figure src="ii-segmente-potential-target-1.png" title="Darstellung in CAD & KBL" numbered="true" lightbox="true">}}

## 2. Grobe Anwendungsfallbeschreibung. 

**Scope:**

  - Gemeinsame Wicklung wird auf weitestgehend parallel verlaufenden Segmenten aufgebracht.  
  - Die Methodik adressiert nur die Konstruktion von Wicklungen (Klebeband) – weitere Anwendungsfälle bestehen nicht oder können anders gelöst werden (z.B. parallel verlaufende Segmente die gemeinsam in einem Wellrohr verbaut werden).
  - Theoretisch ist die Anzahl Segmente beliebig, in der Praxis wird die Anzahl durch Verarbeitungsvorgaben und Einschränkungen in der Verarbeitung beschränkt sein (vermutlich < 10).

**Zusätzliche Anforderungen:**

  - Wicklung folgt dem Verlauf vom Segment und ist nicht (wie z.B. Halter) ein raumfester Punkt, durch den das Segment verlegt wird.
  - Die Verwendung eines Bauteils für den Aufbau wird empfohlen, da CA Produktstruktur & Stücklisten-Informationen konsistent sind.
  - Eine Ausführung als eigenständiges Bauteil wird empfohlen, da die Anzahl der Verwendungen begrenzt ist und daher keine Verschlechterung bei Check-In / Check-Out Aktivitäten zu erwarten ist.
\\

### 2.1. Beispiele.

#### 2.1.1. Basisfall: Lokale Anwendung von Wicklung.
{{< figure src="ii-segmente-uc-2.1.1.png" title="Lokale Wicklung mehrerer Segmente" numbered="true" lightbox="true">}}

**Merkmale des Beispiels**

  * Eine gemeinsame Wicklung wird lokal verwendet.
  * Segmente die gemeinsam gewickelt werden, verlaufen im Wesentlichen parallel.
  * Eine Wicklung kann eine zusätzlich Lage Leitungsschutz sein.

#### 2.1.2. Lokale Wicklung mit Verarbeitungshinweisen.
{{< figure src="ii-segmente-uc-2.1.2.png" title=" Wicklung mehrerer Segmente in spezieller Ausführung" numbered="true" lightbox="true">}}

**Merkmale des Beispiels**

  * Eine gemeinsame Wicklung kann nach einer bestimmten Verarbeitungsvorschrift ausgeführt werden. **-> Eine Darstellung der detaillierten Ausführung in CAD ist entbehrlich.**

#### 2.1.3. Lokale Wicklung mit Ausbindung (anteilige Darstellung nicht notwendig).
{{< figure src="ii-segmente-uc-2.1.3.png" title="Wicklung mehrerer Segmente mit Ausbindung" numbered="true" lightbox="true">}}
**Merkmale des Beispiels**

  * Eine gemeinsame Wicklung kann aufgrund der Ausführung in der KBB-Fertigung eine Überlappung mit anderen Segmenten eingehen.
**-> Die Darstellung der detaillierten Ausführung in CAD ist entbehrlich.**

#### 2.1.4. Lokale Wicklung mit Ausbindung, Darstellung auf Abzweig notwendig (?)

{{< figure src="ii-segmente-uc-2.1.4.png" title="Wicklung mehrerer Segmente mit mehrenen Ausbindungen" numbered="true" lightbox="true">}}

**Merkmale des Beispiels**

  * Beispiel bei der eine Darstellung der Ausführung in CAD zwingend ist

l<sub>(1)</sub> =  ~10mm  
l<sub>(2)</sub> =  ~35mm  

Die 35mm sind ca. doppelte Tapebreite (18mm). Ist das noch innerhalb von Fertigungsvorgaben abbildbar, oder explizit darzustellen?

### 3. Vorschlag für einen werkzeugneutrale Konstruktionsmethodik.
**Randbedingungen** 

1. Gemeinsame Wicklung wird in dedizierten Bereichen verwendet, sodass vereinfacht angenommen werden kann, dass Segmente die gemeinsam gewickelt werden, im Wesentlichen parallel verlaufen.
2. Die Darstellung in CA erfolgt vereinfacht:
   - Keine Darstellung fertigungsbedingter Überlappungen.
   - Keine Notwendigkeit zur Darstellung von Verarbeitungstechniken (Steigungen / Kreuzwickel). 
3. Ausnahme zu 1. sind möglicherweise Abgriffe, die zusätzlich eingewickelt werden (vgl. Beispiel 4)?


**Bezüge, für den Aufbau einer Darstellung in CAD ausreichend sind:**
  1. Mittellinien der Segmente.
  1. Bezugsebenen (Ein- bzw. Austritte).
  1. Abstände (Start- / Länge) relativ zu einem Einsetzpunkt.

-> Alle weiteren Größen lassen sich rechnerisch bestimmen.

{{< figure src="ii-segmente-method_3.1.png" title="Referenzen eines einfachen CAD-Ersatzmodells" numbered="true" lightbox="true">}}

  1. Mittellinien der Segmente.
  1. Bezugsebenen (Ein- bzw. Austritte).
  1. Abstände (Start- / Länge) relative zu einem Einsetzpunkt.

**Wahl geeigneter PMIs:**

{{< figure src="ii-segmente-method_3.2.png" title="PMIs der Wicklung" numbered="true" lightbox="true">}}

**Bauteil**
  * Teilenummer.
  * Geschützter Bereich.
  * Dedizierter CES Component Type?

**Instanz (analog zu konventionellem Leitungsschutz)**
  * Ausführung / Fertigungs- bzw. Verarbeitungshinweise.

## 4. Empfehlungen / Ergänzende Anmerkungen.

Für den Bauteilaufbau von Wicklungen wird die Trennung von Referenzen / Einsetzpunkten und Wicklungsgeometrie empfohlen. Die Erzeugung sinnvoll anwendbarer Vorlagen ist möglich, allerdings sind Aufwand und Nutzen einer möglichst realitätsnahen Darstellung abzuwägen. 

Komplexitäten für die Erstellung von updatefähigen CA-Vorlagen sind im Wesentlichen: 
  * Eindeutigkeit der Lösungen.
  * Behandlung von Ausnahmen 
  * Visualisierung komplexer Verläufe  – Lücken / Durchdringen.

{{< figure src="ii-segmente-remarks_4.1.png" title="Komplexitätstreiber" numbered="true" lightbox="true">}}

