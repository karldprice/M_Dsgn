<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.3">
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
<layer number="51" name="tDocu" color="14" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="yes" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="A4955">
<packages>
<package name="A4955">
<pad name="!EN" x="-6.35" y="8.89" drill="0.8"/>
<pad name="MS1" x="-6.35" y="6.35" drill="0.8"/>
<pad name="MS2" x="-6.35" y="3.81" drill="0.8"/>
<pad name="MS3" x="-6.35" y="1.27" drill="0.8"/>
<pad name="!RST" x="-6.35" y="-1.27" drill="0.8"/>
<pad name="!SLP" x="-6.35" y="-3.81" drill="0.8"/>
<pad name="STEP" x="-6.35" y="-6.35" drill="0.8"/>
<pad name="DIT" x="-6.35" y="-8.89" drill="0.8"/>
<pad name="VMOT" x="6.35" y="8.89" drill="0.8"/>
<pad name="GND" x="6.35" y="6.35" drill="0.8" shape="square"/>
<pad name="2B" x="6.35" y="3.81" drill="0.8"/>
<pad name="2A" x="6.35" y="1.27" drill="0.8"/>
<pad name="1A" x="6.35" y="-1.27" drill="0.8"/>
<pad name="1B" x="6.35" y="-3.81" drill="0.8"/>
<pad name="VDD" x="6.35" y="-6.35" drill="0.8"/>
<pad name="GND_2" x="6.35" y="-8.89" drill="0.8" shape="square"/>
<rectangle x1="-7.62" y1="-10.16" x2="7.62" y2="10.16" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="A4955">
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="-7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-15.24" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<pin name="VMOT" x="-12.7" y="5.08" length="middle"/>
<pin name="GND" x="-12.7" y="2.54" length="middle"/>
<pin name="2B" x="-12.7" y="0" length="middle"/>
<pin name="2A" x="-12.7" y="-2.54" length="middle"/>
<pin name="1A" x="-12.7" y="-5.08" length="middle"/>
<pin name="1B" x="-12.7" y="-7.62" length="middle"/>
<pin name="VDD" x="-12.7" y="-10.16" length="middle"/>
<pin name="GND_2" x="-12.7" y="-12.7" length="middle"/>
<pin name="!EN" x="12.7" y="5.08" length="middle" rot="R180"/>
<pin name="MS1" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="MS2" x="12.7" y="0" length="middle" rot="R180"/>
<pin name="MS3" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="!RST" x="12.7" y="-5.08" length="middle" rot="R180"/>
<pin name="!SLP" x="12.7" y="-7.62" length="middle" rot="R180"/>
<pin name="STEP" x="12.7" y="-10.16" length="middle" rot="R180"/>
<pin name="DIR" x="12.7" y="-12.7" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4955">
<gates>
<gate name="G$1" symbol="A4955" x="-10.16" y="10.16"/>
</gates>
<devices>
<device name="" package="A4955">
<connects>
<connect gate="G$1" pin="!EN" pad="!EN"/>
<connect gate="G$1" pin="!RST" pad="!RST"/>
<connect gate="G$1" pin="!SLP" pad="!SLP"/>
<connect gate="G$1" pin="1A" pad="1A"/>
<connect gate="G$1" pin="1B" pad="1B"/>
<connect gate="G$1" pin="2A" pad="2A"/>
<connect gate="G$1" pin="2B" pad="2B"/>
<connect gate="G$1" pin="DIR" pad="DIT"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND_2" pad="GND_2"/>
<connect gate="G$1" pin="MS1" pad="MS1"/>
<connect gate="G$1" pin="MS2" pad="MS2"/>
<connect gate="G$1" pin="MS3" pad="MS3"/>
<connect gate="G$1" pin="STEP" pad="STEP"/>
<connect gate="G$1" pin="VDD" pad="VDD"/>
<connect gate="G$1" pin="VMOT" pad="VMOT"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SURGICAL">
<packages>
<package name="BOARDUINO">
<pad name="AREF" x="-8.89" y="0" drill="0.8"/>
<pad name="A4" x="-8.89" y="-15.24" drill="0.8"/>
<pad name="A5" x="-8.89" y="-17.78" drill="0.8"/>
<pad name="A3" x="-8.89" y="-12.7" drill="0.8"/>
<pad name="A2" x="-8.89" y="-10.16" drill="0.8"/>
<pad name="A1" x="-8.89" y="-7.62" drill="0.8"/>
<pad name="A0" x="-8.89" y="-5.08" drill="0.8"/>
<pad name="GND" x="-8.89" y="2.54" drill="0.8"/>
<pad name="13" x="-8.89" y="5.08" drill="0.8"/>
<pad name="12" x="-8.89" y="7.62" drill="0.8"/>
<pad name="11" x="-8.89" y="10.16" drill="0.8"/>
<pad name="10" x="-8.89" y="12.7" drill="0.8"/>
<pad name="D9" x="-8.89" y="15.24" drill="0.8"/>
<pad name="D8" x="-8.89" y="17.78" drill="0.8"/>
<pad name="RESET" x="8.89" y="-17.78" drill="0.8"/>
<pad name="VIN" x="8.89" y="-15.24" drill="0.8"/>
<pad name="GND_3" x="8.89" y="-12.7" drill="0.8"/>
<pad name="5V_2" x="8.89" y="-10.16" drill="0.8"/>
<pad name="GND_2" x="8.89" y="-5.08" drill="0.8"/>
<pad name="5V" x="8.89" y="-2.54" drill="0.8"/>
<pad name="RX" x="8.89" y="0" drill="0.8"/>
<pad name="TX" x="8.89" y="2.54" drill="0.8"/>
<pad name="D2" x="8.89" y="5.08" drill="0.8"/>
<pad name="D3" x="8.89" y="7.62" drill="0.8"/>
<pad name="D4" x="8.89" y="10.16" drill="0.8"/>
<pad name="D5" x="8.89" y="12.7" drill="0.8"/>
<pad name="D6" x="8.89" y="15.24" drill="0.8"/>
<pad name="D7" x="8.89" y="17.78" drill="0.8"/>
<wire x1="-10.16" y1="40.64" x2="7.62" y2="40.64" width="0.127" layer="51"/>
<wire x1="7.62" y1="40.64" x2="10.16" y2="38.1" width="0.127" layer="51"/>
<wire x1="10.16" y1="38.1" x2="10.16" y2="-35.56" width="0.127" layer="51"/>
<wire x1="10.16" y1="-35.56" x2="-10.16" y2="-35.56" width="0.127" layer="51"/>
<wire x1="-10.16" y1="-35.56" x2="-10.16" y2="40.64" width="0.127" layer="51"/>
<rectangle x1="-10.16" y1="-35.56" x2="10.16" y2="40.64" layer="51"/>
<wire x1="-10.16" y1="40.64" x2="-10.16" y2="-35.56" width="0.6096" layer="21"/>
<wire x1="-10.16" y1="-35.56" x2="10.16" y2="-35.56" width="0.6096" layer="21"/>
<wire x1="10.16" y1="-35.56" x2="10.16" y2="40.64" width="0.6096" layer="21"/>
<wire x1="10.16" y1="40.64" x2="-10.16" y2="40.64" width="0.6096" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="BOARDUINO">
<wire x1="-10.16" y1="20.32" x2="-10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-20.32" x2="10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="10.16" y2="20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="20.32" x2="-10.16" y2="20.32" width="0.254" layer="94"/>
<pin name="A5" x="-15.24" y="-17.78" length="middle"/>
<pin name="A4" x="-15.24" y="-15.24" length="middle"/>
<pin name="A3" x="-15.24" y="-12.7" length="middle"/>
<pin name="A2" x="-15.24" y="-10.16" length="middle"/>
<pin name="A1" x="-15.24" y="-7.62" length="middle"/>
<pin name="A0" x="-15.24" y="-5.08" length="middle"/>
<pin name="AREF" x="-15.24" y="0" length="middle"/>
<pin name="GND" x="-15.24" y="2.54" length="middle"/>
<pin name="13" x="-15.24" y="5.08" length="middle"/>
<pin name="12" x="-15.24" y="7.62" length="middle"/>
<pin name="11" x="-15.24" y="10.16" length="middle"/>
<pin name="10" x="-15.24" y="12.7" length="middle"/>
<pin name="D9" x="-15.24" y="15.24" length="middle"/>
<pin name="D8" x="-15.24" y="17.78" length="middle"/>
<pin name="RESET" x="15.24" y="-17.78" length="middle" rot="R180"/>
<pin name="VIN" x="15.24" y="-15.24" length="middle" rot="R180"/>
<pin name="GND_3" x="15.24" y="-12.7" length="middle" rot="R180"/>
<pin name="5V_2" x="15.24" y="-10.16" length="middle" rot="R180"/>
<pin name="GND_2" x="15.24" y="-5.08" length="middle" rot="R180"/>
<pin name="5V" x="15.24" y="-2.54" length="middle" rot="R180"/>
<pin name="RX" x="15.24" y="0" length="middle" rot="R180"/>
<pin name="TX" x="15.24" y="2.54" length="middle" rot="R180"/>
<pin name="D2" x="15.24" y="5.08" length="middle" rot="R180"/>
<pin name="D3" x="15.24" y="7.62" length="middle" rot="R180"/>
<pin name="D4" x="15.24" y="10.16" length="middle" rot="R180"/>
<pin name="D5" x="15.24" y="12.7" length="middle" rot="R180"/>
<pin name="D6" x="15.24" y="15.24" length="middle" rot="R180"/>
<pin name="D7" x="15.24" y="17.78" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BOARDUINO">
<gates>
<gate name="G$1" symbol="BOARDUINO" x="-5.08" y="10.16"/>
</gates>
<devices>
<device name="STD" package="BOARDUINO">
<connects>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="5V_2" pad="5V_2"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D3" pad="D3"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D5" pad="D5"/>
<connect gate="G$1" pin="D6" pad="D6"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="D9" pad="D9"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND_2" pad="GND_2"/>
<connect gate="G$1" pin="GND_3" pad="GND_3"/>
<connect gate="G$1" pin="RESET" pad="RESET"/>
<connect gate="G$1" pin="RX" pad="RX"/>
<connect gate="G$1" pin="TX" pad="TX"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94" font="vector">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94" font="vector">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94" font="vector">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94" font="vector">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SURGICALv2">
<packages>
<package name="MC33926">
<pad name="PWN/D2" x="-11.43" y="2.54" drill="0.8"/>
<pad name="IN1" x="-11.43" y="5.08" drill="0.8"/>
<pad name="IN2" x="-11.43" y="7.62" drill="0.8"/>
<pad name="VDD" x="-11.43" y="10.16" drill="0.8"/>
<pad name="GND" x="-11.43" y="12.7" drill="0.8"/>
<pad name="VIN" x="-11.43" y="15.24" drill="0.8"/>
<pad name="PWM/D1" x="-11.43" y="0" drill="0.8"/>
<pad name="SF" x="-11.43" y="-2.54" drill="0.8"/>
<pad name="FB" x="-11.43" y="-5.08" drill="0.8"/>
<pad name="EN" x="-11.43" y="-7.62" drill="0.8"/>
<pad name="SLEW" x="-11.43" y="-10.16" drill="0.8"/>
<pad name="INV" x="-11.43" y="-12.7" drill="0.8"/>
<pad name="JP_INV" x="-8.89" y="-12.7" drill="0.8"/>
<pad name="JP_SLEW" x="-8.89" y="-10.16" drill="0.8"/>
<pad name="JP_EN" x="-8.89" y="-7.62" drill="0.8"/>
<pad name="JP_PWM/D1" x="-8.89" y="0" drill="0.8"/>
<pad name="JP_PWM/D2" x="-8.89" y="2.54" drill="0.8"/>
<pad name="M_GND" x="11.43" y="0" drill="0.8" shape="square"/>
<pad name="M_VIN" x="11.43" y="3.5052" drill="0.8" shape="square"/>
<pad name="M_OUT2" x="11.43" y="-3.5052" drill="0.8" shape="square"/>
<pad name="M_OUT1" x="11.43" y="-7.0104" drill="0.8" shape="square"/>
<rectangle x1="-12.7" y1="-13.97" x2="12.7" y2="16.51" layer="51"/>
</package>
<package name="2_5_RIBBON">
<pad name="5" x="-1.27" y="0" drill="0.8"/>
<pad name="3" x="-1.27" y="2.54" drill="0.8"/>
<pad name="1" x="-1.27" y="5.08" drill="0.8" shape="square"/>
<pad name="7" x="-1.27" y="-2.54" drill="0.8"/>
<pad name="9" x="-1.27" y="-5.08" drill="0.8"/>
<pad name="10" x="1.27" y="-5.08" drill="0.8"/>
<pad name="8" x="1.27" y="-2.54" drill="0.8"/>
<pad name="6" x="1.27" y="0" drill="0.8"/>
<pad name="4" x="1.27" y="2.54" drill="0.8"/>
<pad name="2" x="1.27" y="5.08" drill="0.8"/>
<rectangle x1="-4.445" y1="-10.16" x2="4.445" y2="10.16" layer="51"/>
</package>
<package name="RESISTOR">
<pad name="VOUT" x="0" y="-1.27" drill="0.8" shape="square"/>
<pad name="VIN" x="0" y="1.27" drill="0.8"/>
<rectangle x1="-1.27" y1="-2.54" x2="1.27" y2="2.54" layer="51"/>
</package>
<package name="V_REG">
<pad name="VOUT" x="0" y="-2.54" drill="0.8" shape="square"/>
<pad name="ADJ" x="0" y="0" drill="0.8"/>
<pad name="VIN" x="0" y="2.54" drill="0.8"/>
<rectangle x1="-2.54" y1="-5.08" x2="2.54" y2="5.08" layer="51"/>
</package>
<package name="PROPE_HOLE">
<pad name="P$1" x="0" y="0" drill="0.8"/>
<rectangle x1="-1.27" y1="-1.27" x2="1.27" y2="1.27" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MC33926">
<pin name="VIN" x="-60.96" y="25.4" length="middle"/>
<pin name="GND" x="-60.96" y="22.86" length="middle"/>
<pin name="VDD" x="-60.96" y="20.32" length="middle"/>
<pin name="IN2" x="-60.96" y="17.78" length="middle"/>
<pin name="IN1" x="-60.96" y="15.24" length="middle"/>
<pin name="PWM/D2" x="-60.96" y="12.7" length="middle"/>
<pin name="PWM/D1" x="-60.96" y="10.16" length="middle"/>
<pin name="SF" x="-60.96" y="7.62" length="middle"/>
<pin name="FB" x="-60.96" y="5.08" length="middle"/>
<pin name="EN" x="-60.96" y="2.54" length="middle"/>
<pin name="SLEW" x="-60.96" y="0" length="middle"/>
<pin name="INV" x="-60.96" y="-2.54" length="middle"/>
<pin name="JP_INV" x="-27.94" y="-2.54" length="middle" rot="R180"/>
<pin name="JP_SLEW" x="-27.94" y="0" length="middle" rot="R180"/>
<pin name="JP_EN" x="-27.94" y="2.54" length="middle" rot="R180"/>
<pin name="JP_D1" x="-27.94" y="10.16" length="middle" rot="R180"/>
<pin name="JP_D2" x="-27.94" y="12.7" length="middle" rot="R180"/>
<wire x1="-55.88" y1="30.48" x2="-55.88" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-55.88" y1="-7.62" x2="-33.02" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-33.02" y1="-7.62" x2="-33.02" y2="30.48" width="0.254" layer="94"/>
<wire x1="-33.02" y1="30.48" x2="-55.88" y2="30.48" width="0.254" layer="94"/>
<pin name="M_VIN" x="-27.94" y="27.94" length="middle" rot="R180"/>
<pin name="M_GND" x="-27.94" y="25.4" length="middle" rot="R180"/>
<pin name="M_OUT2" x="-27.94" y="22.86" length="middle" rot="R180"/>
<pin name="M_OUT1" x="-27.94" y="20.32" length="middle" rot="R180"/>
</symbol>
<symbol name="2_5_RIBBON">
<wire x1="-7.62" y1="17.78" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-12.7" x2="7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="7.62" y2="17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="17.78" x2="-7.62" y2="17.78" width="0.254" layer="94"/>
<pin name="1" x="-12.7" y="12.7" length="middle"/>
<pin name="3" x="-12.7" y="7.62" length="middle"/>
<pin name="5" x="-12.7" y="2.54" length="middle"/>
<pin name="7" x="-12.7" y="-2.54" length="middle"/>
<pin name="9" x="-12.7" y="-7.62" length="middle"/>
<pin name="10" x="12.7" y="-7.62" length="middle" rot="R180"/>
<pin name="8" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="6" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="4" x="12.7" y="7.62" length="middle" rot="R180"/>
<pin name="2" x="12.7" y="12.7" length="middle" rot="R180"/>
</symbol>
<symbol name="RESISTOR">
<pin name="VIN" x="-5.08" y="1.27" length="middle"/>
<pin name="VOUT" x="-5.08" y="-1.27" length="middle"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
</symbol>
<symbol name="V_REG">
<pin name="ADJ" x="-7.62" y="0" length="middle"/>
<pin name="VIN" x="-7.62" y="2.54" length="middle"/>
<pin name="VOUT" x="-7.62" y="-2.54" length="middle"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
</symbol>
<symbol name="PROPE_HOLE">
<pin name="P$1" x="-5.08" y="0" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MC33926">
<gates>
<gate name="G$1" symbol="MC33926" x="45.72" y="-10.16"/>
</gates>
<devices>
<device name="" package="MC33926">
<connects>
<connect gate="G$1" pin="EN" pad="EN"/>
<connect gate="G$1" pin="FB" pad="FB"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="IN1" pad="IN1"/>
<connect gate="G$1" pin="IN2" pad="IN2"/>
<connect gate="G$1" pin="INV" pad="INV"/>
<connect gate="G$1" pin="JP_D1" pad="JP_PWM/D1"/>
<connect gate="G$1" pin="JP_D2" pad="JP_PWM/D2"/>
<connect gate="G$1" pin="JP_EN" pad="JP_EN"/>
<connect gate="G$1" pin="JP_INV" pad="JP_INV"/>
<connect gate="G$1" pin="JP_SLEW" pad="JP_SLEW"/>
<connect gate="G$1" pin="M_GND" pad="M_GND"/>
<connect gate="G$1" pin="M_OUT1" pad="M_OUT1"/>
<connect gate="G$1" pin="M_OUT2" pad="M_OUT2"/>
<connect gate="G$1" pin="M_VIN" pad="M_VIN"/>
<connect gate="G$1" pin="PWM/D1" pad="PWM/D1"/>
<connect gate="G$1" pin="PWM/D2" pad="PWN/D2"/>
<connect gate="G$1" pin="SF" pad="SF"/>
<connect gate="G$1" pin="SLEW" pad="SLEW"/>
<connect gate="G$1" pin="VDD" pad="VDD"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="2_5_RIBBON">
<gates>
<gate name="G$1" symbol="2_5_RIBBON" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="2_5_RIBBON">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
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
<deviceset name="RESISTOR">
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESISTOR">
<connects>
<connect gate="G$1" pin="VIN" pad="VIN"/>
<connect gate="G$1" pin="VOUT" pad="VOUT"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="V_REG">
<gates>
<gate name="G$1" symbol="V_REG" x="0" y="0"/>
</gates>
<devices>
<device name="" package="V_REG">
<connects>
<connect gate="G$1" pin="ADJ" pad="ADJ"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
<connect gate="G$1" pin="VOUT" pad="VOUT"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PROPE_HOLE">
<gates>
<gate name="G$1" symbol="PROPE_HOLE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PROPE_HOLE">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
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
<class number="0" name="default" width="0.381" drill="0.762">
<clearance class="0" value="0.381"/>
</class>
<class number="1" name="Power" width="1.016" drill="1.27">
<clearance class="1" value="0.381"/>
</class>
<class number="2" name="Motor" width="0.762" drill="1.27">
<clearance class="2" value="0.381"/>
</class>
</classes>
<parts>
<part name="U$1" library="A4955" deviceset="A4955" device=""/>
<part name="U$2" library="A4955" deviceset="A4955" device=""/>
<part name="U$3" library="A4955" deviceset="A4955" device=""/>
<part name="U$4" library="SURGICAL" deviceset="BOARDUINO" device="STD"/>
<part name="FRAME1" library="frames" deviceset="A4L-LOC" device=""/>
<part name="U$5" library="SURGICALv2" deviceset="MC33926" device=""/>
<part name="U$6" library="SURGICALv2" deviceset="MC33926" device=""/>
<part name="U$7" library="SURGICALv2" deviceset="MC33926" device=""/>
<part name="U$10" library="SURGICALv2" deviceset="2_5_RIBBON" device=""/>
<part name="U$8" library="SURGICALv2" deviceset="2_5_RIBBON" device=""/>
<part name="U$9" library="SURGICALv2" deviceset="2_5_RIBBON" device=""/>
<part name="LED_RES_G" library="SURGICALv2" deviceset="RESISTOR" device=""/>
<part name="LED_RES" library="SURGICALv2" deviceset="RESISTOR" device=""/>
<part name="10V" library="SURGICALv2" deviceset="V_REG" device=""/>
<part name="6V" library="SURGICALv2" deviceset="V_REG" device=""/>
<part name="RES_10-1" library="SURGICALv2" deviceset="RESISTOR" device=""/>
<part name="RES_10-2" library="SURGICALv2" deviceset="RESISTOR" device=""/>
<part name="RES6-1" library="SURGICALv2" deviceset="RESISTOR" device=""/>
<part name="RES_6-2" library="SURGICALv2" deviceset="RESISTOR" device=""/>
<part name="RES_EV-2" library="SURGICALv2" deviceset="RESISTOR" device=""/>
<part name="RES_EV-1" library="SURGICALv2" deviceset="RESISTOR" device=""/>
<part name="EV" library="SURGICALv2" deviceset="V_REG" device=""/>
<part name="POWERPLUG" library="SURGICALv2" deviceset="RESISTOR" device=""/>
<part name="POWER_SWITCH" library="SURGICALv2" deviceset="RESISTOR" device=""/>
<part name="E_STOP" library="SURGICALv2" deviceset="RESISTOR" device=""/>
<part name="LED_R" library="SURGICALv2" deviceset="RESISTOR" device=""/>
<part name="LED_GREEN" library="SURGICALv2" deviceset="RESISTOR" device=""/>
<part name="U$14" library="SURGICALv2" deviceset="PROPE_HOLE" device=""/>
<part name="U$24" library="SURGICALv2" deviceset="PROPE_HOLE" device=""/>
<part name="U$23" library="SURGICALv2" deviceset="PROPE_HOLE" device=""/>
<part name="U$25" library="SURGICALv2" deviceset="PROPE_HOLE" device=""/>
<part name="U$26" library="SURGICALv2" deviceset="PROPE_HOLE" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="13.97" y="86.36"/>
<instance part="U$2" gate="G$1" x="12.7" y="57.15"/>
<instance part="U$3" gate="G$1" x="12.7" y="30.48"/>
<instance part="U$4" gate="G$1" x="88.9" y="30.48"/>
<instance part="FRAME1" gate="G$1" x="-48.26" y="-60.96"/>
<instance part="U$5" gate="G$1" x="195.58" y="71.12"/>
<instance part="U$6" gate="G$1" x="195.58" y="25.4"/>
<instance part="U$7" gate="G$1" x="195.58" y="-20.32"/>
<instance part="U$10" gate="G$1" x="88.9" y="-25.4"/>
<instance part="U$8" gate="G$1" x="88.9" y="96.52" rot="R90"/>
<instance part="U$9" gate="G$1" x="-22.86" y="99.06" rot="R90"/>
<instance part="LED_RES_G" gate="G$1" x="40.64" y="-39.37" rot="R90"/>
<instance part="LED_RES" gate="G$1" x="5.08" y="-39.37" rot="R90"/>
<instance part="10V" gate="G$1" x="74.93" y="-36.83" rot="R90"/>
<instance part="6V" gate="G$1" x="102.87" y="-36.83" rot="R90"/>
<instance part="RES_10-1" gate="G$1" x="76.2" y="-54.61" rot="R270"/>
<instance part="RES_10-2" gate="G$1" x="69.85" y="-54.61" rot="R270"/>
<instance part="RES6-1" gate="G$1" x="104.14" y="-54.61" rot="R270"/>
<instance part="RES_6-2" gate="G$1" x="97.79" y="-54.61" rot="R270"/>
<instance part="RES_EV-2" gate="G$1" x="119.38" y="-54.61" rot="R270"/>
<instance part="RES_EV-1" gate="G$1" x="130.81" y="-54.61" rot="R270"/>
<instance part="EV" gate="G$1" x="125.73" y="-36.83" rot="R90"/>
<instance part="POWERPLUG" gate="G$1" x="-25.4" y="-41.91" rot="R90"/>
<instance part="POWER_SWITCH" gate="G$1" x="-11.43" y="-35.56" rot="R90"/>
<instance part="E_STOP" gate="G$1" x="25.4" y="-35.56" rot="R90"/>
<instance part="LED_R" gate="G$1" x="13.97" y="-46.99"/>
<instance part="LED_GREEN" gate="G$1" x="53.34" y="-45.72"/>
<instance part="U$14" gate="G$1" x="129.54" y="-10.16" rot="R90"/>
<instance part="U$24" gate="G$1" x="129.54" y="81.28" rot="R90"/>
<instance part="U$23" gate="G$1" x="129.54" y="35.56" rot="R90"/>
<instance part="U$25" gate="G$1" x="114.3" y="38.1"/>
<instance part="U$26" gate="G$1" x="114.3" y="35.56"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="!SLP"/>
<wire x1="26.67" y1="78.74" x2="68.58" y2="78.74" width="0.1524" layer="91"/>
<wire x1="68.58" y1="78.74" x2="68.58" y2="49.53" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="D8"/>
<wire x1="68.58" y1="48.26" x2="73.66" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="!SLP"/>
<wire x1="68.58" y1="49.53" x2="68.58" y2="48.26" width="0.1524" layer="91"/>
<wire x1="68.58" y1="48.26" x2="68.58" y2="22.86" width="0.1524" layer="91"/>
<wire x1="68.58" y1="22.86" x2="25.4" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="!SLP"/>
<wire x1="25.4" y1="49.53" x2="68.58" y2="49.53" width="0.1524" layer="91"/>
<junction x="68.58" y="48.26"/>
<junction x="68.58" y="49.53"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="DIR"/>
<wire x1="26.67" y1="73.66" x2="66.04" y2="73.66" width="0.1524" layer="91"/>
<wire x1="66.04" y1="73.66" x2="66.04" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="DIR"/>
<wire x1="66.04" y1="45.72" x2="66.04" y2="44.45" width="0.1524" layer="91"/>
<wire x1="66.04" y1="44.45" x2="66.04" y2="17.78" width="0.1524" layer="91"/>
<wire x1="66.04" y1="17.78" x2="25.4" y2="17.78" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="D9"/>
<wire x1="73.66" y1="45.72" x2="66.04" y2="45.72" width="0.1524" layer="91"/>
<junction x="66.04" y="45.72"/>
<pinref part="U$2" gate="G$1" pin="DIR"/>
<wire x1="25.4" y1="44.45" x2="66.04" y2="44.45" width="0.1524" layer="91"/>
<junction x="66.04" y="44.45"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="STEP"/>
<wire x1="26.67" y1="76.2" x2="63.5" y2="76.2" width="0.1524" layer="91"/>
<wire x1="63.5" y1="76.2" x2="63.5" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="10"/>
<wire x1="63.5" y1="43.18" x2="73.66" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="STEP"/>
<wire x1="25.4" y1="46.99" x2="60.96" y2="46.99" width="0.1524" layer="91"/>
<wire x1="60.96" y1="46.99" x2="60.96" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="11"/>
<wire x1="60.96" y1="40.64" x2="73.66" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LOGIC_HIGH_RAIL" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="!RST"/>
<wire x1="25.4" y1="52.07" x2="46.99" y2="52.07" width="0.1524" layer="91"/>
<wire x1="46.99" y1="52.07" x2="46.99" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="VDD"/>
<wire x1="0" y1="46.99" x2="-2.54" y2="46.99" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="46.99" x2="-2.54" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="40.64" x2="46.99" y2="40.64" width="0.1524" layer="91"/>
<wire x1="46.99" y1="40.64" x2="46.99" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="5V_2"/>
<wire x1="46.99" y1="25.4" x2="46.99" y2="12.7" width="0.1524" layer="91"/>
<wire x1="46.99" y1="12.7" x2="46.99" y2="2.54" width="0.1524" layer="91"/>
<wire x1="104.14" y1="20.32" x2="111.76" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="!RST"/>
<wire x1="111.76" y1="45.72" x2="111.76" y2="68.58" width="0.1524" layer="91"/>
<wire x1="111.76" y1="68.58" x2="111.76" y2="80.01" width="0.1524" layer="91"/>
<wire x1="111.76" y1="80.01" x2="111.76" y2="81.28" width="0.1524" layer="91"/>
<wire x1="111.76" y1="81.28" x2="76.2" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VDD"/>
<wire x1="76.2" y1="81.28" x2="26.67" y2="81.28" width="0.1524" layer="91"/>
<wire x1="1.27" y1="76.2" x2="-6.35" y2="76.2" width="0.1524" layer="91"/>
<wire x1="-6.35" y1="76.2" x2="-6.35" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-6.35" y1="68.58" x2="111.76" y2="68.58" width="0.1524" layer="91"/>
<junction x="111.76" y="68.58"/>
<wire x1="46.99" y1="2.54" x2="111.76" y2="2.54" width="0.1524" layer="91"/>
<wire x1="111.76" y1="2.54" x2="111.76" y2="20.32" width="0.1524" layer="91"/>
<junction x="111.76" y="20.32"/>
<junction x="46.99" y="40.64"/>
<pinref part="U$3" gate="G$1" pin="!RST"/>
<wire x1="25.4" y1="25.4" x2="46.99" y2="25.4" width="0.1524" layer="91"/>
<junction x="46.99" y="25.4"/>
<pinref part="U$3" gate="G$1" pin="VDD"/>
<wire x1="0" y1="20.32" x2="-5.08" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="20.32" x2="-5.08" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="12.7" x2="46.99" y2="12.7" width="0.1524" layer="91"/>
<junction x="46.99" y="12.7"/>
<pinref part="U$8" gate="G$1" pin="1"/>
<wire x1="76.2" y1="81.28" x2="76.2" y2="83.82" width="0.1524" layer="91"/>
<junction x="76.2" y="81.28"/>
<pinref part="U$7" gate="G$1" pin="VDD"/>
<wire x1="134.62" y1="0" x2="130.81" y2="0" width="0.1524" layer="91"/>
<wire x1="130.81" y1="0" x2="114.3" y2="0" width="0.1524" layer="91"/>
<wire x1="114.3" y1="0" x2="111.76" y2="2.54" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="VDD"/>
<wire x1="134.62" y1="45.72" x2="129.54" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="VDD"/>
<wire x1="129.54" y1="45.72" x2="116.84" y2="45.72" width="0.1524" layer="91"/>
<wire x1="116.84" y1="45.72" x2="111.76" y2="45.72" width="0.1524" layer="91"/>
<wire x1="134.62" y1="91.44" x2="123.19" y2="91.44" width="0.1524" layer="91"/>
<wire x1="123.19" y1="91.44" x2="123.19" y2="86.36" width="0.1524" layer="91"/>
<wire x1="123.19" y1="86.36" x2="123.19" y2="80.01" width="0.1524" layer="91"/>
<wire x1="123.19" y1="80.01" x2="111.76" y2="80.01" width="0.1524" layer="91"/>
<junction x="111.76" y="80.01"/>
<junction x="111.76" y="2.54"/>
<pinref part="U$5" gate="G$1" pin="IN1"/>
<wire x1="134.62" y1="86.36" x2="123.19" y2="86.36" width="0.1524" layer="91"/>
<wire x1="129.54" y1="45.72" x2="129.54" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="IN1"/>
<wire x1="129.54" y1="40.64" x2="134.62" y2="40.64" width="0.1524" layer="91"/>
<wire x1="130.81" y1="0" x2="130.81" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="IN1"/>
<wire x1="130.81" y1="-5.08" x2="134.62" y2="-5.08" width="0.1524" layer="91"/>
<junction x="130.81" y="0"/>
<junction x="129.54" y="45.72"/>
<junction x="123.19" y="86.36"/>
<wire x1="111.76" y1="20.32" x2="116.84" y2="20.32" width="0.1524" layer="91"/>
<wire x1="116.84" y1="20.32" x2="116.84" y2="45.72" width="0.1524" layer="91"/>
<junction x="116.84" y="45.72"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="STEP"/>
<wire x1="25.4" y1="20.32" x2="63.5" y2="20.32" width="0.1524" layer="91"/>
<wire x1="63.5" y1="20.32" x2="63.5" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="12"/>
<wire x1="63.5" y1="38.1" x2="73.66" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="JP_D2"/>
<pinref part="U$5" gate="G$1" pin="PWM/D2"/>
<wire x1="167.64" y1="83.82" x2="134.62" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="PWM/D1"/>
<pinref part="U$5" gate="G$1" pin="JP_D1"/>
<wire x1="134.62" y1="81.28" x2="167.64" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="JP_SLEW"/>
<pinref part="U$5" gate="G$1" pin="SLEW"/>
<wire x1="167.64" y1="71.12" x2="134.62" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="JP_D2"/>
<pinref part="U$6" gate="G$1" pin="PWM/D2"/>
<wire x1="167.64" y1="38.1" x2="134.62" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="PWM/D1"/>
<pinref part="U$6" gate="G$1" pin="JP_D1"/>
<wire x1="134.62" y1="35.56" x2="167.64" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="JP_SLEW"/>
<pinref part="U$6" gate="G$1" pin="SLEW"/>
<wire x1="167.64" y1="25.4" x2="134.62" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="JP_D2"/>
<pinref part="U$7" gate="G$1" pin="PWM/D2"/>
<wire x1="167.64" y1="-7.62" x2="134.62" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="PWM/D1"/>
<pinref part="U$7" gate="G$1" pin="JP_D1"/>
<wire x1="134.62" y1="-10.16" x2="167.64" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="JP_SLEW"/>
<pinref part="U$7" gate="G$1" pin="SLEW"/>
<wire x1="167.64" y1="-20.32" x2="134.62" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="INV"/>
<wire x1="134.62" y1="68.58" x2="124.46" y2="68.58" width="0.1524" layer="91"/>
<wire x1="124.46" y1="68.58" x2="124.46" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="INV"/>
<wire x1="124.46" y1="50.8" x2="124.46" y2="22.86" width="0.1524" layer="91"/>
<wire x1="124.46" y1="22.86" x2="124.46" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="134.62" y1="-22.86" x2="124.46" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="INV"/>
<wire x1="134.62" y1="22.86" x2="124.46" y2="22.86" width="0.1524" layer="91"/>
<junction x="124.46" y="22.86"/>
<pinref part="U$4" gate="G$1" pin="D7"/>
<wire x1="104.14" y1="48.26" x2="114.3" y2="48.26" width="0.1524" layer="91"/>
<wire x1="114.3" y1="48.26" x2="114.3" y2="50.8" width="0.1524" layer="91"/>
<wire x1="114.3" y1="50.8" x2="124.46" y2="50.8" width="0.1524" layer="91"/>
<junction x="124.46" y="50.8"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="EN"/>
<wire x1="134.62" y1="73.66" x2="109.22" y2="73.66" width="0.1524" layer="91"/>
<wire x1="109.22" y1="73.66" x2="109.22" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="D6"/>
<wire x1="109.22" y1="45.72" x2="104.14" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="EN"/>
<wire x1="134.62" y1="27.94" x2="121.92" y2="27.94" width="0.1524" layer="91"/>
<wire x1="121.92" y1="27.94" x2="121.92" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="D5"/>
<wire x1="121.92" y1="43.18" x2="104.14" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="EN"/>
<wire x1="134.62" y1="-17.78" x2="119.38" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="119.38" y1="-17.78" x2="119.38" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="D4"/>
<wire x1="119.38" y1="40.64" x2="104.14" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="2">
<segment>
<wire x1="177.8" y1="93.98" x2="177.8" y2="109.22" width="0.1524" layer="91"/>
<wire x1="177.8" y1="109.22" x2="96.52" y2="109.22" width="0.1524" layer="91"/>
<wire x1="177.8" y1="93.98" x2="167.64" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="10"/>
<pinref part="U$5" gate="G$1" pin="M_OUT2"/>
</segment>
</net>
<net name="N$27" class="2">
<segment>
<wire x1="180.34" y1="91.44" x2="180.34" y2="110.49" width="0.1524" layer="91"/>
<wire x1="180.34" y1="110.49" x2="91.44" y2="110.49" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="8"/>
<wire x1="91.44" y1="110.49" x2="91.44" y2="109.22" width="0.1524" layer="91"/>
<wire x1="180.34" y1="91.44" x2="167.64" y2="91.44" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="M_OUT1"/>
</segment>
</net>
<net name="N$28" class="2">
<segment>
<pinref part="U$6" gate="G$1" pin="M_OUT2"/>
<wire x1="167.64" y1="48.26" x2="175.26" y2="48.26" width="0.1524" layer="91"/>
<wire x1="175.26" y1="48.26" x2="175.26" y2="57.15" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="3"/>
<wire x1="175.26" y1="57.15" x2="81.28" y2="57.15" width="0.1524" layer="91"/>
<wire x1="81.28" y1="57.15" x2="81.28" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="2">
<segment>
<pinref part="U$6" gate="G$1" pin="M_OUT1"/>
<wire x1="167.64" y1="45.72" x2="176.53" y2="45.72" width="0.1524" layer="91"/>
<wire x1="176.53" y1="45.72" x2="176.53" y2="58.42" width="0.1524" layer="91"/>
<wire x1="176.53" y1="58.42" x2="86.36" y2="58.42" width="0.1524" layer="91"/>
<wire x1="86.36" y1="58.42" x2="86.36" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="5"/>
</segment>
</net>
<net name="N$30" class="2">
<segment>
<pinref part="U$7" gate="G$1" pin="M_OUT2"/>
<wire x1="167.64" y1="2.54" x2="177.8" y2="2.54" width="0.1524" layer="91"/>
<wire x1="177.8" y1="2.54" x2="177.8" y2="59.69" width="0.1524" layer="91"/>
<wire x1="177.8" y1="59.69" x2="91.44" y2="59.69" width="0.1524" layer="91"/>
<wire x1="91.44" y1="59.69" x2="91.44" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="7"/>
</segment>
</net>
<net name="N$31" class="2">
<segment>
<pinref part="U$7" gate="G$1" pin="M_OUT1"/>
<wire x1="167.64" y1="0" x2="179.07" y2="0" width="0.1524" layer="91"/>
<wire x1="179.07" y1="0" x2="179.07" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="9"/>
<wire x1="179.07" y1="60.96" x2="96.52" y2="60.96" width="0.1524" layer="91"/>
<wire x1="96.52" y1="60.96" x2="96.52" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="6"/>
<wire x1="86.36" y1="109.22" x2="86.36" y2="111.76" width="0.1524" layer="91"/>
<wire x1="86.36" y1="111.76" x2="53.34" y2="111.76" width="0.1524" layer="91"/>
<wire x1="53.34" y1="111.76" x2="53.34" y2="21.59" width="0.1524" layer="91"/>
<wire x1="53.34" y1="21.59" x2="71.12" y2="21.59" width="0.1524" layer="91"/>
<wire x1="71.12" y1="21.59" x2="71.12" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="A2"/>
<wire x1="71.12" y1="20.32" x2="73.66" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="4"/>
<wire x1="81.28" y1="109.22" x2="81.28" y2="110.49" width="0.1524" layer="91"/>
<wire x1="81.28" y1="110.49" x2="55.88" y2="110.49" width="0.1524" layer="91"/>
<wire x1="55.88" y1="110.49" x2="55.88" y2="24.13" width="0.1524" layer="91"/>
<wire x1="55.88" y1="24.13" x2="72.39" y2="24.13" width="0.1524" layer="91"/>
<wire x1="72.39" y1="24.13" x2="72.39" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="A1"/>
<wire x1="72.39" y1="22.86" x2="73.66" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="2"/>
<wire x1="76.2" y1="109.22" x2="62.23" y2="109.22" width="0.1524" layer="91"/>
<wire x1="62.23" y1="109.22" x2="62.23" y2="25.4" width="0.1524" layer="91"/>
<wire x1="62.23" y1="25.4" x2="73.66" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="A0"/>
</segment>
</net>
<net name="N$35" class="2">
<segment>
<pinref part="U$10" gate="G$1" pin="2"/>
<wire x1="101.6" y1="-12.7" x2="101.6" y2="-6.35" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-6.35" x2="-20.32" y2="-6.35" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-6.35" x2="-20.32" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="30.48" x2="0" y2="30.48" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="2B"/>
</segment>
</net>
<net name="N$36" class="2">
<segment>
<pinref part="U$10" gate="G$1" pin="4"/>
<wire x1="101.6" y1="-17.78" x2="104.14" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-17.78" x2="104.14" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-5.08" x2="-19.05" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-19.05" y1="-5.08" x2="-19.05" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-19.05" y1="27.94" x2="0" y2="27.94" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="2A"/>
</segment>
</net>
<net name="N$37" class="2">
<segment>
<pinref part="U$10" gate="G$1" pin="6"/>
<wire x1="101.6" y1="-22.86" x2="106.68" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-22.86" x2="106.68" y2="-3.81" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-3.81" x2="-11.43" y2="-3.81" width="0.1524" layer="91"/>
<wire x1="-11.43" y1="-3.81" x2="-11.43" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-11.43" y1="25.4" x2="0" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="1A"/>
</segment>
</net>
<net name="N$38" class="2">
<segment>
<pinref part="U$10" gate="G$1" pin="8"/>
<wire x1="101.6" y1="-27.94" x2="109.22" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="109.22" y1="-27.94" x2="109.22" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="109.22" y1="-2.54" x2="-6.35" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-6.35" y1="-2.54" x2="-6.35" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-6.35" y1="22.86" x2="0" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="1B"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="10"/>
<wire x1="101.6" y1="-33.02" x2="111.76" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="111.76" y1="-33.02" x2="111.76" y2="-1.27" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="A5"/>
<wire x1="111.76" y1="-1.27" x2="73.66" y2="-1.27" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-1.27" x2="73.66" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="2">
<segment>
<pinref part="U$2" gate="G$1" pin="1B"/>
<wire x1="0" y1="49.53" x2="-6.35" y2="49.53" width="0.1524" layer="91"/>
<wire x1="-6.35" y1="49.53" x2="-6.35" y2="46.99" width="0.1524" layer="91"/>
<wire x1="-6.35" y1="46.99" x2="-21.59" y2="46.99" width="0.1524" layer="91"/>
<wire x1="-21.59" y1="46.99" x2="-21.59" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="1"/>
<wire x1="-21.59" y1="-10.16" x2="76.2" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-10.16" x2="76.2" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="2">
<segment>
<pinref part="U$10" gate="G$1" pin="3"/>
<wire x1="76.2" y1="-17.78" x2="-22.86" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="-17.78" x2="-22.86" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="48.26" x2="-7.62" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="48.26" x2="-7.62" y2="52.07" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="1A"/>
<wire x1="-7.62" y1="52.07" x2="0" y2="52.07" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="2">
<segment>
<pinref part="U$10" gate="G$1" pin="5"/>
<wire x1="76.2" y1="-22.86" x2="-24.13" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-24.13" y1="-22.86" x2="-24.13" y2="54.61" width="0.1524" layer="91"/>
<wire x1="-24.13" y1="54.61" x2="0" y2="54.61" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="2A"/>
</segment>
</net>
<net name="N$43" class="2">
<segment>
<pinref part="U$10" gate="G$1" pin="7"/>
<wire x1="76.2" y1="-27.94" x2="-25.4" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="-27.94" x2="-25.4" y2="57.15" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="57.15" x2="0" y2="57.15" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="2B"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="9"/>
<wire x1="76.2" y1="-33.02" x2="71.12" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-33.02" x2="71.12" y2="15.24" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="A4"/>
<wire x1="71.12" y1="15.24" x2="73.66" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="2">
<segment>
<pinref part="U$1" gate="G$1" pin="2B"/>
<pinref part="U$9" gate="G$1" pin="9"/>
<wire x1="1.27" y1="86.36" x2="-15.24" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="2">
<segment>
<pinref part="U$1" gate="G$1" pin="2A"/>
<pinref part="U$9" gate="G$1" pin="7"/>
<wire x1="1.27" y1="83.82" x2="-20.32" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="83.82" x2="-20.32" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="2">
<segment>
<pinref part="U$1" gate="G$1" pin="1A"/>
<wire x1="1.27" y1="81.28" x2="-25.4" y2="81.28" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="81.28" x2="-25.4" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="5"/>
</segment>
</net>
<net name="N$48" class="2">
<segment>
<pinref part="U$1" gate="G$1" pin="1B"/>
<pinref part="U$9" gate="G$1" pin="3"/>
<wire x1="1.27" y1="78.74" x2="-30.48" y2="78.74" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="78.74" x2="-30.48" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="1"/>
<wire x1="-35.56" y1="86.36" x2="-35.56" y2="3.81" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="3.81" x2="68.58" y2="3.81" width="0.1524" layer="91"/>
<wire x1="68.58" y1="3.81" x2="68.58" y2="17.78" width="0.1524" layer="91"/>
<wire x1="68.58" y1="17.78" x2="73.66" y2="17.78" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="A3"/>
</segment>
</net>
<net name="24V_1" class="1">
<segment>
<wire x1="-19.05" y1="-46.99" x2="-19.05" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="POWERPLUG" gate="G$1" pin="VOUT"/>
<wire x1="-24.13" y1="-46.99" x2="-19.05" y2="-46.99" width="0.1524" layer="91"/>
<pinref part="POWER_SWITCH" gate="G$1" pin="VIN"/>
<wire x1="-19.05" y1="-40.64" x2="-12.7" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="24V_2" class="1">
<segment>
<pinref part="LED_RES" gate="G$1" pin="VIN"/>
<wire x1="3.81" y1="-44.45" x2="3.81" y2="-46.99" width="0.1524" layer="91"/>
<wire x1="3.81" y1="-46.99" x2="-1.27" y2="-46.99" width="0.1524" layer="91"/>
<wire x1="-1.27" y1="-46.99" x2="-1.27" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="POWER_SWITCH" gate="G$1" pin="VOUT"/>
<wire x1="-1.27" y1="-40.64" x2="-1.27" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="-40.64" x2="-1.27" y2="-40.64" width="0.1524" layer="91"/>
<junction x="-1.27" y="-40.64"/>
<wire x1="-1.27" y1="-35.56" x2="15.24" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-35.56" x2="15.24" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="E_STOP" gate="G$1" pin="VIN"/>
<wire x1="15.24" y1="-40.64" x2="24.13" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="24V_5" class="0">
<segment>
<pinref part="LED_RES_G" gate="G$1" pin="VOUT"/>
<wire x1="48.26" y1="-44.45" x2="41.91" y2="-44.45" width="0.1524" layer="91"/>
<pinref part="LED_GREEN" gate="G$1" pin="VIN"/>
</segment>
</net>
<net name="24V_4" class="1">
<segment>
<pinref part="LED_RES_G" gate="G$1" pin="VIN"/>
<wire x1="39.37" y1="-44.45" x2="33.02" y2="-44.45" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-44.45" x2="33.02" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-40.64" x2="33.02" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-35.56" x2="60.96" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-35.56" x2="60.96" y2="-46.99" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-46.99" x2="72.39" y2="-46.99" width="0.1524" layer="91"/>
<wire x1="72.39" y1="-46.99" x2="100.33" y2="-46.99" width="0.1524" layer="91"/>
<junction x="72.39" y="-46.99"/>
<pinref part="EV" gate="G$1" pin="VIN"/>
<wire x1="100.33" y1="-46.99" x2="123.19" y2="-46.99" width="0.1524" layer="91"/>
<wire x1="123.19" y1="-46.99" x2="123.19" y2="-44.45" width="0.1524" layer="91"/>
<junction x="100.33" y="-46.99"/>
<pinref part="10V" gate="G$1" pin="VIN"/>
<wire x1="72.39" y1="-46.99" x2="72.39" y2="-44.45" width="0.1524" layer="91"/>
<pinref part="6V" gate="G$1" pin="VIN"/>
<wire x1="100.33" y1="-46.99" x2="100.33" y2="-44.45" width="0.1524" layer="91"/>
<pinref part="E_STOP" gate="G$1" pin="VOUT"/>
<wire x1="26.67" y1="-40.64" x2="33.02" y2="-40.64" width="0.1524" layer="91"/>
<junction x="33.02" y="-40.64"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<pinref part="6V" gate="G$1" pin="ADJ"/>
<pinref part="RES6-1" gate="G$1" pin="VOUT"/>
<wire x1="102.87" y1="-44.45" x2="102.87" y2="-49.53" width="0.1524" layer="91"/>
<pinref part="RES_6-2" gate="G$1" pin="VIN"/>
<wire x1="102.87" y1="-49.53" x2="99.06" y2="-49.53" width="0.1524" layer="91"/>
<junction x="102.87" y="-49.53"/>
</segment>
</net>
<net name="6V_RAIL" class="1">
<segment>
<pinref part="6V" gate="G$1" pin="VOUT"/>
<pinref part="RES6-1" gate="G$1" pin="VIN"/>
<wire x1="105.41" y1="-44.45" x2="105.41" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="105.41" y1="-45.72" x2="105.41" y2="-49.53" width="0.1524" layer="91"/>
<wire x1="105.41" y1="-45.72" x2="116.84" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-45.72" x2="116.84" y2="-29.21" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-29.21" x2="198.12" y2="-29.21" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-29.21" x2="198.12" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="M_VIN"/>
<wire x1="198.12" y1="53.34" x2="167.64" y2="53.34" width="0.1524" layer="91"/>
<wire x1="198.12" y1="53.34" x2="198.12" y2="99.06" width="0.1524" layer="91"/>
<junction x="198.12" y="53.34"/>
<wire x1="198.12" y1="99.06" x2="167.64" y2="99.06" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="M_VIN"/>
<junction x="105.41" y="-45.72"/>
</segment>
</net>
<net name="10V_RAIL" class="1">
<segment>
<pinref part="10V" gate="G$1" pin="VOUT"/>
<wire x1="77.47" y1="-44.45" x2="77.47" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="77.47" y1="-45.72" x2="63.5" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-45.72" x2="63.5" y2="-36.83" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-36.83" x2="63.5" y2="-31.75" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-31.75" x2="-29.21" y2="-31.75" width="0.1524" layer="91"/>
<wire x1="-29.21" y1="-31.75" x2="-30.48" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="-30.48" x2="-30.48" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="35.56" x2="-30.48" y2="62.23" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="62.23" x2="-30.48" y2="69.85" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VMOT"/>
<wire x1="-30.48" y1="69.85" x2="-25.4" y2="69.85" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="69.85" x2="1.27" y2="91.44" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="VMOT"/>
<wire x1="0" y1="62.23" x2="-30.48" y2="62.23" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="VMOT"/>
<wire x1="0" y1="35.56" x2="-30.48" y2="35.56" width="0.1524" layer="91"/>
<wire x1="109.22" y1="0" x2="64.77" y2="0" width="0.1524" layer="91"/>
<wire x1="64.77" y1="0" x2="64.77" y2="-36.83" width="0.1524" layer="91"/>
<wire x1="64.77" y1="-36.83" x2="63.5" y2="-36.83" width="0.1524" layer="91"/>
<junction x="63.5" y="-36.83"/>
<pinref part="U$4" gate="G$1" pin="VIN"/>
<wire x1="109.22" y1="0" x2="109.22" y2="11.43" width="0.1524" layer="91"/>
<wire x1="109.22" y1="11.43" x2="109.22" y2="15.24" width="0.1524" layer="91"/>
<wire x1="109.22" y1="15.24" x2="104.14" y2="15.24" width="0.1524" layer="91"/>
<wire x1="109.22" y1="11.43" x2="173.99" y2="11.43" width="0.1524" layer="91"/>
<wire x1="173.99" y1="11.43" x2="173.99" y2="7.62" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="M_VIN"/>
<wire x1="173.99" y1="7.62" x2="167.64" y2="7.62" width="0.1524" layer="91"/>
<junction x="-30.48" y="62.23"/>
<pinref part="RES_10-1" gate="G$1" pin="VIN"/>
<wire x1="77.47" y1="-45.72" x2="77.47" y2="-49.53" width="0.1524" layer="91"/>
<junction x="77.47" y="-45.72"/>
<junction x="109.22" y="11.43"/>
<junction x="-30.48" y="35.56"/>
</segment>
</net>
<net name="N$64" class="0">
<segment>
<pinref part="EV" gate="G$1" pin="VOUT"/>
<wire x1="128.27" y1="-44.45" x2="132.08" y2="-44.45" width="0.1524" layer="91"/>
<pinref part="RES_EV-1" gate="G$1" pin="VIN"/>
<wire x1="132.08" y1="-44.45" x2="132.08" y2="-49.53" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$65" class="0">
<segment>
<pinref part="EV" gate="G$1" pin="ADJ"/>
<wire x1="125.73" y1="-44.45" x2="125.73" y2="-46.99" width="0.1524" layer="91"/>
<wire x1="125.73" y1="-46.99" x2="129.54" y2="-46.99" width="0.1524" layer="91"/>
<pinref part="RES_EV-1" gate="G$1" pin="VOUT"/>
<wire x1="129.54" y1="-46.99" x2="129.54" y2="-49.53" width="0.1524" layer="91"/>
<wire x1="125.73" y1="-46.99" x2="125.73" y2="-49.53" width="0.1524" layer="91"/>
<pinref part="RES_EV-2" gate="G$1" pin="VIN"/>
<wire x1="125.73" y1="-49.53" x2="120.65" y2="-49.53" width="0.1524" layer="91"/>
<junction x="125.73" y="-46.99"/>
</segment>
</net>
<net name="24V_3" class="0">
<segment>
<pinref part="LED_RES" gate="G$1" pin="VOUT"/>
<wire x1="6.35" y1="-44.45" x2="6.35" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="LED_R" gate="G$1" pin="VIN"/>
<wire x1="6.35" y1="-45.72" x2="8.89" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="10V" gate="G$1" pin="ADJ"/>
<pinref part="RES_10-1" gate="G$1" pin="VOUT"/>
<wire x1="74.93" y1="-44.45" x2="74.93" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="RES_10-2" gate="G$1" pin="VIN"/>
<wire x1="74.93" y1="-48.26" x2="74.93" y2="-49.53" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-49.53" x2="71.12" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-48.26" x2="74.93" y2="-48.26" width="0.1524" layer="91"/>
<junction x="74.93" y="-48.26"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="D3"/>
<wire x1="104.14" y1="38.1" x2="109.22" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U$25" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="D2"/>
<wire x1="109.22" y1="35.56" x2="104.14" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U$26" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$14" gate="G$1" pin="P$1"/>
<pinref part="U$7" gate="G$1" pin="FB"/>
<wire x1="129.54" y1="-15.24" x2="134.62" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U$23" gate="G$1" pin="P$1"/>
<pinref part="U$6" gate="G$1" pin="FB"/>
<wire x1="129.54" y1="30.48" x2="134.62" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$24" gate="G$1" pin="P$1"/>
<pinref part="U$5" gate="G$1" pin="FB"/>
<wire x1="129.54" y1="76.2" x2="134.62" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="1">
<segment>
<wire x1="-26.67" y1="-46.99" x2="-39.37" y2="-46.99" width="0.1524" layer="91"/>
<pinref part="POWERPLUG" gate="G$1" pin="VIN"/>
<pinref part="U$1" gate="G$1" pin="GND_2"/>
<wire x1="1.27" y1="73.66" x2="-8.89" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="73.66" x2="-8.89" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="-8.89" y1="73.66" x2="-8.89" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-8.89" y1="88.9" x2="1.27" y2="88.9" width="0.1524" layer="91"/>
<junction x="-8.89" y="73.66"/>
<wire x1="-15.24" y1="73.66" x2="-39.37" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-39.37" y1="73.66" x2="-41.91" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-41.91" y1="73.66" x2="-41.91" y2="111.76" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="2"/>
<wire x1="-41.91" y1="111.76" x2="-35.56" y2="111.76" width="0.1524" layer="91"/>
<junction x="-15.24" y="73.66"/>
<pinref part="U$3" gate="G$1" pin="GND_2"/>
<wire x1="0" y1="17.78" x2="-8.89" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="17.78" x2="-8.89" y2="17.78" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="-8.89" y1="17.78" x2="-8.89" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-8.89" y1="33.02" x2="0" y2="33.02" width="0.1524" layer="91"/>
<junction x="-8.89" y="17.78"/>
<wire x1="-15.24" y1="73.66" x2="-15.24" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="GND_2"/>
<wire x1="-15.24" y1="53.34" x2="-15.24" y2="17.78" width="0.1524" layer="91"/>
<wire x1="0" y1="44.45" x2="-8.89" y2="44.45" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="-8.89" y1="44.45" x2="-8.89" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-8.89" y1="53.34" x2="-8.89" y2="59.69" width="0.1524" layer="91"/>
<wire x1="-8.89" y1="59.69" x2="0" y2="59.69" width="0.1524" layer="91"/>
<wire x1="-8.89" y1="53.34" x2="-15.24" y2="53.34" width="0.1524" layer="91"/>
<junction x="-8.89" y="53.34"/>
<junction x="-15.24" y="53.34"/>
<wire x1="-39.37" y1="-46.99" x2="-39.37" y2="73.66" width="0.1524" layer="91"/>
<junction x="-39.37" y="73.66"/>
<wire x1="-8.89" y1="17.78" x2="-8.89" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-8.89" y1="7.62" x2="115.57" y2="7.62" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="GND_3"/>
<wire x1="115.57" y1="17.78" x2="104.14" y2="17.78" width="0.1524" layer="91"/>
<wire x1="115.57" y1="7.62" x2="115.57" y2="17.78" width="0.1524" layer="91"/>
<wire x1="115.57" y1="17.78" x2="127" y2="17.78" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="GND"/>
<wire x1="134.62" y1="2.54" x2="127" y2="2.54" width="0.1524" layer="91"/>
<wire x1="127" y1="2.54" x2="127" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="IN2"/>
<wire x1="127" y1="-2.54" x2="134.62" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="127" y1="2.54" x2="127" y2="17.78" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="GND"/>
<wire x1="134.62" y1="48.26" x2="127" y2="48.26" width="0.1524" layer="91"/>
<wire x1="127" y1="48.26" x2="127" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="IN2"/>
<wire x1="134.62" y1="43.18" x2="127" y2="43.18" width="0.1524" layer="91"/>
<junction x="127" y="43.18"/>
<wire x1="127" y1="17.78" x2="127" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="GND"/>
<wire x1="134.62" y1="93.98" x2="127" y2="93.98" width="0.1524" layer="91"/>
<wire x1="127" y1="93.98" x2="127" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="IN2"/>
<wire x1="127" y1="88.9" x2="134.62" y2="88.9" width="0.1524" layer="91"/>
<wire x1="127" y1="48.26" x2="127" y2="88.9" width="0.1524" layer="91"/>
<junction x="127" y="48.26"/>
<junction x="127" y="88.9"/>
<wire x1="127" y1="93.98" x2="127" y2="107.95" width="0.1524" layer="91"/>
<wire x1="127" y1="107.95" x2="173.99" y2="107.95" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="M_GND"/>
<wire x1="185.42" y1="96.52" x2="173.99" y2="96.52" width="0.1524" layer="91"/>
<wire x1="173.99" y1="96.52" x2="167.64" y2="96.52" width="0.1524" layer="91"/>
<wire x1="173.99" y1="107.95" x2="173.99" y2="96.52" width="0.1524" layer="91"/>
<wire x1="185.42" y1="96.52" x2="185.42" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="M_GND"/>
<wire x1="167.64" y1="50.8" x2="185.42" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="M_GND"/>
<wire x1="167.64" y1="5.08" x2="185.42" y2="5.08" width="0.1524" layer="91"/>
<wire x1="185.42" y1="5.08" x2="185.42" y2="50.8" width="0.1524" layer="91"/>
<junction x="127" y="93.98"/>
<junction x="173.99" y="96.52"/>
<junction x="185.42" y="50.8"/>
<wire x1="127" y1="-2.54" x2="127" y2="-26.67" width="0.1524" layer="91"/>
<wire x1="127" y1="-26.67" x2="137.16" y2="-26.67" width="0.1524" layer="91"/>
<wire x1="137.16" y1="-26.67" x2="137.16" y2="-59.69" width="0.1524" layer="91"/>
<junction x="127" y="-2.54"/>
<junction x="127" y="2.54"/>
<wire x1="137.16" y1="-59.69" x2="114.3" y2="-59.69" width="0.1524" layer="91"/>
<wire x1="114.3" y1="-59.69" x2="91.44" y2="-59.69" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-59.69" x2="62.23" y2="-59.69" width="0.1524" layer="91"/>
<wire x1="62.23" y1="-59.69" x2="43.18" y2="-59.69" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-46.99" x2="48.26" y2="-46.99" width="0.1524" layer="91"/>
<pinref part="LED_GREEN" gate="G$1" pin="VOUT"/>
<wire x1="43.18" y1="-59.69" x2="43.18" y2="-46.99" width="0.1524" layer="91"/>
<pinref part="RES_10-2" gate="G$1" pin="VOUT"/>
<wire x1="68.58" y1="-49.53" x2="62.23" y2="-49.53" width="0.1524" layer="91"/>
<wire x1="62.23" y1="-49.53" x2="62.23" y2="-59.69" width="0.1524" layer="91"/>
<pinref part="RES_6-2" gate="G$1" pin="VOUT"/>
<wire x1="96.52" y1="-49.53" x2="91.44" y2="-49.53" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-49.53" x2="91.44" y2="-59.69" width="0.1524" layer="91"/>
<pinref part="RES_EV-2" gate="G$1" pin="VOUT"/>
<wire x1="114.3" y1="-49.53" x2="118.11" y2="-49.53" width="0.1524" layer="91"/>
<wire x1="114.3" y1="-49.53" x2="114.3" y2="-59.69" width="0.1524" layer="91"/>
<junction x="62.23" y="-59.69"/>
<junction x="91.44" y="-59.69"/>
<junction x="114.3" y="-59.69"/>
<junction x="127" y="17.78"/>
<junction x="115.57" y="17.78"/>
<pinref part="LED_R" gate="G$1" pin="VOUT"/>
<wire x1="8.89" y1="-48.26" x2="6.35" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="6.35" y1="-48.26" x2="6.35" y2="-59.69" width="0.1524" layer="91"/>
<wire x1="6.35" y1="-59.69" x2="43.18" y2="-59.69" width="0.1524" layer="91"/>
<junction x="43.18" y="-59.69"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
