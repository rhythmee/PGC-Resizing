import yaml
import shutil

def update_voltage(file_path):
    with open(file_path, 'r') as f:
        data = yaml.safe_load(f)

    # supply voltage update  
    start_x = 1.0
    end_x = 61.0
    start_y = 1.0
    end_y = 61.0
    x_increment = 15  
    y_increment = 15
    
    data["supply-voltage"] = []

    for i in range(int((end_x-start_x)/x_increment) + 1):
        for j in range(int((end_y-start_y)/y_increment) + 1):
            layer_data = {
                "layer": "M4",
                "x": start_x + (float(i) * x_increment),
                "y": start_y + (float(j) * y_increment),
                "voltage": 1.0  
            }
            data["supply-voltage"].append(layer_data)
    
    with open(file_path, 'w') as f:
        yaml.dump(data, f)

    
def update_current(file_path, pgc_start_coord, current_map):
    with open(file_path, 'r') as f:
        data = yaml.safe_load(f)
    # current source update  
    (x, y) = pgc_start_coord
    pitch = 3.4

    data["load-current"] = []
    
    while x < 380:
        while y < 380:
            layer_data = {
                "layer": "M2",
                "x": start_X + (float(i) * X_increment),
                "y": start_Y + (float(j) * Y_increment),
                "current": current_map[i][j] 
            }
            data["load-current"].append(layer_data)
            y += pitch
        x += pitch

    with open(file_path, 'w') as f:
        yaml.dump(data, f)



def update_PGC(file_path, pgc_start_coord, pgc_pitch):
    with open(file_path, 'r') as f:
        data = yaml.safe_load(f)

    (x, y) = pgc_start_coord
    pgc_pitch = 10.2
    data["pgc-resistor"] = []

# PGC for left side
    while x < 380:
        while y < 380:
            layer_data = {
                    
                "input": {
                    "layer": "M3",
                    "x": x, 
                    "y": y - 0.5
                },

                "output": {
                    "layer": "M2",
                    "x": x, 
                    "y": y
                },

                "resistance": 13.0

            }
            data["pgc-resistor"].append(layer_data)
            y += pgc_pitch
        x + = pgc_pitch


# PGC for middle    
    for i in range(int((end_PGC2_y - start_PGC2_y)/step_PGC) +1):
        layer_data = {
                                
            "input": {
                "layer": "M3",
                "x": PGC2_x ,
                "y": start_PGC2_y + (float(i) * step_PGC) + 1
            },

            "output": {
                "layer": "M2",
                "x": PGC2_x ,
                "y": start_PGC2_y + (float(i) * step_PGC)
            },

            "resistance": 13.0

        }
        data["pgc-resistor"].append(layer_data)


# PGC for right side
    for i in range(int((end_PGC3_y - start_PGC3_y)/step_PGC) +1):

        layer_data = {
                
            "input": {
                "layer": "M3",
                "x": PGC3_x ,
                "y": start_PGC3_y + (float(i) * step_PGC) + 1
            },

            "output": {
                "layer": "M2",
                "x": PGC3_x ,
                "y": start_PGC3_y + (float(i) * step_PGC)
            },

            "resistance": 13.0

        }
        data["pgc-resistor"].append(layer_data)

    with open(file_path, 'w') as f:
        yaml.dump(data, f)


shutil.copy2('test2.yaml', 'experiment.yaml')
file_path = 'experiment.yaml'
update_voltage(file_path)
update_current(file_path)
update_PGC(file_path)
