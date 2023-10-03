import gurobipy as gp
from gurobipy import GRB
from optimal_sizing_irdrop_extraction import extract_values_from_csv
import subprocess
import os
import sys
import yaml

python_executable = sys.executable
env = dict(os.environ)

env['PYTHONPATH'] = ':'.join(sys.path)

# Your directory
ROOT_DIR = '/home/pisolee/workspace/PGC-sizer'

#target yaml file to edit and run
config_file_name = f'{ROOT_DIR}/config/experiment.yaml'
file_path = 'nodes_voltage.csv'
#export variables
env = {'config_file_name': config_file_name}


# replace pgc resistance in target yaml file
# subprocess.run([python_executable, f'{ROOT_DIR}/src/edit_yaml.py',f'{target_x}', f'{target_y}', f'{new_resistance}'], env=env)

# run app.py
subprocess.run([python_executable, f'{ROOT_DIR}/src/app.py', f'--config={config_file_name}'])


pgc_location = [(1.0, 2.0),(1.0, 22.0),(1.0, 42.0),(1.0, 62.0),(31.0, 12.0),(31.0, 32.0),(31.0, 52.0),(61.0, 2.0),(61.0, 22.0),(61.0, 42.0),(61.0, 62.0)]
size_list = [13, 12, 11, 10, 9]



def update_resistance_values(i, j, size_list):
    pgc_x_coord = pgc_location[i][0]
    pgc_y_coord = pgc_location[i][1]
    modified_resistor = size_list[j]
    subprocess.run([python_executable, f'{ROOT_DIR}/src/edit_yaml.py',f'{pgc_x_coord}', f'{pgc_y_coord}', f'{modified_resistance}'], env=env)



def optimize_pgc_size(pgc_location, size_list):
    try:
        model = gp.Model("optimize_pgc_size")

        # Variables: pgc_size[i][j] represents the size of pgc i with size j

        pgc_size = {}
        for i in range(len(pgc_location)):
            pgc_size[i] = model.addVars(5, vtype=GRB.BINARY, name=f"pgc_{i}")
        # Objective function: minimize the total size of pgc across all 11 pgcs
        model.setObjective(gp.quicksum((j + 1) * pgc_size[i][j] for i in range(len(pgc_location)) for j in range(5)), sense=GRB.MINIMIZE)
#        print(pgc_size)

        # Constraints: no IR-drop violation
        for i in range(len(pgc_location)):
            for j in range(5):
                if pgc_size[i][j] == 1:
                    update_resistance_values(i, j, size_list)                
#                   update the resistor 
        subprocess.run([python_executable, f'{ROOT_DIR}/src/app.py', f'--config={config_file_name}'])
        IR_drop_list = extract_values_from_csv(file_path)
#       return IR_drop (list)
#                   extract ir drop map

#               constraint
        for voltage in IR_drop_list:
            model.addConstr(voltage <= 0.1)
#            model.addConstr(gp.quicksum(pgc_size[i][j] * PGC_list[i][j].feasible_bins[k] for i in range(len(PGC_list)) for j in range(5)) >= 1, name=f"constraint_{k}")

#       constraints: only one size is selected for each PGC
        for i in range(len(pgc_location)):
            model.addConstr(gp.quicksum(pgc_size[i][j] for j in range(5)) == 1)

        model.optimize()

        if model.status == GRB.OPTIMAL:
            print("Optimal soultion found:")
            for i in range(len(PGC_list)):
                selected_size = [j+1 for j in range(5) if pgc_size[i][j].x == 1]
                print(f"PGC_{i+1} selected size: {selected_size}")
            print(f"Objective value (total size): {model.objVal}")
        else:
            print("No feasible solution found")

    except gp.GurobiError as e:
        print("Error: " + str(e))


optimize_pgc_size(pgc_location, size_list)




