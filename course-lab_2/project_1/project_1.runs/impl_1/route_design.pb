
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xck262default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xck262default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
62default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
62default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common22
Nodegraph reading from file.  2default:default2

00:00:00.32default:default2
00:00:002default:default2
5237.3012default:default2
0.0002default:default2
48452default:default2
99642default:defaultZ17-722h px� 
C
.Phase 1 Build RT Design | Checksum: 224a8cb13
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:18 ; elapsed = 00:00:20 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4845 ; free virtual = 99632default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
N
9Phase 2.1 Fix Topology Constraints | Checksum: 224a8cb13
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:18 ; elapsed = 00:00:20 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4807 ; free virtual = 99262default:defaulth px� 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
G
2Phase 2.2 Pre Route Cleanup | Checksum: 224a8cb13
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:18 ; elapsed = 00:00:20 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4807 ; free virtual = 99262default:defaulth px� 
{

Phase %s%s
101*constraints2
2.3 2default:default2,
Global Clock Net Routing2default:defaultZ18-101h px� 
N
9Phase 2.3 Global Clock Net Routing | Checksum: 19cf2a952
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:19 ; elapsed = 00:00:21 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4821 ; free virtual = 99402default:defaulth px� 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.4 Update Timing | Checksum: 1d939a8f7
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:21 ; elapsed = 00:00:22 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4804 ; free virtual = 99232default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=3.453  | TNS=0.000  | WHS=-0.069 | THS=-58.469|
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 21ca282b6
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:24 ; elapsed = 00:00:24 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4808 ; free virtual = 99272default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px� 
D
/Phase 3.1 Global Routing | Checksum: 21ca282b6
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:24 ; elapsed = 00:00:24 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4809 ; free virtual = 99272default:defaulth px� 
C
.Phase 3 Initial Routing | Checksum: 2648f7e3b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:27 ; elapsed = 00:00:25 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4783 ; free virtual = 99022default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=2.844  | TNS=0.000  | WHS=-0.013 | THS=-0.029 |
2default:defaultZ35-416h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 2d4d5d09c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:43 ; elapsed = 00:00:38 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4778 ; free virtual = 98972default:defaulth px� 
�

Phase %s%s
101*constraints2
4.2 2default:default21
Additional Iteration for Hold2default:defaultZ18-101h px� 
S
>Phase 4.2 Additional Iteration for Hold | Checksum: 3235fc72e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:43 ; elapsed = 00:00:38 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4778 ; free virtual = 98972default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 3235fc72e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:43 ; elapsed = 00:00:38 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4778 ; free virtual = 98972default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 5.1.1 Update Timing | Checksum: 2c2472c95
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:45 ; elapsed = 00:00:39 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4780 ; free virtual = 98992default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=2.844  | TNS=0.000  | WHS=0.011  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 5.1 Delay CleanUp | Checksum: 2c2472c95
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:45 ; elapsed = 00:00:39 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4780 ; free virtual = 98992default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 2c2472c95
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:45 ; elapsed = 00:00:39 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4780 ; free virtual = 98992default:defaulth px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 2c2472c95
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:45 ; elapsed = 00:00:39 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4780 ; free virtual = 98992default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 389ad1fca
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:47 ; elapsed = 00:00:39 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4777 ; free virtual = 98962default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=2.844  | TNS=0.000  | WHS=0.011  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 2e136a62e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:47 ; elapsed = 00:00:39 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4777 ; free virtual = 98962default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 2e136a62e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:47 ; elapsed = 00:00:39 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4777 ; free virtual = 98962default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 2b1928167
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:47 ; elapsed = 00:00:40 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4778 ; free virtual = 98962default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 2b1928167
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:47 ; elapsed = 00:00:40 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4776 ; free virtual = 98952default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 2b1928167
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:47 ; elapsed = 00:00:40 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4776 ; free virtual = 98942default:defaulth px� 
o

Phase %s%s
101*constraints2
10 2default:default2!
Resolve XTalk2default:defaultZ18-101h px� 
B
-Phase 10 Resolve XTalk | Checksum: 2b1928167
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:47 ; elapsed = 00:00:40 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4776 ; free virtual = 98942default:defaulth px� 
t

Phase %s%s
101*constraints2
11 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2J
6| WNS=2.844  | TNS=0.000  | WHS=0.011  | THS=0.000  |
2default:defaultZ35-57h px� 
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px� 
G
2Phase 11 Post Router Timing | Checksum: 2b1928167
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:48 ; elapsed = 00:00:41 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4776 ; free virtual = 98942default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:48 ; elapsed = 00:00:41 . Memory (MB): peak = 5237.301 ; gain = 0.000 ; free physical = 4823 ; free virtual = 99422default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1152default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:01:542default:default2
00:00:432default:default2
5237.3012default:default2
0.0002default:default2
48232default:default2
99422default:defaultZ17-722h px� 
~
4The following parameters have non-default value.
%s
395*common2&
general.maxThreads2default:defaultZ17-600h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
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
00:00:012default:default2
00:00:00.572default:default2
5237.3012default:default2
0.0002default:default2
47782default:default2
99282default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2t
`/home/ubuntu/SOC_Design/course-lab_2/project_1/project_1.runs/impl_1/design_1_wrapper_routed.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
xreport_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
62default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
d/home/ubuntu/SOC_Design/course-lab_2/project_1/project_1.runs/impl_1/design_1_wrapper_drc_routed.rptd/home/ubuntu/SOC_Design/course-lab_2/project_1/project_1.runs/impl_1/design_1_wrapper_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
62default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
609*	vivadotcl2�
p/home/ubuntu/SOC_Design/course-lab_2/project_1/project_1.runs/impl_1/design_1_wrapper_methodology_drc_routed.rptp/home/ubuntu/SOC_Design/course-lab_2/project_1/project_1.runs/impl_1/design_1_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1282default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
report_power: 2default:default2
00:00:062default:default2
00:00:052default:default2
5237.3012default:default2
0.0002default:default2
47352default:default2
98702default:defaultZ17-722h px� 
�
%s4*runtcl2�
mExecuting : report_route_status -file design_1_wrapper_route_status.rpt -pb design_1_wrapper_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -report_unconstrained -file design_1_wrapper_timing_summary_routed.rpt -pb design_1_wrapper_timing_summary_routed.pb -rpx design_1_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
�
UpdateTimingParams:%s.
91*timing2Q
= Speed grade: -2LV, Temperature grade: C, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
62default:defaultZ38-191h px� 
�
%s4*runtcl2m
YExecuting : report_incremental_reuse -file design_1_wrapper_incremental_reuse_routed.rpt
2default:defaulth px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
�
%s4*runtcl2m
YExecuting : report_clock_utilization -file design_1_wrapper_clock_utilization_routed.rpt
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file design_1_wrapper_bus_skew_routed.rpt -pb design_1_wrapper_bus_skew_routed.pb -rpx design_1_wrapper_bus_skew_routed.rpx
2default:defaulth px� 
�
UpdateTimingParams:%s.
91*timing2Q
= Speed grade: -2LV, Temperature grade: C, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
62default:defaultZ38-191h px� 


End Record