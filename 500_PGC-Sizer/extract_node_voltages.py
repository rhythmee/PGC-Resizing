import csv

def extract_values_from_csv(file_path, output_file_path):
    extracted_values = []
    with open(file_path, 'r') as file:
        csv_reader = csv.reader(file)
        
        next(csv_reader)
        for row in csv_reader:
            layer = int(row[0][1])
            x_coord = float(row[1])
            y_coord = float(row[2])
            V_value = 1.0 - float(row[3])

            if layer == 2:
                extracted_values.append([(x_coord, y_coord), V_value])
            #extracted_values[layer].append(V_value)
    
    with open(output_file_path, 'w') as output_file:
        for values in extracted_values:
            coords, v = values
            if coords[0]%10 == 1 and coords[1]%10 == 1:
                output_file.write(f"({coords[0]}, {coords[1]}), {v}\n")

        output_file.write("\n")

file_path = 'nodes_voltage.csv'
output_file_path = 'result.txt'
extract_values_from_csv(file_path, output_file_path)


