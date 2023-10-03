import numpy as np

for i in range(72):
    file_name = f"pgc_{i}_size_0x.npy"
    arr = np.full((36,36), 10)
    np.save(file_name, arr)
