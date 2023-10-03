import sys
import csv
import numpy as np


def extract_values_from_csv(file_path):

    data_dict = {}
    found_m2 = False

    with open(file_path, 'r') as file:
        csv_reader = csv.reader(file)
        
        next(csv_reader) #skip header

        for row in csv_reader:
            layer = int(row[0][1]) #integer
            if layer == 2:
                found_m2 = True
                x_coord = float(row[1])
                y_coord = float(row[2])
                x_index = int(x_coord / 3.33)
                y_index = int(y_coord / 3.33)

                V_value = 0.95 - round(float(row[3]), 3)
                data_dict[(x_index, y_index)] = V_value

            elif found_m2:
                break

    max_x = max(x for x, y in data_dict.keys())
    max_y = max(y for x, y in data_dict.keys())
    matrix = np.zeros((max_x + 1, max_y + 1), dtype=float)

    for (x, y), value in data_dict.items():
        matrix[y, x] = value
    return matrix

if __name__ == "__main__": 
    #file_path = 'nodes_voltage.csv'
    file_path = sys.argv[1]
    IR_drop_map = extract_values_from_csv(file_path)

    np.save('IR_drop_map_Look.npy', IR_drop_map)


