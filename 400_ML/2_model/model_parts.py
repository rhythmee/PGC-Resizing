""" Parts of the neural network model """

import torch
import torch.nn as nn
import torch.nn.functional as F


class Conv_2D(nn.Module):
    def __init__(self, in_channels, out_channels, kernel_size, stride, padding):
        super().__init__()
        self.Conv = nn.Sequential(
            nn.Conv2d(in_channels, out_channels, kernel_size=kernel_size, stride=stride, padding=padding),
            nn.BatchNorm2d(out_channels),
            nn.LeakyReLU(0.01),
            nn.Dropout()
        )

    def forward(self, x):
        x = self.Conv(x)
        return x


class Conv_3D(nn.Module):
    def __init__(self, in_channels, out_channels, kernel_size, stride, padding):
        super(Conv_3D, self).__init__()
        self.conv = nn.Sequential(
            nn.Conv3d(in_channels, out_channels, kernel_size=kernel_size, stride=stride, padding=padding, dilation=1, groups=1),
            nn.BatchNorm3d(out_channels),
            nn.LeakyReLU(0.01),
            nn.Dropout()
        )

    def forward(self, x):
        x = self.conv(x)
        return x


class Conv_2D_wo(nn.Module):
    def __init__(self, in_channels, out_channels, k_size):
        super().__init__()
        self.Conv = nn.Sequential(
            nn.Conv2d(in_channels, out_channels, dilation=1, kernel_size=(k_size[0],k_size[1]), stride=(1,1), padding=(k_size[0]//2,k_size[1]//2)),
            nn.InstanceNorm2d(out_channels),
            nn.LeakyReLU(0.01),
            nn.Dropout()
        )

    def forward(self, x):
        x = self.Conv(x)
        return x

class LinearLayer(nn.Module):
    def __init__(self, in_features, out_features):
        super().__init__()
        self.Linear = nn.Sequential(
                nn.Linear(in_features, out_features),
                nn.BatchNorm1d(out_features),
                nn.LeakyReLU(0.01),
                nn.Dropout()
                )

    def forward(self, x):
        return self.Linear(x)



class Up_2D(nn.Module):
    def __init__(self, in_channels, out_channels, k_size, crop):
        super().__init__()
        self.up = nn.Sequential(
                nn.ConvTranspose2d(in_channels, out_channels, kernel_size=(k_size[0],k_size[1]), stride=(2,2), padding=((k_size[0]//2)-1,(k_size[1]//2)-1)),
                nn.BatchNorm2d(out_channels),
                nn.LeakyReLU(0.01),
                nn.Dropout()
        )
        self.crop=crop

    def forward(self, x1, x2):
        x2 = self.up(x2)
        diffX = x2.size()[3] - x1.size()[3]
        diffY = x2.size()[2] - x1.size()[2]
        if self.crop=='left':
            x2 = x2[:,:,diffY:x2.size(2),diffX:x2.size(3)]
        else :
            x2 = x2[:,:,0:x2.size(2)-diffY,0:x2.size(3)-diffX]
        x = torch.cat([x1, x2], dim=1)
        return x

class Deconv_3D(nn.Module):
    def __init__(self, in_channels, out_channels, k_size):
        super().__init__()
        self.deconv = nn.Sequential(
            nn.ConvTranspose3d(in_channels, out_channels, k_size, stride=(1,1,1),padding=(0,0,0))
#            nn.BatchNorm3d(out_channels),
#            nn.LeakyReLU(0.01),
#            nn.Dropout()
        )

    def forward(self, x):
        return self.deconv(x)

class Up_3D(nn.Module):
    def __init__(self, in_channels, out_channels, kernel_size):
        super().__init__()
        self.up = nn.Sequential(
            nn.ConvTranspose3d(in_channels, out_channels, kernel_size=kernel_size, stride=(1,2,2),padding=(0,1,1), output_padding=(0,1,1)),
            nn.BatchNorm3d(out_channels),
            nn.LeakyReLU(0.01),
            nn.Dropout()
        )

    def forward(self, x1, x2, x3): 
        x3 = self.up(x3) #deconv
        x = torch.cat([x1, x2, x3], dim=1)
        return x

class Up_cat_3D(nn.Module):
    def __init__(self, in_channels, out_channels, kernel_size):
        super().__init__()
        self.up = nn.Sequential(
            nn.ConvTranspose3d(in_channels, out_channels, kernel_size=kernel_size, stride=(1,1,1),padding=(0,0,0)),
            nn.BatchNorm3d(out_channels),
            nn.LeakyReLU(0.01),
            nn.Dropout()
        )

    def forward(self, x1, x2, x3): 
        x3 = self.up(x3) #deconv
        x = torch.cat([x1, x2, x3], dim=1)
        return x


class Up_2D_final(nn.Module):
    def __init__(self, in_channels, out_channels, crop):
        super().__init__()
        self.up = nn.Sequential(
                nn.ConvTranspose2d(in_channels, out_channels, kernel_size=(4,4), stride=(2,2), padding=(0,0)),
                nn.BatchNorm2d(out_channels),
                nn.LeakyReLU(0.01),
                nn.Dropout()
        )
        self.crop=crop

    def forward(self, x):
        x = self.up(x)
        diffX = 2
        diffY = 2
        #print(x.size())
        if self.crop=='left':
            x = x[:,:,diffY:x.size(2),diffX:x.size(3)]
            #x = x[:,:,:,diffX:x.size(3)]
        else :
            x = x[:,:,0:x.size(2)-diffX,0:x.size(3)-diffX]
        return x
