# Stepcraft2 model 600
This directory contains notes about my Stepcraft CNC machine and accessories:
- Stepcraft 2 - 600 desktop CNC-/3D-System
- HF500 spindle + Hailea ACO-208 air pump ([Stepcraft YouTube](https://www.youtube.com/watch?v=FoeF6cgP0wI))
- Enclosure for desktop CNC/3D systems Stepcraft 600
- UC100 CNC motion controller (currently unused)
- Stepcraft USB module for WinPC-NC (currently unused)
- Stepcraft drag knife
- Stepcraft 3D touch probe
- Stepcraft tool length sensor
- dust shoe


## Spindle
Warning: when controlled with the front panel rotary encoder and button,
the VFD ignores the state of all e-stop switches! As far as I can tell,
this is by design.


## Laser
I wanted to mount the 0.5 W diode laser that I got with my old 1610 CNC
machine in the Stepcraft 43 mm holder, so 3D printed an adapter part:
`laser-mounitng-adapter.FCStd`. The model is parametric, the OD parameter
should probably be increased a bit. See `Params` spreadsheet.
I have also published the model on printables:
https://www.printables.com/model/1005261-stepcraft-43-mm-holder-for-33-mm-laser


## LinuxCNC configuration
### Latency
I am running LinuxCNC with standard preempt_RT kernel on a HP Compaq
dc7700 small form factor (Pentium D). After tuning the BIOS settings
(usual LinuxCNC recommendations + permanently running fans at maximum
speeds), I still had 105 us of base thread latency in `latency-test`.

After settings `i915.enable_dc=0 isolcpus=1` on the linux kernel command
line, I now have 24.5 us worst case latency. (It is important to let
`latency-test` run for a long time, the maximum latency was 14 us
for the first 20 minutes in my case.)


### Stepper drivers
I found this useful webpage: https://www.weigu.lu/other_projects/cnc/grbling_stepcraft/index.html
Apparently, the stepper drivers are A5979.
Based on its datasheet, I set the timings in `stepconf` like this:

| parameter       | value   |
|:---------------:|:-------:|
| Step Time       | 1000 ns |
| Step Space      | 1000 ns |
| Direction Hold  | 200 ns  |
| Direction Setup | 200 ns  |


### Axis config
I got the CNC with a CD that contained a Mach4 configuration file. I used
that as a reference for setting up axes in `stepconf`.

See my [linuxcnc config](../linuxcnc/stepcraft2-model600/).


## Maintenance
- https://cncfaq.us/maintenance/

### 2024-10-26
- The belt situation has gotten worse since the last log, the machine would
  fail to move completely.
- Right (closer to the window) Y pulley was wrapped with steel wire from the
  belt.
- Right Y pulley was moving on the leadscrew - the grub screw was loose.
- Removed right Y pulley from leadscrew. There was grease on the interface,
  I wiped it clean and put the pulley back on.
- Replaced belt.
- Tutorials followed:
  - https://www.youtube.com/watch?v=cZNLv7w0tCs
  - https://www.youtube.com/watch?v=zrz58k_M_2g
  - https://www.youtube.com/watch?v=GKEKqlukmYs
  - https://www.youtube.com/watch?v=RyjEeQAENyk
- When the belt was too loose, it would skip during rapid moves.
- Now it stalls when crashed during rapid, but still skips at F100.
- Now the Y axis is really easy to stall.
- Fixed by tightening the belt a little more. Why does that help?!

### 2024-09-28
- Removed belt cover, it was covered with coarse black dust.
- The side of the belt closer to the work area is damaged and folds over
  easily. This cannot be fixed without replacing the belt.
- Ordered new belt:
  - https://eshop.profitek.cz/stepcraft-cnc-systemy/remen-pro-pohon-v-ose-y/
  - also available from https://shop.stepcraft-systems.com/Tooth-Belt-600

### 2024-09-25
Found issues:
- Right Y axis leadscrew has huge backlash.
- Y belt folds over during Y- jog.

### 2024-09-22
- X axis cable guide was assembled incorrectly by the previous owner, the
  smaller hose was put into the bigger hole in the feedthrough and the bigger
  hose does not fit. Designed a 3D printer part to prevent the wires from
  bending in this location: `X-cable-guide.FCStd`.

### 2024-08
- Cleaned and lubricated all axes.
- Disassembled Z axis (removed stepper) and adjusted roller tension properly.
