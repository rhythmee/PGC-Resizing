import numpy as np
from mk_indiv_IR_drop_map import extract_values_from_csv
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
#config_file_name = f'{ROOT_DIR}/config/experiment.yaml'
config_file_name = f'{ROOT_DIR}/config/tv80_cur_10x.yaml'
node_voltage = 'nodes_voltage.csv'
#export variables
env = {'config_file_name': config_file_name}



pgc_location = []
x_start = 5.0
y_start = 5.0
pgc_x_pitch = 19.98
pgc_y_pitch = 9.99
i = 0
while x_start + i * pgc_x_pitch < 120:
    j = 0
    while y_start + j * pgc_y_pitch < 120:
        pgc_location.append(( round(x_start + i * pgc_x_pitch, 2), round(y_start + j * pgc_y_pitch - 0.1, 2) ))
        j += 1
    i += 1

#size_resistance = [184.375, 92.188, 46.094, 23.047, 11.523]
size_resistance = [11.523, 23.047, 46.094, 92.188, 184.375]
list_pgc_name = ['32x', '16x', '8x', '4x', '2x']

for i in range(72): #index of PGC
    for j, nf in enumerate(list_pgc_name):
        pgc_x_coord = pgc_location[i][0]
        pgc_y_coord = pgc_location[i][1]
        modified_resistance = size_resistance[j]
        subprocess.run([python_executable, f'{ROOT_DIR}/src/edit_yaml.py',f'{pgc_x_coord}', f'{pgc_y_coord}', f'{modified_resistance}'], env=env)


        # node voltage extraction
        subprocess.run([python_executable, f'{ROOT_DIR}/src/app.py', f'--config={config_file_name}'])

        matrix = extract_values_from_csv(node_voltage)
        
        output_file = f"{ROOT_DIR}/data/pgc_{i}_size_{nf}.npy" 
        np.save(output_file, matrix)



