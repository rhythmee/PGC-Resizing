# util.py

import logging

class Coord:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __str__(self):
        return f'(x={self.x}, y={self.y})'

    def __eq__(self, coord):
        return self.x == coord.x and self.y == coord.y

    def __lt__(self, coord):
        return (self.x, self.y) < (coord.x, coord.y)

    def __hash__(self):
        return hash((self.x, self.y))

class BBox:
    def __init__(self, llx, lly, urx, ury):
        self.llx = llx
        self.lly = lly
        self.urx = urx
        self.ury = ury


def is_coord_on_bbox(coord, bbox):
    return bbox.llx <= coord.x <= bbox.urx and bbox.lly <= coord.y <= bbox.ury  


def distance(coord1, coord2):
    return abs(coord1.x - coord2.x) + abs(coord1.y - coord2.y)
