# layout.py

import logging
import util
from util import Coord, BBox


class Layout:
    def __init__(self):
        self.wires = {}     # {layer_name: [wire1, wire2, ...]}
        self.vias = {}      # {layer_name: [via1, via2, ...]}


    def __str__(self):
        output = ""
        for layer, wires in self.wires.items():
            output += f'{layer}:\n'
            for wire in wires:
                output += f'{wire}\n'
        return output


    def add_wire(self, layer, width, coord1, coord2):
        routing_points = {coord1: [], coord2: []}
        wire = self._create_wire(layer, width, routing_points)
        self._add_wire(wire)
        return wire


    def _create_wire(self, layer, width, routing_points):
        wire = Wire()
        wire.layer = layer
        wire.width = width
        wire.routing_points = routing_points
        return wire


    def _add_wire(self, wire):
        if wire.layer not in self.wires:
            self.wires[wire.layer] = []
        self.wires[wire.layer].append(wire)


    def add_via(self, layer, lower_layer, upper_layer, coord):
        # Find lower wire
        lower_wire = None
        for wire in self.wires[lower_layer]:
            if self.is_coord_on_wire(coord, wire):
                lower_wire = wire
                break
        assert(lower_wire is not None)

        # Find upper wire
        upper_wire = None
        for wire in self.wires[upper_layer]:
            if self.is_coord_on_wire(coord, wire):
                upper_wire = wire
                break
        assert(upper_wire is not None)

        via = self._create_via(layer, coord)
        self._add_via(via)
        lower_wire.add_routing_point(coord, via)
        upper_wire.add_routing_point(coord, via)
        return via


    def _create_via(self, layer, coord):
        via = Via()
        via.layer = layer
        via.coord = coord
        return via


    def _add_via(self, via):
        if via.layer not in self.vias:
            self.vias[via.layer] = []
        self.vias[via.layer].append(via)


    def add_routing_point(self, layer, coord):
        # Find wire
        wire = None
        for wire in self.wires[layer]:
            if self.is_coord_on_wire(coord, wire):
                break
        assert(wire is not None)

        # Add routing point
        wire.add_routing_point(coord=coord, via=None)


    # NOTE: Returns True only if coord is at center of wire
    def is_coord_on_wire(self, coord, wire):
        prev_coord = None
        for curr_coord in sorted(wire.routing_points):
            if curr_coord == coord:
                return True
            if prev_coord is not None:
                min_x = min(prev_coord.x, curr_coord.x)
                max_x = max(prev_coord.x, curr_coord.x)
                min_y = min(prev_coord.y, curr_coord.y)
                max_y = max(prev_coord.y, curr_coord.y)
                if util.is_coord_on_bbox(coord, BBox(min_x, min_y, max_x, max_y)):
                    return True
            prev_coord = curr_coord
        return False


class Wire:
    def __init__(self):
        self.layer = ""
        self.width = None
        self.routing_points = {}    # {coord: [via1, via2, ...]}


    def __str__(self):
        output = ""
        output += f'layer: {self.layer}\n'
        output += f'width: {self.width}\n'
        output += f'routing_points:\n'
        for coord, vias in sorted(self.routing_points.items()):
            output += f'  {coord}: {vias}\n'
        return output


    def add_routing_point(self, coord, via):
        if coord not in self.routing_points:
            self.routing_points[coord] = []
        if via is not None:
            self.routing_points[coord].append(via)


class Via:
    def __init__(self):
        self.layer = ""
        self.coord = None


    def __str__(self):
        return f'layer: {self.layer}, coord: {self.coord}'


def main(args):
    pass


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--config', type=str, help='Path to config file')
    args = parser.parse_args()

    main(args)
