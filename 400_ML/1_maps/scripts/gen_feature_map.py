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
ver_name = os.environ['VER_NAME']
#INPUT_MAP_DIR = os.environ['INPUT_MAP_DIR']
RESULTS_DIR = os.environ['RESULTS_DIR']

#def save_variable(v, filename):
#    f=open(filename, 'wb')
#    pickle.dump(v,f)
#    f.close()
#    return filename
#
#def load_variable(filename):
#    f=open(filename,'rb')
#    r=pickle.load(f)
#    f.close()
#    return r

filepath1 = sys.argv[1]
filepath2 = sys.argv[2]
print("filepath 1: " + filepath1)
print("filepath 2: " + filepath2)

#congestion report
with open(filepath1, 'r') as f1:
    data = f1.readlines()

new_data = []

flag1=0
for line in tqdm(data, ascii=True):
    linesplit = line.split()

    # skip unneccessary part
    if flag1 == 1:
        pass # keep go
    elif not linesplit:
        continue # return to first (next loop)
    elif linesplit[0] != 'Layer':
        continue
    else:
        flag1 += 1 #find out the first line
        continue

    if len(linesplit) == 6:
        layer = linesplit[0]
        str_llx = linesplit[1]
        str_lly = linesplit[2]
        str_urx = linesplit[3]
        str_ury = linesplit[4]
        congest = linesplit[5]

        llx = float(str_llx.replace('{{', ''))
        lly = float(str_lly.replace('}', ''))
        urx = float(str_urx.replace('{', ''))
        ury = float(str_ury.replace('}}', ''))

        list_congestion = list(map(int,congest.split('/'))) #[demand, capacity]
        demand = list_congestion[0]
        capacity = list_congestion[1]

        #if list_congestion[1]==0:
        if capacity==0 and demand==0:
            congestion = 0
            pass
        elif capacity == 0 and demand != 0:
            congestion = 1
            pass
        else:
            congestion = round(demand/capacity, 2)

        list_line = [ layer, llx, lly, urx, ury, demand, capacity, congestion ] 
        new_data.append(list_line)
    else:
        pass

# calculate the size of matrix
cnt_layer=0
first_layer = new_data[0][0]

for i in range(len(new_data)):
    if first_layer == new_data[i][0]:
        cnt_layer += 1
    else:
        break
print("# of GRC in each layer: " +str(cnt_layer))
n_layer = int(len(new_data)/cnt_layer)
print("# of layer: "+ str(n_layer))


x_size, y_size = 0,0 #icc2 GUI, bbox size
for line in new_data:
    if line[1]==0:
        y_size += 1
    else:
        break
x_size = int(cnt_layer/y_size)
print("Size (GRC unit)\nx_size: %d, y_size: %d" %(x_size,y_size))

# zero padding size (to 10x)
num_zero_x = 10 - (x_size % 10) if x_size % 10 != 0 else 0
num_zero_y = 10 - (y_size % 10) if y_size % 10 != 0 else 0

