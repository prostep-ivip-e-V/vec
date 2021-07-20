<?xml version="1.0" encoding="UTF-8"?>
<!--
This file is provided under the terms of the MIT license reproduced here.
Copyright © 2021 prostep ivip association
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
   <xsl:import-schema xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
       schema-location="VEC%201.1.3.strict.xsd"
                      namespace="http://www.prostep.org/ecad-if/2011/vec"/>
   <sch:ns prefix="vec" uri="http://www.prostep.org/ecad-if/2011/vec"/>
   <sch:pattern>
      <sch:title>Unique Constraints for Identifications</sch:title>
      <sch:rule context="element(*,vec:AbstractSlotReference)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:AbstractSlotReference/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:Approval)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:Approval/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:CableDuctOutlet)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:CableDuctOutlet/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:CableLeadThrough)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:CableLeadThrough/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:Cavity)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and CavityNumber eq current()/CavityNumber])"> The vec:Cavity/CavityNumber shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The CavityNumber '<sch:value-of select="CavityNumber"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:CavityCoupling)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:CavityCoupling/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:CavityReference)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:CavityReference/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:ChangeDescription)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:ChangeDescription/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:ComponentConnector)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:ComponentConnector/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:ComponentNode)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:ComponentNode/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:ComponentPort)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:ComponentPort/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:ConformanceClass)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:ConformanceClass/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:Connection)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:Connection/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:ConnectionEnd)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:ConnectionEnd/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:ConnectionGroup)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:ConnectionGroup/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:ContactPoint)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:ContactPoint/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:CouplingPoint)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:CouplingPoint/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:CustomUnit)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:CustomUnit/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:Dimension)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:Dimension/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:ExtensionSlot)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:ExtensionSlot/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:ExtensionSlotReference)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:ExtensionSlotReference/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:FittingOutlet)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:FittingOutlet/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:FuseComponent)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:FuseComponent/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:GeometryNode)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:GeometryNode/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:GeometrySegment)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:GeometrySegment/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:HousingComponent)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:HousingComponent/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:HousingComponentReference)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:HousingComponentReference/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:InternalComponentConnection)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:InternalComponentConnection/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:InternalTerminalConnection)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:InternalTerminalConnection/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:Location)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:Location/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:MatingDetail)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:MatingDetail/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:MatingPoint)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:MatingPoint/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:MeasurementPoint)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:MeasurementPoint/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:MeasurementPointReference)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:MeasurementPointReference/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:ModuleFamily)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:ModuleFamily/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:ModuleList)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:ModuleList/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:Net)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:Net/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:NetGroup)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:NetGroup/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:NetType)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:NetType/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:NetworkNode)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:NetworkNode/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:NetworkPort)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:NetworkPort/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:OccurrenceOrUsage)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:OccurrenceOrUsage/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:OccurrenceOrUsageViewItem2D)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:OccurrenceOrUsageViewItem2D/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:OccurrenceOrUsageViewItem3D)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:OccurrenceOrUsageViewItem3D/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:PinComponent)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:PinComponent/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:PinComponentBehavior)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:PinComponentBehavior/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:PinComponentReference)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:PinComponentReference/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:Placement)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:Placement/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:PlacementPoint)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:PlacementPoint/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:PlacementPointReference)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:PlacementPointReference/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:Project)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:Project/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:Role)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:Role/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:Routing)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:Routing/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:SegmentConnectionPoint)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:SegmentConnectionPoint/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:SheetOrChapter)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:SheetOrChapter/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:Signal)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:Signal/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:SlotCoupling)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:SlotCoupling/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:Specification)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:Specification/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:SwitchingState)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:SwitchingState/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:TerminalReception)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:TerminalReception/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:TerminalReceptionReference)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:TerminalReceptionReference/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:TopologyNode)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:TopologyNode/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:TopologySegment)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:TopologySegment/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:UsageNode)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:UsageNode/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:VariantCode)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:VariantCode/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:VariantConfiguration)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:VariantConfiguration/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:VariantGroup)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:VariantGroup/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:WireElement)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:WireElement/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:WireElementReference)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:WireElementReference/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:WireEnd)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:WireEnd/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:WireGrouping)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:WireGrouping/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:WireReception)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:WireReception/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:WireReceptionReference)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:WireReceptionReference/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
      <sch:rule context="element(*,vec:Zone)">
         <sch:assert test="not(preceding-sibling::*[name() eq current()/name() and Identification eq current()/Identification])"> The vec:Zone/Identification shall be unique within the context of the
                <sch:value-of select="parent::*/name()"/> containing the <sch:value-of select="name()"/>. The Identification '<sch:value-of select="Identification"/>' is
                not unique. </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:title>Correct values for tolerances</sch:title>
      <sch:rule context="element(*,vec:Tolerance)">
         <sch:assert test="LowerBoundary le UpperBoundary">vec:Tolerance/LowerBoundary shall be a value smaller or equal to UpperBoundary.</sch:assert>
         <sch:assert test="LowerBoundary le 0.0">vec:Tolerance/LowerBoundary shall be a value less or equal to Zero</sch:assert>
         <sch:assert test="UpperBoundary ge 0.0">vec:Tolerance/UpperBoundary shall be a value greater or equal to Zero</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:title>These Rules check that the semantic constraint between the PrimaryPartType and the PartOrUsageRelatedSpecifications is not violated.</sch:title>
      <sch:rule context="PartVersion[PrimaryPartType='Antenna']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:AntennaSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='Antenna' shall be
                        described by at least one vec:AntennaSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:AntennaSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='Battery']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:BatterySpecification)) ge 1">
                        A PartVersion with PrimaryPartType='Battery' shall be
                        described by at least one vec:BatterySpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:BatterySpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='BoltMountedFixing']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:BoltMountedFixingSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='BoltMountedFixing' shall be
                        described by at least one vec:BoltMountedFixingSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:BoltMountedFixingSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='CableDuct']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:CableDuctSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='CableDuct' shall be
                        described by at least one vec:CableDuctSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:CableDuctSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='CableTie']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:CableTieSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='CableTie' shall be
                        described by at least one vec:CableTieSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:CableTieSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='CavityAccessory']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:CavityAccessorySpecification)) ge 1">
                        A PartVersion with PrimaryPartType='CavityAccessory' shall be
                        described by at least one vec:CavityAccessorySpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:CavityAccessorySpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='CavityPlug']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:CavityPlugSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='CavityPlug' shall be
                        described by at least one vec:CavityPlugSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:CavityPlugSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='CavitySeal']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:CavitySealSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='CavitySeal' shall be
                        described by at least one vec:CavitySealSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:CavitySealSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='ConnectorHousing']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:ConnectorHousingSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='ConnectorHousing' shall be
                        described by at least one vec:ConnectorHousingSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:ConnectorHousingSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='ConnectorHousingCap']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:ConnectorHousingCapSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='ConnectorHousingCap' shall be
                        described by at least one vec:ConnectorHousingCapSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:ConnectorHousingCapSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='CorrugatedPipe']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:CorrugatedPipeSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='CorrugatedPipe' shall be
                        described by at least one vec:CorrugatedPipeSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:CorrugatedPipeSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='EEComponent']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:EEComponentSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='EEComponent' shall be
                        described by at least one vec:EEComponentSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:EEComponentSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='EdgeMountedFixing']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:EdgeMountedFixingSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='EdgeMountedFixing' shall be
                        described by at least one vec:EdgeMountedFixingSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:EdgeMountedFixingSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='Fitting']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:FittingSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='Fitting' shall be
                        described by at least one vec:FittingSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:FittingSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='Fixing']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:FixingSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='Fixing' shall be
                        described by at least one vec:FixingSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:FixingSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='Fuse']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:FuseSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='Fuse' shall be
                        described by at least one vec:FuseSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:FuseSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='Grommet']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:GrommetSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='Grommet' shall be
                        described by at least one vec:GrommetSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:GrommetSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='HoleMountedFixing']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:HoleMountedFixingSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='HoleMountedFixing' shall be
                        described by at least one vec:HoleMountedFixingSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:HoleMountedFixingSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='MultiCavityPlug']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:MultiCavityPlugSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='MultiCavityPlug' shall be
                        described by at least one vec:MultiCavityPlugSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:MultiCavityPlugSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='MultiCavitySeal']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:MultiCavitySealSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='MultiCavitySeal' shall be
                        described by at least one vec:MultiCavitySealSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:MultiCavitySealSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='MultiFuse']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:MultiFuseSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='MultiFuse' shall be
                        described by at least one vec:MultiFuseSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:MultiFuseSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='Other']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='PartStructure']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:PartStructureSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='PartStructure' shall be
                        described by at least one vec:PartStructureSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:PartStructureSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='PluggableTerminal']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:PluggableTerminalSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='PluggableTerminal' shall be
                        described by at least one vec:PluggableTerminalSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:PluggableTerminalSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='PotentialDistributor']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:PotentialDistributorSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='PotentialDistributor' shall be
                        described by at least one vec:PotentialDistributorSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:PotentialDistributorSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='Relay']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:RelaySpecification)) ge 1">
                        A PartVersion with PrimaryPartType='Relay' shall be
                        described by at least one vec:RelaySpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:RelaySpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='RingTerminal']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:RingTerminalSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='RingTerminal' shall be
                        described by at least one vec:RingTerminalSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:RingTerminalSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='ShrinkableTube']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:ShrinkableTubeSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='ShrinkableTube' shall be
                        described by at least one vec:ShrinkableTubeSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:ShrinkableTubeSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='SpliceTerminal']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:SpliceTerminalSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='SpliceTerminal' shall be
                        described by at least one vec:SpliceTerminalSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:SpliceTerminalSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='Stripe']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:StripeSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='Stripe' shall be
                        described by at least one vec:StripeSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:StripeSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='Tape']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:TapeSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='Tape' shall be
                        described by at least one vec:TapeSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:TapeSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='Terminal']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:TerminalSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='Terminal' shall be
                        described by at least one vec:TerminalSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:TerminalSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='Tube']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:TubeSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='Tube' shall be
                        described by at least one vec:TubeSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:TubeSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='Wire']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:WireSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='Wire' shall be
                        described by at least one vec:WireSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:WireSpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='WireEndAccessory']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:WireEndAccessorySpecification)) ge 1">
                        A PartVersion with PrimaryPartType='WireEndAccessory' shall be
                        described by at least one vec:WireEndAccessorySpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:WireEndAccessorySpecification. 
                    </sch:assert>
      </sch:rule>
      <sch:rule context="PartVersion[PrimaryPartType='WireProtection']">
         <sch:let name="part-or-usage-related-specifications"
                  value="idref(@id)/self::DescribedPart/parent::element(*,vec:PartOrUsageRelatedSpecification)"/>
         <sch:assert test="(count($part-or-usage-related-specifications) = 0) or count($part-or-usage-related-specifications/self::element(*,vec:WireProtectionSpecification)) ge 1">
                        A PartVersion with PrimaryPartType='WireProtection' shall be
                        described by at least one vec:WireProtectionSpecification or
                        by no vec:PartOrUsageRelatedSpecification at all (PartVersion for 
                        reference / external link purposes only). The PartVersion with 
                        @id='<sch:value-of select="@id"/>' is decribed by 
                        <sch:value-of select="count($part-or-usage-related-specifications)"/> 
                        vec:PartOrUsageRelatedSpecification, but has no 
                        vec:WireProtectionSpecification. 
                    </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:title>These Rules check the typesafety of all IDREF / IDREFS associations in the model.</sch:title>
      <sch:rule context="SlotSpecification[parent::element(*,vec:AbstractSlot)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:SlotSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:AbstractSlot/SlotSpecification' shall have the type 'vec:SlotSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferencedSlot[parent::element(*,vec:AbstractSlotReference)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:AbstractSlot))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:AbstractSlotReference/ReferencedSlot' shall have the type 'vec:AbstractSlot'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ControlPoint[parent::element(*,vec:BSplineCurve)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CartesianPoint3D))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:BSplineCurve/ControlPoint' shall have the type 'vec:CartesianPoint3D'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Referenced2DBuildingBlock[parent::element(*,vec:BuildingBlockPositioning2D)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:BuildingBlockSpecification2D))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:BuildingBlockPositioning2D/Referenced2DBuildingBlock' shall have the type 'vec:BuildingBlockSpecification2D'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Referenced3DBuildingBlock[parent::element(*,vec:BuildingBlockPositioning3D)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:BuildingBlockSpecification3D))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:BuildingBlockPositioning3D/Referenced3DBuildingBlock' shall have the type 'vec:BuildingBlockSpecification3D'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="BaseUnit[parent::element(*,vec:BuildingBlockSpecification2D)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Unit))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:BuildingBlockSpecification2D/BaseUnit' shall have the type 'vec:Unit'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Zone[parent::element(*,vec:BuildingBlockSpecification3D)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Zone))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:BuildingBlockSpecification3D/Zone' shall have the type 'vec:Zone'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="BaseUnit[parent::element(*,vec:BuildingBlockSpecification3D)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Unit))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:BuildingBlockSpecification3D/BaseUnit' shall have the type 'vec:Unit'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PlacementPoint[parent::element(*,vec:CableDuctOutlet)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PlacementPoint))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CableDuctOutlet/PlacementPoint' shall have the type 'vec:PlacementPoint'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="CableDuctSpecification[parent::element(*,vec:CableDuctRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CableDuctSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CableDuctRole/CableDuctSpecification' shall have the type 'vec:CableDuctSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PlacementPoint[parent::element(*,vec:CableLeadThrough)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PlacementPoint))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CableLeadThrough/PlacementPoint' shall have the type 'vec:PlacementPoint'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="CableTieSpecification[parent::element(*,vec:CableTieRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CableTieSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CableTieRole/CableTieSpecification' shall have the type 'vec:CableTieSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="CavitySpecification[parent::element(*,vec:Cavity)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavitySpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Cavity/CavitySpecification' shall have the type 'vec:CavitySpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="IntegratedTerminalSpecification[parent::element(*,vec:Cavity)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TerminalSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Cavity/IntegratedTerminalSpecification' shall have the type 'vec:TerminalSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="CavityAccessorySpecification[parent::element(*,vec:CavityAccessoryRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavityAccessorySpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CavityAccessoryRole/CavityAccessorySpecification' shall have the type 'vec:CavityAccessorySpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Cavity[parent::element(*,vec:CavityAddOn)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Cavity))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CavityAddOn/Cavity' shall have the type 'vec:Cavity'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="FirstCavity[parent::element(*,vec:CavityCoupling)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavityReference))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CavityCoupling/FirstCavity' shall have the type 'vec:CavityReference'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="SecondCavity[parent::element(*,vec:CavityCoupling)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavityReference))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CavityCoupling/SecondCavity' shall have the type 'vec:CavityReference'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="CavityAccessory[parent::element(*,vec:CavityMounting)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavityAccessoryRole))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CavityMounting/CavityAccessory' shall have the type 'vec:CavityAccessoryRole'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="EquippedCavityRef[parent::element(*,vec:CavityMounting)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavityReference))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CavityMounting/EquippedCavityRef' shall have the type 'vec:CavityReference'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReplacedPlug[parent::element(*,vec:CavityMounting)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavityPlugRole))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CavityMounting/ReplacedPlug' shall have the type 'vec:CavityPlugRole'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="EquippedCavityRef[parent::element(*,vec:CavityMountingDetail)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavityReference))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CavityMountingDetail/EquippedCavityRef' shall have the type 'vec:CavityReference'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="TerminalReceptionReference[parent::element(*,vec:CavityMountingDetail)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TerminalReceptionReference))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CavityMountingDetail/TerminalReceptionReference' shall have the type 'vec:TerminalReceptionReference'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="CavityPlugSpecification[parent::element(*,vec:CavityPlugRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavityPlugSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CavityPlugRole/CavityPlugSpecification' shall have the type 'vec:CavityPlugSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PluggedCavityRef[parent::element(*,vec:CavityPlugRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavityReference))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CavityPlugRole/PluggedCavityRef' shall have the type 'vec:CavityReference'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ComponentPort[parent::element(*,vec:CavityReference)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ComponentPort))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CavityReference/ComponentPort' shall have the type 'vec:ComponentPort'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferencedCavity[parent::element(*,vec:CavityReference)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Cavity))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CavityReference/ReferencedCavity' shall have the type 'vec:Cavity'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="CavitySealSpecification[parent::element(*,vec:CavitySealRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavitySealSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CavitySealRole/CavitySealSpecification' shall have the type 'vec:CavitySealSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Cavity[parent::element(*,vec:CompatibilityStatement)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Cavity))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CompatibilityStatement/Cavity' shall have the type 'vec:Cavity'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="CavityPlugSpecification[parent::element(*,vec:CompatibilityStatement)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavityPlugSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CompatibilityStatement/CavityPlugSpecification' shall have the type 'vec:CavityPlugSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="CavitySealSpecification[parent::element(*,vec:CompatibilityStatement)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavitySealSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CompatibilityStatement/CavitySealSpecification' shall have the type 'vec:CavitySealSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="CavitySpecification[parent::element(*,vec:CompatibilityStatement)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavitySpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CompatibilityStatement/CavitySpecification' shall have the type 'vec:CavitySpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ConnectorHousingSpecification[parent::element(*,vec:CompatibilityStatement)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ConnectorHousingSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CompatibilityStatement/ConnectorHousingSpecification' shall have the type 'vec:ConnectorHousingSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Slot[parent::element(*,vec:CompatibilityStatement)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:AbstractSlot))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CompatibilityStatement/Slot' shall have the type 'vec:AbstractSlot'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="TerminalSpecification[parent::element(*,vec:CompatibilityStatement)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TerminalSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CompatibilityStatement/TerminalSpecification' shall have the type 'vec:TerminalSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="WireSpecification[parent::element(*,vec:CompatibilityStatement)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CompatibilityStatement/WireSpecification' shall have the type 'vec:WireSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="NetworkNode[parent::element(*,vec:ComponentNode)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:NetworkNode))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ComponentNode/NetworkNode' shall have the type 'vec:NetworkNode'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="RealizedUsageNode[parent::element(*,vec:ComponentNode)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:UsageNode))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ComponentNode/RealizedUsageNode' shall have the type 'vec:UsageNode'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="NetworkPort[parent::element(*,vec:ComponentPort)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:NetworkPort))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ComponentPort/NetworkPort' shall have the type 'vec:NetworkPort'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Signal[parent::element(*,vec:ComponentPort)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Signal))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ComponentPort/Signal' shall have the type 'vec:Signal'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Factors[parent::element(*,vec:CompositeUnit)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Unit))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CompositeUnit/Factors' shall have the type 'vec:Unit'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ConfigInfo[parent::element(*,vec:ConfigurableElement)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:VariantConfiguration))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ConfigurableElement/ConfigInfo' shall have the type 'vec:VariantConfiguration'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Net[parent::element(*,vec:Connection)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Net))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Connection/Net' shall have the type 'vec:Net'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Signal[parent::element(*,vec:Connection)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Signal))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Connection/Signal' shall have the type 'vec:Signal'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ConnectedComponentPort[parent::element(*,vec:ConnectionEnd)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ComponentPort))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ConnectionEnd/ConnectedComponentPort' shall have the type 'vec:ComponentPort'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Connection[parent::element(*,vec:ConnectionGroup)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:Connection))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ConnectionGroup/Connection' shall have the type 'vec:Connection'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="NetGroup[parent::element(*,vec:ConnectionGroup)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:NetGroup))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ConnectionGroup/NetGroup' shall have the type 'vec:NetGroup'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ConnectorHousingCapSpecification[parent::element(*,vec:ConnectorHousingCapRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ConnectorHousingCapSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ConnectorHousingCapRole/ConnectorHousingCapSpecification' shall have the type 'vec:ConnectorHousingCapSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ComponentNode[parent::element(*,vec:ConnectorHousingRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ComponentNode))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ConnectorHousingRole/ComponentNode' shall have the type 'vec:ComponentNode'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ConnectorHousingSpecification[parent::element(*,vec:ConnectorHousingRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ConnectorHousingSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ConnectorHousingRole/ConnectorHousingSpecification' shall have the type 'vec:ConnectorHousingSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="MountedTerminal[parent::element(*,vec:ContactPoint)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TerminalRole))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ContactPoint/MountedTerminal' shall have the type 'vec:TerminalRole'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="FirstTerminal[parent::element(*,vec:ContactSystem)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ContactSystem/FirstTerminal' shall have the type 'vec:PartVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferencedCoreSpecification[parent::element(*,vec:ContactSystem)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ConductorSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ContactSystem/ReferencedCoreSpecification' shall have the type 'vec:ConductorSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="SecondTerminal[parent::element(*,vec:ContactSystem)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ContactSystem/SecondTerminal' shall have the type 'vec:PartVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="FirstConnector[parent::element(*,vec:CouplingPoint)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ConnectorHousingRole))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CouplingPoint/FirstConnector' shall have the type 'vec:ConnectorHousingRole'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="SecondConnector[parent::element(*,vec:CouplingPoint)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ConnectorHousingRole))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:CouplingPoint/SecondConnector' shall have the type 'vec:ConnectorHousingRole'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="DimensionAnchor[parent::element(*,vec:Dimension)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:DimensionAnchor))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Dimension/DimensionAnchor' shall have the type 'vec:DimensionAnchor'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferenceAnchor[parent::element(*,vec:Dimension)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:DimensionAnchor))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Dimension/ReferenceAnchor' shall have the type 'vec:DimensionAnchor'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="UnitComponent[parent::element(*,vec:Dimension)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Unit))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Dimension/UnitComponent' shall have the type 'vec:Unit'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferencedDocument[parent::element(*,vec:DocumentBasedInstruction)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:DocumentVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:DocumentBasedInstruction/ReferencedDocument' shall have the type 'vec:DocumentVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferencedSheetOrChapter[parent::element(*,vec:DocumentBasedInstruction)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:SheetOrChapter))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:DocumentBasedInstruction/ReferencedSheetOrChapter' shall have the type 'vec:SheetOrChapter'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferencedPart[parent::element(*,vec:DocumentVersion)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:DocumentVersion/ReferencedPart' shall have the type 'vec:PartVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="RelatedDocument[parent::element(*,vec:DocumentVersion)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:DocumentVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:DocumentVersion/RelatedDocument' shall have the type 'vec:DocumentVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="EEComponentSpecification[parent::element(*,vec:EEComponentRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:EEComponentSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:EEComponentRole/EEComponentSpecification' shall have the type 'vec:EEComponentSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ComponentNode[parent::element(*,vec:EEComponentRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ComponentNode))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:EEComponentRole/ComponentNode' shall have the type 'vec:ComponentNode'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="AllowedInserts[parent::element(*,vec:ExtensionSlot)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ExtensionSlot/AllowedInserts' shall have the type 'vec:PartVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ExtensionSlot[parent::element(*,vec:ExtensionSlotReference)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ExtensionSlot))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ExtensionSlotReference/ExtensionSlot' shall have the type 'vec:ExtensionSlot'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="UsedInserts[parent::element(*,vec:ExtensionSlotReference)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:EEComponentRole))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ExtensionSlotReference/UsedInserts' shall have the type 'vec:EEComponentRole'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="MappedElement[parent::element(*,vec:ExternalMapping)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ExtendableElement))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ExternalMapping/MappedElement' shall have the type 'vec:ExtendableElement'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="MappedDocument[parent::element(*,vec:ExternalMappingSpecification)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:DocumentVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ExternalMappingSpecification/MappedDocument' shall have the type 'vec:DocumentVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PlacementPoint[parent::element(*,vec:FittingOutlet)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PlacementPoint))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:FittingOutlet/PlacementPoint' shall have the type 'vec:PlacementPoint'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="FixingSpecification[parent::element(*,vec:FixingRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:FixingSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:FixingRole/FixingSpecification' shall have the type 'vec:FixingSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ConnectedPins[parent::element(*,vec:FuseComponent)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PinComponent))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:FuseComponent/ConnectedPins' shall have the type 'vec:PinComponent'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="FuseSpecification[parent::element(*,vec:FuseComponent)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:FuseSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:FuseComponent/FuseSpecification' shall have the type 'vec:FuseSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferenceNode[parent::element(*,vec:GeometryNode)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TopologyNode))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:GeometryNode/ReferenceNode' shall have the type 'vec:TopologyNode'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="CartesianPoint[parent::element(*,vec:GeometryNode2D)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CartesianPoint2D))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:GeometryNode2D/CartesianPoint' shall have the type 'vec:CartesianPoint2D'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="CartesianPoint[parent::element(*,vec:GeometryNode3D)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CartesianPoint3D))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:GeometryNode3D/CartesianPoint' shall have the type 'vec:CartesianPoint3D'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferenceSegment[parent::element(*,vec:GeometrySegment)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TopologySegment))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:GeometrySegment/ReferenceSegment' shall have the type 'vec:TopologySegment'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="EndNode[parent::element(*,vec:GeometrySegment2D)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:GeometryNode2D))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:GeometrySegment2D/EndNode' shall have the type 'vec:GeometryNode2D'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="StartNode[parent::element(*,vec:GeometrySegment2D)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:GeometryNode2D))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:GeometrySegment2D/StartNode' shall have the type 'vec:GeometryNode2D'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="EndNode[parent::element(*,vec:GeometrySegment3D)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:GeometryNode3D))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:GeometrySegment3D/EndNode' shall have the type 'vec:GeometryNode3D'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="StartNode[parent::element(*,vec:GeometrySegment3D)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:GeometryNode3D))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:GeometrySegment3D/StartNode' shall have the type 'vec:GeometryNode3D'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="GrommetSpecification[parent::element(*,vec:GrommetRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:GrommetSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:GrommetRole/GrommetSpecification' shall have the type 'vec:GrommetSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="HousingSpecification[parent::element(*,vec:HousingComponent)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ConnectorHousingSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:HousingComponent/HousingSpecification' shall have the type 'vec:ConnectorHousingSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ComponentConnector[parent::element(*,vec:HousingComponentReference)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ComponentConnector))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:HousingComponentReference/ComponentConnector' shall have the type 'vec:ComponentConnector'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="HousingComponent[parent::element(*,vec:HousingComponentReference)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:HousingComponent))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:HousingComponentReference/HousingComponent' shall have the type 'vec:HousingComponent'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ConductorSpecification[parent::element(*,vec:InternalComponentConnection)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ConductorSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:InternalComponentConnection/ConductorSpecification' shall have the type 'vec:ConductorSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Pins[parent::element(*,vec:InternalComponentConnection)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PinComponent))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:InternalComponentConnection/Pins' shall have the type 'vec:PinComponent'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="TerminalReception[parent::element(*,vec:InternalTerminalConnection)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TerminalReception))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:InternalTerminalConnection/TerminalReception' shall have the type 'vec:TerminalReception'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="WireReception[parent::element(*,vec:InternalTerminalConnection)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireReception))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:InternalTerminalConnection/WireReception' shall have the type 'vec:WireReception'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Item[parent::element(*,vec:ItemEquivalence)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ItemVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ItemEquivalence/Item' shall have the type 'vec:ItemVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PredecessorVersion[parent::element(*,vec:ItemHistoryEntry)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ItemVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ItemHistoryEntry/PredecessorVersion' shall have the type 'vec:ItemVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="SuccessorVersion[parent::element(*,vec:ItemHistoryEntry)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ItemVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ItemHistoryEntry/SuccessorVersion' shall have the type 'vec:ItemVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Contract[parent::element(*,vec:ItemVersion)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:Contract))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ItemVersion/Contract' shall have the type 'vec:Contract'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="CopyrightInformation[parent::element(*,vec:ItemVersion)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CopyrightInformation))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ItemVersion/CopyrightInformation' shall have the type 'vec:CopyrightInformation'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PlacedPlacementPoints[parent::element(*,vec:Location)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PlacementPointReference))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Location/PlacedPlacementPoints' shall have the type 'vec:PlacementPointReference'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="A[parent::element(*,vec:Mapping)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Mapping/A' shall have the type 'vec:PartVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="B[parent::element(*,vec:Mapping)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Mapping/B' shall have the type 'vec:PartVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="FirstTerminalReception[parent::element(*,vec:MatingDetail)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TerminalReceptionReference))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:MatingDetail/FirstTerminalReception' shall have the type 'vec:TerminalReceptionReference'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="SecondTerminalReception[parent::element(*,vec:MatingDetail)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TerminalReceptionReference))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:MatingDetail/SecondTerminalReception' shall have the type 'vec:TerminalReceptionReference'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="FirstTerminalRole[parent::element(*,vec:MatingPoint)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TerminalRole))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:MatingPoint/FirstTerminalRole' shall have the type 'vec:TerminalRole'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="SecondTerminalRole[parent::element(*,vec:MatingPoint)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TerminalRole))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:MatingPoint/SecondTerminalRole' shall have the type 'vec:TerminalRole'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="MeasurementPoint[parent::element(*,vec:MeasurementPointReference)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:MeasurementPoint))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:MeasurementPointReference/MeasurementPoint' shall have the type 'vec:MeasurementPoint'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="AllowedInserts[parent::element(*,vec:ModularSlot)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ModularSlot/AllowedInserts' shall have the type 'vec:PartVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Slot[parent::element(*,vec:ModularSlotAddOn)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ModularSlot))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ModularSlotAddOn/Slot' shall have the type 'vec:ModularSlot'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="UsedInserts[parent::element(*,vec:ModularSlotReference)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ConnectorHousingRole))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ModularSlotReference/UsedInserts' shall have the type 'vec:ConnectorHousingRole'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ModuleInFamily[parent::element(*,vec:ModuleFamily)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartWithSubComponentsRole))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ModuleFamily/ModuleInFamily' shall have the type 'vec:PartWithSubComponentsRole'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="CompletionComponents[parent::element(*,vec:ModuleList)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartOccurrence))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ModuleList/CompletionComponents' shall have the type 'vec:PartOccurrence'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ModuleInList[parent::element(*,vec:ModuleList)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartWithSubComponentsRole))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ModuleList/ModuleInList' shall have the type 'vec:PartWithSubComponentsRole'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="NetType[parent::element(*,vec:Net)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:NetType))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Net/NetType' shall have the type 'vec:NetType'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="NetworkPort[parent::element(*,vec:Net)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:NetworkPort))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Net/NetworkPort' shall have the type 'vec:NetworkPort'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Net[parent::element(*,vec:NetGroup)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Net))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:NetGroup/Net' shall have the type 'vec:Net'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="RealizedUsageNode[parent::element(*,vec:NetworkNode)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:UsageNode))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:NetworkNode/RealizedUsageNode' shall have the type 'vec:UsageNode'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="NetType[parent::element(*,vec:NetworkPort)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:NetType))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:NetworkPort/NetType' shall have the type 'vec:NetType'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferencedNode[parent::element(*,vec:NodeLocation)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TopologyNode))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:NodeLocation/ReferencedNode' shall have the type 'vec:TopologyNode'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="RealizedUsageNode[parent::element(*,vec:OccurrenceOrUsage)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:UsageNode))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:OccurrenceOrUsage/RealizedUsageNode' shall have the type 'vec:UsageNode'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="OccurrenceOrUsage[parent::element(*,vec:OccurrenceOrUsageViewItem2D)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:OccurrenceOrUsage))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:OccurrenceOrUsageViewItem2D/OccurrenceOrUsage' shall have the type 'vec:OccurrenceOrUsage'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="OccurrenceOrUsage[parent::element(*,vec:OccurrenceOrUsageViewItem3D)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:OccurrenceOrUsage))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:OccurrenceOrUsageViewItem3D/OccurrenceOrUsage' shall have the type 'vec:OccurrenceOrUsage'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="OpenCavities[parent::element(*,vec:OpenCavitiesAssignment)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Cavity))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:OpenCavitiesAssignment/OpenCavities' shall have the type 'vec:Cavity'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="AlternativeOccurrence[parent::element(*,vec:PartOccurrence)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartOccurrence))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PartOccurrence/AlternativeOccurrence' shall have the type 'vec:PartOccurrence'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="InstanciatedOccurrence[parent::element(*,vec:PartOccurrence)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartOccurrence))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PartOccurrence/InstanciatedOccurrence' shall have the type 'vec:PartOccurrence'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Part[parent::element(*,vec:PartOccurrence)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PartOccurrence/Part' shall have the type 'vec:PartVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="RealizedPartUsage[parent::element(*,vec:PartOccurrence)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartUsage))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PartOccurrence/RealizedPartUsage' shall have the type 'vec:PartUsage'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferenceElement[parent::element(*,vec:PartOccurrence)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartOccurrence))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PartOccurrence/ReferenceElement' shall have the type 'vec:PartOccurrence'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="DescribedPart[parent::element(*,vec:PartOrUsageRelatedSpecification)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PartOrUsageRelatedSpecification/DescribedPart' shall have the type 'vec:PartVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="AccessoryPart[parent::element(*,vec:PartRelation)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PartRelation/AccessoryPart' shall have the type 'vec:PartVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="InBillOfMaterial[parent::element(*,vec:PartStructureSpecification)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartOccurrence))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PartStructureSpecification/InBillOfMaterial' shall have the type 'vec:PartOccurrence'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="AlternativePartVersions[parent::element(*,vec:PartSubstitutionSpecification)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PartSubstitutionSpecification/AlternativePartVersions' shall have the type 'vec:PartVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PartOrUsageRelatedSpecification[parent::element(*,vec:PartUsage)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartOrUsageRelatedSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PartUsage/PartOrUsageRelatedSpecification' shall have the type 'vec:PartOrUsageRelatedSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PartSubstitution[parent::element(*,vec:PartUsage)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartSubstitutionSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PartUsage/PartSubstitution' shall have the type 'vec:PartSubstitutionSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Project[parent::element(*,vec:PartVersion)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:Project))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PartVersion/Project' shall have the type 'vec:Project'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PartStructureSpecification[parent::element(*,vec:PartWithSubComponentsRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartStructureSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PartWithSubComponentsRole/PartStructureSpecification' shall have the type 'vec:PartStructureSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="SubComponent[parent::element(*,vec:PartWithSubComponentsRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:OccurrenceOrUsage))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PartWithSubComponentsRole/SubComponent' shall have the type 'vec:OccurrenceOrUsage'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Segment[parent::element(*,vec:Path)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TopologySegment))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Path/Segment' shall have the type 'vec:TopologySegment'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ControlPoint[parent::element(*,vec:PathSegment)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CartesianPoint2D))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PathSegment/ControlPoint' shall have the type 'vec:CartesianPoint2D'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PinSpecification[parent::element(*,vec:PinComponent)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TerminalSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PinComponent/PinSpecification' shall have the type 'vec:TerminalSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferencedCavity[parent::element(*,vec:PinComponent)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Cavity))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PinComponent/ReferencedCavity' shall have the type 'vec:Cavity'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Signal[parent::element(*,vec:PinComponentBehavior)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Signal))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PinComponentBehavior/Signal' shall have the type 'vec:Signal'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PinComponent[parent::element(*,vec:PinComponentReference)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PinComponent))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PinComponentReference/PinComponent' shall have the type 'vec:PinComponent'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PlaceableElementSpecification[parent::element(*,vec:PlaceableElementRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PlaceableElementSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PlaceableElementRole/PlaceableElementSpecification' shall have the type 'vec:PlaceableElementSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="IsOnTopOf[parent::element(*,vec:Placement)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:Placement))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Placement/IsOnTopOf' shall have the type 'vec:Placement'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PlacedElement[parent::element(*,vec:Placement)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PlaceableElementRole))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Placement/PlacedElement' shall have the type 'vec:PlaceableElementRole'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PlacementPoint[parent::element(*,vec:PlacementPointReference)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PlacementPoint))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:PlacementPointReference/PlacementPoint' shall have the type 'vec:PlacementPoint'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="MandatorySegment[parent::element(*,vec:Routing)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TopologySegment))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Routing/MandatorySegment' shall have the type 'vec:TopologySegment'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="RoutedElement[parent::element(*,vec:Routing)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:RoutableElement))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Routing/RoutedElement' shall have the type 'vec:RoutableElement'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="SealedCavities[parent::element(*,vec:SealedCavitiesAssignment)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Cavity))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:SealedCavitiesAssignment/SealedCavities' shall have the type 'vec:Cavity'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PlacementPoint[parent::element(*,vec:SegmentConnectionPoint)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PlacementPoint))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:SegmentConnectionPoint/PlacementPoint' shall have the type 'vec:PlacementPoint'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReachableCavities[parent::element(*,vec:SegmentConnectionPoint)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Cavity))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:SegmentConnectionPoint/ReachableCavities' shall have the type 'vec:Cavity'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferencedSegment[parent::element(*,vec:SegmentLocation)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TopologySegment))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:SegmentLocation/ReferencedSegment' shall have the type 'vec:TopologySegment'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferencedPart[parent::element(*,vec:SheetOrChapter)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:SheetOrChapter/ReferencedPart' shall have the type 'vec:PartVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="NetType[parent::element(*,vec:Signal)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:NetType))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Signal/NetType' shall have the type 'vec:NetType'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="RecommendedConductorSpecification[parent::element(*,vec:Signal)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ConductorSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Signal/RecommendedConductorSpecification' shall have the type 'vec:ConductorSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="RecommendedInsulationSpecification[parent::element(*,vec:Signal)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:InsulationSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Signal/RecommendedInsulationSpecification' shall have the type 'vec:InsulationSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="FirstSlot[parent::element(*,vec:SlotCoupling)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:AbstractSlotReference))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:SlotCoupling/FirstSlot' shall have the type 'vec:AbstractSlotReference'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="SecondSlot[parent::element(*,vec:SlotCoupling)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:AbstractSlotReference))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:SlotCoupling/SecondSlot' shall have the type 'vec:AbstractSlotReference'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Specification[parent::element(*,vec:SpecificRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartOrUsageRelatedSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:SpecificRole/Specification' shall have the type 'vec:PartOrUsageRelatedSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="SwitchedConnections[parent::element(*,vec:SwitchingState)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:InternalComponentConnection))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:SwitchingState/SwitchedConnections' shall have the type 'vec:InternalComponentConnection'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="TerminalReceptionSpecification[parent::element(*,vec:TerminalReception)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TerminalReceptionSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:TerminalReception/TerminalReceptionSpecification' shall have the type 'vec:TerminalReceptionSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="TerminalReception[parent::element(*,vec:TerminalReceptionReference)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TerminalReception))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:TerminalReceptionReference/TerminalReception' shall have the type 'vec:TerminalReception'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ComponentPort[parent::element(*,vec:TerminalRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ComponentPort))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:TerminalRole/ComponentPort' shall have the type 'vec:ComponentPort'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="TerminalSpecification[parent::element(*,vec:TerminalRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TerminalSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:TerminalRole/TerminalSpecification' shall have the type 'vec:TerminalSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="TopologySpecification[parent::element(*,vec:TopologyGroupSpecification)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TopologySpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:TopologyGroupSpecification/TopologySpecification' shall have the type 'vec:TopologySpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="RealizedUsageNode[parent::element(*,vec:TopologyNode)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:UsageNode))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:TopologyNode/RealizedUsageNode' shall have the type 'vec:UsageNode'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="EndNode[parent::element(*,vec:TopologySegment)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TopologyNode))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:TopologySegment/EndNode' shall have the type 'vec:TopologyNode'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="StartNode[parent::element(*,vec:TopologySegment)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:TopologyNode))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:TopologySegment/StartNode' shall have the type 'vec:TopologyNode'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Origin[parent::element(*,vec:Transformation2D)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CartesianPoint2D))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Transformation2D/Origin' shall have the type 'vec:CartesianPoint2D'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Origin[parent::element(*,vec:Transformation3D)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CartesianPoint3D))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:Transformation3D/Origin' shall have the type 'vec:CartesianPoint3D'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Project[parent::element(*,vec:UsageConstraint)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:Project))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:UsageConstraint/Project' shall have the type 'vec:Project'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="UsageNode[parent::element(*,vec:UsageConstraint)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:UsageNode))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:UsageConstraint/UsageNode' shall have the type 'vec:UsageNode'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ConstrainedParts[parent::element(*,vec:UsageConstraintSpecification)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PartVersion))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:UsageConstraintSpecification/ConstrainedParts' shall have the type 'vec:PartVersion'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="UsedInProject[parent::element(*,vec:UsageNode)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:Project))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:UsageNode/UsedInProject' shall have the type 'vec:Project'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="UnitComponent[parent::element(*,vec:ValueWithUnit)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Unit))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:ValueWithUnit/UnitComponent' shall have the type 'vec:Unit'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="VariantCode[parent::element(*,vec:VariantGroup)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:VariantCode))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:VariantGroup/VariantCode' shall have the type 'vec:VariantCode'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="StandardCopyrightInformation[parent::element(*,vec:VecContent)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CopyrightInformation))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:VecContent/StandardCopyrightInformation' shall have the type 'vec:CopyrightInformation'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="WireElementSpecification[parent::element(*,vec:WireElement)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireElementSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireElement/WireElementSpecification' shall have the type 'vec:WireElementSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Connection[parent::element(*,vec:WireElementReference)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:Connection))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireElementReference/Connection' shall have the type 'vec:Connection'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferencedWireElement[parent::element(*,vec:WireElementReference)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireElement))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireElementReference/ReferencedWireElement' shall have the type 'vec:WireElement'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="Signal[parent::element(*,vec:WireElementReference)]">
         <sch:let name="wrong-components" value="id(.)[not(self::element(*,vec:Signal))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireElementReference/Signal' shall have the type 'vec:Signal'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ConductorSpecification[parent::element(*,vec:WireElementSpecification)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ConductorSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireElementSpecification/ConductorSpecification' shall have the type 'vec:ConductorSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="FillerSpecification[parent::element(*,vec:WireElementSpecification)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:FillerSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireElementSpecification/FillerSpecification' shall have the type 'vec:FillerSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="InsulationSpecification[parent::element(*,vec:WireElementSpecification)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:InsulationSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireElementSpecification/InsulationSpecification' shall have the type 'vec:InsulationSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="SubWireElementSpecification[parent::element(*,vec:WireElementSpecification)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireElementSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireElementSpecification/SubWireElementSpecification' shall have the type 'vec:WireElementSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="WireGroupSpecification[parent::element(*,vec:WireElementSpecification)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireGroupSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireElementSpecification/WireGroupSpecification' shall have the type 'vec:WireGroupSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ConnectionEnd[parent::element(*,vec:WireEnd)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:ConnectionEnd))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireEnd/ConnectionEnd' shall have the type 'vec:ConnectionEnd'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="RelatedWireRole[parent::element(*,vec:WireGrouping)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireElementReference))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireGrouping/RelatedWireRole' shall have the type 'vec:WireElementReference'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="WireGroupSpecification[parent::element(*,vec:WireGrouping)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireGroupSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireGrouping/WireGroupSpecification' shall have the type 'vec:WireGroupSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="MountedCavitySeal[parent::element(*,vec:WireMounting)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:CavitySealRole))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireMounting/MountedCavitySeal' shall have the type 'vec:CavitySealRole'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferencedWireEnd[parent::element(*,vec:WireMounting)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireEnd))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireMounting/ReferencedWireEnd' shall have the type 'vec:WireEnd'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="WireEndAccessory[parent::element(*,vec:WireMounting)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireEndAccessoryRole))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireMounting/WireEndAccessory' shall have the type 'vec:WireEndAccessoryRole'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ContactedWireReception[parent::element(*,vec:WireMountingDetail)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireReceptionReference))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireMountingDetail/ContactedWireReception' shall have the type 'vec:WireReceptionReference'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="ReferencedWireEnd[parent::element(*,vec:WireMountingDetail)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireEnd))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireMountingDetail/ReferencedWireEnd' shall have the type 'vec:WireEnd'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="WireProtectionSpecification[parent::element(*,vec:WireProtectionRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireProtectionSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireProtectionRole/WireProtectionSpecification' shall have the type 'vec:WireProtectionSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="PlacementPoint[parent::element(*,vec:WireReception)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:PlacementPoint))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireReception/PlacementPoint' shall have the type 'vec:PlacementPoint'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="WireReceptionSpecification[parent::element(*,vec:WireReception)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireReceptionSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireReception/WireReceptionSpecification' shall have the type 'vec:WireReceptionSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="WireReception[parent::element(*,vec:WireReceptionReference)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireReception))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireReceptionReference/WireReception' shall have the type 'vec:WireReception'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="WireSpecification[parent::element(*,vec:WireRole)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireRole/WireSpecification' shall have the type 'vec:WireSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
      <sch:rule context="WireElementSpecification[parent::element(*,vec:WireSpecification)]">
         <sch:let name="wrong-components"
                  value="id(.)[not(self::element(*,vec:WireElementSpecification))]"/>
         <sch:assert test="count($wrong-components) = 0">
                All elements referenced by 'vec:WireSpecification/WireElementSpecification' shall have the type 'vec:WireElementSpecification'. The following ID's are violating this: <sch:value-of select="$wrong-components/@id"/>.
            </sch:assert>
      </sch:rule>
   </sch:pattern>
</sch:schema>
