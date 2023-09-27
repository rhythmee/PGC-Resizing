import numpy as np
import sys 

filepath = sys.argv[1]

data = np.load(filepath)
print(data)
print("")
print(data.shape)
