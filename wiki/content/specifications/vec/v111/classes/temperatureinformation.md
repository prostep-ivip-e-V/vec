---
title: TemperatureInformation
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - TemperatureInformation
menu_name: vec-1.1.1
---
<p> Defines the temperature information for a general technical part. It is necessary to define this in an external class and not as an attribute, since a part can have multiple different temperature information e.g. operating temperature, storage temperature, processing temperature, environment temperature. An additional constraint is that one GeneralTechnicalPartSpecification can own multiple TemperatureInformations, but must not have more than one TemperatureInformations of the same temperatureType.      </p>
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
|temperatureType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The type of a TemperatureInformation. This should be an enumeration of values defined in a conformance class. Possible values are: EnvironmentTemperature, OperationTemperature, StorageTemperature, ProcessingTemperature. (see KBLFRM-311)  </p> | [TemperatureInformation]({{< relref "temperatureinformation.md" >}}) |

