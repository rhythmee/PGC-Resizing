from sympy import symbols, Matrix

#a, b, c, d = symbols('a b c d')
#
#A = Matrix([[a, b],
#           [c, d]])
#
#inverse_A = A.inv()
#
#print(inverse_A)
#print("---------")
#
#g1, g2, g3, g4 = symbols('g1 g2 g3 g4')
#G = Matrix([[ -(g1+g2+1),  g1,     g2,     0   ],
#            [   g1,  -(g1+g3),  0,      g3   ],
#            [   g2,     0,  -(g2+g4),   g4   ],
#            [   0,      g3,     g4,  -(g3+g4+1)]])
#
#inverse_G = G.inv()
#
#print(inverse_G)
#g1, g2, g3 = symbols('g1 g2 g3')
#G = Matrix([[ -(g1+g2+1),  g1,     g2        ],
#            [   g1,  -(g1+g3),  0 ],
#            [   g3,   0,    -(g3+g2+1)]])
#inverse_G = G.inv()
#
#print(inverse_G)

" 2x2 matrix "
rx = symbols('rx')
G = Matrix([[-(1/rx + 1/2 + 1/2), 1/2, 0, 1/2],
            [1/2, -(1/2 + 1/2), 1/2, 0],
            [0, 1/2, -(1/2+1/2), 1/2],
            [1/2, 0, 1/2, -(1/2+1/2)]]
            )
inverse_G = G.inv()

#print(inverse_G)
print("---------")


" 2x2 matrix with two variables"
rx1, rx2 = symbols('rx1 rx2')
G = Matrix([[-(1/rx1 + 1/2 + 1/2), 1/2, 0, 1/2],
            [1/2, -(1/2 + 1/2), 1/2, 0],
            [0, 1/2, -(1/2+1/2+1/rx2), 1/2],
            [1/2, 0, 1/2, -(1/2+1/2)]]
            )
inverse_G = G.inv()

print(inverse_G)
print("---------")
i1, i2, i3, i4, VDD = symbols('i1 i2 i3 i4 VDD')
I = Matrix([i1-VDD/rx1, i2, i3-VDD/rx2, i4])
result = inverse_G * I

print('Result matrix of voltage:')
print(result)


" 3x3 matrix "
rx2 = symbols('rx2')
r12, r14, r23, r25, r36, r45, r47, r56, r58, r69, r78, r89 = symbols('r12 r14 r23 r25 r36 r45 r47 r56 r58 r69 r78 r89')
#G2 = Matrix([[-(1/r12 + 1/r14),   1/r12,                    0,           1/r14,                     0,      0,      0,           0,        0],
#             [1/r12,             -(1/r12 + 1/r23 + 1/r25),  1/r23,      0,                          1/r25,  0,      0,           0,        0],
#             [0,                1/r23,                -(1/r23 + 1/r36), 0,                          0,      1/r36,  0,           0,        0],
#             [1/r14,            0,                          0, -(1/r14 + 1/r45 + 1/r47),         1/r45,     0,      1/r47,       0,        0],
#             [0,                1/r25,                      0,        1/r45, -(1/rx + 1/r25 + 1/r45 + 1/r56 + 1/r58), 1/r56, 0, 1/r58,     0],
#             [0,                0,                          1/r36,      0,                          1/r56, -(1/r36 + 1/r56 + 1/r69), 0, 0, 1/r69],
#             [0,                0,                          0,          1/r47,                      0,      0,      -(1/r47 + 1/r78), 1/r78, 0],
#             [0,                0,                          0,          0,                          1/r58,  0,      1/r78, -(1/r58 + 1/r78 + 1/r89), 1/r89],
#             [0,                0,                          0,          0,                          0,      1/r69,  0,          1/r89, -(1/r69 + 1/r89)]]
#            ) 

G2 = Matrix([[-(1/1 + 1/1),   1/1,                    0,           1/1,                     0,      0,      0,           0,        0],
             [1/1,             -(3),  1/1,      0,                          1/1,  0,      0,           0,        0],
             [0,                1/1,                -(2), 0,                          0,      1/1,  0,           0,        0],
             [1/1,            0,                          0, -(3),         1/1,     0,      1/1,       0,        0],
             [0,                1/1,                      0,        1/1, -(1/rx2 + 1/1 + 1/1 + 1/1 + 1/1), 1/1, 0, 1/1,     0],
             [0,                0,                          1/1,      0,                          1/1, -(3), 0, 0, 1/1],
             [0,                0,                          0,          1/1,                      0,      0,      -(2), 1/1, 0],
             [0,                0,                          0,          0,                          1/1,  0,      1/1, -(3), 1/1],
             [0,                0,                          0,          0,                          0,      1/1,  0,          1/1, -(1/1 + 1/1)]]
            ) 
inverse_G2 = G2.inv()

#print(inverse_G2)
