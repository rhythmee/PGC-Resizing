# PGC-sizer

## How to run
```
python src/app.py --config=CONFIG_FILE_NAME [--log-level=LOG_LEVEL]
```
`CONFIG_FILE_NAME`: path to a file which configures tech and PDN (strap, supply voltage, load current, PGC); please refer to `config/test1.yaml`  
`LOG_LEVEL`: `INFO` or `DEBUG`; default is `INFO`  

## Accessing node voltages
You can refer to a dumped file `nodes_voltage.csv` in the running directory which contains layer, x, y, and voltage of each node.  
You can also access calculated node voltages in `node_voltages` attribute of PDN object.
```
test_pdn = pdn.PDN()
# ...
# PDN is built
# ...
test_pdn.analyze()
for node_name, node_voltage in test_pdn.node_voltages.items():
  layer, x, y = node_name.split('_')
  voltage = node_voltage
```
