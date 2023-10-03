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

#from autoencoder import Autoencoder
from autoencoder_2 import Autoencoder

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


####################### test ######################

autoencoder = Autoencoder()
#autoencoder.load_state_dict(torch.load('./models/weights_7699_10-04_04:16.pt'))
autoencoder.load_state_dict(torch.load('./models/weights_999_10-04_05:17.pt')) #autoencoder_2
autoencoder.eval()


#Visualize
#data = torch.randn(10, 1, 36, 36) 

#data = np.zeros((36,36))
#data[10:27, 10:27]=1
#data = torch.tensor(data, dtype=torch.float32).unsqueeze(0).unsqueeze(0)

data = torch.tensor(merge_ref, dtype=torch.float32)

reconstructed_data = autoencoder(data)

num_image = 750
original_image = data[num_image, 0].cpu().numpy() #first image
reconstructed_image = reconstructed_data[num_image, 0].cpu().detach().numpy() # also first image

plt.figure(figsize=(8, 4))
plt.subplot(1, 2, 1)
plt.imshow(original_image, cmap='rainbow')
plt.title('Original Image')
plt.subplot(1, 2, 2)
plt.imshow(reconstructed_image, cmap='rainbow')
plt.title('Reconstructed Image')
plt.show()

