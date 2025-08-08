#!/usr/bin/env python3
import re
import argparse
import numpy as np
import matplotlib.pyplot as plt
from typing import Optional


def parse_params(f) -> dict[str|int, float]:
    params = {}
    for line in f:
        if m := re.match(r"^#<?([^ \t>]+)>?\s?=\s?([0-9.-]+)$", line):
            param = m.group(1)
            try:
                param = int(param)
            except ValueError:
                pass
            value = float(m.group(2))
            params[param] = value
    return params


def get_heightmap(params, x_probes: Optional[int] = None):
    y_probes = int(params[104])
    PROBE_START = 500

    if x_probes is None:
        # guess number of X probes
        x_probes = 0
        while True:
            x_probes += 1
            N_probes = y_probes * x_probes
            p_start = PROBE_START + N_probes
            zs = [params[i] for i in range(p_start, p_start + y_probes)]
            if all([z == 0.0 for z in zs]):
                break
        print(f"Warning: guessing x_probes: {x_probes}")


    def get_probe(x, y):
        """#z_probe = #[#101 * y_probes + #102 + 500]"""
        return params[PROBE_START + x*y_probes + y]

    probes = [params[i] for i in range(PROBE_START, PROBE_START+x_probes*y_probes)]
    heightmap = np.reshape(probes, (x_probes, y_probes))
    heightmap = heightmap.T  # transpose it, so that x is horizontal
    return heightmap


def plot_heightmap(heightmap):
    fig = plt.figure()
    ax = fig.add_subplot(projection="3d")
    # TODO use real coords
    X, Y = np.meshgrid(np.arange(heightmap.shape[1]), np.arange(heightmap.shape[0]))
    ax.plot_surface(X, Y, heightmap)
    ax.set_aspect("equalxy")
    ax.set_xlabel("x [probes]")
    ax.set_ylabel("y [probes]")
    ax.set_zlabel("z [mm]")
    return fig



def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("param_file", type=argparse.FileType("r"))
    parser.add_argument("--x_probes", type=int, help="Number of X probes (hardcoded in o5 repeat)")
    args = parser.parse_args()

    params = parse_params(args.param_file)
    heightmap = get_heightmap(params, args.x_probes)
    fig = plot_heightmap(heightmap)
    fig.show()
    plt.show(block=True)


if __name__ == "__main__":
    main()
