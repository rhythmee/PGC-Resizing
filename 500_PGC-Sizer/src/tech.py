# tech.py

import logging

class Tech:
    def __init__(self):
        self.layers = {}    # {layer_name: layer}

    def __str__(self):
        output = ""
        for name, layer in self.layers.items():
            output += f'{layer}\n'
        return output


    def get_layer(self, name):
        return self.layers.get(name)


    def get_lower_layer_name(self, name):
        for _, layer in self.layers.items():
            if layer.type == 'VIA' and layer.to_layer == name:
                return layer.from_layer
        return None


    def get_via_by_to_layer(self, to_layer):
        logging.debug(f"get_via_by_to_layer: {to_layer}")
        for _, layer in self.layers.items():
            if layer.type == 'VIA' and layer.to_layer == to_layer:
                return layer
        return None


    def add_layer(self, name, type, thickness, wmin, smin, rpsq, er, from_layer, to_layer, area, rpv):
        layer = self._create_layer(name=name, type=type, thickness=thickness, wmin=wmin, smin=smin, rpsq=rpsq, er=er, from_layer=from_layer, to_layer=to_layer, area=area, rpv=rpv)
        self._add_layer(layer)
        return layer


    def _create_layer(self, name, type, thickness, wmin, smin, rpsq, er, from_layer, to_layer, area, rpv):
        layer = Layer()
        layer.name = name
        layer.type = type
        layer.thickness = thickness
        layer.wmin = wmin
        layer.smin = smin
        layer.rpsq = rpsq
        layer.er = er
        layer.from_layer = from_layer
        layer.to_layer = to_layer
        layer.area = area
        layer.rpv = rpv
        return layer


    def _add_layer(self, layer):
        self.layers[layer.name] = layer


class Layer:
    def __init__(self):
        self.name = ""
        self.type = ""      # CONDUCTOR | VIA | DIELECTRIC
        self.thickness = None
        self.wmin = None
        self.smin = None
        self.rpsq = None
        self.er = None
        self.from_layer = ""
        self.to_layer = ""
        self.area = None
        self.rpv = None


    def __str__(self):
        output = ""
        output += f'name: {self.name}\n'
        output += f'type: {self.type}\n'
        if self.thickness is not None:
            output += f'thickness: {self.thickness}\n'
        if self.wmin is not None:
            output += f'wmin: {self.wmin}\n'
        if self.smin is not None:
            output += f'smin: {self.smin}\n'
        if self.rpsq is not None:
            output += f'rpsq: {self.rpsq}\n'
        if self.er is not None:
            output += f'er: {self.er}\n'
        if self.from_layer != "":
            output += f'from_layer: {self.from_layer}\n'
        if self.to_layer != "":
            output += f'to_layer: {self.to_layer}\n'
        if self.area is not None:
            output += f'area: {self.area}\n'
        if self.rpv is not None:
            output += f'rpv: {self.rpv}\n'
        return output