#make congestion map
flag_pdn=0
list_pdn_layer = ['M3', 'M4', 'M5', 'M6']
for idx in range(n_layer):
    layer_data = new_data[idx*cnt_layer:(idx+1)*cnt_layer] #each layer
    #list_rearrange = []
    list_rearrange_cng = []
    list_rearrange_demand = []
    list_rearrange_cap = []
    for x in range(x_size):
        list_temp_cng = [ layer_data[y+y_size*x][7] for y in range(y_size) ] #congesiton
        list_temp_demand = [ layer_data[y+y_size*x][5] for y in range(y_size) ]
        list_temp_cap = [ layer_data[y+y_size*x][6] for y in range(y_size) ]

        list_rearrange_cng.append(list_temp_cng)
        list_rearrange_demand.append(list_temp_demand)
        list_rearrange_cap.append(list_temp_cap)

    congestion_map = np.array(list_rearrange_cng)
    congestion_map = np.flipud(congestion_map.T) #ICC2 GUI
    demand_arr     = np.array(list_rearrange_demand)
    demand_arr     = np.flipud(demand_arr.T)     #ICC2 GUI
    capacity_arr   = np.array(list_rearrange_cap)
    capacity_arr   = np.flipud(capacity_arr.T)   #ICC2 GUI

    congestion_map   =  np.pad( congestion_map, ((num_zero_y,0),(0,num_zero_x)) ) #upper & right
    demand_arr       =  np.pad( demand_arr,     ((num_zero_y,0),(0,num_zero_x)) ) 
    capacity_arr     =  np.pad( capacity_arr,   ((num_zero_y,0),(0,num_zero_x)) ) 


    #merge to bin
    demand_arr = np.rot90(demand_arr, k=3) #ndarray GUI
    capacity_arr = np.rot90(capacity_arr, k=3) #ndarray GUI
    rows, cols = demand_arr.shape #90, 90
    x_bins, y_bins = rows//10, cols//10 #9, 9
    congestion_bin_map = np.zeros((x_bins, y_bins))
    for i in range(x_bins):
        for j in range(y_bins):
            x_start = i*10
            y_start = j*10
            tot_demand = np.sum(demand_arr[x_start:x_start+10, y_start:y_start+10])
            tot_capacity = np.sum(capacity_arr[x_start:x_start+10, y_start:y_start+10])
            bin_cng = round(tot_demand/tot_capacity, 2)
            
            congestion_bin_map[i, j] = bin_cng
    #congestion_bin_map = np.rot90(congestion_bin_map, k=1) # ICC2 GUI


    # stack up bin congstion map only for PDN layer
    tmp_cng_bin_map = np.expand_dims(congestion_bin_map, axis=0)
    print(f"max: {np.max(tmp_cng_bin_map)}\nmin: {np.min(tmp_cng_bin_map)}\nmean: {np.mean(tmp_cng_bin_map)}")
    if (new_data[idx*cnt_layer][0] in list_pdn_layer) and (flag_pdn==0): 
        cng_bin_map_3D = tmp_cng_bin_map
        flag_pdn = 1
    elif (new_data[idx*cnt_layer][0] in list_pdn_layer) and (flag_pdn == 1):
        cng_bin_map_3D = np.concatenate((cng_bin_map_3D, tmp_cng_bin_map), axis=0)
    else:
        continue

    print("Layer name: "+str(new_data[idx*cnt_layer][0]))

print("Shape of 3D congestion map:" +str(cng_bin_map_3D.shape))
#np.save(f'{INPUT_MAP_DIR}/input_maps/{design}_{uf}_congestion_map.npy', cng_bin_map_3D)
np.save(f'{RESULTS_DIR}/congestion_map.npy', cng_bin_map_3D)



#current map
# x_size=86, y_size=87 
#pitch=0.6
with open(filepath2, 'r') as f2:
    data2 = f2.readlines()
current_map = np.zeros((x_size, y_size)) #ndarray GUI

flag2=0
for line in tqdm(data2, ascii=True):
    linesplit = line.split() #[i_tv80_core_RegAddrC_reg_1_, 4.30441e-06, 17.18, 28.5, 0.870432, VDD]

    # skip unneccessary part
    if flag2 == 1:
        pass # keep go
    elif not linesplit:
        continue # return to first (next loop)
    elif linesplit[0] != 'Instance_name':
        continue
    else:
        flag2 += 1 #find out the first line
        continue

    inst_name = linesplit[0]
    avg_pwr = float(linesplit[1])
    x_coord = float(linesplit[2])
    y_coord = float(linesplit[3])
    vdd_drop= float(linesplit[4])
    pwr_net = linesplit[5]
    current = avg_pwr / 0.88 #vdd

    x_idx = math.floor(x_coord / 0.6) #pitch
    y_idx = math.floor(y_coord / 0.6)

    if x_idx >= x_size:
        x_idx = x_size -1
    if y_idx >= y_size:
        y_idx = y_size -1
    current_map[x_idx, y_idx] += current

current_map = np.rot90(current_map, k=1) #for icc2 GUI like
current_map = np.pad( current_map, ((num_zero_y,0),(0,num_zero_x)) ) 

#merge to bin
current_map = np.rot90(current_map, k=3) #for ndarray GUI
rows, cols = current_map.shape
x_bins, y_bins = rows//10, cols//10
#x_bins, y_bins = rows//2, cols//2
current_bin_map = np.zeros((x_bins, y_bins))
for i in range(x_bins):
    for j in range(y_bins):
        x_start = i*10
        y_start = j*10
        total = np.sum(current_map[x_start:x_start+10, y_start:y_start+10])
        current_bin_map[i, j] = total
#for i in range(x_bins):
#    for j in range(y_bins):
#        x_start = i*2
#        y_start = j*2
#        total = np.sum(current_map[x_start:x_start+2, y_start:y_start+2])
#        current_bin_map[i, j] = total
#current_bin_map = np.rot90(current_bin_map, k=1) # ICC2 GUI

print("Shape of current map:" +str(current_bin_map.shape))
np.save(f'{RESULTS_DIR}/current_map.npy', current_bin_map)
#np.save(f'{INPUT_MAP_DIR}/input_maps/{design}_{uf}_current_GRC_map.npy', current_bin_map)
