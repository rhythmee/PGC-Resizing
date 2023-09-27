import os
import sys

current_dir = os.getcwd()
module_path = os.path.join(current_dir, "2_model")
sys.path.append(module_path)

import torchvision.datasets as datasets
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
import pickle
from model_parts import *
from CGAN_structure import *
#%matplotlib inline
now_date = datetime.datetime.now().strftime("%m-%d_%H:%M")

device = torch.device('cuda:0' if torch.cuda.is_available() else 'cpu')

def save_variable(v, filename):
    f=open(filename, 'wb') 
    pickle.dump(v,f)  
    f.close()   
    return filename  

def load_variable(filename): 
    f=open(filename,'rb') 
    r=pickle.load(f) 
    f.close()   
    return r 

''' 
Prepare dataset 
input_congestion = ndarray[1000,1,4,7,7]
input_current = ndarray[1000,1,7,7]
input_ir_drop = ndarray[1000,1,4,5,5]

'''
print("=> Preparing data")


# Congestion map
cng_train_X = np.load('./2_model/data/cng_09-21.npy')
tot_num = cng_train_X.shape[0]
print("# of designs: " +str(tot_num))

# Current map
cur_train_X = np.load('./2_model/data/cur_09-21.npy')
tot_num = cng_train_X.shape[0]
print("# of designs: " +str(tot_num))

# IR-drop map (reference)
ir_train_Y = np.load('./2_model/data/ir_09-21.npy')
tot_num = ir_train_Y.shape[0]
print("# of designs: " +str(tot_num))

#batch_size = int(tot_num/10)
batch_size = tot_num


#from npy to torch
train_cng = torch.from_numpy(cng_train_X)
train_cur = torch.from_numpy(cur_train_X)
train_real = torch.from_numpy(ir_train_Y)
train_set = TensorDataset(train_cng, train_cur, train_real) # combine
train_loader = DataLoader(train_set, batch_size=batch_size, shuffle=True)


# import generator
print("==> Import model G")
model_G = Generator().to(device)

# Initialize the weights
print("===> Initialize the weights")
def weights_init_normal(model):
    classname = model.__class__.__name__
    # Conv layer (added)
    if classname.find('Conv3d') != -1:
        nn.init.normal_(model.weight.data, 0.0, 0.02)
    if classname.find('Conv2d') != -1:
        nn.init.normal_(model.weight.data, 0.0, 0.02)
    # batchnorm
    elif classname.find('BatchNorm') != -1:
        nn.init.normal_(model.weight.data, 1.0, 0.02)
        nn.init.constant_(model.bias.data, 0)

model_G.apply(weights_init_normal);
     

# Loss function
print("====> Define Loss function")
#loss_func = nn.BCELoss()
#loss_func = nn.MSELoss()
#loss_func = nn.BCEWithLogitsLoss()
loss_func = nn.L1Loss()

from torch import optim

#lr = 2e-4
lr = 1e-4
beta1 = 0.5
beta2 = 0.999

# optimization
optimizer_G = optim.Adam(model_G.parameters(), lr=lr, betas=(beta1,beta2))

num_epochs = 1000

loss_history={'Generator':[]}

###### continue from 100,000 epochs ######
start_epochs = 0
#weights_gen = torch.load('./models/weights_gen_80599_07-12_17:51.pt')
#weights_dis = torch.load('./models/weights_dis_100000_02-01_13:11.pt')
#model_G.load_state_dict(weights_gen)  
#model_D.load_state_dict(weights_dis)


# Train
print("=====> Training")

batch_count = 0
start_time = time.time()
model_G.train()
#model_D.train()
path2models = './2_model/models/'
os.makedirs(path2models, exist_ok=True)

for epoch in range(num_epochs):
    for xb_cng, xb_cur, xb_real in train_loader: #(1000,1,4,7,7),(1000,1,7,7),(1000,1,4,5,5)
        #ba_si = xb_cng.shape[0] #1000
        ba_si = batch_size

        xb_cng = xb_cng.to(device).float() #input minibatch (congestion)
        xb_cur = xb_cur.to(device).float() #input minibatch (current)
        xb_real = xb_real.to(device).float() #input minibatch (real IR-drop)

        #Genetator
        print("\rG ", end='')
        model_G.zero_grad()
        noise = torch.randn(ba_si,64,1,4,4) * 1e-9
        noise = noise.to(device)

        #create fake image
        out_gen = model_G(xb_cng, xb_cur, noise) #G(x): (N,1,4,5,5)
        #out_gen_transformed = torch.sigmoid(out_gen)
        loss_gen = loss_func(out_gen, xb_real)
        #loss_gen = loss_func(out_gen_transformed, xb_real)
        loss_gen.backward()
        optimizer_G.step()

        loss_history['Generator'].append(loss_gen.item())
        #loss_history['D'].append(loss_dis.item())

        batch_count += 1
        if batch_count % 100 == 0:
#            loss_dis.backward()
#            optimizer_D.step()
#            print('Epoch: %.0f, G_Loss: %.6f, D_Loss: %.6f, time: %.2f min' %(start_epochs+epoch, loss_gen.item(), loss_dis.item(), (time.time()-start_time)/60))
            print('Epoch: %.0f, G_Loss: %.6f, time: %.2f min' %(start_epochs+epoch, loss_gen.item(), (time.time()-start_time)/60))
            
        if batch_count % 1000 == 0:
            torch.save(model_G.state_dict(), f'{path2models}/weights_gen_{start_epochs+epoch}_{now_date}.pt')

# Save final weigths
path2weights_gen = os.path.join(path2models, 'weights_gen_%d_%s.pt' %(start_epochs+num_epochs, now_date))

torch.save(model_G.state_dict(), path2weights_gen)

save_variable(path2weights_gen, 'pickle_path2weights_gen')
