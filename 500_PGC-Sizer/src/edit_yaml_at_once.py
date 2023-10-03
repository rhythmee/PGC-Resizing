import yaml
import sys
import os
import ast


def update_yaml_file(input_yaml_file, output_yaml_file, new_resistances):
    # laod YAML
    with open(input_yaml_file, 'r') as file:
        yaml_data = yaml.safe_load(file)

    # update resistance of each pgc
    for i, pgc in enumerate(yaml_data['pgc-resistor']):
        if i < len(new_resistances):
            pgc['resistance'] = new_resistances[i]

    # save YAML as different name
    with open(output_yaml_file, 'w') as file:
        yaml.dump(yaml_data, file)

#root_dir =os.getcwd() 
#new_resistances = [100, 200, 100, 200] 
#input_yaml_file = f'{root_dir}/config/tv80_cur_10x.yaml'
#output_yaml_file = f'{root_dir}/config/modified_output_yaml_file.yaml' 
#
#update_yaml_file(input_yaml_file, output_yaml_file, new_resistances)

if __name__ == "__main__":
    input_yaml_file = sys.argv[1]
    output_yaml_file = sys.argv[2]
    new_resistances_str = sys.argv[3]
    new_resistances = ast.literal_eval(new_resistances_str) #to list
    update_yaml_file(input_yaml_file, output_yaml_file, new_resistances)


