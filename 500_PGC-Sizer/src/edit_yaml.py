import yaml
import sys
import os

def update_resistance_by_coordinates(yaml_file, target_x, target_y, new_resistance):
    with open(yaml_file, 'r') as file:
        data = yaml.safe_load(file)

    if isinstance(data, dict) and 'pgc-resistor' in data:
        pgc_resistor_list = data['pgc-resistor']
        if isinstance(pgc_resistor_list, list):
            for pgc in pgc_resistor_list:
                input_data = pgc.get('input', {})
                if input_data.get('x') == target_x and input_data.get('y') == target_y:
                    pgc['resistance'] = new_resistance
                    break

    with open(yaml_file, 'w') as file:
        yaml.safe_dump(data, file)


config_file_name = os.environ['config_file_name']



if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python edit_yaml.py <target_x> <target_y> <new_resistance>")
    else:
        yaml_file = config_file_name
        target_x = float(sys.argv[1])
        target_y = float(sys.argv[2])
        new_resistance = float(sys.argv[3])

        print(yaml_file, target_x, target_y, new_resistance)
        update_resistance_by_coordinates(yaml_file, target_x, target_y, new_resistance)

