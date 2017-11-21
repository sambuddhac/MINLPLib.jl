using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73]
@variable(m, x[x_Idx])
b_Idx = Any[74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85]
@variable(m, b[b_Idx])
setlowerbound(x[16], 0.0)
setcategory(b[78], :Bin)
setlowerbound(x[14], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[38], 0.0)
setcategory(b[75], :Bin)
setcategory(b[85], :Bin)
setlowerbound(x[42], 0.0)
setcategory(b[80], :Bin)
setcategory(b[82], :Bin)
setlowerbound(x[56], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[59], 0.0)
setcategory(b[81], :Bin)
setlowerbound(x[69], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[27], 0.0)
setcategory(b[77], :Bin)
setlowerbound(x[25], 0.0)
setcategory(b[84], :Bin)
setlowerbound(x[30], 0.0)
setlowerbound(x[58], 0.0)
setcategory(b[79], :Bin)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setcategory(b[74], :Bin)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[44], 0.0)
setcategory(b[83], :Bin)
setlowerbound(x[61], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setcategory(b[76], :Bin)
setlowerbound(x[68], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[73], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[65], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[14]*x[2]+x[15]*x[2]+x[16]*x[2]+x[17]*x[2])+x[8] == 0.0)
@NLconstraint(m, e2, -(x[18]*x[3]+x[19]*x[3]+x[20]*x[3]+x[21]*x[3])+x[9] == 0.0)
@NLconstraint(m, e3, -(x[22]*x[4]+x[23]*x[4]+x[24]*x[4]+x[25]*x[4])+x[10] == 0.0)
@NLconstraint(m, e4, -(x[26]*x[5]+x[27]*x[5]+x[28]*x[5]+x[29]*x[5])+x[11] == 0.0)
@NLconstraint(m, e5, -(x[30]*x[6]+x[31]*x[6]+x[32]*x[6]+x[33]*x[6])+x[12] == 0.0)
@NLconstraint(m, e6, -(x[34]*x[7]+x[35]*x[7]+x[36]*x[7]+x[37]*x[7])+x[13] == 0.0)
@constraint(m, e7, x[2]-x[50]-x[51]-x[52]-x[53] == 0.0)
@constraint(m, e8, x[3]-x[54]-x[55]-x[56]-x[57] == 0.0)
@constraint(m, e9, x[4]-x[58]-x[59]-x[60]-x[61] == 0.0)
@constraint(m, e10, x[5]-x[62]-x[63]-x[64]-x[65] == 0.0)
@constraint(m, e11, x[6]-x[66]-x[67]-x[68]-x[69] == 0.0)
@constraint(m, e12, x[7]-x[70]-x[71]-x[72]-x[73] == 0.0)
@constraint(m, e13, x[1]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13] == 0.0)
@constraint(m, e14, 5*x[14]-2*x[26]-x[30]-x[34]+x[50] == 1500.0)
@constraint(m, e15, 5*x[15]-2*x[27]-x[31]-x[35]+x[51] == 1400.0)
@constraint(m, e16, 5*x[16]-2*x[28]-x[32]-x[36]+x[52] == 1300.0)
@constraint(m, e17, 5*x[17]-2*x[29]-x[33]-x[37]+x[53] == 1200.0)
@constraint(m, e18, 7*x[18]-x[26]-x[34]+x[54] == 600.0)
@constraint(m, e19, 7*x[19]-x[27]-x[35]+x[55] == 500.0)
@constraint(m, e20, 7*x[20]-x[28]-x[36]+x[56] == 400.0)
@constraint(m, e21, 7*x[21]-x[29]-x[37]+x[57] == 300.0)
@constraint(m, e22, 9*x[22]-x[30]-x[34]+x[58] == 1000.0)
@constraint(m, e23, 9*x[23]-x[31]-x[35]+x[59] == 900.0)
@constraint(m, e24, 9*x[24]-x[32]-x[36]+x[60] == 800.0)
@constraint(m, e25, 9*x[25]-x[33]-x[37]+x[61] == 700.0)
@constraint(m, e26, 5*x[26]-2*x[34]+x[62] == 1000.0)
@constraint(m, e27, 5*x[27]-2*x[35]+x[63] == 900.0)
@constraint(m, e28, 5*x[28]-2*x[36]+x[64] == 800.0)
@constraint(m, e29, 5*x[29]-2*x[37]+x[65] == 700.0)
@constraint(m, e30, 6*x[30]-2*x[34]+x[66] == 2000.0)
@constraint(m, e31, 6*x[31]-2*x[35]+x[67] == 1900.0)
@constraint(m, e32, 6*x[32]-2*x[36]+x[68] == 1800.0)
@constraint(m, e33, 6*x[33]-2*x[37]+x[69] == 1700.0)
@constraint(m, e34, 9*x[34]+x[70] == 1000.0)
@constraint(m, e35, 9*x[35]+x[71] == 900.0)
@constraint(m, e36, 9*x[36]+x[72] == 800.0)
@constraint(m, e37, 9*x[37]+x[73] == 700.0)
@constraint(m, e38, x[26]-x[38]-x[42] == 0.0)
@constraint(m, e39, x[27]-x[39]-x[43] == 0.0)
@constraint(m, e40, x[28]-x[40]-x[44] == 0.0)
@constraint(m, e41, x[29]-x[41]-x[45] == 0.0)
@constraint(m, e42, x[30]-x[38]-x[46] == 0.0)
@constraint(m, e43, x[31]-x[39]-x[47] == 0.0)
@constraint(m, e44, x[32]-x[40]-x[48] == 0.0)
@constraint(m, e45, x[33]-x[41]-x[49] == 0.0)
@constraint(m, e46, x[34]-x[38]-x[42]-x[46] == 0.0)
@constraint(m, e47, x[35]-x[39]-x[43]-x[47] == 0.0)
@constraint(m, e48, x[36]-x[40]-x[44]-x[48] == 0.0)
@constraint(m, e49, x[37]-x[41]-x[45]-x[49] == 0.0)
@constraint(m, e50, x[38]+10*b[74] == 100.0)
@constraint(m, e51, x[42]+6*b[78] == 60.0)
@constraint(m, e52, x[46]+3*b[82] == 30.0)
@NLconstraint(m, e53, x[39]-(0.9*x[39]*b[75]+x[39]*(1-b[75])) == 0.0)
@NLconstraint(m, e54, x[43]-(0.9*x[43]*b[79]+x[43]*(1-b[79])) == 0.0)
@NLconstraint(m, e55, x[47]-(0.9*x[47]*b[83]+x[47]*(1-b[83])) == 0.0)
@NLconstraint(m, e56, x[39]-(0.9*x[40]*b[76]+x[39]*(1-b[76])) == 0.0)
@NLconstraint(m, e57, x[43]-(0.9*x[44]*b[80]+x[43]*(1-b[80])) == 0.0)
@NLconstraint(m, e58, x[47]-(0.9*x[48]*b[84]+x[47]*(1-b[84])) == 0.0)
@NLconstraint(m, e59, x[39]-(0.9*x[41]*b[77]+x[39]*(1-b[77])) == 0.0)
@NLconstraint(m, e60, x[43]-(0.9*x[45]*b[81]+x[43]*(1-b[81])) == 0.0)
@NLconstraint(m, e61, x[47]-(0.9*x[49]*b[85]+x[47]*(1-b[85])) == 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script. 
