# Load reference data from /400_PGC-Sizer/data
# basis map interpolation test

import os
import numpy as np
import torch
import torch.nn as nn
#import torch.nn.init as init
import torch.optim as optim
import matplotlib.pyplot as plt
import time
import datetime
from mpl_toolkits.mplot3d import Axes3D

def calculate_mape(actual, predicted):
    n = len(actual)
    mape = (1/n) * np.sum(np.abs((actual-predicted) / actual)) * 100
    return mape

if __name__ == "__main__":

    now_date = datetime.datetime.now().strftime("%m-%d_%H:%M")

    current_directory = os.getcwd() # /500_ML/
    ROOT_DIR = os.path.dirname(current_directory) # /PGC-Resizing/

    ######################### Load Dataset ###########################
    idx = 30
    size = 2
    basis_name = f"{ROOT_DIR}/400_PGC-Sizer/data/basis_maps_0x/pgc_{idx}_size_{size}x.npy"

#    # 2d visual
#    basis_map = np.load(basis_name)
#    print(basis_map.shape)
#    print(np.min(basis_map))
#    print(np.max(basis_map))
#    plt.imshow(basis_map, cmap='viridis')
#    plt.colorbar()
#    plt.show()

#    # 3d visual
#    basis_map = np.load(basis_name)
#    print(np.min(basis_map))
#    print(np.max(basis_map))
#    fig = plt.figure(figsize=(8, 6))
#    ax = fig.add_subplot(111, projection='3d')
#    x, y = np.meshgrid(np.arange(basis_map.shape[1]), np.arange(basis_map.shape[0]))
#    z = basis_map
#    #surface = ax.plot_surface(x, y, z, facecolors=plt.cm.viridis(basis_map / basis_map.max()), shade=False)
#    surface = ax.plot_surface(x, y, z, cmap='viridis', shade=False)
#    ax.set_title('3D Visualization of a 2D Array')
#    ax.set_xlabel('X')
#    ax.set_ylabel('Y')
#    ax.set_zlabel('Z')
#    plt.show()






    ######################### Load Dataset in series ###########################
    idx=30
    size_list = [2,4,8,16,32]
    data = [np.load(f"{ROOT_DIR}/400_PGC-Sizer/data/basis_maps_0x/pgc_{idx}_size_{size}x.npy") for size in size_list]
#    print(np.shape(data)[0])
#    for i in range(np.shape(data)[0]):
#        print(np.mean(data[i]))


## 2d visual (5 sizes)
##    #visualize
##    fig, axs = plt.subplots(1, 5, figsize=(15, 3))
##
##
##    for i in range(5):
##        heatmap = axs[i].imshow(data[i], cmap='viridis')
##        axs[i].set_title(f'Array {i+1}')
##
##        fig.colorbar(heatmap, ax=axs[i])
##
##    plt.tight_layout()
##    plt.show()
#
#
#    # 3d visual (5 sizes)
#    fig = plt.figure(figsize=(15, 10))
#    ax = fig.add_subplot(111, projection='3d')
#
#    for i, img in enumerate(data):
#        x, y = np.meshgrid(np.arange(img.shape[1]), np.arange(img.shape[0]))
#        #z = np.ones_like(x) * i
#        z = data[i]
#        ax.plot_surface(x, y, z, rstride=1, cstride=1, facecolors=plt.cm.viridis(img / img.max()), shade=False)
#
#    ax.set_title('3D Visualization of Maps')
#    ax.set_xlabel('X')
#    ax.set_ylabel('Y')
#    ax.set_zlabel('Array Index')
#
#    plt.show()

    # Weighted sum of top/bottom maps
    #alpha = 0.2
    alpha = 0.4667
    bottom_map = data[4] #smallest IR-drop
    top_map = data[0] #largest IR-drop
    #target_map = data[2]
    target_map = data[1]

    out_map = (1 - alpha) * bottom_map + alpha * top_map

    #Error
    mape = calculate_mape(target_map.ravel(), out_map.ravel())
    print(f'MAPE: {mape:.2f}%')

    #visual
    fig, axs = plt.subplots(1,2,figsize=(5,5))

    heatmap = axs[0].imshow(target_map, cmap='viridis')
    axs[0].set_title('target map')
    fig.colorbar(heatmap, ax=axs[0])

    heatmap = axs[1].imshow(out_map, cmap='viridis')
    axs[1].set_title('interpolated (alpha=0.2)')
    fig.colorbar(heatmap, ax=axs[1])

    #fig.suptitle(f'MAPE: {mape:.2f}%', fontsize=16)
    plt.tight_layout()
    plt.show()

    




    fig = plt.figure(figsize=(5,10))
    ax = fig.add_subplot(111, projection='3d')
    x, y = np.meshgrid(np.arange(out_map.shape[1]), np.arange(out_map.shape[0]))

    cmap = plt.get_cmap('viridis')
    cmap2 = plt.get_cmap('rainbow')

#    bottom_surface = ax.plot_surface(x, y, bottom_map, cmap=cmap, shade=False)
#    top_surface = ax.plot_surface(x, y, top_map, cmap=cmap, shade=False)
    target_surface = ax.plot_surface(x, y, target_map, cmap=cmap, shade=False)
    out_surface = ax.plot_surface(x, y, out_map, cmap=cmap2, shade=False)
    
    #fig.colorbar(mid_surface, ax=ax)
    plt.show()
#
#    
#    # solve Least Squares Problem
    bottom_map = data[4] #smallest IR-drop
    top_map = data[0] #largest IR-drop

    target_map = data[1]
    alpha = (target_map - bottom_map) / (top_map - bottom_map)
    print(round(np.mean(alpha),4))
    target_map = data[2]
    alpha = (target_map - bottom_map) / (top_map - bottom_map)
    print(round(np.mean(alpha),4))
    target_map = data[3]
    alpha = (target_map - bottom_map) / (top_map - bottom_map)
    print(round(np.mean(alpha),4))
    #A = np.vstack([data0.flatten(), -data_4.flatten()]).T

