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

    # 3d visual
    basis_map = np.load(basis_name)
    print(np.min(basis_map))
    print(np.max(basis_map))
    fig = plt.figure(figsize=(8, 6))
    ax = fig.add_subplot(111, projection='3d')
    x, y = np.meshgrid(np.arange(basis_map.shape[1]), np.arange(basis_map.shape[0]))
    z = basis_map
    #surface = ax.plot_surface(x, y, z, facecolors=plt.cm.viridis(basis_map / basis_map.max()), shade=False)
    surface = ax.plot_surface(x, y, z, cmap='viridis', shade=False)
    ax.set_title('3D Visualization of a 2D Array')
    ax.set_xlabel('X')
    ax.set_ylabel('Y')
    ax.set_zlabel('Z')
    plt.show()


#    idx=30
#    size_list = [2,4,8,16,32]
#    data = [np.load(f"{ROOT_DIR}/400_PGC-Sizer/data/basis_maps_0x/pgc_{idx}_size_{size}x.npy") for size in size_list]
#    print(np.shape(data)[0])
#    for i in range(np.shape(data)[0]):
#        print(np.mean(data[i]))

##    vmin = min(np.min(img) for img in data)
##    vmax = max(np.max(img) for img in data)
#
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
## 3d visual (5 sizes)
#fig = plt.figure(figsize=(15, 10))
#ax = fig.add_subplot(111, projection='3d')
#
#for i, img in enumerate(data):
#    x, y = np.meshgrid(np.arange(img.shape[1]), np.arange(img.shape[0]))
#    #z = np.ones_like(x) * i
#    z = data[i]
#    ax.plot_surface(x, y, z, rstride=1, cstride=1, facecolors=plt.cm.viridis(img / img.max()), shade=False)
#
#ax.set_title('3D Visualization of Maps')
#ax.set_xlabel('X')
#ax.set_ylabel('Y')
#ax.set_zlabel('Array Index')
#
#plt.show()
