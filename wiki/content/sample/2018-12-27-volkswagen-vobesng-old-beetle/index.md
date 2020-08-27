---
title: 'Volkswagen - VOBES NG - "Old Beetle" Example Files'
#subtitle: ""
#summary: ""
authors: []
tags: []
categories: ["KBL","VEC"]
date: 2018-12-27
lastmod: 2018-12-27
featured: false
draft: false
share: false
profile: false
commentable: false
editable: true

company: "Volkswagen"
system:
  name: "VOBES NG"
  version: "1.1.43"
usecase: "Vehicle Network"
notice: "This is pure testing data, no car has ever been produced with these specifications or will ever! The VEC File represents the current abilities of the VEC generation VOBES NG and is subject to changes. All partnumbers have been obfuscated."


resources:
  - src: oldbeetle_vec113.vec
    title: VEC-File with a complete vehicle network.
    params:
      specification: "VEC"
      version: "1.1.3"
      creation: 2018-11-13
  - src: oldbeetle_vec2jt.jt
    title: JT-file created from the VEC-file.
    params:
      specification: "JT"
      creation: 2018-11-13
  - src: kblxml_2.3sr-1_000971228_ltgs_batterie_plus_170718.kbl
    title: Battery Plus Cable as KBL
    params:
      specification: "KBL"
      version: "2.4"
      creation: 2018-11-13
  - src: kblxml_2.3sr-1_000971230_ltgs_generator_170718.kbl
    title: Generator cable as KBL
    params:
      specification: "KBL"
      version: "2.4"
      creation: 2018-11-13
  - src: kblxml_2.3sr-1_000971235_ltgs_batt._minus_170718.kbl
    title: Battery Minus Cable as KBL
    params:
      specification: "KBL"
      version: "2.3-SR1"
      creation: 2018-11-13
  - src: kblxml_2.3sr-1_000971250_ltgs_getriebe_170718.kbl
    title: Gearbox Harness as KBL
    params:
      specification: "KBL"
      version: "2.3-SR1"
      creation: 2018-11-13
  - src: kblxml_2.3sr-1_000971619_ltgs_movo_170718.kbl
    title: Motor Cabling as KBL
    params:
      specification: "KBL"
      version: "2.3-SR1"
      creation: 2018-11-13
  - src: kblxml_2.4sr-1_tab016120_modulare_ltgs._160718.kbl
    title: KSK (Main harness) of the OldBeetle
    params:
      specification: "KBL"
      version: "2.4"
      creation: 2018-11-13

---
Example for full Vehicle Network as VEC-File and additional KBL-Files which describe the included harnesses, plus a JT File, which shows the geometry of the full Vehicle Network.