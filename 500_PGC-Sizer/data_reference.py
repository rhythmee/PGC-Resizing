import numpy as np
from mk_indiv_IR_drop_map import extract_values_from_csv
import subprocess
import os
import sys
import yaml
import random
import pickle

python_executable = sys.executable
env = dict(os.environ)
env['PYTHONPATH'] = ':'.join(sys.path)

# Your directory
ROOT_DIR = '/home/ischo/PGC_OPT/500_PGC-sizer'

#target yaml file to edit and run
input_yaml_file = f'{ROOT_DIR}/config/tv80_cur_10x.yaml'
output_yaml_file = f'{ROOT_DIR}/config/tv80_modified_yaml_file.yaml'

node_voltage = 'nodes_voltage.csv'


pgc_location = []
x_start = 5.0
y_start = 5.0
pgc_x_pitch = 19.98
pgc_y_pitch = 9.99
i = 0 
while x_start + i * pgc_x_pitch < 120:
    j = 0
    while y_start + j * pgc_y_pitch < 120:
        pgc_location.append((round(x_start + i * pgc_x_pitch, 2), round(y_start + j * pgc_y_pitch - 0.1, 2)))
        j += 1
    i += 1 

size_resistance = [184.375, 92.188, 46.094, 23.047, 11.523] 
list_pgc_name = ['2x', '4x', '8x', '16x', '32x']

# make random pgc_size_dict (combinations)
#pgc_size_dict = {}
#total_pgc = 72
#num_combinations = 1000
#
#for _ in range(num_combinations):
#    combination_idx = [random.randint(0, 4) for _ in range(total_pgc)] # index of size 2x to 32x
#    combination_name = [list_pgc_name[idx] for idx in combination_idx] # '2x' to '32x'
#    combination_value = [size_resistance[idx] for idx in combination_idx] # 184.375 to 11.523
#    #pgc_size_dict[_] = combination
#    pgc_size_dict[_] = {'name_list': combination_name, 'value_list': combination_value}
#
#with open ('pgc_size_dict.pkl', 'wb') as pkl_file:
#    pickle.dump(pgc_size_dict, pkl_file)


# reload pgc_size_dict
with open('pgc_size_dict.pkl', 'rb') as pkl_file:
    pgc_size_dict = pickle.load(pkl_file)

#print("Size of pgc_size_dict:", len(pgc_size_dict))
#print(pgc_size_dict[500])
#print("")
#print(pgc_size_dict[501])
#print("")

# ---------------------------------
# |    make reference dataset     |
# ---------------------------------

for k, v in pgc_size_dict.items(): #comb idx, dictionary of size(name, value)

    new_resistances = v['value_list']
    #edit YAML file at once
    subprocess.run([python_executable, f'{ROOT_DIR}/src/edit_yaml_at_once.py',f'{input_yaml_file}', f'{output_yaml_file}', f'{new_resistances}'], env=env)

    #node voltage extraction
    subprocess.run([python_executable, f'{ROOT_DIR}/src/app.py', f'--config={output_yaml_file}'])

    matrix = extract_values_from_csv(node_voltage)
    output_file = f"{ROOT_DIR}/data/reference/ref_{k}.npy" 
    np.save(output_file, matrix)

