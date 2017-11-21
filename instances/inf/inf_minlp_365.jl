using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, b[b_Idx])
x_Idx = Any[17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]
@variable(m, x[x_Idx])
setlowerbound(x[36], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[27], 0.0)
setcategory(b[2], :Bin)
setcategory(b[12], :Bin)
setlowerbound(x[17], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[26], 0.0)
setcategory(b[14], :Bin)
setlowerbound(x[23], 0.0)
setcategory(b[8], :Bin)
setcategory(b[15], :Bin)
setlowerbound(x[34], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[22], 0.0)
setcategory(b[11], :Bin)
setcategory(b[7], :Bin)
setcategory(b[9], :Bin)
setlowerbound(x[19], 0.0)
setcategory(b[3], :Bin)
setlowerbound(x[20], 0.0)
setlowerbound(x[24], 0.0)
setcategory(b[5], :Bin)
setlowerbound(x[31], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[33], 0.0)
setcategory(b[10], :Bin)
setcategory(b[16], :Bin)
setcategory(b[4], :Bin)
setcategory(b[6], :Bin)
setlowerbound(x[21], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setcategory(b[13], :Bin)
setcategory(b[1], :Bin)
setlowerbound(b[1], 0.0)
setupperbound(b[1], 0.0)
setlowerbound(b[2], 0.0)
setupperbound(b[2], 0.0)
setlowerbound(b[3], 0.0)
setupperbound(b[3], 0.0)
setlowerbound(b[4], 0.0)
setupperbound(b[4], 0.0)
setlowerbound(b[5], 0.0)
setupperbound(b[5], 0.0)
setlowerbound(b[6], 0.0)
setupperbound(b[6], 0.0)
setlowerbound(b[7], 0.0)
setupperbound(b[7], 0.0)
setlowerbound(b[9], 0.0)
setupperbound(b[9], 0.0)
setlowerbound(b[10], 0.0)
setupperbound(b[10], 0.0)
setlowerbound(b[13], 0.0)
setupperbound(b[13], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[17]+x[18]+x[19]+x[20] == 1.0)
@constraint(m, e2, -b[1]-0.632*b[2]-0.264*b[3]-0.08*b[4]+x[21] == 0.0)
@constraint(m, e3, -0.368*b[2]-0.368*b[3]-0.184*b[4]+x[22] == 0.0)
@constraint(m, e4, -0.368*b[3]-0.368*b[4]+x[23] == 0.0)
@constraint(m, e5, -0.368*b[4]+x[24] == 0.0)
@constraint(m, e6, -0.632*b[5]-0.264*b[6]-0.08*b[7]+x[25] == 0.0)
@constraint(m, e7, -0.368*b[5]-0.368*b[6]-0.184*b[7]+x[26] == 0.0)
@constraint(m, e8, -0.368*b[6]-0.368*b[7]+x[27] == 0.0)
@constraint(m, e9, -0.368*b[7]+x[28] == 0.0)
@constraint(m, e10, -0.264*b[9]-0.08*b[10]+x[29] == 0.0)
@constraint(m, e11, -0.368*b[9]-0.184*b[10]+x[30] == 0.0)
@constraint(m, e12, -0.368*b[9]-0.368*b[10]+x[31] == 0.0)
@constraint(m, e13, -0.368*b[10]+x[32] == 0.0)
@constraint(m, e14, -0.08*b[13]+x[33] == 0.0)
@constraint(m, e15, -0.184*b[13]+x[34] == 0.0)
@constraint(m, e16, -0.368*b[13]+x[35] == 0.0)
@constraint(m, e17, -0.368*b[13]+x[36] == 0.0)
@NLconstraint(m, e18, x[17]-(x[21]*x[17]+x[25]*x[18]+x[29]*x[19]+x[33]*x[20]) == 0.0)
@NLconstraint(m, e19, x[18]-(x[22]*x[17]+x[26]*x[18]+x[30]*x[19]+x[34]*x[20]) == 0.0)
@NLconstraint(m, e20, x[19]-(x[23]*x[17]+x[27]*x[18]+x[31]*x[19]+x[35]*x[20]) == 0.0)
@NLconstraint(m, e21, -(49.8*b[1]*x[17]+53.2*b[2]*x[17]+65*b[3]*x[17]+86*b[4]*x[17]+38.2*b[5]*x[18]+60*b[6]*x[18]+81*b[7]*x[18]+45*b[9]*x[19]+76*b[10]*x[19]+61*b[13]*x[20])+x[37] == 0.0)
@constraint(m, e22, b[1]+b[2]+b[3]+b[4] == 1.0)
@constraint(m, e23, b[5]+b[6]+b[7]+b[8] == 1.0)
@constraint(m, e24, b[9]+b[10]+b[11]+b[12] == 1.0)
@constraint(m, e25, b[13]+b[14]+b[15]+b[16] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[37])

m = m 		 # model get returned when including this script. 
