# circuit.py

import logging
import argparse
import mna

class Circuit:
    def __init__(self):
        self.nodes = {}             # {node_name: node} 
        self.resistors = {}         # {resistor_name: resistor}
        self.voltage_sources = {}   # {voltage_source_name: voltage_source}
        self.current_sources = {}   # {current_source_name: current_source}
        self.add_node('GND')

    def __str__(self):
        output = "Circuit\n"
        output += f"Nodes: {len(self.nodes)}\n"
        for name, node in self.nodes.items():
            output += f'\t{node}\n'
        output += f"Resistors: {len(self.resistors)}\n"
        for name, resistor in self.resistors.items():
            output += f'\t{resistor}\n'
        output += f"Voltage sources: {len(self.voltage_sources)}\n"
        for name, voltage_source in self.voltage_sources.items():
            output += f'\t{voltage_source}\n'
        output += f"Current sources: {len(self.current_sources)}\n"
        for name, current_source in self.current_sources.items():
            output += f'\t{current_source}\n'
        return output


    def add_node(self, name):
        node_index = len(self.nodes)
        node = self._create_node(name, node_index)
        self._add_node(node)


    def add_resistor(self, node1, node2, value):
        # Create node if not exists
        if node1 not in self.nodes:
            self.add_node(node1)
        if node2 not in self.nodes:
            self.add_node(node2)
        
        resistor_index = len(self.resistors)
        resistor_name = f'R{resistor_index}'
        assert(resistor_name not in self.resistors)
        resistor = self._create_resistor(resistor_name, node1, node2, value, resistor_index)
        self._add_resistor(resistor)


    def add_voltage_source(self, pnode, nnode, value):
        # Create node if not exists
        if pnode not in self.nodes:
            self.add_node(pnode)
        if nnode not in self.nodes:
            self.add_node(nnode)
        voltage_source_index = len(self.voltage_sources)
        voltage_source_name = f'Vs{voltage_source_index}'
        assert(voltage_source_name not in self.voltage_sources)
        voltage_source = self._create_voltage_source(voltage_source_name, pnode, nnode, value, voltage_source_index)
        self._add_voltage_source(voltage_source)


    def add_current_source(self, pnode, nnode, value):
        # Create node if not exists
        if pnode not in self.nodes:
            self.add_node(pnode)
        if nnode not in self.nodes:
            self.add_node(nnode)
        current_source_index = len(self.current_sources)
        current_source_name = f'Is{current_source_index}'
        assert(current_source_name not in self.current_sources)
        current_source = self._create_current_source(current_source_name, pnode, nnode, value, current_source_index)
        self._add_current_source(current_source)



    def analyze(self):
        analyzer = mna.MNA()
        analyzer.configure(nodes=self.nodes, voltage_sources=self.voltage_sources, current_sources=self.current_sources, resistors=self.resistors)
        analyzer.build()
        x = analyzer.solve()
        self._update_nodes_voltage(x)


    def get_node_voltage(self, node_name):
        return self.nodes[node_name].voltage


    def _create_node(self, name, index):
        node = Node()
        node.name = name
        node.index = index
        return node


    def _add_node(self, node):
        self.nodes[node.name] = node


    def _create_voltage_source(self, name, pnode, nnode, value, index):
        voltage_source = VoltageSource()
        voltage_source.name = name
        voltage_source.pnode = pnode
        voltage_source.nnode = nnode
        voltage_source.value = value
        voltage_source.index = index
        return voltage_source


    def _create_current_source(self, name, pnode, nnode, value, index):
        current_source = CurrentSource()
        current_source.name = name
        current_source.pnode = pnode
        current_source.nnode = nnode
        current_source.value = value
        current_source.index = index
        return current_source


    def _add_current_source(self, current_source):
        self.current_sources[current_source.name] = current_source


    def _add_resistor(self, resistor):
        self.resistors[resistor.name] = resistor


    def _create_resistor(self, name, node1, node2, value, index):
        resistor = Resistor()
        resistor.name = name
        resistor.node1 = node1
        resistor.node2 = node2
        resistor.value = value
        resistor.index = index
        return resistor


    def _add_voltage_source(self, voltage_source):
        self.voltage_sources[voltage_source.name] = voltage_source


    def _update_nodes_voltage(self, x):
        for node_name, node in self.nodes.items():
            if node.index == 0:
                continue
            node.voltage = x[node.index-1][0]
            # NOTE: GND node (index=0) is not included in x


class Node:
    def __init__(self):
        self.name = ''
        self.index = None
        self.voltage = None

    def __str__(self):
        return f'Node name={self.name} index={self.index} voltage={self.voltage}'


class VoltageSource:
    def __init__(self):
        self.name = ''
        self.pnode = ''
        self.nnode = ''
        self.value = None
        self.index = None
        self.current = None

    def __str__(self):
        return f'VoltageSource name={self.name} index={self.index} pnode={self.pnode} nnode={self.nnode}  value={self.value}'


class CurrentSource:
    def __init__(self):
        self.name = ''
        self.pnode = ''
        self.nnode = ''
        self.value = None
        self.index = None

    def __str__(self):
        return f'CurrentSource name={self.name} index={self.index} pnode={self.pnode} nnode={self.nnode} value={self.value}'


class Resistor:
    def __init__(self):
        self.name = ''
        self.node1 = ''
        self.node2 = ''
        self.value = None
        self.index = None

    def __str__(self):
        return f'Resistor name={self.name} index={self.index} node1={self.node1} node2={self.node2} value={self.value}'


def main(args):
    # Set log level
    if args.log_level == 'DEBUG':
        logging.getLogger().setLevel(logging.DEBUG)
    elif args.log_level == 'INFO':
        logging.getLogger().setLevel(logging.INFO)
    else:
        raise ValueError(f'Invalid log level: {args.log_level}')
    pass


def test():
    logging.basicConfig(level=logging.INFO)
    logging.info('test')

    # Build circuit
    logging.info(f'Build circuit')
    test_circuit = Circuit()      # Reference node 'GND' is created internally
    test_circuit.add_resistor(node1='n1', node2='n2', value=1.0)        # nodes 'n1', 'n2' are created internally
    test_circuit.add_voltage_source(pnode='n1', nnode='GND', value=1.0)
    test_circuit.add_current_source(pnode='n2', nnode='GND', value=0.1)
    logging.info(f'...done\n{test_circuit}')

    # Analyze circuit
    logging.info(f'Analyze circuit')
    test_circuit.analyze()
    logging.info(f'...done\n')

    # Get node voltage
    logging.info(f'Get node voltage')
    v_n1 = test_circuit.get_node_voltage('n1')
    v_n2 = test_circuit.get_node_voltage('n2')
    logging.info(f'v_n1={v_n1}')
    logging.info(f'v_n2={v_n2}')

if __name__ == '__main__':
    test()
