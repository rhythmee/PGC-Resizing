# Construct model architecture
# Load reference data from /400_PGC-Sizer/data
# Train the model

import os
import numpy as np
import torch
import torch.nn as nn
#import torch.nn.init as init
import torch.optim as optim
import matplotlib.pyplot as plt
import time
import datetime


#data = torch.randn(10, 1, 36, 36) 


class Encoder(nn.Module):
    def __init__(self):
        super(Encoder, self).__init__()
        self.encoder = nn.Sequential(
            nn.Conv2d(1, 16, kernel_size=3, stride=2, padding=1), #CNN
            nn.ReLU(),
            nn.Conv2d(16, 32, kernel_size=3, stride=2, padding=1),
            nn.ReLU()
        )
        
    def forward(self, x):
        x = self.encoder(x) #(10,32,9,9)
#        print("HERE")
#        print(x.shape)
#        input()
        return x.view(x.size(0), -1) 


class Decoder(nn.Module):
    def __init__(self):
        super(Decoder, self).__init__()
        self.decoder = nn.Sequential(
            nn.ConvTranspose2d(32, 16, kernel_size=3, stride=2, padding=1, output_padding=1),
            nn.ReLU(),
            nn.ConvTranspose2d(16, 1, kernel_size=3, stride=2, padding=1, output_padding=1),
            nn.Sigmoid()
        )
        
    def forward(self, x):
        x = x.view(x.size(0), 32, 9, 9)  
        x = self.decoder(x)
        return x


class Autoencoder(nn.Module):
    def __init__(self):
        super(Autoencoder, self).__init__()
        self.encoder = Encoder()
        self.decoder = Decoder()
        
    def forward(self, x):
#        print("HERE")
#        print(x.shape)
        x = self.encoder(x)
#        print(x.shape)
        x = self.decoder(x)
#        print(x.shape)
#        input()
        return x

#data = torch.rand(10,1,36,36)
#model = Autoencoder()
#model(data)
#input()






if __name__ == "__main__":

    now_date = datetime.datetime.now().strftime("%m-%d_%H:%M")

    current_directory = os.getcwd() # /500_ML/
    ROOT_DIR = os.path.dirname(current_directory) # /PGC-Resizing/

    ######################### Load Dataset #############################
    cnt=0
    for k in range(1000):
        ref_name = f"{ROOT_DIR}/400_PGC-Sizer/data/reference_0x/ref_{k}.npy"
        ref_map = np.load(ref_name)

        tmp_ref_map = np.expand_dims(ref_map, axis=(0,1)) #(1,1,36,36)

        if cnt==0:
            merge_ref = tmp_ref_map
            cnt += 1
        else:
            merge_ref = np.concatenate((merge_ref, tmp_ref_map), axis=0)

    print("")
    print("reference map size: " + str(merge_ref.shape)) #(1000,1,36,36)
    print("")



    ####################### train ######################

    batch_size = 100

    #from numpy to torch
    input_data = torch.from_numpy(merge_ref).float()

    autoencoder = Autoencoder()

    #init.xavier_uniform_(autoencoder.encoder[0].weight) #initialize
    #autoencoder.load_state_dict(torch.load('autoencoder.pt'))

    criterion = nn.MSELoss()
    optimizer = optim.Adam(autoencoder.parameters(), lr=0.001)

    num_epochs = 10000
    start_epochs = 0

    path2models='./models/'
    os.makedirs(path2models, exist_ok=True)

    autoencoder.train()

    for epoch in range(num_epochs):

#    bs = batch_size

        autoencoder.zero_grad()
        outputs = autoencoder(input_data)

        loss = criterion(outputs, input_data)
        loss.backward()
        optimizer.step()

        if (epoch+1) % 100 == 0:
            print(f'Epoch [{epoch+1}/{num_epochs}], Loss: {loss.item():.4f}')
            torch.save(autoencoder.state_dict(), f'{path2models}/weights_{start_epochs+epoch}_{now_date}.pt')


    ####################### test ######################
    autoencoder.eval()
    reconstructed_data = autoencoder(input_data)
    loss = criterion(reconstructed_data, input_data)
    print(f'Final Loss: {loss.item():.4f}')

