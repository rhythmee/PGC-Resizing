


RVT_prefix="SAEDRVT14"

cell_names=[\
        "BUF","INV",\
        "AN2","AN3","AN4","ND2","ND3","ND4",\
        "NR2","NR3","NR4","OR2","OR3","OR4",\
        "EN2","EN3","EN4","EO2","EO3","EO4",\
        "AO21","AO221","AO22","AO31","AO32",\
        "AOI21","AOI22","AOI31","AOI32",\
        "OA22","OA221","OA31","OA32",\
        "OAI21","OAI211","OAI221","OAI31",\
        "MUX2","MUXI2","MUXI3",\
        "ADDF_V1","ADDH",\
        "FDPQ_V3","FDP_V2","FSDP_V2","FSDPQ_V2",\
        "CKGTPLT_V5"]

decap_cell_names=["DCAP_PV1ECO"]

size_num = [1,2,\
        3,3,3,3,3,3,\
        3,3,4,5,5,6,\
        5,6,7,5,5,6,\
        6,5,5,6,6,\
        5,5,5,5,\
        6,6,6,6,\
        5,5,5,5,\
        6,6,6,\
        6,6,\
        8,5,5,5,\
        9]



size_list=[\
#0 Simple 
        ["1"],\
#1 BUF (
        ["1","2","3","4","6","8","10","12","16"],\
#2 INV
        ["0P5","1","2","3","4","6","8","10","12","16"],\
#3 AN2, AN3, AN4, ND2, ND3, ND4, NR2, NR3
        ["0P5","1","2","4","8"],\
#4 NR4
        ["0P75","2"],\
#5 OR2, OR3, EN2, EO2, EO3, AO221, AO22, AOI21, AOI22, AOI31, AOI32, OAI21, OAI211, OAI221, OAI31, FDP_V2, FSDP_V2, FSDPQ_V2
        ["0P5","1","2","4"],\
#6 OR4, EN3, EO4, AO21, AO31, AO32, OA22, OA221, OA31, OA32, MUX2, MUXI2, MUXI3, ADDF_V1, ADDH
        ["1","2"],\
#7 EN4
        ["2","4"],\
#8 FDPQ_V3
        ["1","2","4"],\
#9 CKGTPLT_V5
        ["1","2","4","6","8","12","16"]]

lib_path="/home/sam28/ygjung/current_waveform/CCS_DB/saed14rvt_ss0p72v125c.lib"

f_lib = open(lib_path, 'r')
cell_list = []
for i in range(len(cell_names)):
    name = cell_names[i]
    for size in size_list[size_num[i]]:
        data = RVT_prefix+"_"+name+"_"+size
        cell_list.append( data )
        print( data )

readlines = f_lib.readlines()

lineIdx = 0

dont_use_list = []

cell_dont_use_file = "./dont_use_dc.tcl"
f = open( cell_dont_use_file, 'w' )

while lineIdx < len(readlines):

    line = readlines[lineIdx]
    pos = line.find( 'cell (' )
    if pos != -1:
        pos_open = line.find('(')
        pos_close = line.find(')')
        name = line[pos_open+1 : pos_close]
        pos = name.find( "\"" )
        if pos == -1 :
            print(name)
# https://stackoverflow.com/questions/4843158/how-to-check-if-a-string-is-a-substring-of-items-in-a-list-of-strings
            if any(name in s for s in cell_list) :
                print("\t - it is in cell_list")
            else :
                f.write( "set_dont_use [get_lib_cell */*%s*]\n" %(name) )

    lineIdx = lineIdx +1

#cell_list_file = "./cell_list_apl_211112.txt"
#f = open(cell_list_file,'w')
#for i in range(len(cell_names)):
#    name = cell_names[i]
#    for size in size_list[size_num[i]]:
#        data = RVT_prefix+"_"+name+"_"+size+"\n"
#        f.write(data)

f.close()


