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

TODO publish final config
