import csv
import numpy as np

def extract_values_from_csv(file_path):
    matrix = np.zeros((7,7))

    with open(file_path, 'r') as file:
        csv_reader = csv.reader(file)
        
        next(csv_reader)
        for row in csv_reader:
            layer = int(row[0][1])
            x_coord = float(row[1])
            y_coord = float(row[2])
            V_value = 1.0 - float(row[3])

            if layer == 2:
                if x_coord%10 == 1 and y_coord%10 == 1:
                    j = int((x_coord - 1) // 10)
                    i = int((y_coord - 1) // 10)
                    matrix[i,j] = V_value
            #extracted_values[layer].append(V_value)
#    print(len(extracted_values))
    return matrix

file_path = 'nodes_voltage.csv'
extract_values_from_csv(file_path)


