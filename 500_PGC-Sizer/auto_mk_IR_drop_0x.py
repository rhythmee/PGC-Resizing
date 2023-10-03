import numpy as np
from mk_indiv_IR_drop_map import extract_values_from_csv
from src.edit_yaml_single_pgc import *
import subprocess
import os
import sys
import yaml

python_executable = sys.executable
env = dict(os.environ)

env['PYTHONPATH'] = ':'.join(sys.path)

# Your directory
ROOT_DIR = '/home/ischo/PGC_OPT/500_PGC-sizer'

#target yaml file to edit and run
input_yaml_file = f'{ROOT_DIR}/config/tv80_cur_10x_single_pgc.yaml'
output_yaml_file = f'{ROOT_DIR}/config/tv80_modified_single_pgc.yaml'
node_voltage = 'nodes_voltage.csv'



pgc_location = [] #coord of pgc
x_start = 5.0
y_start = 5.0
pgc_x_pitch = 19.98
pgc_y_pitch = 9.99

i = 0
while x_start + i * pgc_x_pitch < 120:
    j = 0
    while y_start + j * pgc_y_pitch < 120:
        pgc_location.append(( round(x_start + i * pgc_x_pitch, 2), round(y_start + j * pgc_y_pitch - 0.1, 2) )) #tuple
        j += 1
    i += 1


#size_resistance = [184.375, 92.188, 46.094, 23.047, 11.523]
size_resistance = [11.523, 23.047, 46.094, 92.188, 184.375]
list_pgc_name = ['32x', '16x', '8x', '4x', '2x']

for idx_pgc, tuple_coord in enumerate(pgc_location):
    #print(x_coord, y_coord)
    update_pgc_coord(input_yaml_file, output_yaml_file, tuple_coord)

    for idx_res, resistance in enumerate(size_resistance):
        update_pgc_resistance(output_yaml_file, output_yaml_file, resistance)
        pgc_size_str = list_pgc_name[idx_res]

        #node voltage extraction
        subprocess.run([python_executable, f'{ROOT_DIR}/src/app.py', f'--config={output_yaml_file}'])

        matrix = extract_values_from_csv(node_voltage)

        output_file = f"{ROOT_DIR}/data/indiv_maps_0x/pgc_{idx_pgc}_size_{pgc_size_str}.npy" 
        np.save(output_file, matrix)


