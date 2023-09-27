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
#from torchvision.transforms.functional import to_pil_image
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

print("=> Preparing data...")


# Congestion map
cng_train_X = np.load('./2_model/data/cng_09-21.npy')
tot_num = cng_train_X.shape[0]
print("# of designs: " +str(tot_num))

# Current map
cur_train_X = np.load('./2_model/data/cur_09-21.npy')
tot_num = cng_train_X.shape[0]
print("# of designs: " +str(tot_num))

# IR-drop map (real)
ir_train_Y = np.load('./2_model/data/ir_09-21.npy')
tot_num = ir_train_Y.shape[0] 
print("# of designs: " +str(tot_num))


#from npy to torch
train_cng = torch.from_numpy(cng_train_X)
train_cur = torch.from_numpy(cur_train_X)
train_real = torch.from_numpy(ir_train_Y)
train_set = TensorDataset(train_cng, train_cur, train_real) # combine
train_loader = DataLoader(train_set, batch_size=tot_num, shuffle=True)
#train_loader = DataLoader(train_set, batch_size=batch_size)


# import G, D model
print("==> Import model (G, D)...")
model_G = Generator().to(device)
model_D = Discriminator().to(device)

# Initialize the weights
print("===> Initialize the weights...")
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
model_D.apply(weights_init_normal);
     

# Loss function
print("====> Define Loss function...")
loss_func = nn.BCEWithLogitsLoss()

from torch import optim

lr = 2e-4
beta1 = 0.5
beta2 = 0.999

# optimization
optimizer_D = optim.Adam(model_D.parameters(), lr=lr, betas=(beta1,beta2))
optimizer_G = optim.Adam(model_G.parameters(), lr=lr, betas=(beta1,beta2))

num_epochs = 1000

loss_history={'G':[],
              'D':[]}

###### continue from pre-trained generator ######
start_epochs = 0
weights_gen = torch.load('./2_model/models/weights_gen_1000_09-21_17:09.pt')
#weights_dis = torch.load('./models/weights_dis_100000_02-01_13:11.pt')
model_G.load_state_dict(weights_gen)  
#model_D.load_state_dict(weights_dis)


# Train
print("=====> Training...")

batch_count = 0
start_time = time.time()
model_G.train()
model_D.train()
path2models = './2_model/models/'
os.makedirs(path2models, exist_ok=True)

for epoch in range(num_epochs):
    for xb_cng, xb_cur, xb_real in train_loader: 
        ba_si = xb_cng.shape[0] #29

        xb_cng = xb_cng.to(device).float() #input minibatch (congestion)
        xb_cur = xb_cur.to(device).float() #input minibatch (current)
        xb_real = xb_real.to(device).float() #input minibatch (real IR-drop)

        # make label with same size with D_out
#        yb_real = torch.Tensor(ba_si,64,4,4).fill_(1.0).to(device) # real_label
#        yb_fake = torch.Tensor(ba_si,64,4,4).fill_(0.0).to(device) # fake_label
        yb_real = np.zeros((ba_si, 2))
        yb_real[:, 1] = 1.0 # real_label
        yb_fake = np.zeros((ba_si, 2))
        yb_fake[:, 0] = 1.0 # fake_label

        # Genetator
        print("\rG ", end='')
        model_G.zero_grad()
        noise = torch.randn(ba_si,64,1,4,4).to(device) # interim noise

        yb_real = torch.from_numpy(yb_real).to(device).float()
        yb_fake = torch.from_numpy(yb_fake).to(device).float()

        # create fake image
        out_gen = model_G(xb_cng, xb_cur, noise) #G(x)

        # discriminate fake image
        out_dis = model_D(out_gen) #D(G(x))

        loss_gen = loss_func(out_dis, yb_real) #D(G(x)), label_real(1)
        loss_gen.backward()
        optimizer_G.step()

        # Discriminator
        print("\rD ", end='')
        model_D.zero_grad()
        
        # discriminate real image
        out_dis = model_D(xb_real)
#        loss_real = loss_func(out_dis, 1) #D(x), label_real(1)
        loss_real = loss_func(out_dis, yb_real) #D(x), label_real(1)

        # discriminate fake image
        out_dis = model_D(out_gen.detach())
        #loss_fake = loss_func(out_dis,0) #D(G(x)), label_fake(0)
        loss_fake = loss_func(out_dis, yb_fake) #D(G(x)), label_fake(0)

        loss_dis = (loss_real + loss_fake) / 2
#        loss_dis.backward()
#        optimizer_D.step()

        loss_history['G'].append(loss_gen.item())
        loss_history['D'].append(loss_dis.item())

        batch_count += 1
        if batch_count % 100 == 0:
            loss_dis.backward()
            optimizer_D.step()
            print('Epoch: %.0f, G_Loss: %.6f, D_Loss: %.6f, time: %.2f min' %(start_epochs+epoch, loss_gen.item(), loss_dis.item(), (time.time()-start_time)/60))
            
        if batch_count % 1000 == 0:
            torch.save(model_G.state_dict(), f'./models/weights_gen_{start_epochs+epoch}_{now_date}.pt')
            torch.save(model_D.state_dict(), f'./models/weights_dis_{start_epochs+epoch}_{now_date}.pt')


# plot loss history
plt.figure(0)
plt.figure(figsize=(10,5))
plt.title('Loss Progress')
plt.plot(list(range(start_epochs, start_epochs+num_epochs)), loss_history['G'], label='Gen. Loss')
plt.plot(list(range(start_epochs, start_epochs+num_epochs)), loss_history['D'], label='Dis. Loss')
plt.xlabel('batch count')
plt.ylabel('Loss')
plt.legend()
plt.savefig('2_model/out_img/loss_progress_%s.png' %now_date)
#plt.show()

# Save final weigths
path2weights_gen = os.path.join(path2models, 'weights_gen_%d_%s.pt' %(start_epochs+num_epochs, now_date))
path2weights_dis = os.path.join(path2models, 'weights_dis_%d_%s.pt' %(start_epochs+num_epochs, now_date))

torch.save(model_G.state_dict(), path2weights_gen)
torch.save(model_D.state_dict(), path2weights_dis)

save_variable(path2weights_gen, 'pickle_path2weights_gen')
save_variable(path2weights_dis, 'pickle_path2weights_dis')

