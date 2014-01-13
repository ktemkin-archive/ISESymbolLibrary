<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <blockdef name="UpCounter_2">
            <timestamp>2013-2-4T7:22:48</timestamp>
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <rect style="linewidth:W" width="256" x="64" y="-160" height="100" />
            <line x2="144" y1="-60" y2="-160" x1="144" />
            <line x2="224" y1="-60" y2="0" x1="224" />
            <rect width="28" x="208" y="-60" height="60" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="0" y1="-144" y2="-144" x1="64" />
            <line x2="224" y1="-224" y2="-160" x1="224" />
            <rect width="32" x="208" y="-224" height="64" />
        </blockdef>
        <blockdef name="UpCounter_7">
            <timestamp>2013-2-4T7:22:48</timestamp>
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <rect style="linewidth:W" width="256" x="64" y="-160" height="100" />
            <line x2="144" y1="-60" y2="-160" x1="144" />
            <line x2="224" y1="-60" y2="0" x1="224" />
            <rect width="28" x="208" y="-60" height="60" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="0" y1="-144" y2="-144" x1="64" />
            <line x2="224" y1="-224" y2="-160" x1="224" />
            <rect width="32" x="208" y="-224" height="64" />
        </blockdef>
        <blockdef name="RegParallelLoad_22">
            <timestamp>2013-2-4T7:22:48</timestamp>
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <rect style="linewidth:W" width="256" x="64" y="-128" height="68" />
            <line x2="144" y1="-60" y2="-124" x1="144" />
            <line x2="224" y1="-60" y2="4" x1="224" />
            <rect width="28" x="208" y="-60" height="60" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="224" y1="-192" y2="-128" x1="224" />
            <rect width="32" x="208" y="-192" height="64" />
        </blockdef>
        <block symbolname="UpCounter_2" name="XLXI_6">
            <blockpin name="clk" />
            <blockpin name="q(1:0)" />
            <blockpin name="clear" />
            <blockpin name="count" />
            <blockpin name="d(1:0)" />
        </block>
        <block symbolname="UpCounter_7" name="XLXI_7">
            <blockpin name="clk" />
            <blockpin name="q(6:0)" />
            <blockpin name="clear" />
            <blockpin name="count" />
            <blockpin name="d(6:0)" />
        </block>
        <block symbolname="RegParallelLoad_22" name="XLXI_8">
            <blockpin name="clk" />
            <blockpin name="q(21:0)" />
            <blockpin name="load" />
            <blockpin name="d(21:0)" />
        </block>
        <block symbolname="RegParallelLoad_22" name="XLXI_9">
            <blockpin name="clk" />
            <blockpin name="q(21:0)" />
            <blockpin name="load" />
            <blockpin name="d(21:0)" />
        </block>
        <block symbolname="RegParallelLoad_22" name="XLXI_10">
            <blockpin name="clk" />
            <blockpin name="q(21:0)" />
            <blockpin name="load" />
            <blockpin name="d(21:0)" />
        </block>
        <block symbolname="RegParallelLoad_22" name="XLXI_11">
            <blockpin name="clk" />
            <blockpin name="q(21:0)" />
            <blockpin name="load" />
            <blockpin name="d(21:0)" />
        </block>
        <block symbolname="RegParallelLoad_22" name="XLXI_12">
            <blockpin name="clk" />
            <blockpin name="q(21:0)" />
            <blockpin name="load" />
            <blockpin name="d(21:0)" />
        </block>
        <block symbolname="RegParallelLoad_22" name="XLXI_13">
            <blockpin name="clk" />
            <blockpin name="q(21:0)" />
            <blockpin name="load" />
            <blockpin name="d(21:0)" />
        </block>
        <block symbolname="RegParallelLoad_22" name="XLXI_14">
            <blockpin name="clk" />
            <blockpin name="q(21:0)" />
            <blockpin name="load" />
            <blockpin name="d(21:0)" />
        </block>
        <block symbolname="RegParallelLoad_22" name="XLXI_15">
            <blockpin name="clk" />
            <blockpin name="q(21:0)" />
            <blockpin name="load" />
            <blockpin name="d(21:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="848" y="288" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1280" y="384" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1264" y="624" name="XLXI_8" orien="R0">
        </instance>
        <instance x="2000" y="832" name="XLXI_9" orien="R0">
        </instance>
        <instance x="1728" y="1296" name="XLXI_10" orien="R0">
        </instance>
        <instance x="1984" y="336" name="XLXI_11" orien="R0">
        </instance>
        <instance x="256" y="336" name="XLXI_12" orien="R0">
        </instance>
        <instance x="192" y="768" name="XLXI_13" orien="R0">
        </instance>
        <instance x="176" y="1088" name="XLXI_14" orien="R0">
        </instance>
        <instance x="288" y="1296" name="XLXI_15" orien="R0">
        </instance>
        <text style="fontsize:300;fontname:Arial" x="544" y="868">CIRCUIT</text>
        <text style="fontsize:210;fontname:Arial" x="1076" y="1068">BEES</text>
        <text style="fontsize:100;fontname:Arial" x="692" y="1300">'WHAT MAKES YOUR </text>
        <text style="fontsize:100;fontname:Arial" x="784" y="1392">COMPUTER WORK!'</text>
    </sheet>
</drawing>