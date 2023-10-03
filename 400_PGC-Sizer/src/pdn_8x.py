# pdn.py

import logging
import pandas as pd
import tech
import layout
from circuit.src.circuit import Circuit
import util
from util import Coord
import time
import datetime


GND_NODE_NAME = 'GND'

class PDN:
    def __init__(self):
        self.config = None
        self.tech = None
        self.straps = {}    # layer -> (location -> strap)
        self.supply_voltages = []
        self.load_currents = []
        self.pgc_resistors = []
        self.layout = None
        self.circuit = None
        self.node_voltages = {}  # node_name -> voltage


    def configure(self, config):
        self.config = config


    def build(self):
        self.config_setup_tech()
        logging.debug(self.tech)
        self.config_add_straps()
        self.config_add_supply_voltages()
        self.config_add_load_currents()
        self.config_add_pgc_resistors()
        self.build_layout()
        logging.debug(self.layout)
        self.build_circuit()
        logging.debug(self.circuit)


    def config_setup_tech(self):
        logging.info('Setting up tech')
        self.tech = tech.Tech()
        for _config in self.config['tech']:
            name = _config.get('name')
            type = _config.get('type')
            thickness = _config.get('thickness')
            thickness = None if thickness is None else float(thickness)
            wmin = _config.get('wmin')
            wmin = None if wmin is None else float(wmin)
            smin = _config.get('smin')
            smin = None if smin is None else float(smin)
            rpsq = _config.get('rpsq')
            rpsq = None if rpsq is None else float(rpsq)
            er = _config.get('er')
            er = None if er is None else float(er)
            from_layer = _config.get('from-layer')
            to_layer = _config.get('to-layer')
            area = _config.get('area')
            area = None if area is None else float(area)
            rpv = _config.get('rpv')
            rpv = None if rpv is None else float(rpv)
            self.tech.add_layer(name=name, type=type, thickness=thickness, wmin=wmin, smin=smin, rpsq=rpsq, er=er, from_layer=from_layer, to_layer=to_layer, area=area, rpv=rpv)


    def config_add_straps(self):
        logging.info('Adding straps')
        for _config in self.config['strap']:
            net = _config['net']
            layer = _config['layer']
            direction = _config['direction']
            width = int(float(_config['width']) * 1.0e+3)
            start = int(float(_config['start']) * 1.0e+3)
            end = int(float(_config['end']) * 1.0e+3)
            step = int(float(_config['step']) * 1.0e+3)
            low_end = int(float(_config['low-end']) * 1.0e+3)
            high_end = int(float(_config['high-end']) * 1.0e+3)
            self.add_regular_straps(net=net, layer=layer, direction=direction, width=width, start=start, end=end, step=step, low_end=low_end, high_end=high_end)


    def add_regular_straps(self, net, layer, direction, width, start, end, step, low_end, high_end):
        curr = start
        while curr <= end:
            strap = self._create_strap(net=net, layer=layer, direction=direction, width=width, location=curr, low_end=low_end, high_end=high_end)
            self._add_strap(strap)
            curr += step


    def _create_strap(self, net, layer, direction, width, location, low_end, high_end):
        strap = Strap()
        strap.net = net
        strap.layer = layer
        strap.direction = direction
        strap.width = width
        strap.location = location
        strap.low_end = low_end
        strap.high_end = high_end
        return strap


    def _add_strap(self, strap):
        if strap.layer not in self.straps:
            self.straps[strap.layer] = dict()
        self.straps[strap.layer][strap.location] = strap


    def config_add_supply_voltages(self):
        logging.info('Adding supply voltages')
        for _config in self.config['supply-voltage']:
            layer = _config['layer']
            x = int(float(_config['x']) * 1.0e+3)
            y = int(float(_config['y']) * 1.0e+3)
            voltage = float(_config['voltage'])
            supply_voltage = self._create_supply_voltage(layer=layer, x=x, y=y, voltage=voltage)
            self._add_supply_voltage(supply_voltage)


    def _create_supply_voltage(self, layer, x, y, voltage):
        supply_voltage = SupplyVoltage()
        supply_voltage.layer = layer
        supply_voltage.x = x
        supply_voltage.y = y
        supply_voltage.voltage = voltage
        return supply_voltage


    def _add_supply_voltage(self, supply_voltage):
        self.supply_voltages.append(supply_voltage)


    def config_add_load_currents(self):
        logging.info('Adding load currents')
        for _config in self.config['load-current']:
            layer = _config['layer']
            x = int(float(_config['x']) * 1.0e+3)
            y = int(float(_config['y']) * 1.0e+3)
            current = float(_config['current'])
            load_current = self._create_load_current(layer=layer, x=x, y=y, current=current)
            self._add_load_current(load_current)


    def _create_load_current(self, layer, x, y, current):
        load_current = LoadCurrent()
        load_current.layer = layer
        load_current.x = x
        load_current.y = y
        load_current.current = current
        return load_current


    def _add_load_current(self, load_current):
        self.load_currents.append(load_current)


    def config_add_pgc_resistors(self):
        logging.info('Adding PGC resistors')
        for _config in self.config['pgc-resistor']:
            input_layer = _config['input']['layer']
            input_x = int(float(_config['input']['x']) * 1.0e+3)
            input_y = int(float(_config['input']['y']) * 1.0e+3)
            output_layer = _config['output']['layer']
            output_x = int(float(_config['output']['x']) * 1.0e+3)
            output_y = int(float(_config['output']['y']) * 1.0e+3)
            resistance = float(_config['resistance'])
            pgc_resistor = self._create_pgc_resistor(input_layer=input_layer, input_x=input_x, input_y=input_y, output_layer=output_layer, output_x=output_x, output_y=output_y, resistance=resistance)
            self._add_pgc_resistor(pgc_resistor)


    def _add_pgc_resistor(self, pgc_resistor):
        self.pgc_resistors.append(pgc_resistor)


    def _create_pgc_resistor(self, input_layer, input_x, input_y, output_layer, output_x, output_y, resistance):
        pgc_resistor = PGCResistor()
        pgc_resistor.input_layer = input_layer
        pgc_resistor.input_x = input_x
        pgc_resistor.input_y = input_y
        pgc_resistor.output_layer = output_layer
        pgc_resistor.output_x = output_x
        pgc_resistor.output_y = output_y
        pgc_resistor.resistance = resistance
        return pgc_resistor


    def build_layout(self):
        logging.info("Building layout")
        self.layout = layout.Layout()
        # Add wires
        logging.info("Adding wires")
        for _layer, _straps in self.straps.items():
            for _location, _strap in _straps.items():
                if _strap.direction == 'HORIZONTAL':
                    coord1 = Coord(_strap.low_end, _location)
                    coord2 = Coord(_strap.high_end, _location)
                elif _strap.direction == 'VERTICAL':
                    coord1 = Coord(_location, _strap.low_end)
                    coord2 = Coord(_location, _strap.high_end)
                else:
                    raise ValueError(f'Invalid strap direction: {_strap.direction}')
                logging.debug(f"Calling add_wire")
                wire = self.layout.add_wire(layer=_strap.layer, width=_strap.width, coord1=coord1, coord2=coord2)
                logging.debug(f"Added wire:\n{wire}")


        # Add vias
        logging.info("Adding vias")
        for _layer_name, _straps in self.straps.items():
            via_layer = self.tech.get_via_by_to_layer(_layer_name)
            if via_layer is None:
                continue
            lower_layer = self.tech.get_layer(via_layer.from_layer)
            if lower_layer is None:
                continue
            lower_layer_straps = self.straps.get(lower_layer.name)
            if lower_layer_straps is None:
                continue
            for _location, _strap in _straps.items():
                # Search for lower layer strap (if any) and extract intersection
                for _lower_location, _lower_strap in lower_layer_straps.items():
                    if _strap.net != _lower_strap.net:
                        continue
                    if _lower_strap.direction != _strap.direction:
                        intersection = self.get_intersection(_strap, _lower_strap)
                        if intersection is not None:
                            logging.debug(f"Calling add_via")
                            logging.debug(f"strap: {_strap}")
                            logging.debug(f"lower_strap: {_lower_strap}")
                            logging.debug(f"intersection: {intersection}")
                            self.layout.add_via(layer=via_layer.name, lower_layer=lower_layer.name, upper_layer=_strap.layer, coord=intersection)


        # Add auxiliary routing point for supply voltages, load_currents, and pgc_resistors
        # so that circuit elements can be added to the corresponding node while building the circuit
        logging.info("Adding auxiliary routing points")
        for _supply_voltage in self.supply_voltages:
            self.layout.add_routing_point(layer=_supply_voltage.layer, coord=Coord(_supply_voltage.x, _supply_voltage.y))
        for _load_current in self.load_currents:
            self.layout.add_routing_point(layer=_load_current.layer, coord=Coord(_load_current.x, _load_current.y))
        for _pgc_resistor in self.pgc_resistors:
            self.layout.add_routing_point(layer=_pgc_resistor.input_layer, coord=Coord(_pgc_resistor.input_x, _pgc_resistor.input_y))
            self.layout.add_routing_point(layer=_pgc_resistor.output_layer, coord=Coord(_pgc_resistor.output_x, _pgc_resistor.output_y))


    def get_intersection(self, strap1, strap2):
        if strap1.direction == 'HORIZONTAL' and strap2.direction == 'VERTICAL':
            if strap1.low_end <= strap2.location <= strap1.high_end and strap2.low_end <= strap1.location <= strap2.high_end:
                return Coord(strap2.location, strap1.location)
            return None
        elif strap1.direction == 'VERTICAL' and strap2.direction == 'HORIZONTAL':
            if strap1.low_end <= strap2.location <= strap1.high_end and strap2.low_end <= strap1.location <= strap2.high_end:
                return Coord(strap1.location, strap2.location)
            return None
        else:
            return None


    def build_circuit(self):
        logging.info("Building circuit")
        self.circuit = Circuit()
        for _supply_voltage in self.supply_voltages:
            pnode_name = f'{_supply_voltage.layer}_{_supply_voltage.x}_{_supply_voltage.y}'
            nnode_name = GND_NODE_NAME
            self.circuit.add_voltage_source(pnode=pnode_name, nnode=nnode_name, value=_supply_voltage.voltage)
            self.node_voltages[pnode_name] = None

        for _load_current in self.load_currents:
            pnode_name = f'{_load_current.layer}_{_load_current.x}_{_load_current.y}'
            nnode_name = GND_NODE_NAME
            self.circuit.add_current_source(pnode=pnode_name, nnode=nnode_name, value=_load_current.current)
            self.node_voltages[pnode_name] = None

        for _pgc_resistor in self.pgc_resistors:
            node1_name = f'{_pgc_resistor.input_layer}_{_pgc_resistor.input_x}_{_pgc_resistor.input_y}'
            node2_name = f'{_pgc_resistor.output_layer}_{_pgc_resistor.output_x}_{_pgc_resistor.output_y}'
            self.circuit.add_resistor(node1=node1_name, node2=node2_name, value=_pgc_resistor.resistance)
            self.node_voltages[node1_name] = None
            self.node_voltages[node2_name] = None

        logging.debug("Adding circuit elements for wires and vias")
        for _layer, _wires in self.layout.wires.items():
            logging.debug(f"Layer: {_layer}")
            for _wire in _wires:
                logging.debug(f"Wire: {_wire}")
                self.circuit_add_wire_elements(_wire, self.tech.get_layer(_wire.layer).rpsq)
        for _layer, _vias in self.layout.vias.items():
            logging.debug(f"Layer: {_layer}")
            for _via in _vias:
                logging.debug(f"Via: {_via}")
                via_layer = self.tech.get_layer(_via.layer)
                lower_layer = via_layer.from_layer
                upper_layer = via_layer.to_layer
                self.circuit_add_via_elements(_via, via_layer.rpv, lower_layer, upper_layer)
            

    def circuit_add_wire_elements(self, wire, rpsq):
        logging.debug(f"Adding circuit elements for wire:\n{wire}")
        prev_coord = None
        for curr_coord, vias in sorted(wire.routing_points.items()):
            if prev_coord is not None:
                length = util.distance(curr_coord, prev_coord)
                resistance = rpsq * length / wire.width
                prev_node_name = f'{wire.layer}_{prev_coord.x}_{prev_coord.y}'
                curr_node_name = f'{wire.layer}_{curr_coord.x}_{curr_coord.y}'
                logging.debug(f"Adding resistor: {prev_node_name} {curr_node_name} {resistance}")
                self.circuit.add_resistor(node1=prev_node_name, node2=curr_node_name, value=resistance)
                self.node_voltages[prev_node_name] = None
                self.node_voltages[curr_node_name] = None
            prev_coord = curr_coord


    def circuit_add_via_elements(self, via, rpv, lower_layer, upper_layer):
        lower_node_name = f"{lower_layer}_{via.coord.x}_{via.coord.y}"
        upper_node_name = f"{upper_layer}_{via.coord.x}_{via.coord.y}"
        self.circuit.add_resistor(node1=lower_node_name, node2=upper_node_name, value=rpv)
        self.node_voltages[lower_node_name] = None
        self.node_voltages[upper_node_name] = None


    def analyze(self):
        logging.info("Analyzing circuit")
        self.circuit.analyze()
        self._update_node_voltages()
        self._dump_node_voltages()
        logging.info("Analysis complete")


    def _update_node_voltages(self):
        for node_name in self.node_voltages.keys():
            self.node_voltages[node_name] = self.circuit.get_node_voltage(node_name)


    def _dump_node_voltages(self):
        data = {
            'layer': [],
            'x': [],
            'y': [],
            'voltage': []
        }

        for node_name, node_voltage in self.node_voltages.items():
            layer, x, y = node_name.split('_')
            data['layer'].append(layer)
            data['x'].append(format(float(x)/1000.0, '.3f'))
            data['y'].append(format(float(y)/1000.0, '.3f'))
            data['voltage'].append(node_voltage)

        df = pd.DataFrame(data)
        df.to_csv('nodes_voltage_8x.csv', index=False)


class Strap:
    def __init__(self):
        self.net = ''
        self.layer = ''
        self.direction = ''
        self.width = None
        self.location = None
        self.low_end = None
        self.high_end = None

    def __str__(self):
        return f"Net: {self.net}\n" \
               f"Layer: {self.layer}\n" \
               f"Direction: {self.direction}\n" \
               f"Width: {self.width}\n" \
               f"Location: {self.location}\n" \
               f"Low end: {self.low_end}\n" \
               f"High end: {self.high_end}\n"


class SupplyVoltage:
    def __init__(self):
        self.layer = ''
        self.x = None
        self.y = None
        self.voltage = None


class LoadCurrent:
    def __init__(self):
        self.layer = ''
        self.x = None
        self.y = None
        self.current = None


class PGCResistor:
    def __init__(self):
        pass



def main(args):
    # Do something
    # ...
    pass


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--config', type=str, help='Path to config file')
    args = parser.parse_args()
    main(args)
