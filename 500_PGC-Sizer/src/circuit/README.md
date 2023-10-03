# pycircuit

## How to use
You can build a circuit by adding elements using `add_resistor`, `add_voltage_source`, `add_current_source`.
```
test_circuit = Circuit()      # Reference node 'GND' is created internally
test_circuit.add_resistor(node1='n1', node2='n2', value=1.0)        # nodes 'n1', 'n2' are created internally
test_circuit.add_voltage_source(pnode='n1', nnode='GND', value=1.0)
test_circuit.add_current_source(pnode='n2', nnode='GND', value=0.1)
```

You can analyze the circuit, i.e., calculate node voltage, by `analyze`.
```
test_circuit.analyze()
```

You can access calculated node voltage values using `get_node_voltage`.
```
v_n1 = test_circuit.get_node_voltage('n1')
v_n2 = test_circuit.get_node_voltage('n2')
```
