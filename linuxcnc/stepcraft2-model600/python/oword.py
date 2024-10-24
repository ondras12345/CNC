import datetime


def pardump(self, *args):
    """Dump parameters to an ngc file.
    Usage: o<pardump> call
    """
    with open(f"params-{datetime.datetime.now().strftime('%Y%m%dT%H%M%S')}.nc", "w") as f:
        f.write("(this is a parameter dump)\n")
        f.write("(named globals)\n")
        for param in self.params.globals():
            f.write(f"#<{param}> = {self.params[param]}\n")

        f.write("\n(numbered params)\n")
        for i in range(1, 5603):
            f.write(f"#{i} = {self.params[i]}\n")

        f.write("\nM2")
