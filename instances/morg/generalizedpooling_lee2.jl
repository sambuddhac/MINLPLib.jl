using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 54]
@variable(m, x[x_Idx])
b_Idx = Any[45, 46, 47, 48, 49, 50, 51, 52, 53]
@variable(m, b[b_Idx])
setcategory(b[51], :Bin)
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[32], 0.0)
setcategory(b[50], :Bin)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[26], 0.0)
setcategory(b[46], :Bin)
setlowerbound(x[23], 0.0)
setcategory(b[53], :Bin)
setlowerbound(x[11], 0.0)
setcategory(b[47], :Bin)
setlowerbound(x[29], 0.0)
setlowerbound(x[22], 0.0)
setcategory(b[49], :Bin)
setlowerbound(x[12], 0.0)
setcategory(b[45], :Bin)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setcategory(b[48], :Bin)
setcategory(b[52], :Bin)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[1], 686.0)
setupperbound(x[2], 686.0)
setupperbound(x[3], 686.0)
setupperbound(x[4], 686.0)
setupperbound(x[5], 686.0)
setupperbound(x[6], 686.0)
setupperbound(x[7], 686.0)
setupperbound(x[8], 686.0)
setupperbound(x[9], 686.0)
setupperbound(x[10], 686.0)
setupperbound(x[11], 686.0)
setupperbound(x[12], 686.0)
setupperbound(x[13], 686.0)
setupperbound(x[14], 686.0)
setupperbound(x[15], 686.0)
setupperbound(x[16], 686.0)
setupperbound(x[17], 686.0)
setupperbound(x[18], 686.0)
setupperbound(x[19], 686.0)
setupperbound(x[20], 686.0)
setupperbound(x[21], 229.0)
setupperbound(x[22], 173.0)
setupperbound(x[23], 284.0)
setupperbound(x[24], 229.0)
setupperbound(x[25], 173.0)
setupperbound(x[26], 284.0)
setupperbound(x[27], 229.0)
setupperbound(x[28], 173.0)
setupperbound(x[29], 284.0)
setupperbound(x[30], 229.0)
setupperbound(x[31], 173.0)
setupperbound(x[32], 284.0)
setlowerbound(x[33], 0.0909)
setupperbound(x[33], 0.5)
setlowerbound(x[34], 0.125)
setupperbound(x[34], 0.5455)
setlowerbound(x[35], 0.1428)
setupperbound(x[35], 0.5195)
setlowerbound(x[36], 0.0909)
setupperbound(x[36], 0.5)
setlowerbound(x[37], 0.125)
setupperbound(x[37], 0.5455)
setlowerbound(x[38], 0.1428)
setupperbound(x[38], 0.5195)
setlowerbound(x[39], 0.0909)
setupperbound(x[39], 0.5)
setlowerbound(x[40], 0.125)
setupperbound(x[40], 0.5455)
setlowerbound(x[41], 0.1428)
setupperbound(x[41], 0.5195)
setlowerbound(x[42], 0.0909)
setupperbound(x[42], 0.5)
setlowerbound(x[43], 0.125)
setupperbound(x[43], 0.5455)
setlowerbound(x[44], 0.1428)
setupperbound(x[44], 0.5195)


