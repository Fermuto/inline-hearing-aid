<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="SJ1-3553NG">
<packages>
<package name="CUI_SJ1-3553NG">
<wire x1="-0.25" y1="0.5" x2="-0.75" y2="0" width="0" layer="46" curve="90"/>
<wire x1="-0.75" y1="0" x2="-0.25" y2="-0.5" width="0" layer="46" curve="90"/>
<wire x1="-0.25" y1="-0.5" x2="0.25" y2="-0.5" width="0" layer="46"/>
<wire x1="0.25" y1="-0.5" x2="0.75" y2="0" width="0" layer="46" curve="90"/>
<wire x1="0.75" y1="0" x2="0.25" y2="0.5" width="0" layer="46" curve="90"/>
<wire x1="0.25" y1="0.5" x2="-0.25" y2="0.5" width="0" layer="46"/>
<wire x1="4.75" y1="-4.5" x2="4.25" y2="-5" width="0" layer="46" curve="90"/>
<wire x1="4.25" y1="-5" x2="4.75" y2="-5.5" width="0" layer="46" curve="90"/>
<wire x1="4.75" y1="-5.5" x2="5.25" y2="-5.5" width="0" layer="46"/>
<wire x1="5.25" y1="-5.5" x2="5.75" y2="-5" width="0" layer="46" curve="90"/>
<wire x1="5.75" y1="-5" x2="5.25" y2="-4.5" width="0" layer="46" curve="90"/>
<wire x1="5.25" y1="-4.5" x2="4.75" y2="-4.5" width="0" layer="46"/>
<wire x1="4.75" y1="5.5" x2="4.25" y2="5" width="0" layer="46" curve="90"/>
<wire x1="4.25" y1="5" x2="4.75" y2="4.5" width="0" layer="46" curve="90"/>
<wire x1="4.75" y1="4.5" x2="5.25" y2="4.5" width="0" layer="46"/>
<wire x1="5.25" y1="4.5" x2="5.75" y2="5" width="0" layer="46" curve="90"/>
<wire x1="5.75" y1="5" x2="5.25" y2="5.5" width="0" layer="46" curve="90"/>
<wire x1="5.25" y1="5.5" x2="4.75" y2="5.5" width="0" layer="46"/>
<wire x1="8.5" y1="6" x2="8.5" y2="-6" width="0.127" layer="51"/>
<wire x1="8.5" y1="-6" x2="-3" y2="-6" width="0.127" layer="51"/>
<wire x1="-3" y1="-6" x2="-3" y2="-3.5" width="0.127" layer="51"/>
<wire x1="-3" y1="-3.5" x2="-6.5" y2="-3.5" width="0.127" layer="51"/>
<wire x1="-6.5" y1="-3.5" x2="-6.5" y2="3.5" width="0.127" layer="51"/>
<wire x1="-6.5" y1="3.5" x2="-3" y2="3.5" width="0.127" layer="51"/>
<wire x1="-3" y1="3.5" x2="-3" y2="6" width="0.127" layer="51"/>
<wire x1="-3" y1="6" x2="8.5" y2="6" width="0.127" layer="51"/>
<text x="-3.00381875" y="7.008909375" size="1.27161875" layer="25">&gt;NAME</text>
<text x="-3.002390625" y="-7.00556875" size="1.271009375" layer="27" align="top-left">&gt;VALUE</text>
<wire x1="-6.75" y1="6.25" x2="8.75" y2="6.25" width="0.05" layer="39"/>
<wire x1="8.75" y1="-6.25" x2="-6.75" y2="-6.25" width="0.05" layer="39"/>
<wire x1="8.75" y1="6.25" x2="8.75" y2="-6.25" width="0.05" layer="39"/>
<wire x1="-6.75" y1="-6.25" x2="-6.75" y2="6.25" width="0.05" layer="39"/>
<wire x1="8.5" y1="6" x2="8.5" y2="-6" width="0.127" layer="21"/>
<wire x1="8.5" y1="-6" x2="-3" y2="-6" width="0.127" layer="21"/>
<wire x1="-3" y1="-6" x2="-3" y2="-3.5" width="0.127" layer="21"/>
<wire x1="-3" y1="-3.5" x2="-6.5" y2="-3.5" width="0.127" layer="21"/>
<wire x1="-6.5" y1="-3.5" x2="-6.5" y2="3.5" width="0.127" layer="21"/>
<wire x1="-6.5" y1="3.5" x2="-3" y2="3.5" width="0.127" layer="21"/>
<wire x1="-3" y1="3.5" x2="-3" y2="6" width="0.127" layer="21"/>
<wire x1="-3" y1="6" x2="8.5" y2="6" width="0.127" layer="21"/>
<wire x1="-3" y1="3.5" x2="-3" y2="-3.5" width="0.127" layer="21"/>
<wire x1="-3" y1="3.5" x2="-3" y2="-3.5" width="0.127" layer="51"/>
<hole x="0" y="5" drill="1.6"/>
<hole x="0" y="-5" drill="1.6"/>
<hole x="5" y="0" drill="1.6"/>
<pad name="1" x="0" y="0" drill="1" diameter="1.35" shape="long"/>
<pad name="2" x="5" y="-5" drill="1" diameter="1.35" shape="long"/>
<pad name="3" x="5" y="5" drill="1" diameter="1.35" shape="long"/>
</package>
</packages>
<symbols>
<symbol name="SJ1-3553NG">
<text x="-7.627" y="8.13546875" size="2.54233125" layer="95">&gt;NAME</text>
<text x="-7.63106875" y="-10.4291" size="2.543690625" layer="96">&gt;VALUE</text>
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-5.08" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="1.905" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="1.905" x2="-3.937" y2="1.905" width="0.1524" layer="94"/>
<wire x1="-3.937" y1="1.905" x2="-3.937" y2="-4.445" width="0.1524" layer="94"/>
<wire x1="-3.937" y1="-4.445" x2="-6.223" y2="-4.445" width="0.1524" layer="94"/>
<wire x1="-6.223" y1="-4.445" x2="-6.223" y2="1.905" width="0.1524" layer="94"/>
<wire x1="-6.223" y1="1.905" x2="-5.08" y2="1.905" width="0.1524" layer="94"/>
<wire x1="7.62" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="-1.27" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="1.27" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="0" y2="-3.81" width="0.1524" layer="94"/>
<wire x1="0" y1="-3.81" x2="-1.27" y2="-5.08" width="0.1524" layer="94"/>
<pin name="1" x="12.7" y="5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="12.7" y="-5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="3" x="12.7" y="2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SJ1-3553NG" prefix="J">
<description>SJ1 Series 3.5 mm 12 V Right Angle Through Hole Isolated Stereo Audio Jack &lt;a href="https://pricing.snapeda.com/parts/SJ1-3553NG/CUI%20Devices/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="SJ1-3553NG" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CUI_SJ1-3553NG">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="CUI_PURCHASE_URL" value="https://www.cuidevices.com/product/interconnect/connectors/audio-connectors/jacks/sj1-355xng-series?utm_source=snapeda.com&amp;utm_medium=referral&amp;utm_campaign=snapedaBOM"/>
<attribute name="DESCRIPTION" value=" 3.5 mm, Stereo, Right Angle, Through Hole, Isolated Ground, Kinked Pins, Audio Jack Connector "/>
<attribute name="MF" value="CUI Devices"/>
<attribute name="MP" value="SJ1-3553NG"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/SJ1-3553NG/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="solpad" urn="urn:adsk.eagle:library:364">
<description>&lt;b&gt;Solder Pads/Test Points&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="LSP10" urn="urn:adsk.eagle:footprint:26494/1" library_version="2">
<description>&lt;b&gt;SOLDER PAD&lt;/b&gt;&lt;p&gt;
drill 1.0 mm</description>
<wire x1="-1.27" y1="0.254" x2="-1.27" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.254" x2="1.27" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.254" x2="1.143" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.254" x2="1.143" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.254" x2="-1.143" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.254" x2="0.635" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-0.635" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0.254" x2="0.635" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0.254" x2="-0.635" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-0.254" x2="1.143" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="0.254" x2="-0.635" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="-0.254" x2="0.635" y2="-0.254" width="0.1524" layer="51"/>
<pad name="MP" x="0" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-1.27" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.254" size="0.0254" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="LSP10" urn="urn:adsk.eagle:package:26501/1" type="box" library_version="2">
<description>SOLDER PAD
drill 1.0 mm</description>
<packageinstances>
<packageinstance name="LSP10"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="LSP" urn="urn:adsk.eagle:symbol:26492/1" library_version="2">
<wire x1="-1.016" y1="2.032" x2="1.016" y2="0" width="0.254" layer="94"/>
<wire x1="-1.016" y1="0" x2="1.016" y2="2.032" width="0.254" layer="94"/>
<circle x="0" y="1.016" radius="1.016" width="0.4064" layer="94"/>
<text x="-1.27" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<pin name="MP" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LSP10" urn="urn:adsk.eagle:component:26508/2" prefix="LSP" library_version="2">
<description>&lt;b&gt;SOLDER PAD&lt;/b&gt;&lt;p&gt; drill 1.0 mm, distributor Buerklin, 12H555</description>
<gates>
<gate name="1" symbol="LSP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LSP10">
<connects>
<connect gate="1" pin="MP" pad="MP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26501/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="52" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="holes" urn="urn:adsk.eagle:library:237">
<description>&lt;b&gt;Mounting Holes and Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="2,8" urn="urn:adsk.eagle:footprint:14239/1" library_version="2">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 2.8 mm with drill center</description>
<wire x1="-1.778" y1="0" x2="0" y2="-1.778" width="2.286" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="1.778" x2="1.778" y2="0" width="2.286" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="0.635" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="2.921" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.54" width="2.032" layer="40"/>
<circle x="0" y="0" radius="2.54" width="2.032" layer="39"/>
<circle x="0" y="0" radius="2.54" width="2.032" layer="41"/>
<circle x="0" y="0" radius="2.54" width="2.032" layer="42"/>
<circle x="0" y="0" radius="2.54" width="2.032" layer="43"/>
<circle x="0" y="0" radius="1.5" width="0.2032" layer="21"/>
<hole x="0" y="0" drill="2.8"/>
</package>
<package name="3,0" urn="urn:adsk.eagle:footprint:14240/1" library_version="2">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 3.0 mm with drill center</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="39"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="43"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="40"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="41"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="42"/>
<circle x="0" y="0" radius="1.6" width="0.2032" layer="21"/>
<text x="-1.27" y="-3.81" size="1.27" layer="48">3,0</text>
<hole x="0" y="0" drill="3"/>
</package>
<package name="3,3" urn="urn:adsk.eagle:footprint:14241/1" library_version="2">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 3.3 mm with drill center</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.048" width="2.54" layer="39"/>
<circle x="0" y="0" radius="3.048" width="2.54" layer="40"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="43"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="41"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="42"/>
<circle x="0" y="0" radius="1.75" width="0.2032" layer="21"/>
<hole x="0" y="0" drill="3.3"/>
</package>
<package name="3,6" urn="urn:adsk.eagle:footprint:14242/1" library_version="2">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 3.6 mm with drill center</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.048" width="2.7686" layer="39"/>
<circle x="0" y="0" radius="3.048" width="2.7686" layer="40"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="43"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="41"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="42"/>
<circle x="0" y="0" radius="1.9" width="0.2032" layer="21"/>
<hole x="0" y="0" drill="3.6"/>
</package>
<package name="4,1" urn="urn:adsk.eagle:footprint:14243/1" library_version="2">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 4.1 mm with drill center</description>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="39"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="40"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="41"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="42"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="43"/>
<circle x="0" y="0" radius="2.15" width="0.1524" layer="21"/>
<hole x="0" y="0" drill="4.1"/>
</package>
<package name="4,5" urn="urn:adsk.eagle:footprint:14244/1" library_version="2">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 4.5 mm with drill center</description>
<wire x1="4.445" y1="0" x2="2.159" y2="0" width="0.0508" layer="21"/>
<wire x1="0" y1="4.445" x2="0" y2="2.159" width="0.0508" layer="21"/>
<wire x1="-2.159" y1="0" x2="-4.445" y2="0" width="0.0508" layer="21"/>
<wire x1="0" y1="-2.159" x2="0" y2="-4.445" width="0.0508" layer="21"/>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="39"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="40"/>
<circle x="0" y="0" radius="3.8184" width="2.54" layer="41"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="42"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="43"/>
<circle x="0" y="0" radius="2.35" width="0.1524" layer="21"/>
<text x="-1.27" y="-4.445" size="1.27" layer="48">4,5</text>
<hole x="0" y="0" drill="4.5"/>
</package>
<package name="5,0" urn="urn:adsk.eagle:footprint:14245/1" library_version="2">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 5.0 mm with drill center</description>
<wire x1="4.445" y1="0" x2="2.159" y2="0" width="0.0508" layer="21"/>
<wire x1="0" y1="4.445" x2="0" y2="2.159" width="0.0508" layer="21"/>
<wire x1="-2.159" y1="0" x2="-4.445" y2="0" width="0.0508" layer="21"/>
<wire x1="0" y1="-2.159" x2="0" y2="-4.445" width="0.0508" layer="21"/>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="39"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="40"/>
<circle x="0" y="0" radius="4.826" width="2.54" layer="43"/>
<circle x="0" y="0" radius="4.826" width="2.54" layer="42"/>
<circle x="0" y="0" radius="4.826" width="2.54" layer="41"/>
<circle x="0" y="0" radius="2.6" width="0.1524" layer="21"/>
<text x="-1.27" y="-4.445" size="1.27" layer="48">5,0</text>
<hole x="0" y="0" drill="5"/>
</package>
<package name="3,2" urn="urn:adsk.eagle:footprint:14246/1" library_version="2">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 3.2 mm with drill center</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="39"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="43"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="40"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="41"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="42"/>
<circle x="0" y="0" radius="1.7" width="0.2032" layer="21"/>
<hole x="0" y="0" drill="3.2"/>
</package>
<package name="4,3" urn="urn:adsk.eagle:footprint:14247/1" library_version="2">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 4.3 mm with drill center</description>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="39"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="40"/>
<circle x="0" y="0" radius="3.8184" width="2.54" layer="41"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="42"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="43"/>
<circle x="0" y="0" radius="2.25" width="0.1524" layer="21"/>
<hole x="0" y="0" drill="4.3"/>
</package>
<package name="5,5" urn="urn:adsk.eagle:footprint:14248/1" library_version="2">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 5.5 mm with drill center</description>
<wire x1="4.445" y1="0" x2="2.159" y2="0" width="0.0508" layer="21"/>
<wire x1="0" y1="4.445" x2="0" y2="2.159" width="0.0508" layer="21"/>
<wire x1="-2.159" y1="0" x2="-4.445" y2="0" width="0.0508" layer="21"/>
<wire x1="0" y1="-2.159" x2="0" y2="-4.445" width="0.0508" layer="21"/>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="39"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="40"/>
<circle x="0" y="0" radius="4.826" width="2.54" layer="43"/>
<circle x="0" y="0" radius="4.826" width="2.54" layer="42"/>
<circle x="0" y="0" radius="4.826" width="2.54" layer="41"/>
<circle x="0" y="0" radius="2.85" width="0.1524" layer="21"/>
<hole x="0" y="0" drill="5.5"/>
</package>
</packages>
<packages3d>
<package3d name="2,8" urn="urn:adsk.eagle:package:14271/1" type="box" library_version="2">
<description>MOUNTING HOLE 2.8 mm with drill center</description>
<packageinstances>
<packageinstance name="2,8"/>
</packageinstances>
</package3d>
<package3d name="3,0" urn="urn:adsk.eagle:package:14277/1" type="box" library_version="2">
<description>MOUNTING HOLE 3.0 mm with drill center</description>
<packageinstances>
<packageinstance name="3,0"/>
</packageinstances>
</package3d>
<package3d name="3,3" urn="urn:adsk.eagle:package:14278/1" type="box" library_version="2">
<description>MOUNTING HOLE 3.3 mm with drill center</description>
<packageinstances>
<packageinstance name="3,3"/>
</packageinstances>
</package3d>
<package3d name="3,6" urn="urn:adsk.eagle:package:14272/1" type="box" library_version="2">
<description>MOUNTING HOLE 3.6 mm with drill center</description>
<packageinstances>
<packageinstance name="3,6"/>
</packageinstances>
</package3d>
<package3d name="4,1" urn="urn:adsk.eagle:package:14273/1" type="box" library_version="2">
<description>MOUNTING HOLE 4.1 mm with drill center</description>
<packageinstances>
<packageinstance name="4,1"/>
</packageinstances>
</package3d>
<package3d name="4,5" urn="urn:adsk.eagle:package:14274/1" type="box" library_version="2">
<description>MOUNTING HOLE 4.5 mm with drill center</description>
<packageinstances>
<packageinstance name="4,5"/>
</packageinstances>
</package3d>
<package3d name="5,0" urn="urn:adsk.eagle:package:14276/1" type="box" library_version="2">
<description>MOUNTING HOLE 5.0 mm with drill center</description>
<packageinstances>
<packageinstance name="5,0"/>
</packageinstances>
</package3d>
<package3d name="3,2" urn="urn:adsk.eagle:package:14275/1" type="box" library_version="2">
<description>MOUNTING HOLE 3.2 mm with drill center</description>
<packageinstances>
<packageinstance name="3,2"/>
</packageinstances>
</package3d>
<package3d name="4,3" urn="urn:adsk.eagle:package:14289/1" type="box" library_version="2">
<description>MOUNTING HOLE 4.3 mm with drill center</description>
<packageinstances>
<packageinstance name="4,3"/>
</packageinstances>
</package3d>
<package3d name="5,5" urn="urn:adsk.eagle:package:14279/1" type="box" library_version="2">
<description>MOUNTING HOLE 5.5 mm with drill center</description>
<packageinstances>
<packageinstance name="5,5"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MOUNT-HOLE" urn="urn:adsk.eagle:symbol:14238/1" library_version="2">
<wire x1="0" y1="1.27" x2="1.27" y2="0" width="1.524" layer="94" curve="-90" cap="flat"/>
<wire x1="-1.27" y1="0" x2="0" y2="-1.27" width="1.524" layer="94" curve="90" cap="flat"/>
<wire x1="-0.508" y1="0" x2="0.508" y2="0" width="0.0508" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.0508" layer="94"/>
<circle x="0" y="0" radius="2.032" width="0.0508" layer="94"/>
<circle x="0" y="0" radius="0.508" width="0.0508" layer="94"/>
<text x="2.032" y="0.5842" size="1.778" layer="95">&gt;NAME</text>
<text x="2.032" y="-2.4638" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOUNT-HOLE" urn="urn:adsk.eagle:component:14301/2" prefix="H" library_version="2">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; with drill center marker</description>
<gates>
<gate name="G$1" symbol="MOUNT-HOLE" x="0" y="0"/>
</gates>
<devices>
<device name="2.8" package="2,8">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14271/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="15" constant="no"/>
</technology>
</technologies>
</device>
<device name="3.0" package="3,0">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14277/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
</technology>
</technologies>
</device>
<device name="3.3" package="3,3">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14278/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
</technology>
</technologies>
</device>
<device name="3.6" package="3,6">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14272/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
<device name="4.1" package="4,1">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14273/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="4.5" package="4,5">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14274/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="5.0" package="5,0">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14276/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="3.2" package="3,2">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14275/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="7" constant="no"/>
</technology>
</technologies>
</device>
<device name="4.3" package="4,3">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14289/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="5.5" package="5,5">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14279/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="JI" library="SJ1-3553NG" deviceset="SJ1-3553NG" device=""/>
<part name="JO" library="SJ1-3553NG" deviceset="SJ1-3553NG" device=""/>
<part name="GND_I" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="LSP10" device="" package3d_urn="urn:adsk.eagle:package:26501/1"/>
<part name="R_I" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="LSP10" device="" package3d_urn="urn:adsk.eagle:package:26501/1"/>
<part name="L_I" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="LSP10" device="" package3d_urn="urn:adsk.eagle:package:26501/1"/>
<part name="GND_O" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="LSP10" device="" package3d_urn="urn:adsk.eagle:package:26501/1"/>
<part name="R_O" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="LSP10" device="" package3d_urn="urn:adsk.eagle:package:26501/1"/>
<part name="L_O" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="LSP10" device="" package3d_urn="urn:adsk.eagle:package:26501/1"/>
<part name="H1" library="holes" library_urn="urn:adsk.eagle:library:237" deviceset="MOUNT-HOLE" device="2.8" package3d_urn="urn:adsk.eagle:package:14271/1"/>
<part name="H2" library="holes" library_urn="urn:adsk.eagle:library:237" deviceset="MOUNT-HOLE" device="2.8" package3d_urn="urn:adsk.eagle:package:14271/1"/>
<part name="H3" library="holes" library_urn="urn:adsk.eagle:library:237" deviceset="MOUNT-HOLE" device="2.8" package3d_urn="urn:adsk.eagle:package:14271/1"/>
<part name="H4" library="holes" library_urn="urn:adsk.eagle:library:237" deviceset="MOUNT-HOLE" device="2.8" package3d_urn="urn:adsk.eagle:package:14271/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="JI" gate="G$1" x="45.72" y="66.04" smashed="yes">
<attribute name="NAME" x="38.093" y="74.17546875" size="2.54233125" layer="95"/>
<attribute name="VALUE" x="38.08893125" y="55.6109" size="2.543690625" layer="96"/>
</instance>
<instance part="JO" gate="G$1" x="78.74" y="66.04" smashed="yes">
<attribute name="NAME" x="71.113" y="74.17546875" size="2.54233125" layer="95"/>
<attribute name="VALUE" x="71.10893125" y="55.6109" size="2.543690625" layer="96"/>
</instance>
<instance part="GND_I" gate="1" x="60.96" y="76.2" smashed="yes">
<attribute name="NAME" x="59.69" y="84.201" size="1.778" layer="95"/>
</instance>
<instance part="R_I" gate="1" x="63.5" y="76.2" smashed="yes">
<attribute name="NAME" x="62.23" y="81.661" size="1.778" layer="95"/>
</instance>
<instance part="L_I" gate="1" x="66.04" y="76.2" smashed="yes">
<attribute name="NAME" x="64.77" y="79.121" size="1.778" layer="95"/>
</instance>
<instance part="GND_O" gate="1" x="93.98" y="76.2" smashed="yes">
<attribute name="NAME" x="92.71" y="84.201" size="1.778" layer="95"/>
</instance>
<instance part="R_O" gate="1" x="96.52" y="76.2" smashed="yes">
<attribute name="NAME" x="95.25" y="81.661" size="1.778" layer="95"/>
</instance>
<instance part="L_O" gate="1" x="99.06" y="76.2" smashed="yes">
<attribute name="NAME" x="97.79" y="79.121" size="1.778" layer="95"/>
</instance>
<instance part="H1" gate="G$1" x="33.02" y="88.9" smashed="yes">
<attribute name="NAME" x="35.052" y="89.4842" size="1.778" layer="95"/>
<attribute name="VALUE" x="35.052" y="86.4362" size="1.778" layer="96"/>
</instance>
<instance part="H2" gate="G$1" x="33.02" y="83.82" smashed="yes">
<attribute name="NAME" x="35.052" y="84.4042" size="1.778" layer="95"/>
<attribute name="VALUE" x="35.052" y="81.3562" size="1.778" layer="96"/>
</instance>
<instance part="H3" gate="G$1" x="106.68" y="88.9" smashed="yes">
<attribute name="NAME" x="108.712" y="89.4842" size="1.778" layer="95"/>
<attribute name="VALUE" x="108.712" y="86.4362" size="1.778" layer="96"/>
</instance>
<instance part="H4" gate="G$1" x="106.68" y="83.82" smashed="yes">
<attribute name="NAME" x="108.712" y="84.4042" size="1.778" layer="95"/>
<attribute name="VALUE" x="108.712" y="81.3562" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="JI" gate="G$1" pin="1"/>
<pinref part="GND_I" gate="1" pin="MP"/>
<wire x1="58.42" y1="71.12" x2="60.96" y2="71.12" width="0.1524" layer="91"/>
<wire x1="60.96" y1="71.12" x2="60.96" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="R_I" gate="1" pin="MP"/>
<wire x1="63.5" y1="73.66" x2="63.5" y2="68.58" width="0.1524" layer="91"/>
<pinref part="JI" gate="G$1" pin="3"/>
<wire x1="63.5" y1="68.58" x2="58.42" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="L_I" gate="1" pin="MP"/>
<wire x1="66.04" y1="73.66" x2="66.04" y2="60.96" width="0.1524" layer="91"/>
<pinref part="JI" gate="G$1" pin="2"/>
<wire x1="66.04" y1="60.96" x2="58.42" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="JO" gate="G$1" pin="1"/>
<pinref part="GND_O" gate="1" pin="MP"/>
<wire x1="91.44" y1="71.12" x2="93.98" y2="71.12" width="0.1524" layer="91"/>
<wire x1="93.98" y1="71.12" x2="93.98" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="R_O" gate="1" pin="MP"/>
<wire x1="96.52" y1="73.66" x2="96.52" y2="68.58" width="0.1524" layer="91"/>
<pinref part="JO" gate="G$1" pin="3"/>
<wire x1="96.52" y1="68.58" x2="91.44" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="L_O" gate="1" pin="MP"/>
<wire x1="99.06" y1="73.66" x2="99.06" y2="60.96" width="0.1524" layer="91"/>
<pinref part="JO" gate="G$1" pin="2"/>
<wire x1="99.06" y1="60.96" x2="91.44" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
