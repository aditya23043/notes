
O
*Debug cores have already been implemented
153*	chipscopeZ16-240h px� 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3015.1912default:default2
0.0002default:default2
16112default:default2
57112default:defaultZ17-722h px� 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: b8911d11
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.02 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1611 ; free virtual = 57122default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3015.1912default:default2
0.0002default:default2
16112default:default2
57122default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 11e873da6
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1587 ; free virtual = 56882default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
O
:Phase 1.3 Build Placer Netlist Model | Checksum: fa3a3e22
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1552 ; free virtual = 56552default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
L
7Phase 1.4 Constrain Clocks/Macros | Checksum: fa3a3e22
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1552 ; free virtual = 56562default:defaulth px� 
H
3Phase 1 Placer Initialization | Checksum: fa3a3e22
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1552 ; free virtual = 56562default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px� 
C
.Phase 2.1 Floorplanning | Checksum: 136fc50ab
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1540 ; free virtual = 56442default:defaulth px� 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
2.2.1 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px� 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
0No setup violation found.  %s was not performed.344*physynth2-
DSP Register Optimization2default:defaultZ32-670h px� 
�
0No setup violation found.  %s was not performed.344*physynth2/
Shift Register Optimization2default:defaultZ32-670h px� 
�
0No setup violation found.  %s was not performed.344*physynth2.
BRAM Register Optimization2default:defaultZ32-670h px� 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3015.1912default:default2
0.0002default:default2
15202default:default2
56292default:defaultZ17-722h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�----------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization                  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Very High Fanout              |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register                |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register                 |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  HD Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                         |            0  |              0  |                     0  |           0  |           2  |  00:00:00  |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
S
>Phase 2.2.1 Physical Synthesis In Placer | Checksum: de146951
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:09 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1520 ; free virtual = 56282default:defaulth px� 
J
5Phase 2.2 Global Placement Core | Checksum: 7d5bda0a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:22 ; elapsed = 00:00:09 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1517 ; free virtual = 56262default:defaulth px� 
C
.Phase 2 Global Placement | Checksum: 7d5bda0a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:22 ; elapsed = 00:00:09 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1525 ; free virtual = 56332default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 13ab6cb71
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:23 ; elapsed = 00:00:10 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1523 ; free virtual = 56322default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1bd8a68be
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:25 ; elapsed = 00:00:11 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1518 ; free virtual = 56272default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 151a6029e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:25 ; elapsed = 00:00:11 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1517 ; free virtual = 56262default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 17062986e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:25 ; elapsed = 00:00:11 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1517 ; free virtual = 56262default:defaulth px� 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 19a0609cd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:28 ; elapsed = 00:00:13 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1508 ; free virtual = 56182default:defaulth px� 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 15a7d0636
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:28 ; elapsed = 00:00:14 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1509 ; free virtual = 56192default:defaulth px� 
�

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 1a188ec7c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:28 ; elapsed = 00:00:14 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1509 ; free virtual = 56192default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 1a188ec7c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:28 ; elapsed = 00:00:14 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1509 ; free virtual = 56192default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px� 
V
APost Placement Optimization Initialization | Checksum: 1093a9a14
*commonh px� 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px� 
�
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2C
/design_1_i/xfft_0/U0/i_synth/axi_wrapper/ce_w2c2default:defaultZ46-33h px� 
�
�BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
12default:default2
02default:default2
02default:default2
12default:default2
02default:default2
02default:defaultZ46-56h px� 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 1093a9a14
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:32 ; elapsed = 00:00:15 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1510 ; free virtual = 56212default:defaulth px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
2.6142default:defaultZ30-746h px� 
R
=Phase 4.1.1 Post Placement Optimization | Checksum: d749f46c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:32 ; elapsed = 00:00:15 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1510 ; free virtual = 56212default:defaulth px� 
M
8Phase 4.1 Post Commit Optimization | Checksum: d749f46c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:32 ; elapsed = 00:00:15 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1510 ; free virtual = 56212default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
K
6Phase 4.2 Post Placement Cleanup | Checksum: d749f46c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:32 ; elapsed = 00:00:15 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1510 ; free virtual = 56212default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
E
0Phase 4.3 Placer Reporting | Checksum: d749f46c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:32 ; elapsed = 00:00:16 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1510 ; free virtual = 56212default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3015.1912default:default2
0.0002default:default2
15102default:default2
56212default:defaultZ17-722h px� 
L
7Phase 4.4 Final Placement Cleanup | Checksum: e9b2fc22
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:32 ; elapsed = 00:00:16 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1510 ; free virtual = 56212default:defaulth px� 
[
FPhase 4 Post Placement Optimization and Clean-Up | Checksum: e9b2fc22
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:32 ; elapsed = 00:00:16 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1510 ; free virtual = 56212default:defaulth px� 
=
(Ending Placer Task | Checksum: 9223e665
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:32 ; elapsed = 00:00:16 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1510 ; free virtual = 56212default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
792default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:00:342default:default2
00:00:172default:default2
3015.1912default:default2
0.0002default:default2
15362default:default2
56472default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
3015.1912default:default2
0.0002default:default2
15362default:default2
56472default:defaultZ17-722h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2
00:00:00.542default:default2
3015.1912default:default2
0.0002default:default2
14902default:default2
56302default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2o
[/home/adi/repo/notes/sem3/ELD2024_LAB/lab_10/lab_10.runs/impl_2/design_1_wrapper_placed.dcp2default:defaultZ17-1381h px� 
k
%s4*runtcl2O
;Executing : report_io -file design_1_wrapper_io_placed.rpt
2default:defaulth px� 
�
�report_io: Time (s): cpu = 00:00:00.04 ; elapsed = 00:00:00.05 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1512 ; free virtual = 5635
*commonh px� 
�
%s4*runtcl2�
xExecuting : report_utilization -file design_1_wrapper_utilization_placed.rpt -pb design_1_wrapper_utilization_placed.pb
2default:defaulth px� 
�
%s4*runtcl2l
XExecuting : report_control_sets -verbose -file design_1_wrapper_control_sets_placed.rpt
2default:defaulth px� 
�
�report_control_sets: Time (s): cpu = 00:00:00.31 ; elapsed = 00:00:00.31 . Memory (MB): peak = 3015.191 ; gain = 0.000 ; free physical = 1522 ; free virtual = 5645
*commonh px� 


End Record