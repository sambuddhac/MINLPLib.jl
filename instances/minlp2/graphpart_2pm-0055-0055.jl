using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75]
@variable(m, b[b_Idx])
set_binary(b[35])
set_binary(b[38])
set_binary(b[44])
set_binary(b[71])
set_binary(b[75])
set_binary(b[66])
set_binary(b[15])
set_binary(b[70])
set_binary(b[42])
set_binary(b[49])
set_binary(b[45])
set_binary(b[41])
set_binary(b[48])
set_binary(b[23])
set_binary(b[64])
set_binary(b[54])
set_binary(b[21])
set_binary(b[28])
set_binary(b[36])
set_binary(b[22])
set_binary(b[46])
set_binary(b[53])
set_binary(b[8])
set_binary(b[33])
set_binary(b[56])
set_binary(b[30])
set_binary(b[29])
set_binary(b[40])
set_binary(b[61])
set_binary(b[58])
set_binary(b[74])
set_binary(b[32])
set_binary(b[34])
set_binary(b[57])
set_binary(b[72])
set_binary(b[5])
set_binary(b[16])
set_binary(b[60])
set_binary(b[13])
set_binary(b[51])
set_binary(b[69])
set_binary(b[12])
set_binary(b[2])
set_binary(b[68])
set_binary(b[14])
set_binary(b[20])
set_binary(b[43])
set_binary(b[11])
set_binary(b[19])
set_binary(b[47])
set_binary(b[25])
set_binary(b[7])
set_binary(b[9])
set_binary(b[65])
set_binary(b[3])
set_binary(b[59])
set_binary(b[17])
set_binary(b[39])
set_binary(b[4])
set_binary(b[6])
set_binary(b[67])
set_binary(b[1])
set_binary(b[37])
set_binary(b[50])
set_binary(b[27])
set_binary(b[18])
set_binary(b[31])
set_binary(b[62])
set_binary(b[52])
set_binary(b[24])
set_binary(b[55])
set_binary(b[10])
set_binary(b[63])
set_binary(b[26])
set_binary(b[73])