# ----- Constraints ----- #
@constraint(m, e1, -6.2*x[1]-9.4*x[2]-7.6*x[3]-10.2*x[4]-1.67*x[5]-2.53*x[6]-2.05*x[7]-2.75*x[8]-3.58*x[9]-5.42*x[10]-4.39*x[11]-5.89*x[12]-4.53*x[13]-6.87*x[14]-5.55*x[15]-7.45*x[16]-2.62*x[17]-3.98*x[18]-3.22*x[19]-4.32*x[20]+10.5*x[21]+11.2*x[22]+12.5*x[23]+10.5*x[24]+11.2*x[25]+12.5*x[26]+10.5*x[27]+11.2*x[28]+12.5*x[29]+10.5*x[30]+11.2*x[31]+12.5*x[32]-260*b[45]-70*b[46]-150*b[47]-190*b[48]-110*b[49]-310*b[50]-470*b[51]-380*b[52]-510*b[53]+x[54] == 0.0)
@constraint(m, e2, -x[21]-x[24]-x[27]-x[30] <= -229.0)
@constraint(m, e3, -x[22]-x[25]-x[28]-x[31] <= -173.0)
@constraint(m, e4, -x[23]-x[26]-x[29]-x[32] <= -284.0)
@constraint(m, e5, x[21]+x[24]+x[27]+x[30] <= 229.0)
@constraint(m, e6, x[22]+x[25]+x[28]+x[31] <= 173.0)
@constraint(m, e7, x[23]+x[26]+x[29]+x[32] <= 284.0)
@constraint(m, e8, x[1]+x[5]+x[9]+x[13]+x[17]-x[21]-x[22]-x[23] == 0.0)
@constraint(m, e9, x[2]+x[6]+x[10]+x[14]+x[18]-x[24]-x[25]-x[26] == 0.0)
@constraint(m, e10, x[3]+x[7]+x[11]+x[15]+x[19]-x[27]-x[28]-x[29] == 0.0)
@constraint(m, e11, x[4]+x[8]+x[12]+x[16]+x[20]-x[30]-x[31]-x[32] == 0.0)
@NLconstraint(m, e12, -(x[33]*x[21]+x[33]*x[22]+x[33]*x[23])+0.0909*x[1]+0.5*x[5]+0.32*x[9]+0.4286*x[13]+0.1299*x[17] == 0.0)
@NLconstraint(m, e13, -(x[34]*x[21]+x[34]*x[22]+x[34]*x[23])+0.5455*x[1]+0.125*x[5]+0.44*x[9]+0.4286*x[13]+0.3506*x[17] == 0.0)
@NLconstraint(m, e14, -(x[35]*x[21]+x[35]*x[22]+x[35]*x[23])+0.3636*x[1]+0.375*x[5]+0.24*x[9]+0.1428*x[13]+0.5195*x[17] == 0.0)
@NLconstraint(m, e15, -(x[36]*x[24]+x[36]*x[25]+x[36]*x[26])+0.0909*x[2]+0.5*x[6]+0.32*x[10]+0.4286*x[14]+0.1299*x[18] == 0.0)
@NLconstraint(m, e16, -(x[37]*x[24]+x[37]*x[25]+x[37]*x[26])+0.5455*x[2]+0.125*x[6]+0.44*x[10]+0.4286*x[14]+0.3506*x[18] == 0.0)
@NLconstraint(m, e17, -(x[38]*x[24]+x[38]*x[25]+x[38]*x[26])+0.3636*x[2]+0.375*x[6]+0.24*x[10]+0.1428*x[14]+0.5195*x[18] == 0.0)
@NLconstraint(m, e18, -(x[39]*x[27]+x[39]*x[28]+x[39]*x[29])+0.0909*x[3]+0.5*x[7]+0.32*x[11]+0.4286*x[15]+0.1299*x[19] == 0.0)
@NLconstraint(m, e19, -(x[40]*x[27]+x[40]*x[28]+x[40]*x[29])+0.5455*x[3]+0.125*x[7]+0.44*x[11]+0.4286*x[15]+0.3506*x[19] == 0.0)
@NLconstraint(m, e20, -(x[41]*x[27]+x[41]*x[28]+x[41]*x[29])+0.3636*x[3]+0.375*x[7]+0.24*x[11]+0.1428*x[15]+0.5195*x[19] == 0.0)
@NLconstraint(m, e21, -(x[42]*x[30]+x[42]*x[31]+x[42]*x[32])+0.0909*x[4]+0.5*x[8]+0.32*x[12]+0.4286*x[16]+0.1299*x[20] == 0.0)
@NLconstraint(m, e22, -(x[43]*x[30]+x[43]*x[31]+x[43]*x[32])+0.5455*x[4]+0.125*x[8]+0.44*x[12]+0.4286*x[16]+0.3506*x[20] == 0.0)
@NLconstraint(m, e23, -(x[44]*x[30]+x[44]*x[31]+x[44]*x[32])+0.3636*x[4]+0.375*x[8]+0.24*x[12]+0.1428*x[16]+0.5195*x[20] == 0.0)
@NLconstraint(m, e24, 0.13*x[21]-(x[33]*x[21]+x[36]*x[24]+x[39]*x[27]+x[42]*x[30])+0.13*x[24]+0.13*x[27]+0.13*x[30] <= 0.0)
@NLconstraint(m, e25, 0.38*x[21]-(x[34]*x[21]+x[37]*x[24]+x[40]*x[27]+x[43]*x[30])+0.38*x[24]+0.38*x[27]+0.38*x[30] <= 0.0)
@NLconstraint(m, e26, 0.49*x[21]-(x[35]*x[21]+x[38]*x[24]+x[41]*x[27]+x[44]*x[30])+0.49*x[24]+0.49*x[27]+0.49*x[30] <= 0.0)
@NLconstraint(m, e27, 0.27*x[22]-(x[33]*x[22]+x[36]*x[25]+x[39]*x[28]+x[42]*x[31])+0.27*x[25]+0.27*x[28]+0.27*x[31] <= 0.0)
@NLconstraint(m, e28, 0.43*x[22]-(x[34]*x[22]+x[37]*x[25]+x[40]*x[28]+x[43]*x[31])+0.43*x[25]+0.43*x[28]+0.43*x[31] <= 0.0)
@NLconstraint(m, e29, 0.3*x[22]-(x[35]*x[22]+x[38]*x[25]+x[41]*x[28]+x[44]*x[31])+0.3*x[25]+0.3*x[28]+0.3*x[31] <= 0.0)
@NLconstraint(m, e30, 0.45*x[23]-(x[33]*x[23]+x[36]*x[26]+x[39]*x[29]+x[42]*x[32])+0.45*x[26]+0.45*x[29]+0.45*x[32] <= 0.0)
@NLconstraint(m, e31, 0.2*x[23]-(x[34]*x[23]+x[37]*x[26]+x[40]*x[29]+x[43]*x[32])+0.2*x[26]+0.2*x[29]+0.2*x[32] <= 0.0)
@NLconstraint(m, e32, 0.35*x[23]-(x[35]*x[23]+x[38]*x[26]+x[41]*x[29]+x[44]*x[32])+0.35*x[26]+0.35*x[29]+0.35*x[32] <= 0.0)
@NLconstraint(m, e33, x[33]*x[21]+x[36]*x[24]+x[39]*x[27]+x[42]*x[30]-0.13*x[21]-0.13*x[24]-0.13*x[27]-0.13*x[30] <= 0.0)
@NLconstraint(m, e34, x[34]*x[21]+x[37]*x[24]+x[40]*x[27]+x[43]*x[30]-0.38*x[21]-0.38*x[24]-0.38*x[27]-0.38*x[30] <= 0.0)
@NLconstraint(m, e35, x[35]*x[21]+x[38]*x[24]+x[41]*x[27]+x[44]*x[30]-0.49*x[21]-0.49*x[24]-0.49*x[27]-0.49*x[30] <= 0.0)
@NLconstraint(m, e36, x[33]*x[22]+x[36]*x[25]+x[39]*x[28]+x[42]*x[31]-0.27*x[22]-0.27*x[25]-0.27*x[28]-0.27*x[31] <= 0.0)
@NLconstraint(m, e37, x[34]*x[22]+x[37]*x[25]+x[40]*x[28]+x[43]*x[31]-0.43*x[22]-0.43*x[25]-0.43*x[28]-0.43*x[31] <= 0.0)
@NLconstraint(m, e38, x[35]*x[22]+x[38]*x[25]+x[41]*x[28]+x[44]*x[31]-0.3*x[22]-0.3*x[25]-0.3*x[28]-0.3*x[31] <= 0.0)
@NLconstraint(m, e39, x[33]*x[23]+x[36]*x[26]+x[39]*x[29]+x[42]*x[32]-0.45*x[23]-0.45*x[26]-0.45*x[29]-0.45*x[32] <= 0.0)
@NLconstraint(m, e40, x[34]*x[23]+x[37]*x[26]+x[40]*x[29]+x[43]*x[32]-0.2*x[23]-0.2*x[26]-0.2*x[29]-0.2*x[32] <= 0.0)
@NLconstraint(m, e41, x[35]*x[23]+x[38]*x[26]+x[41]*x[29]+x[44]*x[32]-0.35*x[23]-0.35*x[26]-0.35*x[29]-0.35*x[32] <= 0.0)
@constraint(m, e42, x[1]-686*b[50] <= 0.0)
@constraint(m, e43, x[2]-686*b[51] <= 0.0)
@constraint(m, e44, x[3]-686*b[52] <= 0.0)
@constraint(m, e45, x[4]-686*b[53] <= 0.0)
@constraint(m, e46, x[5]-686*b[50] <= 0.0)
@constraint(m, e47, x[6]-686*b[51] <= 0.0)
@constraint(m, e48, x[7]-686*b[52] <= 0.0)
@constraint(m, e49, x[8]-686*b[53] <= 0.0)
@constraint(m, e50, x[9]-686*b[50] <= 0.0)
@constraint(m, e51, x[10]-686*b[51] <= 0.0)
@constraint(m, e52, x[11]-686*b[52] <= 0.0)
@constraint(m, e53, x[12]-686*b[53] <= 0.0)
@constraint(m, e54, x[13]-686*b[50] <= 0.0)
@constraint(m, e55, x[14]-686*b[51] <= 0.0)
@constraint(m, e56, x[15]-686*b[52] <= 0.0)
@constraint(m, e57, x[16]-686*b[53] <= 0.0)
@constraint(m, e58, x[17]-686*b[50] <= 0.0)
@constraint(m, e59, x[18]-686*b[51] <= 0.0)
@constraint(m, e60, x[19]-686*b[52] <= 0.0)
@constraint(m, e61, x[20]-686*b[53] <= 0.0)
@constraint(m, e62, x[1]-686*b[45] <= 0.0)
@constraint(m, e63, x[2]-686*b[45] <= 0.0)
@constraint(m, e64, x[3]-686*b[45] <= 0.0)
@constraint(m, e65, x[4]-686*b[45] <= 0.0)
@constraint(m, e66, x[5]-686*b[46] <= 0.0)
@constraint(m, e67, x[6]-686*b[46] <= 0.0)
@constraint(m, e68, x[7]-686*b[46] <= 0.0)
@constraint(m, e69, x[8]-686*b[46] <= 0.0)
@constraint(m, e70, x[9]-686*b[47] <= 0.0)
@constraint(m, e71, x[10]-686*b[47] <= 0.0)
@constraint(m, e72, x[11]-686*b[47] <= 0.0)
@constraint(m, e73, x[12]-686*b[47] <= 0.0)
@constraint(m, e74, x[13]-686*b[48] <= 0.0)
@constraint(m, e75, x[14]-686*b[48] <= 0.0)
@constraint(m, e76, x[15]-686*b[48] <= 0.0)
@constraint(m, e77, x[16]-686*b[48] <= 0.0)
@constraint(m, e78, x[17]-686*b[49] <= 0.0)
@constraint(m, e79, x[18]-686*b[49] <= 0.0)
@constraint(m, e80, x[19]-686*b[49] <= 0.0)
@constraint(m, e81, x[20]-686*b[49] <= 0.0)
@constraint(m, e82, x[21]-229*b[50] <= 0.0)
@constraint(m, e83, x[22]-173*b[50] <= 0.0)
@constraint(m, e84, x[23]-284*b[50] <= 0.0)
@constraint(m, e85, x[24]-229*b[51] <= 0.0)
@constraint(m, e86, x[25]-173*b[51] <= 0.0)
@constraint(m, e87, x[26]-284*b[51] <= 0.0)
@constraint(m, e88, x[27]-229*b[52] <= 0.0)
@constraint(m, e89, x[28]-173*b[52] <= 0.0)
@constraint(m, e90, x[29]-284*b[52] <= 0.0)
@constraint(m, e91, x[30]-229*b[53] <= 0.0)
@constraint(m, e92, x[31]-173*b[53] <= 0.0)
@constraint(m, e93, x[32]-284*b[53] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, x[54])

m = m 		 # model get returned when including this script. 
