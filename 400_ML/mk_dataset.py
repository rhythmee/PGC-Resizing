# Convert input_maps to input.npy (to easily input to pytorch model)
# current_directory: 400_ML

from tqdm import tqdm
import time
import numpy as np
import matplotlib.pyplot as plt
import os 
import datetime
now_date = datetime.datetime.now().strftime("%m-%d")

def create_clips_5x5_3D(arr): #arr.shape=(N,C,D,X,Y)
    result=[]
    n, c, d, x, y = arr.shape
    clip_x = (x + 4) // 5
    clip_y = (y + 4) // 5

    for i in range(clip_x):
        for j in range(clip_y):
            start_x = i * 5
            end_x = min(start_x + 5, x)
            if end_x == x:
                start_x = end_x - 5
            start_y = j * 5
            end_y = min(start_y + 5, y)
            if end_y == y:
                start_y = end_y - 5

            clip = arr[:, :, :, start_x:end_x, start_y:end_y]

            result.append(clip)

    return np.concatenate(result, axis=0)




def restore_array(x, y, clips):
    arr = np.zeros((x, y), dtype=np.int)  # initial array

    clip_x = (x + 4) // 5
    clip_y = (y + 4) // 5

    for i in range(clip_x):
        for j in range(clip_y):
            start_x = i * 5
            end_x = min(start_x + 5, x)
            if end_x == x:
                start_x = end_x - 5
            start_y = j * 5
            end_y = min(start_y + 5, y)
            if end_y == y:
                start_y = end_y - 5

            clip = clips[i * clip_y + j]  # current clip
            arr[start_x:end_x, start_y:end_y] = clip  # restore array

    return arr


def create_clips_7x7_2D(arr): #arr.shape=(N,C,X,Y)
    result = []
    n, c, x, y = arr.shape
    arr_padded = np.pad(arr, ((0, 0), (0, 0), (1, 1), (1, 1)), mode='constant')
    clip_x = (x + 4) // 5
    clip_y = (y + 4) // 5

    for i in range(clip_x):
        for j in range(clip_y):
            start_x = i * 5
            end_x = min(start_x + 5, x)
            if end_x == x:
                start_x = end_x - 5
            start_y = j * 5
            end_y = min(start_y + 5, y)
            if end_y == y:
                start_y = end_y - 5

            #adjust index to 7x7 clipping
            clip = arr_padded[:, :, start_x:end_x+2, start_y:end_y+2]
            result.append(clip)

    return np.concatenate(result, axis=0)

def create_clips_7x7_3D(arr): #arr.shape=(N,C,D,X,Y)
    result = []
    n,c,d,x,y = arr.shape
    arr_padded = np.pad(arr, ((0, 0), (0, 0), (0, 0), (1, 1), (1, 1)), mode='constant')
    clip_x = (x + 4) // 5
    clip_y = (y + 4) // 5

    for i in range(clip_x):
        for j in range(clip_y):
            start_x = i * 5
            end_x = min(start_x + 5, x)
            if end_x == x:
                start_x = end_x - 5
            start_y = j * 5
            end_y = min(start_y + 5, y)
            if end_y == y:
                start_y = end_y - 5

            #adjust index to 7x7 clipping
            clip = arr_padded[:, :, :, start_x:end_x+2, start_y:end_y+2]
            result.append(clip)

    return np.concatenate(result, axis=0)


#---------------------------------------------------------


current_dir = os.getcwd()
#root_dir = '/home/ischo/PDN_SYNTH/300_input_maps/input_maps/'
input_map_dir = f'{current_dir}/1_maps/input_maps/'
ref_map_dir = f'{current_dir}/1_maps/ref_maps/'

#LIST_UF=["0.60", "0.65", "0.70", "0.75"]
#LIST_DESIGN=["xge_mac", "vga_lcd",  "tv80", "systemcaes", "des3_perf", "tate_pairing_151", \
#        "reed_solomon_decoder", "sha3_high_perf", "ac97_ctrl", "sd_card_controller", \
#        "pci", "mem_ctrl", "usb_funct", "wb_dma", "fft_64"]
LIST_UF=["0.60"]
LIST_DESIGN=["tv80"]


cnt=0
for uf in LIST_UF:
    for design in LIST_DESIGN:
        max_util = "0.90"
        ver_name = f"{design}_{uf}_{max_util}"
        cng_map_name = f"{input_map_dir}/{ver_name}/congestion_map.npy"
        cur_map_name = f"{input_map_dir}/{ver_name}/current_map.npy"
        ir_map_name = f"{ref_map_dir}/{ver_name}/ir_map.npy"

        # load maps.npy & clipping
        cng_map = np.load(cng_map_name) # (4,9,9)
        tmp_cng_map = np.expand_dims(cng_map, axis=(0,1)) #(1,1,4,9,9)
        #print(tmp_cng_map.shape)
        tmp_cng_clips = create_clips_7x7_3D(tmp_cng_map) # (4,1,4,7,7)
        #print(tmp_cng_clips.shape)

        cur_map = np.load(cur_map_name) # ()
        tmp_cur_map = np.expand_dims(cur_map, axis=(0,1)) #(1,1,9,9)
        #print(tmp_cur_map.shape)
        tmp_cur_clips = create_clips_7x7_2D(tmp_cur_map) # (4,1,7,7)
        #print(tmp_cur_clips.shape)

        ir_map = np.load(ir_map_name) # ()
        tmp_ir_map = np.expand_dims(ir_map, axis=(0,1)) #(1,1,4,9,8)
        #print(tmp_ir_map.shape)
        tmp_ir_clips = create_clips_5x5_3D(tmp_ir_map) # (4,1,4,5,5)
        #print(tmp_ir_clips.shape)


        if cnt==0:
            merge_cng = tmp_cng_clips
            merge_cur = tmp_cur_clips
            merge_ir = tmp_ir_clips
            cnt += 1
        else:
            merge_cng = np.concatenate((merge_cng, tmp_cng_clips), axis=0)
            merge_cur = np.concatenate((merge_cur, tmp_cur_clips), axis=0)
            merge_ir = np.concatenate((merge_ir, tmp_ir_clips), axis=0)

print("")
print("congestion map size: "+str(merge_cng.shape))
print("current map size: "+str(merge_cur.shape))
print("ir map size: "+str(merge_ir.shape))
        
np.save(f'{current_dir}/2_model/data/cng_%s.npy' %now_date, merge_cng)
np.save(f'{current_dir}/2_model/data/cur_%s.npy' %now_date, merge_cur)
np.save(f'{current_dir}/2_model/data/ir_%s.npy' %now_date, merge_ir)

