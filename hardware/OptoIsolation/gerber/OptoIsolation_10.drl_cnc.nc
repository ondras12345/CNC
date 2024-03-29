(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: OptoIsolation.drl_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Čtvrtek, 18 srpna 2022 at 12:44)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)


(TOOLS DIAMETER: )
(Tool: 1 -> Dia: 0.8)
(Tool: 2 -> Dia: 1.0)
(Tool: 3 -> Dia: 1.19)
(Tool: 4 -> Dia: 3.2)
(Tool: 5 -> Dia: 5.3)

(FEEDRATE Z: )
(Tool: 1 -> Feedrate: 100.0)
(Tool: 2 -> Feedrate: 100.0)
(Tool: 3 -> Feedrate: 100.0)
(Tool: 4 -> Feedrate: 100.0)
(Tool: 5 -> Feedrate: 100.0)

(FEEDRATE RAPIDS: )
(Tool: 1 -> Feedrate Rapids: 1500)
(Tool: 2 -> Feedrate Rapids: 1500)
(Tool: 3 -> Feedrate Rapids: 1500)
(Tool: 4 -> Feedrate Rapids: 1500)
(Tool: 5 -> Feedrate Rapids: 1500)

(Z_CUT: )
(Tool: 1 -> Z_Cut: -1.7)
(Tool: 2 -> Z_Cut: -1.7)
(Tool: 3 -> Z_Cut: -1.7)
(Tool: 4 -> Z_Cut: -1.7)
(Tool: 5 -> Z_Cut: -1.7)

(Tools Offset: )
(Tool: 2 -> Offset Z: 0.0)
(Tool: 3 -> Offset Z: 0.0)

(Z_MOVE: )
(Tool: 1 -> Z_Move: 2)
(Tool: 2 -> Z_Move: 2)
(Tool: 3 -> Z_Move: 2)
(Tool: 4 -> Z_Move: 2)
(Tool: 5 -> Z_Move: 2)

(Z Toolchange: 10.0 mm)
(X,Y Toolchange: 0.0000, 0.0000 mm)
(Z Start: None mm)
(Z End: 5.0 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Excellon: default)

(X range:    4.5800 ...   56.8200  mm)
(Y range:  -88.6290 ...   -7.3830  mm)

(Spindle Speed: 10000 RPM)
G21
G90
G94

G01 F100.00

M5
G00 Z10.0000
T2
G00 X0.0000 Y0.0000                
M6
(MSG, Change to Tool Dia = 1.0000 ||| Total drills for tool T2 = 78)
M0
G00 Z10.0000

G01 F100.00
M03 S10000
G4 P1
G00 X5.0800 Y-64.7700
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X5.0800 Y-62.2300
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X7.6200 Y-62.2300
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X7.6200 Y-59.6900
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X5.0800 Y-59.6900
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X5.0800 Y-57.1500
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X7.6200 Y-57.1500
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X5.0800 Y-52.0700
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X7.6200 Y-52.0700
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X7.6200 Y-49.5300
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X5.0800 Y-49.5300
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X5.0800 Y-46.9900
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X7.6200 Y-46.9900
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X7.6200 Y-44.4500
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X5.0800 Y-44.4500
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X5.0800 Y-36.8300
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X5.0800 Y-34.2900
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X5.0800 Y-31.7500
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X5.0800 Y-29.2100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X7.6200 Y-29.2100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X7.6200 Y-31.7500
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X7.6200 Y-34.2900
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X7.6200 Y-36.8300
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.7500 Y-31.1150
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.2900 Y-31.1150
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X36.8300 Y-31.1150
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X39.3700 Y-31.1150
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X41.9100 Y-31.1150
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X42.7200 Y-26.6700
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X39.9500 Y-26.6700
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X37.1800 Y-26.6700
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X38.5650 Y-23.8300
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X41.3350 Y-23.8300
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X44.1050 Y-23.8300
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X46.8750 Y-23.8300
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X45.4900 Y-26.6700
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X48.2600 Y-26.6700
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.0700 Y-31.1150
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X49.5300 Y-31.1150
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X46.9900 Y-31.1150
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X44.4500 Y-31.1150
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X43.1800 Y-39.3700
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X45.7200 Y-39.3700
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X48.2600 Y-39.3700
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.8000 Y-39.3700
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X44.4500 Y-59.6900
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X46.9900 Y-59.6900
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X49.5300 Y-59.6900
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.0700 Y-59.6900
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X54.6100 Y-67.3100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.0700 Y-67.3100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X49.5300 Y-67.3100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X46.9900 Y-67.3100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X44.4500 Y-67.3100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X41.9100 Y-67.3100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X30.4800 Y-62.2300
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X30.4800 Y-59.6900
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.9400 Y-59.6900
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4000 Y-59.6900
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4000 Y-62.2300
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.9400 Y-62.2300
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4000 Y-67.3100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.9400 Y-67.3100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X30.4800 Y-67.3100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X30.4800 Y-69.8500
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.9400 Y-69.8500
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4000 Y-69.8500
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.8600 Y-69.8500
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.8600 Y-67.3100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X20.3200 Y-67.3100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X20.3200 Y-69.8500
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X17.7800 Y-69.8500
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X17.7800 Y-67.3100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X15.2400 Y-67.3100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X15.2400 Y-69.8500
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X12.7000 Y-69.8500
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X12.7000 Y-67.3100
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X7.6200 Y-64.7700
G01 Z-1.7000
G01 Z0
G00 Z2.0000
M05
G00 Z5.00


