
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
xc7z0102default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-349h px� 
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
00:00:002default:default2
00:00:00.012default:default2
3083.8012default:default2
0.0002default:default2
48982default:default2
67452default:defaultZ17-722h px� 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 17c12a54d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.03 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4898 ; free virtual = 67452default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3083.8012default:default2
0.0002default:default2
48982default:default2
67452default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: a0656fbb
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4856 ; free virtual = 67032default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 12ee1411a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:05 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4832 ; free virtual = 66792default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 12ee1411a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:05 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4832 ; free virtual = 66792default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 12ee1411a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:05 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4832 ; free virtual = 66792default:defaulth px� 
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
.Phase 2.1 Floorplanning | Checksum: 1050bf1aa
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:09 ; elapsed = 00:00:05 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4824 ; free virtual = 66712default:defaulth px� 
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
00:00:002default:default2
00:00:00.012default:default2
3083.8012default:default2
0.0002default:default2
47902default:default2
66472default:defaultZ17-722h px� 
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
T
?Phase 2.2.1 Physical Synthesis In Placer | Checksum: 132dff71f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:25 ; elapsed = 00:00:12 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4793 ; free virtual = 66512default:defaulth px� 
K
6Phase 2.2 Global Placement Core | Checksum: 16a00a890
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:26 ; elapsed = 00:00:12 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4786 ; free virtual = 66432default:defaulth px� 
D
/Phase 2 Global Placement | Checksum: 16a00a890
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:26 ; elapsed = 00:00:12 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4795 ; free virtual = 66522default:defaulth px� 
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
;Phase 3.1 Commit Multi Column Macros | Checksum: 1745a49d0
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:27 ; elapsed = 00:00:12 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4794 ; free virtual = 66512default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 19973d1b7
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:30 ; elapsed = 00:00:14 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4798 ; free virtual = 66552default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1dd875360
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:30 ; elapsed = 00:00:14 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4798 ; free virtual = 66552default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
S
>Phase 3.4 Pipeline Register Optimization | Checksum: fe2550fd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:30 ; elapsed = 00:00:14 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4798 ; free virtual = 66552default:defaulth px� 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 16673dee4
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:33 ; elapsed = 00:00:17 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4778 ; free virtual = 66362default:defaulth px� 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
G
2Phase 3.6 Re-assign LUT pins | Checksum: d0aba7b8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:34 ; elapsed = 00:00:17 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4776 ; free virtual = 66332default:defaulth px� 
�

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 131ba8748
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:34 ; elapsed = 00:00:17 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4775 ; free virtual = 66322default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 131ba8748
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:34 ; elapsed = 00:00:17 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4775 ; free virtual = 66322default:defaulth px� 
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
APost Placement Optimization Initialization | Checksum: 201fa16f0
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
3Phase 4.1.1.1 BUFG Insertion | Checksum: 201fa16f0
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:38 ; elapsed = 00:00:19 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4785 ; free virtual = 66422default:defaulth px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
2.7272default:defaultZ30-746h px� 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 22701459e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:38 ; elapsed = 00:00:19 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4785 ; free virtual = 66422default:defaulth px� 
N
9Phase 4.1 Post Commit Optimization | Checksum: 22701459e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:39 ; elapsed = 00:00:19 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4785 ; free virtual = 66422default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 22701459e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:39 ; elapsed = 00:00:19 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4785 ; free virtual = 66422default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
F
1Phase 4.3 Placer Reporting | Checksum: 22701459e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:39 ; elapsed = 00:00:20 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4784 ; free virtual = 66422default:defaulth px� 
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
3083.8012default:default2
0.0002default:default2
47842default:default2
66422default:defaultZ17-722h px� 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 1778653a5
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:39 ; elapsed = 00:00:20 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4784 ; free virtual = 66422default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1778653a5
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:39 ; elapsed = 00:00:20 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4784 ; free virtual = 66422default:defaulth px� 
=
(Ending Placer Task | Checksum: a4435e5f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:39 ; elapsed = 00:00:20 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4784 ; free virtual = 66412default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
812default:default2
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
00:00:412default:default2
00:00:212default:default2
3083.8012default:default2
0.0002default:default2
48062default:default2
66632default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3083.8012default:default2
0.0002default:default2
48062default:default2
66632default:defaultZ17-722h px� 
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
00:00:00.682default:default2
3083.8012default:default2
0.0002default:default2
47382default:default2
66342default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2o
[/home/adi/repo/notes/sem3/ELD2024_LAB/lab_11/lab_11.runs/impl_1/design_1_wrapper_placed.dcp2default:defaultZ17-1381h px� 
k
%s4*runtcl2O
;Executing : report_io -file design_1_wrapper_io_placed.rpt
2default:defaulth px� 
�
�report_io: Time (s): cpu = 00:00:00.03 ; elapsed = 00:00:00.04 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4779 ; free virtual = 6649
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
�report_control_sets: Time (s): cpu = 00:00:00.43 ; elapsed = 00:00:00.44 . Memory (MB): peak = 3083.801 ; gain = 0.000 ; free physical = 4789 ; free virtual = 6659
*commonh px� 


End Record