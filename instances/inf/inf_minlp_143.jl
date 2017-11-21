using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 69, 70, 71, 72, 73]
@variable(m, x[x_Idx])
b_Idx = Any[47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68]
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
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setcategory(b[60], :Bin)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setcategory(b[51], :Bin)
setcategory(b[68], :Bin)
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
setcategory(b[67], :Bin)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.5*x[1]-0.5*x[46]*(x[1]+x[2]+x[3])+0.5*x[2]+0.5*x[3])+x[69] == 0.0)
@constraint(m, e2, -x[1]-x[2]-x[3]+x[4] == 0.0)
@constraint(m, e3, x[1]+x[24] == 3000.0)
@constraint(m, e4, x[2]+x[25] == 3000.0)
@constraint(m, e5, x[3]+x[26] == 3000.0)
@constraint(m, e6, -5.7*x[1]+32.1*x[5]+23.3*x[6]+3.72*x[7] == 0.0)
@constraint(m, e7, -4.275*x[2]+32.1*x[8]+23.3*x[9]+3.72*x[10] == 0.0)
@constraint(m, e8, -2.85*x[3]+32.1*x[11]+23.3*x[12]+3.72*x[13] == 0.0)
@constraint(m, e9, 0.09*x[1]+2.457*x[5]+2.53*x[6]+0.29*x[7]-x[14]+x[27] == 0.0)
@constraint(m, e10, -0.00999999999999995*x[2]+2.457*x[8]+2.53*x[9]+0.29*x[10]-x[15]+x[28] == 0.0)
@constraint(m, e11, -0.21*x[3]+2.457*x[11]+2.53*x[12]+0.29*x[13]-x[16]+x[29] == 0.0)
@NLconstraint(m, e12, 0.5*x[1]-x[46]*(x[1]+x[2]+x[3])+0.4*x[2]+0.2*x[3]+2.457*x[5]+2.53*x[6]+0.29*x[7]+2.457*x[8]+2.53*x[9]+0.29*x[10]+2.457*x[11]+2.53*x[12]+0.29*x[13] == 0.0)
@constraint(m, e13, x[46] <= 0.41)
@constraint(m, e14, x[46] >= 0.0)
@constraint(m, e15, 0.0376*x[4]-x[30]+x[73] == 376.0)
@constraint(m, e16, 0.002*x[1]+x[18]+0.09*x[21]-x[31]-5.7*x[70]-x[73] == -22.0)
@constraint(m, e17, 0.002*x[2]+x[19]-0.00999999999999995*x[22]-x[32]-4.275*x[71]-x[73] == -26.0)
@constraint(m, e18, 0.002*x[3]+x[20]-0.21*x[23]-x[33]-2.85*x[72]-x[73] == -29.0)
@constraint(m, e19, 2.457*x[21]-x[34]+32.1*x[70] == -100.0)
@constraint(m, e20, 2.53*x[21]-x[35]+23.3*x[70] == -50.0)
@constraint(m, e21, 0.29*x[21]-x[36]+3.72*x[70] == -11.0)
@constraint(m, e22, 2.457*x[22]-x[37]+32.1*x[71] == -100.0)
@constraint(m, e23, 2.53*x[22]-x[38]+23.3*x[71] == -50.0)
@constraint(m, e24, 0.29*x[22]-x[39]+3.72*x[71] == -11.0)
@constraint(m, e25, 2.457*x[23]-x[40]+32.1*x[72] == -100.0)
@constraint(m, e26, 2.53*x[23]-x[41]+23.3*x[72] == -50.0)
@constraint(m, e27, 0.29*x[23]-x[42]+3.72*x[72] == -11.0)
@constraint(m, e28, x[17]-x[21]-x[43] == 0.0)
@constraint(m, e29, x[17]-x[22]-x[44] == 0.0)
@constraint(m, e30, x[17]-x[23]-x[45] == 0.0)
@constraint(m, e31, x[24]-10000*b[47] <= 0.0)
@constraint(m, e32, x[25]-10000*b[48] <= 0.0)
@constraint(m, e33, x[26]-10000*b[49] <= 0.0)
@constraint(m, e34, x[18]+10000*b[47] <= 10000.0)
@constraint(m, e35, x[19]+10000*b[48] <= 10000.0)
@constraint(m, e36, x[20]+10000*b[49] <= 10000.0)
@constraint(m, e37, x[27]-10000*b[50] <= 0.0)
@constraint(m, e38, x[28]-10000*b[51] <= 0.0)
@constraint(m, e39, x[29]-10000*b[52] <= 0.0)
@constraint(m, e40, x[21]+10000*b[50] <= 10000.0)
@constraint(m, e41, x[22]+10000*b[51] <= 10000.0)
@constraint(m, e42, x[23]+10000*b[52] <= 10000.0)
@constraint(m, e43, x[30]-10000*b[53] <= 0.0)
@constraint(m, e44, x[4]+10000*b[53] <= 10000.0)
@constraint(m, e45, x[31]-10000*b[54] <= 0.0)
@constraint(m, e46, x[32]-10000*b[55] <= 0.0)
@constraint(m, e47, x[33]-10000*b[56] <= 0.0)
@constraint(m, e48, x[1]+10000*b[54] <= 10000.0)
@constraint(m, e49, x[2]+10000*b[55] <= 10000.0)
@constraint(m, e50, x[3]+10000*b[56] <= 10000.0)
@constraint(m, e51, x[34]-10000*b[57] <= 0.0)
@constraint(m, e52, x[35]-10000*b[58] <= 0.0)
@constraint(m, e53, x[36]-10000*b[59] <= 0.0)
@constraint(m, e54, x[37]-10000*b[60] <= 0.0)
@constraint(m, e55, x[38]-10000*b[61] <= 0.0)
@constraint(m, e56, x[39]-10000*b[62] <= 0.0)
@constraint(m, e57, x[40]-10000*b[63] <= 0.0)
@constraint(m, e58, x[41]-10000*b[64] <= 0.0)
@constraint(m, e59, x[42]-10000*b[65] <= 0.0)
@constraint(m, e60, x[5]+10000*b[57] <= 10000.0)
@constraint(m, e61, x[6]+10000*b[58] <= 10000.0)
@constraint(m, e62, x[7]+10000*b[59] <= 10000.0)
@constraint(m, e63, x[8]+10000*b[60] <= 10000.0)
@constraint(m, e64, x[9]+10000*b[61] <= 10000.0)
@constraint(m, e65, x[10]+10000*b[62] <= 10000.0)
@constraint(m, e66, x[11]+10000*b[63] <= 10000.0)
@constraint(m, e67, x[12]+10000*b[64] <= 10000.0)
@constraint(m, e68, x[13]+10000*b[65] <= 10000.0)
@constraint(m, e69, x[43]-10000*b[66] <= 0.0)
@constraint(m, e70, x[44]-10000*b[67] <= 0.0)
@constraint(m, e71, x[45]-10000*b[68] <= 0.0)
@constraint(m, e72, x[14]+10000*b[66] <= 10000.0)
@constraint(m, e73, x[15]+10000*b[67] <= 10000.0)
@constraint(m, e74, x[16]+10000*b[68] <= 10000.0)


# ----- Objective ----- #
@objective(m, Max, x[69])

m = m 		 # model get returned when including this script. 
