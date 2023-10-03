import numpy as np

import matplotlib.pyplot as plt
import sys

file_path = sys.argv[1]

loaded_arr = np.load(file_path)
print("Shape: ", loaded_arr.shape)

print("Max value: ", np.max(loaded_arr))
print("Min value: ", np.min(loaded_arr))

max_indices=  np.argwhere(loaded_arr == np.max(loaded_arr))
print("Worst IR-drop location: ", max_indices)

feasibility_map = np.where(loaded_arr > 0.025, 1, 0)

plt.imshow(loaded_arr, cmap='rainbow')
#plt.imshow(feasibility_map, cmap='rainbow')
plt.colorbar()
#plt.clim(0.05, 0.10)
plt.title('IR-drop map of %s' %(str(file_path)))
plt.show()
