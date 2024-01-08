---
title: SecondaryLockingType
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - SecondaryLockingType
menu_name: vec-2.1.0
---
<p> Defines the valid secondary locking types within slots (syn. Terminal Position Assurance).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| ISL | <p> ISL stands for &quot;Independent Secondary Lock&quot; and means, that the slot as some mechanical slider (or similar)&#160;to lock (and ensure) the terminals in their position in the connector. The ISL&#160;works independent form the primary locking.      </p> |
| PLR | <p> PLR stands for &quot;Primary Lock Reinforcement&quot; and means, that the slot as some mechanical slider (or similar)&#160;to lock (and ensure) the terminals in their position in the connect. However, this system is not independent from the primary locking (see ISL), but by ensuring (reinforcement) that the primary lock is in place and can not be opened again.      </p> |
