# Size 10x (No zero padding for clip size)
# 10 GRC x 10 GRC = 1 bin (snps14)

from tqdm import tqdm 
import time
import sys
import numpy as np
import pickle
import math
import matplotlib.pyplot as plt
import os

ROOT_DIR = os.environ['ROOT_DIR']
design = os.environ['DESIGN']
uf = os.environ['CORE_UTIL']
#MAP_DIR = os.environ['MAP_DIR']
RESULTS_DIR = os.environ['RESULTS_DIR']

# Read text file
filepath1 = sys.argv[1]
print("filepath 1: " + filepath1)

#node_voltages.txt
with open(filepath1, 'r') as f1:
    lines = f1.readlines()

# Data parsing
layer_set = set()
coord_set = set()
voltages = []
for line in lines:
    elements = line.strip().split()
    layer = elements[0]
    layer_set.add(layer)
    x = (int(float(elements[1])) - 3) // 6
    y = (int(float(elements[2])) - 3) // 6
    coord_set.add((x, y))
    voltage = float(elements[3])
    voltages.append((layer, x, y, voltage))

# ndarray size
max_x = 0
max_y = 0
for coord in coord_set:
    if coord[0] > max_x:
        max_x = coord[0]
    if coord[1] > max_y:
        max_y = coord[1]

num_x = max_x + 1
num_y = max_y + 1
num_layers = len(layer_set)


# Save to ndarray 
ndarray = np.zeros((num_layers, num_x, num_y))
for data in voltages:
    layer, x, y, voltage = data
    layer_index = int(layer[1:])-3
    ndarray[layer_index, x, y] = voltage


#print(ndarray)

print("Shape of IR-drop map:" +str(ndarray.shape))

np.save(f'{RESULTS_DIR}/ir_map.npy', ndarray)
