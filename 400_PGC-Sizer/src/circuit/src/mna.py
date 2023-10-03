# mna.py

import logging
import numpy as np

## NOTE: Current limitations
## 1. Only grounded voltage sources supported
## 2. Only independent sources supported

class MNA:
    def __init__(self):
        self.nodes = {}
        self.voltage_sources = {}
        self.current_sources = {}
        self.resistors = {}
        self.G = None
        self.B = None
        self.C = None
        self.D = None

    def configure(self, nodes, voltage_sources, current_sources, resistors):
        self.nodes = nodes
        self.voltage_sources = voltage_sources
        self.current_sources = current_sources
        self.resistors = resistors
        logging.info(f"\tConfigured MNA")
        logging.info(f"\t# nodes: {len(self.nodes)}")
        logging.info(f"\t# voltage_sources: {len(self.voltage_sources)}")
        logging.info(f"\t# current_sources: {len(self.current_sources)}")
        logging.info(f"\t# resistors: {len(self.resistors)}")
        logging.info(f"")

    def build(self):
        logging.debug('Building MNA matrix')
        # n: number of nodes (except GND)
        # m: number of voltage sources

        # 1. A matrix
        # = | G B |
        #   | C D |

        ## 1-1. G matrix (nxn)
        logging.debug(f"Building G matrix")
        self.G = np.zeros((len(self.nodes)-1, len(self.nodes)-1))
        for _, _resistor in self.resistors.items():
            logging.debug(f"{_resistor}")
            node1 = self.nodes.get(_resistor.node1)
            logging.debug(f"node1: {node1}")
            node2 = self.nodes.get(_resistor.node2)
            logging.debug(f"node2: {node2}")
            if node1 is None or node2 is None:
                raise Exception('Node not found')
            if node1 == node2:
                raise Exception('Resistor connected to same node')
            if node1.index > 0:
                self.G[node1.index-1][node1.index-1] += 1/_resistor.value
            if node2.index > 0:
                self.G[node2.index-1][node2.index-1] += 1/_resistor.value
            if node1.index > 0 and node2.index >= 0:
                self.G[node1.index-1][node2.index-1] -= 1/_resistor.value
                self.G[node2.index-1][node1.index-1] -= 1/_resistor.value
            # NOTE: GND node (index=0) is not included in the matrix
            
        ## 1-2. B matrix (nxm)
        self.B = np.zeros((len(self.nodes)-1, len(self.voltage_sources)))
        for _, _voltage_source in self.voltage_sources.items():
            pnode = self.nodes.get(_voltage_source.pnode)
            nnode = self.nodes.get(_voltage_source.nnode)
            if pnode is None or nnode is None:
                raise Exception('Node not found')
            if pnode == nnode:
                raise Exception('Voltage source connected to same node')
            if pnode.index > 0:
                self.B[pnode.index-1][_voltage_source.index] += 1
            if nnode.index > 0:
                self.B[nnode.index-1][_voltage_source.index] -= 1
            # NOTE: GND node (index=0) is not included in the matrix

        ## 1-3. C matrix (mxn)
        self.C = np.zeros((len(self.voltage_sources), len(self.nodes)-1))
        logging.debug(self.C.shape)
        for _, _voltage_source in self.voltage_sources.items():
            pnode = self.nodes.get(_voltage_source.pnode)
            nnode = self.nodes.get(_voltage_source.nnode)
            logging.debug(f"voltage_source_index: {_voltage_source.index}")
            if pnode is None or nnode is None:
                raise Exception('Node not found')
            if pnode == nnode:
                raise Exception('Voltage source connected to same node')
            if pnode.index > 0:
                self.C[_voltage_source.index][pnode.index-1] += 1
            if nnode.index > 0:
                self.C[_voltage_source.index][nnode.index-1] -= 1
            # NOTE: GND node (index=0) is not included in the matrix

        ## 1-4. D matrix (mxm)
        self.D = np.zeros((len(self.voltage_sources), len(self.voltage_sources)))

        # 2. z matrix
        # = | i |
        #   | e |

        ## 2-1. i matrix (nx1): sum of current sources into the corresponding node
        self.i = np.zeros((len(self.nodes)-1, 1))
        for _, _current_source in self.current_sources.items():
            pnode = self.nodes.get(_current_source.pnode)
            nnode = self.nodes.get(_current_source.nnode)
            if pnode is None or nnode is None:
                raise Exception('Node not found')
            if pnode == nnode:
                raise Exception('Current source connected to same node')
            if pnode.index > 0:
                self.i[pnode.index-1] -= _current_source.value
            if nnode.index > 0:
                self.i[nnode.index-1] += _current_source.value
            # NOTE: GND node (index=0) is not included in the matrix

        ## 2-2. e matrix (mx1): voltage sources
        self.e = np.zeros((len(self.voltage_sources), 1))
        for _, _voltage_source in self.voltage_sources.items():
            self.e[_voltage_source.index] = _voltage_source.value


    def solve(self):
        logging.info('\tSolving MNA system')
        A = np.block([[self.G, self.B], [self.C, self.D]])
        z = np.block([[self.i], [self.e]])
        logging.debug(f"A:\n{A}")
        logging.debug(f"diag(A):\n{np.diag(A)}")
        logging.debug(f"z:\n{z}")
        x = np.linalg.solve(A, z)
        logging.debug(f"x:\n{x}")
        return x


