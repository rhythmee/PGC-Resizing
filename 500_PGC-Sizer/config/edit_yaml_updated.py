import yaml
import shutil
import numpy as np

def update_voltage(file_path):
    with open(file_path, 'r') as f:
        data = yaml.safe_load(f)

    # supply voltage update  
    start_x = 1.3
    start_y = 1.3
    x_increment =10.2
    y_increment = 10.2
    
    data["supply-voltage"] = []
    
    i = 0
    while start_x + i * x_increment < 380:
        j = 0
        while start_y + j * y_increment < 380:
            layer_data = {
                "layer": "M4",
                "x": round(start_x + i * x_increment, 2), #edited
                "y": round(start_y + j * y_increment, 2), #edited
                "voltage": 0.95  
            }
            data["supply-voltage"].append(layer_data)
            j += 1
        i += 1
        
    
    with open(file_path, 'w') as f:
        yaml.dump(data, f)


def update_current(file_path, current_map):
    with open(file_path, 'r') as f:
        data = yaml.safe_load(f)
    # current source update  
    x = 1.3
    y = 1.3

    pitch = 3.4

    data["load-current"] = []
    
    i = 0
    while x + i * pitch < 380:
        j = 0
        while y + j * pitch < 380:
            layer_data = {
                "layer": "M2",
                "x": round(x + i * pitch, 2),
                "y": round(y + j * pitch, 2),
                "current": float( "{:.1e}".format(float(current_map[i][j])*10) )
            }
            data["load-current"].append(layer_data)
            j += 1
        i += 1

    with open(file_path, 'w') as f:
        yaml.dump(data, f)



def update_PGC(file_path):
    with open(file_path, 'r') as f:
        data = yaml.safe_load(f)
    x = 1.3
    y = 1.3
    pgc_x_pitch = 20.4
    pgc_y_pitch = 10.2
    data["pgc-resistor"] = []

# PGC for left side
    i = 0
    while x + i * pgc_x_pitch< 380:
        j = 0
        while y + j * pgc_y_pitch < 380:
            layer_data = {
                    
                "input": {
                    "layer": "M3",
                    "x": round(x + i * pgc_x_pitch, 2), 
                    "y": round(y + j * pgc_y_pitch - 0.1, 2)
                },

                "output": {
                    "layer": "M2",
                    "x": round(x + i * pgc_x_pitch, 2), 
                    "y": round(y + j * pgc_y_pitch, 2)
                },

                "resistance": 184.375
                #"resistance": 11.523

            }
            data["pgc-resistor"].append(layer_data)
            j += 1
        i += 1


    with open(file_path, 'w') as f:
        yaml.dump(data, f)


#shutil.copy2('test2.yaml', 'updated_experiment.yaml')
file_path = 'updated_experiment.yaml'
f = '/home/ischo/PDN_SYNTH/300_input_maps/input_maps/current_map_112x112.npy'
current_map = np.load(f)
#update_voltage(file_path)
#update_current(file_path, current_map)
update_PGC(file_path)
