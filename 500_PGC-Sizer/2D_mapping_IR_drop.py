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

#print(data)

# mapping

#map_size = (62, 62)  
#map_data = np.zeros(map_size)  
#
#
#Vx = 0.9  
#for (x, y), voltage in data:
#    if voltage < Vx:
#        map_data[int(y), int(x)] = voltage  
#
#
#colors = [(1, 0, 0), (0, 1, 0)]  
#cmap = LinearSegmentedColormap.from_list('custom_cmap', colors)
#
#
#plt.imshow(map_data, cmap=cmap, origin='lower', extent=(0, map_size[0], 0, map_size[1]))
#plt.colorbar(label='Voltage')  
#plt.xlabel('X Coordinate')
#plt.ylabel('Y Coordinate')
#plt.title('Voltage Map')
#plt.grid(True)
#plt.show()

def create_voltage_map(data, Vx):

    removed_coordinates = [(1, 21), (1, 41), (1, 61), (11, 21),(11, 41),(11, 61),(31, 11),(31, 31),(31, 51),(51, 1),(51, 21),(51, 41),(51, 61),(61, 1),(61, 21),(61, 41),(61, 61)]

    x = [coord[0] for coord, voltage in data]
    y = [coord[1] for coord, voltage in data]
    voltages = [voltage for coord, voltage in data]

    fig, ax = plt.subplots()

    
    norm = Normalize(vmin=0.89, vmax=0.91)
    cmap = plt.cm.RdYlGn  # colormap 설정
    colors = cmap(norm(voltages))

    
    ax.scatter(x, y, color=colors)

    
    for i, voltage in enumerate(voltages):
        if voltage < Vx:
           # ax.scatter(x,y, color = colors)
            ax.annotate('Violation', (x[i], y[i]), textcoords="offset points", xytext=(0,10), ha='center', fontsize=8, color='red')


    for i, coord in enumerate(data):
#        if coord[0] in removed_coordinates:
#            continue

        square = Rectangle((coord[0][0] - 5, coord[0][1] - 5), 10, 10, edgecolor='none', facecolor=colors[i])
        ax.add_patch(square)

    sm = plt.cm.ScalarMappable(cmap=cmap, norm=norm)
    plt.colorbar(sm, ax=ax)

    plt.xlabel('X Coordinate')
    plt.ylabel('Y Coordinate')
    plt.title('Voltage Map')

    
#    plt.savefig('IR_drop_map.png')
#    plt.close()
    plt.show()

Vx = 0.9

create_voltage_map(data, Vx)

