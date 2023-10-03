import numpy as np
import matplotlib.pyplot as plt
from sklearn.manifold import TSNE
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
output_yaml_file = f'{ROOT_DIR}/config/tv80_modified_yaml_file_0x.yaml'

node_voltage = 'nodes_voltage.csv'



## -------------------------------------------------
## | make intentional pgc_size_dict (combinations) |
## -------------------------------------------------
#
#size_resistance = [10000, 184.375, 92.188, 46.094, 23.047, 11.523]
#list_pgc_name = ['0x', '2x', '4x', '8x', '16x', '32x']
#
##combination_idx = []
#comb_idx=0
#pgc_size_dict = {}
#for i in range(6):
#    for j in range(6):
#        for k in range(6):
#            combination_idx = [3]*72
#            combination_idx[12] = i
#            combination_idx[42] = j
#            combination_idx[71] = k
#            combination_name = [list_pgc_name[idx] for idx in combination_idx] # '0x' to '32x'
#            combination_value = [size_resistance[idx] for idx in combination_idx] # 10,000 to 11.523
#            pgc_size_dict[comb_idx] = {'name_list': combination_name, 'value_list': combination_value}
#            comb_idx += 1
#
#print(comb_idx)
#
#with open ('pgc_size_dict_0x_intent.pkl', 'wb') as pkl_file:
#    pickle.dump(pgc_size_dict, pkl_file)
#



## --------------------------------------------
## | make random pgc_size_dict (combinations) |
## --------------------------------------------
#
#pgc_location = []
#x_start = 5.0
#y_start = 5.0
#pgc_x_pitch = 19.98
#pgc_y_pitch = 9.99
#i = 0 
#while x_start + i * pgc_x_pitch < 120:
#    j = 0
#    while y_start + j * pgc_y_pitch < 120:
#        pgc_location.append((round(x_start + i * pgc_x_pitch, 2), round(y_start + j * pgc_y_pitch - 0.1, 2)))
#        j += 1
#    i += 1 
#
#size_resistance = [10000, 184.375, 92.188, 46.094, 23.047, 11.523] 
#list_pgc_name = ['0x', '2x', '4x', '8x', '16x', '32x']
#
#
#pgc_size_dict = {}
#total_pgc = 72
#num_combinations = 100
#
#for _ in range(num_combinations):
#    combination_idx = [random.randint(0, 5) for _ in range(total_pgc)] # index of size 0x to 32x (6 sizes)
#    combination_name = [list_pgc_name[idx] for idx in combination_idx] # '0x' to '32x'
#    combination_value = [size_resistance[idx] for idx in combination_idx] # 10,000 to 11.523
#    #pgc_size_dict[_] = combination
#    pgc_size_dict[_] = {'name_list': combination_name, 'value_list': combination_value}
#
#with open ('pgc_size_dict_0x_test.pkl', 'wb') as pkl_file:
#    pickle.dump(pgc_size_dict, pkl_file)




## ---------------------------------
## |    make reference dataset     |
## ---------------------------------
#
## reload pgc_size_dict
#with open('pgc_size_dict_0x_intent.pkl', 'rb') as pkl_file:
#    pgc_size_dict = pickle.load(pkl_file)
#
##print("Size of pgc_size_dict:", len(pgc_size_dict))
##print(pgc_size_dict[50])
##print("")
##print(pgc_size_dict[51])
#
#for k, v in pgc_size_dict.items(): #comb idx, dictionary of size(name, value)
#
#    new_resistances = v['value_list']
#    #edit YAML file at once
#    subprocess.run([python_executable, f'{ROOT_DIR}/src/edit_yaml_at_once.py',f'{input_yaml_file}', f'{output_yaml_file}', f'{new_resistances}'], env=env)
#
#    #node voltage extraction
#    subprocess.run([python_executable, f'{ROOT_DIR}/src/app.py', f'--config={output_yaml_file}'])
#
#    matrix = extract_values_from_csv(node_voltage)
#    output_file = f"{ROOT_DIR}/data/reference_0x/intent_{k}.npy" 
#    np.save(output_file, matrix)


## --------------------------------
## |    Dataset visualization     |
## --------------------------------
##Heat map
# reload pgc_size_dict
with open('pgc_size_dict_0x.pkl', 'rb') as pkl_file:
    pgc_size_dict = pickle.load(pkl_file)
with open('pgc_size_dict_0x_test.pkl', 'rb') as pkl_file:
    pgc_size_dict_test = pickle.load(pkl_file)
with open('pgc_size_dict_0x_intent.pkl', 'rb') as pkl_file:
    pgc_size_dict_intent = pickle.load(pkl_file)


print("Size of pgc_size_dict:", len(pgc_size_dict))
print("Size of pgc_size_dict_test:", len(pgc_size_dict_test))
#print(pgc_size_dict[50]['name_list'])
#print("")

data_list = []
for k, v in pgc_size_dict.items():
    data = v['name_list']
    data_list.append(data)

test_data_list = []
for k, v in pgc_size_dict_test.items():
    data = v['name_list']
    test_data_list.append(data)

intent_data_list = []
for k, v in pgc_size_dict_intent.items():
    data = v['name_list']
    intent_data_list.append(data)

value_mapping = {'0x': 0, '2x': 1, '4x': 2, '8x': 3, '16x': 4, '32x': 5}
numeric_data = [[value_mapping[value] for value in data] for data in data_list]
numeric_data_test = [[value_mapping[value] for value in data] for data in test_data_list]
numeric_data_intent = [[value_mapping[value] for value in data] for data in intent_data_list]

test_idx = [5, 10, 18, 33, 47, 50, 68, 72, 88, 104, 129, 140, 168, 182, 190, 210]
train_idx = list(set(range(216))-set(test_idx))
numeric_data_intent_train = [ numeric_data_intent[idx] for idx in train_idx ]
numeric_data_intent_test =  [ numeric_data_intent[idx] for idx in test_idx ]

plt.figure(figsize=(10, 8))
plt.imshow(numeric_data_intent_test, cmap='cool', aspect='auto')
plt.colorbar(label='Value')
plt.title('Heatmap of Data')
plt.xlabel('Vector Elements')
plt.ylabel('Samples')
plt.show()
#
#
## data point in vector space
#tsne = TSNE(n_components=2, random_state=42)
#data_2d = tsne.fit_transform(numeric_data)
#test_data_2d = tsne.fit_transform(numeric_data_test)
#plt.figure(figsize=(10, 8))
#plt.scatter(data_2d[:, 0], data_2d[:, 1], c='blue', marker='o', alpha=0.5, label='Training Data')
#plt.scatter(test_data_2d[:, 0], test_data_2d[:, 1], c='red', marker='x', alpha=0.5, label='Test Data')
#plt.title('t-SNE Visualization of High-Dimensional Data')
#plt.xlabel('Dimension 1')
#plt.ylabel('Dimension 2')
#plt.grid()
#plt.show()

