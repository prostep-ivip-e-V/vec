---
title: "Multi Fuses"
#linktitle: Link in Sidemenu
type: specs
authors: ["becker"]
tags: ["part-master", "instantiation"]
categories: []
date: 2019-03-07
lastmod: 2019-03-07
draft: false

menu:
  vec-guidelines:
    parent: ee-components
    weight: 4200

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 4200
---
{{< figure src="multi-fuse.png" lightbox="true" class="float-right" title="Multi Fuse Illustration" width="300px" >}}

A mutlifuse is a special type of fuse that combines multiple fuses in a single component (see "Multi Fuse Illustration"). In contrast to a regular fuse, where there are only two interchangeable pins, the multi fuse has a single dedicated supplying pin and multiple protected pins. 

An individual fuse component is located between each protected pin and the supplying pin. Each fuse component can have its own technical properties (e.g. max current).

As shown in figure "Specification Multi Fuse" a multi fuse is represented in the VEC by a {{< vec-class multifusespecification >}}, which is a specialization of the {{< vec-class eecomponentspecification >}}. Therefore all aspects described in the [general section]({{< relref ee-components>}}) potentially apply to multi fuses as well. This sample describes only the aspects that are specific for multi fuses.  

In the VEC, a multi fuse has __one__ {{< vec-class housingcomponent >}} with a {{< vec-class pincomponent >}} for each pin. Each integrated fuse in the multifuse is represented by a {{< vec-class fusecomponent >}}. The fuse component references the pin components that are connected through it and specifies the properties for this (e.g. iMax) through a {{< vec-class fusespecification >}}.

The geometrical shape of the multi fuse is defined by a {{< vec-class ConnectorHousingSpecification >}} with {{< vec-class slot >}} and {{< vec-class cavity >}}. The cavities are referenced by the pin components. 

{{< figure src="multifuses-specification.jpg" title="Specification Multi Fuse" >}}

```xml
<Specification id="id_2000_0" xsi:type"vec:MultiFuseSpecification">
	<Identification>MF-3x100</Identification>
	<DescribedPart>id_1001_0</DescribedPart>
	<HousingComponent id="id_2023_0">
		<Identification>Hco-MF-3x100</Identification>
		<HousingSpecification>id_2000_1</HousingSpecification>
		<PinComponent id="id_2024_0">
			<Identification>V</Identification>
			<Description id="id_1003_1" xsi:type"vec:LocalizedString">
				<LanguageCode>De</LanguageCode>
				<Value>Versorgung</Value>
			</Description>
			<ReferencedCavity>id_2020_3</ReferencedCavity>
		</PinComponent>
		<PinComponent id="id_2024_1">
			<Identification>1A</Identification>
			<ReferencedCavity>id_2020_0</ReferencedCavity>
		</PinComponent>
		<PinComponent id="id_2024_2">
			<Identification>2A</Identification>
			<ReferencedCavity>id_2020_1</ReferencedCavity>
		</PinComponent>
		<PinComponent id="id_2024_3">
			<Identification>3A</Identification>
			<ReferencedCavity>id_2020_2</ReferencedCavity>
		</PinComponent>
	</HousingComponent>
	<IMaxTotal id="id_2080_0">
		<UnitComponent>id_1005_0</UnitComponent>
		<ValueComponent>300.0</ValueComponent>
	</IMaxTotal>
	<FuseComponents id="id_2046_0">
		<Identification>F1</Identification>
		<ConnectedPins>id_2024_0 id_2024_1</ConnectedPins>
		<FuseSpecification>id_2000_3</FuseSpecification>
	</FuseComponents>
	<FuseComponents id="id_2046_1">
		<Identification>F2</Identification>
		<ConnectedPins>id_2024_0 id_2024_2</ConnectedPins>
		<FuseSpecification>id_2000_3</FuseSpecification>
	</FuseComponents>
	<FuseComponents id="id_2046_2">
		<Identification>F3</Identification>
		<ConnectedPins>id_2024_0 id_2024_3</ConnectedPins>
		<FuseSpecification>id_2000_3</FuseSpecification>
	</FuseComponents>
</Specification>
```


