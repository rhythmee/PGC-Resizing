#Generator and Discriminator
#Generator: U-net based neural network
#Discriminator: CNN

import torchvision.datasets as datasets
import os
import torchvision.transforms as transforms
from torch.utils.data import DataLoader,TensorDataset
#from torchvision import utils
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import torch.nn as nn
import torch
import torch.nn.functional as F
import time
import datetime
from tqdm import tqdm
from model_parts import *
#from torchvision.transforms.functional import to_pil_image
#%matplotlib inline

device = torch.device('cuda:0' if torch.cuda.is_available() else 'cpu')

def remove_padding(arr):
    return arr[:,:,:,1:-1, 1:-1]

class Generator(nn.Module):
    def __init__(self):
        super().__init__()

        self.down1_3D = Conv_3D(1, 4, kernel_size=(2,2,2), stride=(1,1,1), padding=(0,0,0)) #(N,1,4,7,7)->(N,4,3,6,6)
        self.down2_3D = Conv_3D(4, 16, kernel_size=(2,2,2), stride=(1,1,1), padding=(0,0,0)) #(N,4,3,6,6)->(N,16,2,5,5)
        self.down3_3D = Conv_3D(16, 64, kernel_size=(2,2,2), stride=(1,1,1), padding=(0,0,0)) #(N,16,2,5,5)->(N,64,1,4,4)

        self.down1_2D = Conv_2D(1, 4, kernel_size=(2,2), stride=(1,1), padding=(0,0))
        self.down2_2D = Conv_2D(4, 16, kernel_size=(2,2), stride=(1,1), padding=(0,0))
        self.down3_2D = Conv_2D(16, 64, kernel_size=(2,2), stride=(1,1), padding=(0,0))

        self.Tanh1 = nn.Tanh()
        self.Tanh2 = nn.Tanh()
        self.Tanh3 = nn.Tanh()

        self.compress = Conv_3D(64,64, kernel_size=(3,3,3), stride=(1,1,1), padding=(0,0,0)) #(N,64,1,2,2)

        self.up1 = Up_cat_3D(64, 16, kernel_size=(2,2,2)) # (N,64,1,2,2)->(N,16*3,2,3,3) CONCAT
        self.up2 = Up_cat_3D(48, 4, kernel_size=(2,2,2)) # (N,48,2,3,3)->(N,4*3,3,4,4) CONCAT
        self.up3 = Deconv_3D(12, 1, (2,2,2)) # (N,12,3,4,4) -> (N,1,4,5,5)

        # Skip connection
        self.add_dim1 = nn.ConvTranspose3d(4,4,(3,1,1), stride=1)
        self.add_dim2 = nn.ConvTranspose3d(16,16,(2,1,1), stride=1)



    def forward(self, congestion_map, current_map, noise):
        cng1 = self.down1_3D(congestion_map) 
        cng2 = self.down2_3D(cng1) 
        cng3 = self.down3_3D(cng2) 
        cng_mid = self.Tanh1(cng3)

        cur1 = self.down1_2D(current_map) 
        cur2 = self.down2_2D(cur1) 
        cur3 = self.down3_2D(cur2)
        cur_mid = self.Tanh2(cur3.unsqueeze(dim=2)) 

        noise_mid = self.Tanh3(noise)

        x = torch.cat((cng_mid, cur_mid, noise_mid), 2) #concat in z-direction (N,64,3,4,4)
        x = self.compress(x) #(N,64,1,2,2)

        cur1_3D = self.add_dim1(cur1.unsqueeze(dim=2)) # (N,4,"3",6,6)
        cur2_3D = self.add_dim2(cur2.unsqueeze(dim=2)) # (N,16,"2",5,5)

        #crop
        cng1_cropped = remove_padding(cng1)
        cng2_cropped = remove_padding(cng2)
        cur1_3D_cropped = remove_padding(cur1_3D) #(N,4,3,4,4)
        cur2_3D_cropped = remove_padding(cur2_3D) #(N,16,2,3,3)

        y1 = self.up1(cng2_cropped, cur2_3D_cropped, x) #(N,48,2,3,3)
        y2 = self.up2(cng1_cropped, cur1_3D_cropped, y1) #(N,12,3,4,4)
        y3 = self.up3(y2) #(N,1,4,5,5)

        return y3


# Check Generator
def test_G():
    net = Generator().to(device)
    cng_map = torch.randn(50,1,4,7,7)
    cng_map = cng_map.to(device)
    cur_map = torch.randn(50,1,7,7)
    cur_map = cur_map.to(device)
    noise = torch.randn(50,64,1,4,4)
    noise = noise.to(device)

    y = net(cng_map, cur_map, noise)
    print(y.size())

#test_G()


#class Discriminator(nn.Module):
#    def __init__(self):
#        super().__init__()
#
#        self.dis1 = Conv_3D(1,4, kernel_size=(2,3,3),stride=(1,2,2),padding=(0,1,1))
#        self.dis2 = Conv_3D(4,16, kernel_size=(2,3,3),stride=(1,2,2),padding=(0,1,1))
#        self.dis3 = Conv_3D(16,64, kernel_size=(2,3,3),stride=(1,2,2),padding=(0,1,1))
#
#        self.dis = nn.Sequential(
#            Conv_3D(1,4, kernel_size=(2,3,3),stride=(1,2,2),padding=(0,1,1)),
#            Conv_3D(4,16, kernel_size=(2,3,3),stride=(1,2,2),padding=(0,1,1)),
#            Conv_3D(16,64, kernel_size=(2,3,3),stride=(1,2,2),padding=(0,1,1)), #(N,64,1,4,4)
#            nn.Sigmoid()
#        )
#
#    def forward(self, IR_drop_map):
#        x = self.dis(IR_drop_map)
#        x = x.squeeze(dim=2) #(N,64,4,4)
#        return x

class Discriminator(nn.Module):
    def __init__(self):
        super(Discriminator, self).__init__()

        self.conv1 = Conv_3D(in_channels=1, out_channels=32, kernel_size=3, stride=1, padding=1)
        self.conv2 = nn.Conv3d(in_channels=32, out_channels=64, kernel_size=3, stride=1, padding=1)
        self.pool = nn.MaxPool3d(kernel_size=2, stride=2)
        
        # Fully-connected layer
        self.fc1 = nn.Linear(64 * 2 * 2 * 2, 128)
        self.fc2 = nn.Linear(128, 2)  # number of output = 2 (0 or 1)

    def forward(self, x):
        # feedforward
        x = self.conv1(x)
        x = self.conv2(x)
        x = self.pool(x)
        
        x = x.view(-1, 64 * 2 * 2 * 2)  #resize        
        x = self.fc1(x)
        x = self.fc2(x)
        
        return x

def test_D():
    model = Discriminator().to(device)
    ir_map = torch.randn(50,1,4,5,5) #real or fake
    ir_map = ir_map.to(device)
    out = model(ir_map) 
    print(out.shape)
    print(out)
#test_D()

