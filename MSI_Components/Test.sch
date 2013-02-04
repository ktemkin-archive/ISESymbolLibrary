<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <blockdef name="RegParallelLoad_32">
            <timestamp>2013-2-4T0:39:0</timestamp>
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <rect style="linewidth:W" width="256" x="64" y="-128" height="68" />
            <line x2="144" y1="-60" y2="-124" x1="144" />
            <line x2="224" y1="-60" y2="4" x1="224" />
            <rect width="28" x="208" y="-60" height="60" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="224" y1="-192" y2="-128" x1="224" />
            <rect width="32" x="208" y="-192" height="64" />
        </blockdef>
        <block symbolname="RegParallelLoad_32" name="XLXI_2">
            <blockpin name="clk" />
            <blockpin name="q(31:0)" />
            <blockpin name="load" />
            <blockpin name="d(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="688" y="1376" name="XLXI_2" orien="R0">
        </instance>
    </sheet>
</drawing>