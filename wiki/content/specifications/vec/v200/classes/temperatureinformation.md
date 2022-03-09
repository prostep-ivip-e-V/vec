---
title: TemperatureInformation
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - TemperatureInformation
menu_name: vec-2.0.0
---
<p> Defines valid temperature ranges for a general technical part. A part can have different valid temperature ranges in different scenarios e.g. operating temperature, storage temperature, processing temperature, environment temperature. A class can own multiple TemperatureInformations but must not have more than one TemperatureInformations of the same temperatureType.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|temperatureRange | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p>Specifies the allowed temperature range for this type of temperature.  </p> | [TemperatureInformation]({{< relref "temperatureinformation.md" >}}) |
|temperatureType | [TemperatureType]({{< relref "temperaturetype.md" >}}) | 0..1 | <p> The type of a TemperatureInformation.      </p> | [TemperatureInformation]({{< relref "temperatureinformation.md" >}}) |

