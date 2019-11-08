---
title: TemperatureInformation
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines the temperature information for a general technical part. It is necessary to define this in an external class and not as an attribute, since a part can have multiple different temperature information e.g. operating temperature, storage temperature, processing temperature, environment temperature. An additional constraint is that one GeneralTechnicalPartSpecification can own multiple TemperatureInformations, but must not have more than one TemperatureInformations of the same temperatureType.      </p>    </body> </html> 
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
|temperatureRange | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <html><body><p>Specifies the allowed temperature range for this type of temperature.  </p></body></html> | [TemperatureInformation]({{< relref "temperatureinformation.md" >}}) |
|temperatureType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The type of a TemperatureInformation. This should be an enumeration of values defined in a conformance class. Possible values are: EnvironmentTemperature, OperationTemperature, StorageTemperature, ProcessingTemperature. (see KBLFRM-311)  </p></body></html> | [TemperatureInformation]({{< relref "temperatureinformation.md" >}}) |

