import matplotlib.pyplot as plt
from matplotlib.colors import Normalize
from matplotlib.patches import Rectangle

# maing data

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


def create_voltage_map(data, Vx):

    #removed_coordinate = [(1, 21), (1, 41), (1, 61), (11, 21),(11, 41),(11, 61),(31, 11),(31, 31),(31, 51),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 41), (1, 61), (11, 1),(11, 41),(11, 61),(31, 11),(31, 31),(31, 51),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 21), (1, 61), (11, 1),(11, 21),(11, 61),(31, 11),(31, 31),(31, 51),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 41), (1, 21), (11, 1),(11, 41),(11, 21),(31, 11),(31, 31),(31, 51),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 21), (1, 41),(1, 61) (11, 1),(11, 21),(11, 41),(11, 61),(31, 31),(31, 51),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 21), (1, 41),(1, 61) (11, 1),(11, 21),(11, 41),(11, 61),(31, 11),(31, 51),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 21), (1, 41),(1, 61) (11, 1),(11, 21),(11, 41),(11, 61),(31, 11),(31, 31),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]
    removed_coordinate = [(1, 1), (1, 21), (1, 41),(1, 61), (11, 1),(11, 21),(11, 41),(11, 61),(31, 11),(31, 31),(31, 51),(51, 21),(51, 41),(51, 61),(61, 21),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 21), (1, 41),(1, 61), (11, 1),(11, 21),(11, 41),(11, 61),(31, 11),(31, 31),(31, 51),(51, 1),(51, 41),(51, 61),(61, 1),(61, 41),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 21), (1, 41),(1, 61), (11, 1),(11, 21),(11, 41),(11, 61),(31, 11),(31, 31),(31, 51),(51, 1),(51, 21),(51, 61),(61, 1),(61, 21),(61, 61)]
    #removed_coordinate = [(1, 1), (1, 21), (1, 41),(1, 61), (11, 1),(11, 21),(11, 41),(11, 61),(31, 11),(31, 31),(31, 51),(51, 1),(51, 21),(51, 41),(61, 1),(61, 21),(61, 41)]
    # removed_coordinate (for PGC 2, ...)


    x = []
    y = []
    voltages = []
    colors = []

    for (x_coord, y_coord), voltage in data:
        if (x_coord, y_coord) in removed_coordinate:
            continue
        x.append(x_coord)
        y.append(y_coord)
        voltages.append(voltage)
#        if voltage < Vx:
#            colors.append('red')
#        else:
#            colors.append('green')

    fig, ax = plt.subplots()

    for (x_coord, y_coord), voltage in data:
        if (x_coord, y_coord) in removed_coordinate:
            ax.text(x_coord, y_coord, '0', ha='center', va='center', fontsize=20, color='black')
            square = Rectangle((x_coord - 5, y_coord - 5), 10, 10, edgecolor='none', facecolor='red')
        elif voltage >= Vx:
            ax.text(x_coord, y_coord, '1', ha='center', va='center', fontsize=20, color='black')
            square = Rectangle((x_coord - 5, y_coord - 5), 10, 10, edgecolor='none', facecolor='lightgreen')
        else:
            ax.text(x_coord, y_coord, '0', ha='center', va='center', fontsize=20, color='black')
            square = Rectangle((x_coord - 5, y_coord - 5), 10, 10, edgecolor='none', facecolor='red')
        ax.add_patch(square)

    for (x_coord, y_coord) in removed_coordinate:
        ax.text(x_coord, y_coord, '0', ha='center', va='center', fontsize=20, color='black')


#    for (x_coord, y_coord), voltage in data:
##        if (x_coord, y_coord) in removed_coordinate:
##            continue
#        if voltage >= Vx:
#            square = Rectangle((x_coord - 5, y_coord - 5), 10, 10, edgecolor='none', facecolor='green')
#        else:    
#            square = Rectangle((x_coord - 5, y_coord - 5), 10, 10, edgecolor='none', facecolor='orange')
#        ax.add_patch(square)

    ax.scatter(x, y, color=colors)
    plt.xlabel('X Coordinate')
    plt.ylabel('Y Coordinate')
    plt.title('Voltage Map')
    plt.show()

Vx = 0.9

create_voltage_map(data, Vx)

