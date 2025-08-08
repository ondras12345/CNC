import datetime
import subprocess


def pardump(self, *args):
    """Dump parameters to an ngc file.
    Usage: o<pardump> call
    """
    filename = f"params-{datetime.datetime.now().strftime('%Y%m%dT%H%M%S')}.nc"
    with open(filename, "w") as f:
        f.write("(this is a parameter dump)\n")
        f.write("(named globals)\n")
        for param in self.params.globals():
            f.write(f"#<{param}> = {self.params[param]}\n")

        f.write("\n(numbered params)\n")
        for i in range(1, 5603):
            f.write(f"#{i} = {self.params[i]}\n")

        f.write("\nM2")
    # Return value is used by pcbplot. I hope it is ignored when called
    # directly.
    return filename


def pcbplot(self, *args):
    """Dump parameters like pardump, interpret them as pcb2gcode autolevel map
    and plot a 3d graph.
    Usage: o<pcbplot> call
    """
    filename = pardump(self, *args)
    subprocess.Popen(["./pcb2gcode-plot.py", filename])
