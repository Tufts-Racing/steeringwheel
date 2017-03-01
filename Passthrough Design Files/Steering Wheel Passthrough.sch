<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
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
<library name="AMPSEAL 14">
<packages>
<package name="AMPSEAL_14_T">
<pad name="3" x="0" y="4" drill="1.75" shape="octagon"/>
<pad name="12" x="0" y="-4" drill="1.75" shape="octagon"/>
<pad name="7" x="-2" y="0" drill="1.75" shape="octagon"/>
<pad name="8" x="2" y="0" drill="1.75" shape="octagon"/>
<pad name="2" x="-4" y="4" drill="1.75" shape="octagon"/>
<pad name="4" x="4" y="4" drill="1.75" shape="octagon"/>
<pad name="9" x="6" y="0" drill="1.75" shape="octagon"/>
<pad name="6" x="-6" y="0" drill="1.75" shape="octagon"/>
<pad name="11" x="-4" y="-4" drill="1.75" shape="octagon"/>
<pad name="13" x="4" y="-4" drill="1.75" shape="octagon"/>
<pad name="10" x="-8" y="-4" drill="1.75" shape="octagon"/>
<pad name="14" x="8" y="-4" drill="1.75" shape="octagon"/>
<pad name="5" x="8" y="4" drill="1.75" shape="octagon"/>
<pad name="1" x="-8" y="4" drill="1.75" shape="octagon"/>
<hole x="-17.7" y="10.8" drill="2"/>
<hole x="17.7" y="10.8" drill="2"/>
<hole x="19.2" y="-7" drill="2"/>
<hole x="-19.2" y="-7.3" drill="2"/>
<wire x1="-17.8" y1="16.05" x2="17.8" y2="16.05" width="0.127" layer="21"/>
<wire x1="17.8" y1="16.05" x2="24.4" y2="9.45" width="0.127" layer="21" curve="-90"/>
<wire x1="24.4" y1="9.45" x2="24.4" y2="-9.45" width="0.127" layer="21"/>
<wire x1="-17.8" y1="16.05" x2="-24.4" y2="9.45" width="0.127" layer="21" curve="90"/>
<wire x1="-24.4" y1="9.45" x2="-24.4" y2="-9.45" width="0.127" layer="21"/>
<wire x1="-24.4" y1="-9.45" x2="-17.8" y2="-16.05" width="0.127" layer="21" curve="90"/>
<wire x1="24.4" y1="-9.45" x2="17.8" y2="-16.05" width="0.127" layer="21" curve="-90"/>
<wire x1="17.8" y1="-16.05" x2="-17.8" y2="-16.05" width="0.127" layer="21"/>
<wire x1="2" y1="12" x2="11.3" y2="12" width="0.127" layer="21"/>
<wire x1="11.3" y1="12" x2="15" y2="8.3" width="0.127" layer="21" curve="-90"/>
<wire x1="15" y1="8.3" x2="15" y2="-8.3" width="0.127" layer="21"/>
<wire x1="15" y1="-8.3" x2="11.3" y2="-12" width="0.127" layer="21" curve="-90"/>
<wire x1="11.3" y1="-12" x2="-11.3" y2="-12" width="0.127" layer="21"/>
<wire x1="-11.3" y1="-12" x2="-15" y2="-8.3" width="0.127" layer="21" curve="-90"/>
<wire x1="-15" y1="-8.3" x2="-15" y2="8.3" width="0.127" layer="21"/>
<wire x1="-15" y1="8.3" x2="-11.3" y2="12" width="0.127" layer="21" curve="-90"/>
<wire x1="-11.3" y1="12" x2="-3" y2="12" width="0.127" layer="21"/>
<wire x1="-3" y1="12" x2="-2" y2="12" width="0.127" layer="21"/>
<wire x1="-2" y1="12" x2="1" y2="12" width="0.127" layer="21"/>
<wire x1="1" y1="12" x2="2" y2="12" width="0.127" layer="21"/>
<wire x1="-14" y1="8.3" x2="-14" y2="-8.3" width="0.127" layer="21"/>
<wire x1="-14" y1="-8.3" x2="-11.3" y2="-11" width="0.127" layer="21" curve="90"/>
<wire x1="-11.3" y1="-11" x2="11.3" y2="-11" width="0.127" layer="21"/>
<wire x1="11.3" y1="-11" x2="14" y2="-8.3" width="0.127" layer="21" curve="90"/>
<wire x1="14" y1="-8.3" x2="14" y2="8.3" width="0.127" layer="21"/>
<wire x1="14" y1="8.3" x2="11.3" y2="11" width="0.127" layer="21" curve="90"/>
<wire x1="11.3" y1="11" x2="-11.3" y2="11" width="0.127" layer="21"/>
<wire x1="-11.3" y1="11" x2="-14" y2="8.3" width="0.127" layer="21" curve="90"/>
<wire x1="-3" y1="12" x2="-3" y2="14" width="0.127" layer="21"/>
<wire x1="-3" y1="14" x2="-2" y2="14" width="0.127" layer="21"/>
<wire x1="-2" y1="14" x2="-2" y2="12" width="0.127" layer="21"/>
<wire x1="1" y1="12" x2="1" y2="14" width="0.127" layer="21"/>
<wire x1="1" y1="14" x2="2" y2="14" width="0.127" layer="21"/>
<wire x1="2" y1="14" x2="2" y2="12" width="0.127" layer="21"/>
<text x="-11" y="4" size="1.27" layer="21" align="center">1</text>
<text x="-9" y="0" size="1.27" layer="21" align="center">6</text>
<text x="-11" y="-4" size="1.27" layer="21" align="center">10</text>
<text x="11" y="4" size="1.27" layer="21" align="center">5</text>
<text x="9" y="0" size="1.27" layer="21" align="center">9</text>
<text x="11" y="-4" size="1.27" layer="21" align="center">14</text>
</package>
</packages>
<symbols>
<symbol name="AMPSEAL_14">
<pin name="1" x="-15.24" y="17.78" length="middle"/>
<pin name="2" x="-15.24" y="12.7" length="middle"/>
<pin name="3" x="-15.24" y="7.62" length="middle"/>
<pin name="4" x="-15.24" y="2.54" length="middle"/>
<pin name="5" x="-15.24" y="-2.54" length="middle"/>
<pin name="6" x="-15.24" y="-7.62" length="middle"/>
<pin name="7" x="-15.24" y="-12.7" length="middle"/>
<pin name="8" x="15.24" y="-12.7" length="middle" rot="R180"/>
<pin name="9" x="15.24" y="-7.62" length="middle" rot="R180"/>
<pin name="10" x="15.24" y="-2.54" length="middle" rot="R180"/>
<pin name="11" x="15.24" y="2.54" length="middle" rot="R180"/>
<pin name="12" x="15.24" y="7.62" length="middle" rot="R180"/>
<pin name="13" x="15.24" y="12.7" length="middle" rot="R180"/>
<pin name="14" x="15.24" y="17.78" length="middle" rot="R180"/>
<wire x1="-10.16" y1="20.32" x2="-10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-15.24" x2="10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="-15.24" x2="10.16" y2="20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="20.32" x2="-10.16" y2="20.32" width="0.254" layer="94"/>
<text x="-10.16" y="20.32" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="AMPSEAL14S">
<gates>
<gate name="G$1" symbol="AMPSEAL_14" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="AMPSEAL_14_T">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA07-2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-8.255" y1="2.54" x2="-6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-8.89" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.905" x2="-8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-1.905" x2="-8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-2.54" x2="-8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="8.89" y1="1.905" x2="8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="8.255" y1="2.54" x2="8.89" y2="1.905" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-2.54" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.54" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-1.905" x2="8.255" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="-2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-7.62" y="1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="-2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="7.62" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="7.62" y="1.27" drill="1.016" shape="octagon"/>
<text x="-8.128" y="-4.191" size="1.27" layer="21" ratio="10">1</text>
<text x="-8.89" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="6.477" y="2.921" size="1.27" layer="21" ratio="10">14</text>
<text x="-2.54" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-1.016" layer="51"/>
<rectangle x1="-7.874" y1="-1.524" x2="-7.366" y2="-1.016" layer="51"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-1.016" layer="51"/>
<rectangle x1="-7.874" y1="1.016" x2="-7.366" y2="1.524" layer="51"/>
<rectangle x1="-5.334" y1="1.016" x2="-4.826" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="4.826" y1="1.016" x2="5.334" y2="1.524" layer="51"/>
<rectangle x1="7.366" y1="1.016" x2="7.874" y2="1.524" layer="51"/>
<rectangle x1="7.366" y1="-1.524" x2="7.874" y2="-1.016" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA07-2">
<wire x1="3.81" y1="-10.16" x2="-3.81" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-1.27" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="10.16" x2="-3.81" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="10.16" x2="3.81" y2="10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-1.27" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<text x="-3.81" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="10.922" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="10" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="12" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="14" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="13" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA07-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA07-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA07-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
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
<part name="U$1" library="AMPSEAL 14" deviceset="AMPSEAL14S" device=""/>
<part name="SV1" library="con-lstb" deviceset="MA07-2" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="76.2" y="45.72"/>
<instance part="SV1" gate="G$1" x="7.62" y="55.88"/>
</instances>
<busses>
</busses>
<nets>
<net name="1" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="1"/>
<wire x1="15.24" y1="48.26" x2="20.32" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="1"/>
<wire x1="60.96" y1="63.5" x2="53.34" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="3"/>
<wire x1="15.24" y1="50.8" x2="20.32" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="3"/>
<wire x1="60.96" y1="53.34" x2="53.34" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="5"/>
<wire x1="15.24" y1="53.34" x2="20.32" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="5"/>
<wire x1="60.96" y1="43.18" x2="53.34" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="7" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="7"/>
<wire x1="15.24" y1="55.88" x2="20.32" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="7"/>
<wire x1="60.96" y1="33.02" x2="53.34" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="9" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="9"/>
<wire x1="15.24" y1="58.42" x2="20.32" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="9"/>
<wire x1="91.44" y1="38.1" x2="99.06" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="11" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="11"/>
<wire x1="15.24" y1="60.96" x2="20.32" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="11"/>
<wire x1="91.44" y1="48.26" x2="99.06" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="13" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="13"/>
<wire x1="15.24" y1="63.5" x2="20.32" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="13"/>
<wire x1="91.44" y1="58.42" x2="99.06" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="2" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="2"/>
<wire x1="0" y1="48.26" x2="-5.08" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="2"/>
<wire x1="60.96" y1="58.42" x2="53.34" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="4" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="4"/>
<wire x1="0" y1="50.8" x2="-5.08" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="4"/>
<wire x1="60.96" y1="48.26" x2="53.34" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="6" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="6"/>
<wire x1="0" y1="53.34" x2="-5.08" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="6"/>
<wire x1="60.96" y1="38.1" x2="53.34" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="8" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="8"/>
<wire x1="0" y1="55.88" x2="-5.08" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="8"/>
<wire x1="99.06" y1="33.02" x2="91.44" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="10" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="10"/>
<wire x1="0" y1="58.42" x2="-5.08" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="10"/>
<wire x1="91.44" y1="43.18" x2="99.06" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="12" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="12"/>
<wire x1="0" y1="60.96" x2="-5.08" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="12"/>
<wire x1="91.44" y1="53.34" x2="99.06" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="14" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="14"/>
<wire x1="0" y1="63.5" x2="-5.08" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="14"/>
<wire x1="91.44" y1="63.5" x2="99.06" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
