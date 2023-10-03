import yaml
import sys
import os
#import ast

def update_pgc_coord(input_yaml_file, output_yaml_file, new_coord):
    # laod YAML
    with open(input_yaml_file, 'r') as file:
        yaml_data = yaml.safe_load(file)

    #update coord of single pgc
    yaml_data['pgc-resistor'][0]['input']['x'] = new_coord[0]
    yaml_data['pgc-resistor'][0]['input']['y'] = new_coord[1]
    yaml_data['pgc-resistor'][0]['output']['x'] = new_coord[0]
    yaml_data['pgc-resistor'][0]['output']['y'] = new_coord[1] + 0.1

    # save YAML as different name
    with open(output_yaml_file, 'w') as file:
        yaml.dump(yaml_data, file)


def update_pgc_resistance(input_yaml_file, output_yaml_file, new_resistance):
    # laod YAML
    with open(input_yaml_file, 'r') as file:
        yaml_data = yaml.safe_load(file)

    #update coord of single pgc
    yaml_data['pgc-resistor'][0]['resistance'] = new_resistance

    # save YAML as different name
    with open(output_yaml_file, 'w') as file:
        yaml.dump(yaml_data, file)

#root_dir =os.getcwd() 
#new_resistances = [100, 200, 100, 200] 
#input_yaml_file = f'{root_dir}/config/tv80_cur_10x.yaml'
#output_yaml_file = f'{root_dir}/config/modified_output_yaml_file.yaml' 
#
#update_yaml_file(input_yaml_file, output_yaml_file, new_resistances)

#if __name__ == "__main__":
#    input_yaml_file = sys.argv[1]
#    output_yaml_file = sys.argv[2]
#    new_resistances_str = sys.argv[3]
#    new_resistances = ast.literal_eval(new_resistances_str) #to list
#    update_yaml_file(input_yaml_file, output_yaml_file, new_resistances)