# ----- Constraints ----- #
@constraint(m, e1, b[1]+b[2]+b[3] == 1.0)
@constraint(m, e2, b[4]+b[5]+b[6] == 1.0)
@constraint(m, e3, b[7]+b[8]+b[9] == 1.0)
@constraint(m, e4, b[10]+b[11]+b[12] == 1.0)
@constraint(m, e5, b[13]+b[14]+b[15] == 1.0)
@constraint(m, e6, b[16]+b[17]+b[18] == 1.0)
@constraint(m, e7, b[19]+b[20]+b[21] == 1.0)
@constraint(m, e8, b[22]+b[23]+b[24] == 1.0)
@constraint(m, e9, b[25]+b[26]+b[27] == 1.0)
@constraint(m, e10, b[28]+b[29]+b[30] == 1.0)
@constraint(m, e11, b[31]+b[32]+b[33] == 1.0)
@constraint(m, e12, b[34]+b[35]+b[36] == 1.0)
@constraint(m, e13, b[37]+b[38]+b[39] == 1.0)
@constraint(m, e14, b[40]+b[41]+b[42] == 1.0)
@constraint(m, e15, b[43]+b[44]+b[45] == 1.0)
@constraint(m, e16, b[46]+b[47]+b[48] == 1.0)
@constraint(m, e17, b[49]+b[50]+b[51] == 1.0)
@constraint(m, e18, b[52]+b[53]+b[54] == 1.0)
@constraint(m, e19, b[55]+b[56]+b[57] == 1.0)
@constraint(m, e20, b[58]+b[59]+b[60] == 1.0)
@constraint(m, e21, b[61]+b[62]+b[63] == 1.0)
@constraint(m, e22, b[64]+b[65]+b[66] == 1.0)
@constraint(m, e23, b[67]+b[68]+b[69] == 1.0)
@constraint(m, e24, b[70]+b[71]+b[72] == 1.0)
@constraint(m, e25, b[73]+b[74]+b[75] == 1.0)
@NLconstraint(m, e26, b[1]*b[4]-b[1]*b[13]+b[1]*b[16]-b[1]*b[61]+b[2]*b[5]-b[2]*b[14]+b[2]*b[17]-b[2]*b[62]+b[3]*b[6]-b[3]*b[15]+b[3]*b[18]-b[3]*b[63]-b[4]*b[7]+b[4]*b[19]-b[4]*b[64]-b[5]*b[8]+b[5]*b[20]-b[5]*b[65]-b[6]*b[9]+b[6]*b[21]-b[6]*b[66]+b[7]*b[10]-b[7]*b[22]-b[7]*b[67]+b[8]*b[11]-b[8]*b[23]-b[8]*b[68]+b[9]*b[12]-b[9]*b[24]-b[9]*b[69]+b[10]*b[13]+b[10]*b[25]-b[10]*b[70]+b[11]*b[14]+b[11]*b[26]-b[11]*b[71]+b[12]*b[15]+b[12]*b[27]-b[12]*b[72]-b[13]*b[28]-b[13]*b[73]-b[14]*b[29]-b[14]*b[74]-b[15]*b[30]-b[15]*b[75]-b[16]*b[19]+b[16]*b[28]+b[16]*b[31]-b[17]*b[20]+b[17]*b[29]+b[17]*b[32]-b[18]*b[21]+b[18]*b[30]+b[18]*b[33]+b[19]*b[22]+b[19]*b[34]+b[20]*b[23]+b[20]*b[35]+b[21]*b[24]+b[21]*b[36]-b[22]*b[25]-b[22]*b[37]-b[23]*b[26]-b[23]*b[38]-b[24]*b[27]-b[24]*b[39]+b[25]*b[28]-b[25]*b[40]+b[26]*b[29]-b[26]*b[41]+b[27]*b[30]-b[27]*b[42]-b[28]*b[43]-b[29]*b[44]-b[30]*b[45]+b[31]*b[34]+b[31]*b[43]-b[31]*b[46]+b[32]*b[35]+b[32]*b[44]-b[32]*b[47]+b[33]*b[36]+b[33]*b[45]-b[33]*b[48]-b[34]*b[37]+b[34]*b[49]-b[35]*b[38]+b[35]*b[50]-b[36]*b[39]+b[36]*b[51]-b[37]*b[40]-b[37]*b[52]-b[38]*b[41]-b[38]*b[53]-b[39]*b[42]-b[39]*b[54]+b[40]*b[43]-b[40]*b[55]+b[41]*b[44]-b[41]*b[56]+b[42]*b[45]-b[42]*b[57]+b[43]*b[58]+b[44]*b[59]+b[45]*b[60]-b[46]*b[49]+b[46]*b[58]-b[46]*b[61]-b[47]*b[50]+b[47]*b[59]-b[47]*b[62]-b[48]*b[51]+b[48]*b[60]-b[48]*b[63]+b[49]*b[52]+b[49]*b[64]+b[50]*b[53]+b[50]*b[65]+b[51]*b[54]+b[51]*b[66]+b[52]*b[55]-b[52]*b[67]+b[53]*b[56]-b[53]*b[68]+b[54]*b[57]-b[54]*b[69]-b[55]*b[58]-b[55]*b[70]-b[56]*b[59]-b[56]*b[71]-b[57]*b[60]-b[57]*b[72]+b[58]*b[73]+b[59]*b[74]+b[60]*b[75]+b[61]*b[64]+b[61]*b[73]+b[62]*b[65]+b[62]*b[74]+b[63]*b[66]+b[63]*b[75]+b[64]*b[67]+b[65]*b[68]+b[66]*b[69]-b[67]*b[70]-b[68]*b[71]-b[69]*b[72]+b[70]*b[73]+b[71]*b[74]+b[72]*b[75]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.