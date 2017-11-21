using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80]
@variable(m, b[b_Idx])
x_Idx = Any[81, 82, 83]
@variable(m, x[x_Idx])
setcategory(b[35], :Bin)
setcategory(b[38], :Bin)
setcategory(b[44], :Bin)
setcategory(b[71], :Bin)
setcategory(b[78], :Bin)
setcategory(b[75], :Bin)
setcategory(b[66], :Bin)
setcategory(b[15], :Bin)
setcategory(b[80], :Bin)
setcategory(b[70], :Bin)
setcategory(b[42], :Bin)
setcategory(b[49], :Bin)
setcategory(b[45], :Bin)
setcategory(b[41], :Bin)
setcategory(b[48], :Bin)
setcategory(b[23], :Bin)
setcategory(b[64], :Bin)
setcategory(b[54], :Bin)
setcategory(b[21], :Bin)
setcategory(b[28], :Bin)
setcategory(b[36], :Bin)
setcategory(b[22], :Bin)
setcategory(b[77], :Bin)
setcategory(b[46], :Bin)
setcategory(b[53], :Bin)
setcategory(b[8], :Bin)
setcategory(b[33], :Bin)
setcategory(b[56], :Bin)
setcategory(b[30], :Bin)
setcategory(b[79], :Bin)
setcategory(b[29], :Bin)
setcategory(b[40], :Bin)
setcategory(b[61], :Bin)
setcategory(b[58], :Bin)
setcategory(b[74], :Bin)
setcategory(b[32], :Bin)
setcategory(b[34], :Bin)
setcategory(b[57], :Bin)
setcategory(b[72], :Bin)
setcategory(b[5], :Bin)
setcategory(b[16], :Bin)
setcategory(b[60], :Bin)
setcategory(b[13], :Bin)
setcategory(b[51], :Bin)
setcategory(b[69], :Bin)
setcategory(b[12], :Bin)
setcategory(b[2], :Bin)
setcategory(b[68], :Bin)
setcategory(b[14], :Bin)
setcategory(b[20], :Bin)
setcategory(b[43], :Bin)
setcategory(b[11], :Bin)
setcategory(b[19], :Bin)
setcategory(b[47], :Bin)
setcategory(b[25], :Bin)
setcategory(b[7], :Bin)
setcategory(b[9], :Bin)
setcategory(b[65], :Bin)
setcategory(b[3], :Bin)
setcategory(b[59], :Bin)
setcategory(b[17], :Bin)
setcategory(b[39], :Bin)
setcategory(b[76], :Bin)
setcategory(b[4], :Bin)
setcategory(b[6], :Bin)
setcategory(b[67], :Bin)
setcategory(b[1], :Bin)
setcategory(b[37], :Bin)
setcategory(b[50], :Bin)
setcategory(b[27], :Bin)
setcategory(b[18], :Bin)
setcategory(b[31], :Bin)
setcategory(b[62], :Bin)
setcategory(b[52], :Bin)
setcategory(b[24], :Bin)
setcategory(b[55], :Bin)
setcategory(b[10], :Bin)
setcategory(b[63], :Bin)
setcategory(b[26], :Bin)
setcategory(b[73], :Bin)


