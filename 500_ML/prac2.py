import torch
import torch.nn as nn
import torch.optim as optim
import matplotlib.pyplot as plt

data = torch.randn(10, 1, 36, 36) 


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
        x = self.encoder(x)
        x = self.decoder(x)
        return x


autoencoder = Autoencoder()


criterion = nn.MSELoss()
optimizer = optim.Adam(autoencoder.parameters(), lr=0.001)


# train
num_epochs = 1000
for epoch in range(num_epochs):
    optimizer.zero_grad()
    outputs = autoencoder(data)
    loss = criterion(outputs, data)
    loss.backward()
    optimizer.step()
    if (epoch+1) % 100 == 0:
        print(f'Epoch [{epoch+1}/{num_epochs}], Loss: {loss.item():.4f}')


reconstructed_data = autoencoder(data)


loss = criterion(reconstructed_data, data)
print(f'Final Loss: {loss.item():.4f}')

#Visualize
original_image = data[0, 0].cpu().numpy() #first image
reconstructed_image = reconstructed_data[0, 0].cpu().detach().numpy() # also first image

plt.figure(figsize=(8, 4))
plt.subplot(1, 2, 1)
plt.imshow(original_image, cmap='gray')
plt.title('Original Image')
plt.subplot(1, 2, 2)
plt.imshow(reconstructed_image, cmap='gray')
plt.title('Reconstructed Image')
plt.show()


