import numpy as np
#from optimal_sizing_irdrop_extraction import extract_values_from_csv
from mk_indiv_IR_drop_map import extract_values_from_csv
import subprocess
import os
import sys
import yaml

python_executable = sys.executable
env = dict(os.environ)

env['PYTHONPATH'] = ':'.join(sys.path)

# Your directory
ROOT_DIR = '/home/pisolee/workspace/PGC-sizer'

#target yaml file to edit and run
#config_file_name = f'{ROOT_DIR}/config/experiment.yaml'
config_file_name = f'{ROOT_DIR}/config/IS_cur_10x_size_2x.yaml' #fix
file_path = 'nodes_voltage_4x.csv' #modifying
#export variables
env = {'config_file_name': config_file_name}


#pgc_location = [(1.0, 2.0),(1.0, 22.0),(1.0, 42.0),(1.0, 62.0),(31.0, 12.0),(31.0, 32.0),(31.0, 52.0),(61.0, 2.0),(61.0, 22.0),(61.0, 42.0),(61.0, 62.0)]

pgc_location = []
x_start = 1.3
y_start = 1.3
pgc_x_pitch = 20.4
pgc_y_pitch = 10.2
i = 0
while x_start + i * pgc_x_pitch < 380:
    j = 0
    while y_start + j * pgc_y_pitch < 380:
        pgc_location.append((x_start + i * pgc_x_pitch, y_start + j * pgc_y_pitch - 0.1))
        j += 1
    i += 1

#size_resistance = [13, 12, 11, 10, 9]
size_resistance = [184.375, 92.188, 46.094, 23.047, 11.523]
list_pgc_name = ['2x', '4x', '8x', '16x', '32x']

for i in range(722): #index of PGC
    pgc_x_coord = pgc_location[i][0]
    pgc_y_coord = pgc_location[i][1]
    modified_resistance = size_resistance[1]
    # update the resistance value for size 4, 3, 2, 1 of pgc {i}
    subprocess.run([python_executable, f'{ROOT_DIR}/src/edit_yaml.py',f'{pgc_x_coord}', f'{pgc_y_coord}', f'{modified_resistance}'], env=env)
    # node voltage extraction
    subprocess.run([python_executable, f'{ROOT_DIR}/src/app_4x.py', f'--config={config_file_name}'])

    matrix = extract_values_from_csv(file_path)
    
    output_file = f"{ROOT_DIR}/data/pgc_{i}_size_4x.npy" 
    np.save(output_file, matrix)