# ----- Constraints ----- #
@constraint(m, e1, -b[1]-b[2]-b[3]-b[4]-b[5]-b[6]-b[7]-b[8]-b[9]-b[10]-b[11]-b[12]-b[13]-b[14]-b[15]-b[16]-b[17]-b[18]-b[19]-b[20]-b[21]-b[22]-b[23]-b[24]-b[25]-b[26]-b[27]-b[28]-b[29]-b[30]+x[83] == 0.0)
@constraint(m, e2, b[1]+b[2]+b[3] >= 1.0)
@constraint(m, e3, b[1]+b[2]+b[4]+b[5]+b[6] >= 0.0)
@constraint(m, e4, b[1]+b[3]+b[4] >= 1.0)
@constraint(m, e5, b[2]+b[3]+b[4]+b[6]+b[12] >= 0.0)
@constraint(m, e6, b[2]+b[5]+b[7] >= 1.0)
@constraint(m, e7, b[2]+b[4]+b[6]+b[7]+b[8]+b[9]+b[10]+b[28] >= 0.0)
@constraint(m, e8, b[5]+b[6]+b[7] >= 0.0)
@constraint(m, e9, b[6]+b[8]+b[28] >= 0.0)
@constraint(m, e10, b[6]+b[9]+b[10]+b[11] >= 0.0)
@constraint(m, e11, b[6]+b[9]+b[10]+b[17]+b[20]+b[21]+b[22] >= 0.0)
@constraint(m, e12, b[9]+b[11] >= 0.0)
@constraint(m, e13, b[4]+b[12]+b[13]+b[14]+b[15]+b[16] >= 1.0)
@constraint(m, e14, b[12]+b[13] >= 1.0)
@constraint(m, e15, b[12]+b[14]+b[15] >= 1.0)
@constraint(m, e16, b[12]+b[14]+b[15]+b[18]+b[23] >= 1.0)
@constraint(m, e17, b[12]+b[16]+b[17] >= 1.0)
@constraint(m, e18, b[10]+b[16]+b[17] >= 1.0)
@constraint(m, e19, b[15]+b[18]+b[19] >= 1.0)
@constraint(m, e20, b[18]+b[19]+b[20] >= 1.0)
@constraint(m, e21, b[10]+b[19]+b[20] >= 1.0)
@constraint(m, e22, b[10]+b[21]+b[22] >= 0.0)
@constraint(m, e23, b[10]+b[21]+b[22]+b[24] >= 0.0)
@constraint(m, e24, b[15]+b[23]+b[24] >= 1.0)
@constraint(m, e25, b[22]+b[23]+b[24]+b[25] >= 0.0)
@constraint(m, e26, b[24]+b[25]+b[26]+b[27] >= 0.0)
@constraint(m, e27, b[25]+b[26] >= 0.0)
@constraint(m, e28, b[25]+b[27]+b[28]+b[29]+b[30] >= 0.0)
@constraint(m, e29, b[6]+b[8]+b[27]+b[28] >= 0.0)
@constraint(m, e30, b[27]+b[29]+b[30] >= 0.0)
@constraint(m, e31, b[27]+b[29]+b[30] >= 0.0)
@constraint(m, e32, -b[1]-b[2]-b[3]+b[51] == 0.0)
@constraint(m, e33, -b[1]-b[2]-b[4]-b[5]-b[6]+b[52] == 0.0)
@constraint(m, e34, -b[1]-b[3]-b[4]+b[53] == 0.0)
@constraint(m, e35, -b[2]-b[3]-b[4]-b[6]-b[12]+b[54] == 0.0)
@constraint(m, e36, -b[2]-b[5]-b[7]+b[55] == 0.0)
@constraint(m, e37, -b[2]-b[4]-b[6]-b[7]-b[8]-b[9]-b[10]-b[28]+b[56] == 0.0)
@constraint(m, e38, -b[5]-b[6]-b[7]+b[57] == 0.0)
@constraint(m, e39, -b[6]-b[8]-b[28]+b[58] == 0.0)
@constraint(m, e40, -b[6]-b[9]-b[10]-b[11]+b[59] == 0.0)
@constraint(m, e41, -b[6]-b[9]-b[10]-b[17]-b[20]-b[21]-b[22]+b[60] == 0.0)
@constraint(m, e42, -b[9]-b[11]+b[61] == 0.0)
@constraint(m, e43, -b[4]-b[12]-b[13]-b[14]-b[15]-b[16]+b[62] == 0.0)
@constraint(m, e44, -b[12]-b[13]+b[63] == 0.0)
@constraint(m, e45, -b[12]-b[14]-b[15]+b[64] == 0.0)
@constraint(m, e46, -b[12]-b[14]-b[15]-b[18]-b[23]+b[65] == 0.0)
@constraint(m, e47, -b[12]-b[16]-b[17]+b[66] == 0.0)
@constraint(m, e48, -b[10]-b[16]-b[17]+b[67] == 0.0)
@constraint(m, e49, -b[15]-b[18]-b[19]+b[68] == 0.0)
@constraint(m, e50, -b[18]-b[19]-b[20]+b[69] == 0.0)
@constraint(m, e51, -b[10]-b[19]-b[20]+b[70] == 0.0)
@constraint(m, e52, -b[10]-b[21]-b[22]+b[71] == 0.0)
@constraint(m, e53, -b[10]-b[21]-b[22]-b[24]+b[72] == 0.0)
@constraint(m, e54, -b[15]-b[23]-b[24]+b[73] == 0.0)
@constraint(m, e55, -b[22]-b[23]-b[24]-b[25]+b[74] == 0.0)
@constraint(m, e56, -b[24]-b[25]-b[26]-b[27]+b[75] == 0.0)
@constraint(m, e57, -b[25]-b[26]+b[76] == 0.0)
@constraint(m, e58, -b[25]-b[27]-b[28]-b[29]-b[30]+b[77] == 0.0)
@constraint(m, e59, -b[6]-b[8]-b[27]-b[28]+b[78] == 0.0)
@constraint(m, e60, -b[27]-b[29]-b[30]+b[79] == 0.0)
@constraint(m, e61, -b[27]-b[29]-b[30]+b[80] == 0.0)
@NLconstraint(m, e62, b[31]*b[56]+b[32]*b[58]+b[33]*b[59]+b[34]*b[60]+b[35]*b[78]-b[31]-b[32]-b[33]-b[34]-b[35]+b[52]+b[54]+b[57] >= 2.0)
@NLconstraint(m, e63, b[36]*b[56]+b[37]*b[59]+b[38]*b[60]-b[36]-b[37]-b[38]+b[61] >= 0.0)
@NLconstraint(m, e64, b[39]*b[60]+b[40]*b[74]-b[39]-b[40]+b[71]+b[72] >= 1.0)
@NLconstraint(m, e65, b[41]*b[74]+b[42]*b[75]+b[43]*b[77]-b[41]-b[42]-b[43]+b[76] >= 0.0)
@NLconstraint(m, e66, b[44]*b[75]+b[45]*b[77]+b[46]*b[78]-b[44]-b[45]-b[46]+b[79]+b[80] >= 1.0)
@NLconstraint(m, e67, b[47]*b[56]+b[48]*b[58]+b[49]*b[77]+b[50]*b[78]-b[47]-b[48]-b[49]-b[50] >= 0.0)
@constraint(m, e68, b[31]+b[36]+b[47] >= 1.0)
@constraint(m, e69, b[32]+b[48] >= 1.0)
@constraint(m, e70, b[33]+b[37] >= 1.0)
@constraint(m, e71, b[34]+b[38]+b[39] >= 1.0)
@constraint(m, e72, b[40]+b[41] >= 1.0)
@constraint(m, e73, b[42]+b[44] >= 1.0)
@constraint(m, e74, b[43]+b[45]+b[49] >= 1.0)
@constraint(m, e75, b[35]+b[46]+b[50] >= 1.0)
@constraint(m, e76, -3*b[1]-5*b[2]-3*b[3]-5*b[4]-3*b[5]-8*b[6]-3*b[7]-3*b[8]-4*b[9]-7*b[10]-2*b[11]-6*b[12]-2*b[13]-3*b[14]-5*b[15]-3*b[16]-3*b[17]-3*b[18]-3*b[19]-3*b[20]-3*b[21]-4*b[22]-3*b[23]-4*b[24]-4*b[25]-2*b[26]-5*b[27]-4*b[28]-3*b[29]-3*b[30]+x[81] == 0.0)
@constraint(m, e77, b[51]+b[52]+b[53]+b[54]+b[55]+b[56]+b[57]+b[58]+b[59]+b[60]+b[61]+b[62]+b[63]+b[64]+b[65]+b[66]+b[67]+b[68]+b[69]+b[70]+b[71]+b[72]+b[73]+b[74]+b[75]+b[76]+b[77]+b[78]+b[79]+b[80]+x[82] == 30.0)


# ----- Objective ----- #
@objective(m, Min, x[83])

m = m 		 # model get returned when including this script. 
