# LinuxCNC pcb2gcode heightmap
When using pcb2gcode autolevelling with LinuxCNC, the results of the
individual Z probes are stored in LinuxCNC variables.

My LinuxCNC config contains a script to dump the parameters to a file.
It can be triggered with `o<pardump> call`.

The resulting file can then be plotted using the Jupyter notebook file
in this directory.
