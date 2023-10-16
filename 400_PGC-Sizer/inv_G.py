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

rx = symbols('rx')
G = Matrix([[-(1/rx + 1/2 + 1/2), 1/2, 0, 1/2],
            [1/2, -(1/2 + 1/2), 1/2, 0],
            [0, 1/2, -(1/2+1/2), 1/2],
            [1/2, 0, 1/2, -(1/2+1/2)]]
            )
inverse_G = G.inv()

print(inverse_G)
