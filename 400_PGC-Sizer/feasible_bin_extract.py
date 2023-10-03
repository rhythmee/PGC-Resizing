import numpy as np

file_path = 'result.txt'
start_line = 39
end_line = 87
data = []

with open(file_path, 'r') as file:
    lines = file.readlines()
    for line in lines[start_line-1:end_line]:
        line = line.strip()
        #values = line.split(',')
        values = line.replace('(', '').replace(')', '').split(',')
        x_coordinate = float(values[0])
        y_coordinate = float(values[1])
        voltage = float(values[2])

        data.append(((x_coordinate, y_coordinate), voltage))

def extract_feasible_bins(data, Vx):

    #removed_coordinate = [(1, 21), (1, 41), (1, 61), (11, 21),(11, 41),(11, 61),(31, 11),(31, 31),(31, 51),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 41), (1, 61), (11, 1),(11, 41),(11, 61),(31, 11),(31, 31),(31, 51),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 21), (1, 61), (11, 1),(11, 21),(11, 61),(31, 11),(31, 31),(31, 51),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 41), (1, 21), (11, 1),(11, 41),(11, 21),(31, 11),(31, 31),(31, 51),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 21), (1, 41),(1, 61), (11, 1),(11, 21),(11, 41),(11, 61),(31, 31),(31, 51),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 21), (1, 41),(1, 61), (11, 1),(11, 21),(11, 41),(11, 61),(31, 11),(31, 51),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 21), (1, 41),(1, 61), (11, 1),(11, 21),(11, 41),(11, 61),(31, 11),(31, 31),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 21), (1, 41),(1, 61), (11, 1),(11, 21),(11, 41),(11, 61),(31, 11),(31, 31),(31, 51),(51, 21),(51, 41),(51, 61),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 21), (1, 41),(1, 61), (11, 1),(11, 21),(11, 41),(11, 61),(31, 11),(31, 31),(31, 51),(51, 1),(51, 41),(51, 61),(61, 1),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 21), (1, 41),(1, 61), (11, 1),(11, 21),(11, 41),(11, 61),(31, 11),(31, 31),(31, 51),(51, 1),(51, 21),(51, 61),(61, 1),(61, 21),(61, 61)]
    removed_coordinate = [(1, 1), (1, 21), (1, 41),(1, 61), (11, 1),(11, 21),(11, 41),(11, 61),(31, 11),(31, 31),(31, 51),(51, 1),(51, 21),(51, 41),(61, 1),(61, 21),(61, 41)]
    
    matrix = np.zeros((7,7))

    for coord, voltage in data:
        x, y = coord

        x_coord = int(x)
        y_coord = int(y)

        j = (x_coord - 1) // 10
        i = (y_coord - 1) // 10
        

        if (x, y) in removed_coordinate:
            matrix[i,j] = 0
                
        elif voltage >= Vx:
            matrix[i,j] = 1
    
        else:
            matrix[i,j] = 0
    
    print(matrix)
    return matrix
        


Vx = 0.9

file_name = 'pgc11_size5.npy'

matrix= extract_feasible_bins(data, Vx)
np.save(file_name, matrix)

#existing_data = np.load('bins_data.npy')
#appended_data = np.append(existing_data, data_list)
#np.save('bins_data.npy', appended_data)

