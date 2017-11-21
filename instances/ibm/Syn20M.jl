using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46]
@variable(m, x[x_Idx])
b_Idx = Any[47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66]
@variable(m, b[b_Idx])
setlowerbound(x[16], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[38], 0.0)
setcategory(b[66], :Bin)
setlowerbound(x[42], 0.0)
setcategory(b[49], :Bin)
setlowerbound(x[22], 0.0)
setcategory(b[48], :Bin)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setcategory(b[64], :Bin)
setcategory(b[54], :Bin)
setlowerbound(x[43], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setcategory(b[53], :Bin)
setcategory(b[56], :Bin)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setcategory(b[61], :Bin)
setcategory(b[58], :Bin)
setcategory(b[57], :Bin)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setcategory(b[60], :Bin)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setcategory(b[51], :Bin)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setcategory(b[47], :Bin)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setcategory(b[65], :Bin)
setlowerbound(x[44], 0.0)
setcategory(b[59], :Bin)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setcategory(b[50], :Bin)
setlowerbound(x[6], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setcategory(b[62], :Bin)
setlowerbound(x[19], 0.0)
setcategory(b[52], :Bin)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setcategory(b[55], :Bin)
setlowerbound(x[15], 0.0)
setcategory(b[63], :Bin)
setupperbound(x[2], 10.0)
setupperbound(x[13], 7.0)
setupperbound(x[30], 5.0)
setupperbound(x[31], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-5*x[8]-200*x[38]-250*x[39]-200*x[40]-700*x[41]-400*x[42]-500*x[43]-400*x[44]-600*x[45]-700*x[46]+5*b[47]+8*b[48]+6*b[49]+10*b[50]+6*b[51]+7*b[52]+4*b[53]+5*b[54]+2*b[55]+4*b[56]+3*b[57]+7*b[58]+3*b[59]+2*b[60]+4*b[61]+2*b[62]+3*b[63]+5*b[64]+2*b[65]+8*b[66] == 0.0)
@constraint(m, e2, x[2]-x[3]-x[4] == 0.0)
@constraint(m, e3, -x[5]-x[6]+x[7] == 0.0)
@constraint(m, e4, x[7]-x[8]-x[9] == 0.0)
@constraint(m, e5, x[9]-x[10]-x[11]-x[12] == 0.0)
@constraint(m, e6, x[14]-x[17]-x[18] == 0.0)
@constraint(m, e7, x[16]-x[19]-x[20]-x[21] == 0.0)
@constraint(m, e8, x[24]-x[28]-x[29] == 0.0)
@constraint(m, e9, -x[25]-x[31]+x[32] == 0.0)
@constraint(m, e10, x[26]-x[33]-x[34] == 0.0)
@constraint(m, e11, x[27]-x[35]-x[36]-x[37] == 0.0)
@NLconstraint(m, e12, -log(1+x[3])+x[5]+b[47] <= 1.0)
@constraint(m, e13, x[3]-10*b[47] <= 0.0)
@constraint(m, e14, x[5]-2.39789527279837*b[47] <= 0.0)
@NLconstraint(m, e15, -1.2*log(1+x[4])+x[6]+b[48] <= 1.0)
@constraint(m, e16, x[4]-10*b[48] <= 0.0)
@constraint(m, e17, x[6]-2.87747432735804*b[48] <= 0.0)
@constraint(m, e18, -0.75*x[10]+x[14]+b[49] <= 1.0)
@constraint(m, e19, -0.75*x[10]+x[14]-b[49] >= -1.0)
@constraint(m, e20, x[10]-2.87747432735804*b[49] <= 0.0)
@constraint(m, e21, x[14]-2.15810574551853*b[49] <= 0.0)
@NLconstraint(m, e22, -1.5*log(1+x[11])+x[15]+b[50] <= 1.0)
@constraint(m, e23, x[11]-2.87747432735804*b[50] <= 0.0)
@constraint(m, e24, x[15]-2.03277599268042*b[50] <= 0.0)
@constraint(m, e25, -x[12]+x[16]+b[51] <= 1.0)
@constraint(m, e26, -x[12]+x[16]-b[51] >= -1.0)
@constraint(m, e27, -0.5*x[13]+x[16]+b[51] <= 1.0)
@constraint(m, e28, -0.5*x[13]+x[16]-b[51] >= -1.0)
@constraint(m, e29, x[12]-2.87747432735804*b[51] <= 0.0)
@constraint(m, e30, x[13]-7*b[51] <= 0.0)
@constraint(m, e31, x[16]-3.5*b[51] <= 0.0)
@NLconstraint(m, e32, -1.25*log(1+x[17])+x[22]+b[52] <= 1.0)
@constraint(m, e33, x[17]-2.15810574551853*b[52] <= 0.0)
@constraint(m, e34, x[22]-1.43746550029693*b[52] <= 0.0)
@NLconstraint(m, e35, -0.9*log(1+x[18])+x[23]+b[53] <= 1.0)
@constraint(m, e36, x[18]-2.15810574551853*b[53] <= 0.0)
@constraint(m, e37, x[23]-1.03497516021379*b[53] <= 0.0)
@NLconstraint(m, e38, -log(1+x[15])+x[24]+b[54] <= 1.0)
@constraint(m, e39, x[15]-2.03277599268042*b[54] <= 0.0)
@constraint(m, e40, x[24]-1.10947836929589*b[54] <= 0.0)
@constraint(m, e41, -0.9*x[19]+x[25]+b[55] <= 1.0)
@constraint(m, e42, -0.9*x[19]+x[25]-b[55] >= -1.0)
@constraint(m, e43, x[19]-3.5*b[55] <= 0.0)
@constraint(m, e44, x[25]-3.15*b[55] <= 0.0)
@constraint(m, e45, -0.6*x[20]+x[26]+b[56] <= 1.0)
@constraint(m, e46, -0.6*x[20]+x[26]-b[56] >= -1.0)
@constraint(m, e47, x[20]-3.5*b[56] <= 0.0)
@constraint(m, e48, x[26]-2.1*b[56] <= 0.0)
@NLconstraint(m, e49, -1.1*log(1+x[21])+x[27]+b[57] <= 1.0)
@constraint(m, e50, x[21]-3.5*b[57] <= 0.0)
@constraint(m, e51, x[27]-1.6544851364539*b[57] <= 0.0)
@constraint(m, e52, -0.9*x[22]+x[38]+b[58] <= 1.0)
@constraint(m, e53, -0.9*x[22]+x[38]-b[58] >= -1.0)
@constraint(m, e54, -x[30]+x[38]+b[58] <= 1.0)
@constraint(m, e55, -x[30]+x[38]-b[58] >= -1.0)
@constraint(m, e56, x[22]-1.43746550029693*b[58] <= 0.0)
@constraint(m, e57, x[30]-5*b[58] <= 0.0)
@constraint(m, e58, x[38]-5*b[58] <= 0.0)
@NLconstraint(m, e59, -log(1+x[23])+x[39]+b[59] <= 1.0)
@constraint(m, e60, x[23]-1.03497516021379*b[59] <= 0.0)
@constraint(m, e61, x[39]-0.710483612536911*b[59] <= 0.0)
@NLconstraint(m, e62, -0.7*log(1+x[28])+x[40]+b[60] <= 1.0)
@constraint(m, e63, x[28]-1.10947836929589*b[60] <= 0.0)
@constraint(m, e64, x[40]-0.522508489006913*b[60] <= 0.0)
@NLconstraint(m, e65, -0.65*log(1+x[29])+x[41]+b[61] <= 1.0)
@NLconstraint(m, e66, -0.65*log(1+x[32])+x[41]+b[61] <= 1.0)
@constraint(m, e67, x[29]-1.10947836929589*b[61] <= 0.0)
@constraint(m, e68, x[32]-8.15*b[61] <= 0.0)
@constraint(m, e69, x[41]-1.43894002153683*b[61] <= 0.0)
@constraint(m, e70, -x[33]+x[42]+b[62] <= 1.0)
@constraint(m, e71, -x[33]+x[42]-b[62] >= -1.0)
@constraint(m, e72, x[33]-2.1*b[62] <= 0.0)
@constraint(m, e73, x[42]-2.1*b[62] <= 0.0)
@constraint(m, e74, -x[34]+x[43]+b[63] <= 1.0)
@constraint(m, e75, -x[34]+x[43]-b[63] >= -1.0)
@constraint(m, e76, x[34]-2.1*b[63] <= 0.0)
@constraint(m, e77, x[43]-2.1*b[63] <= 0.0)
@NLconstraint(m, e78, -0.75*log(1+x[35])+x[44]+b[64] <= 1.0)
@constraint(m, e79, x[35]-1.6544851364539*b[64] <= 0.0)
@constraint(m, e80, x[44]-0.732188035236726*b[64] <= 0.0)
@NLconstraint(m, e81, -0.8*log(1+x[36])+x[45]+b[65] <= 1.0)
@constraint(m, e82, x[36]-1.6544851364539*b[65] <= 0.0)
@constraint(m, e83, x[45]-0.781000570919175*b[65] <= 0.0)
@NLconstraint(m, e84, -0.85*log(1+x[37])+x[46]+b[66] <= 1.0)
@constraint(m, e85, x[37]-1.6544851364539*b[66] <= 0.0)
@constraint(m, e86, x[46]-0.829813106601623*b[66] <= 0.0)
@constraint(m, e87, b[47]+b[48] == 1.0)
@constraint(m, e88, -b[49]+b[52]+b[53] >= 0.0)
@constraint(m, e89, -b[52]+b[58] >= 0.0)
@constraint(m, e90, -b[53]+b[59] >= 0.0)
@constraint(m, e91, -b[50]+b[54] >= 0.0)
@constraint(m, e92, -b[54]+b[60]+b[61] >= 0.0)
@constraint(m, e93, -b[51]+b[55]+b[56]+b[57] >= 0.0)
@constraint(m, e94, -b[55]+b[61] >= 0.0)
@constraint(m, e95, -b[56]+b[62]+b[63] >= 0.0)
@constraint(m, e96, -b[57]+b[64]+b[65]+b[66] >= 0.0)
@constraint(m, e97, b[47]+b[48]-b[49] >= 0.0)
@constraint(m, e98, b[47]+b[48]-b[50] >= 0.0)
@constraint(m, e99, b[47]+b[48]-b[51] >= 0.0)
@constraint(m, e100, b[49]-b[52] >= 0.0)
@constraint(m, e101, b[49]-b[53] >= 0.0)
@constraint(m, e102, b[50]-b[54] >= 0.0)
@constraint(m, e103, b[51]-b[55] >= 0.0)
@constraint(m, e104, b[51]-b[56] >= 0.0)
@constraint(m, e105, b[51]-b[57] >= 0.0)
@constraint(m, e106, b[52]-b[58] >= 0.0)
@constraint(m, e107, b[53]-b[59] >= 0.0)
@constraint(m, e108, b[54]-b[60] >= 0.0)
@constraint(m, e109, b[54]-b[61] >= 0.0)
@constraint(m, e110, b[56]-b[62] >= 0.0)
@constraint(m, e111, b[56]-b[63] >= 0.0)
@constraint(m, e112, b[57]-b[64] >= 0.0)
@constraint(m, e113, b[57]-b[65] >= 0.0)
@constraint(m, e114, b[57]-b[66] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script. 
