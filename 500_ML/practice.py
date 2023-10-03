import torch
import torch.nn as nn
import torch.optim as optim
import numpy as np

# Data Generation: A random (36, 36) image array
ndarrays_list = [np.random.rand(36, 36) for _ in range(10)]
stacked_data = np.stack(ndarrays_list, axis=0)
expanded_data = np.expand_dims(stacked_data, axis=1)
# Convert data to a PyTorch tensor
#data = torch.tensor(data)
data = torch.tensor(expanded_data, dtype=torch.float32) # [10,1,36,36]


print(data.type)
print(data.shape)

input()

# Encoder Model Definition
class Encoder(nn.Module):
    def __init__(self):
        super(Encoder, self).__init__()
        self.encoder = nn.Sequential(
            nn.Linear(36*36, 128),  # Encode a (36*36) input image into a 128-dimensional vector
            nn.ReLU()
        )
        
    def forward(self, x):
        x = x.view(-1)  # Flatten 
        #x = x.view(x.size(0), -1)  # Flatten 
        x = self.encoder(x)
        return x

# Decoder Model Definition
class Decoder(nn.Module):
    def __init__(self):
        super(Decoder, self).__init__()
        self.decoder = nn.Sequential(
            nn.Linear(128, 36*36),  #Decode a 128-dimensional vector into a (36*36) image
            nn.Sigmoid()  #Transform into probability values
        )
        
    def forward(self, x):
        x = self.decoder(x)
        x = x.view(x.size(0), 1, 36, 36)  # Reshape into image size
        return x

# Complete Autoencoder Model Definition
class Autoencoder(nn.Module):
    def __init__(self):
        super(Autoencoder, self).__init__()
        self.encoder = Encoder()
        self.decoder = Decoder()
        
    def forward(self, x):
        x = self.encoder(x)
        x = self.decoder(x)
        return x

model = Encoder()
outputs = model(data)

#
## Create the model
#autoencoder = Autoencoder()
#
## Define loss function and optimizer
#criterion = nn.MSELoss()
#optimizer = optim.Adam(autoencoder.parameters(), lr=0.001)
#
## Training
#num_epochs = 1000
#for epoch in range(num_epochs):
#    optimizer.zero_grad()
#    outputs = autoencoder(data)
#    loss = criterion(outputs, data)
#    loss.backward()
#    optimizer.step()
#    if (epoch+1) % 100 == 0:
#        print(f'Epoch [{epoch+1}/{num_epochs}], Loss: {loss.item():.4f}')
#
## Encode and decode data using the trained model
#encoded_data = autoencoder.encoder(data)
#decoded_data = autoencoder.decoder(encoded_data)
#
## Result Validation
#original_data = data.numpy()
#reconstructed_data = decoded_data.detach().numpy()
#
## 'reconstructed_data' encodes (36, 36) images into vectors and then decodes them back into images.
## You can use the encoder and decoder separately to encode an image into a vector and decode it back into an image.
