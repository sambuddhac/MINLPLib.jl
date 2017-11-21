using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 33]
@variable(m, x[x_Idx])
i_Idx = Any[32]
@variable(m, i[i_Idx])
setlowerbound(x[16], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[23], 0.0)
setcategory(i[32], :Int)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[1], 390.0)
setlowerbound(x[2], 1.0e-9)
setupperbound(x[2], 700.0)
setlowerbound(x[4], 3.93700787401575)
setupperbound(x[4], 5.74803149606299)
setlowerbound(x[6], 1.0e-9)
setlowerbound(x[7], 1.0e-9)
setlowerbound(x[8], 1.0e-9)
setupperbound(i[32], 100.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 0.3141593*x[4]*(x[14]-2*x[15])*x[6]-0.0015707965*x[14] == 0.0)
@constraint(m, e2, x[7]-0.001*x[15] == -0.000381)
@NLconstraint(m, e3, -sqrt( (x[6])^2+ (x[7])^2)+x[8] == 0.0)
@NLconstraint(m, e4, 0.3141593*x[4]*(x[14]-2*x[15])*x[9]-0.667556742323097*x[5]/x[2] == 0.0)
@NLconstraint(m, e5, -sqrt(1-2*x[9]/x[6]/x[7])+x[10] == 0.0)
@NLconstraint(m, e6, -x[6]*x[7]/x[8]*(1-x[10])+x[11] == 0.0)
@NLconstraint(m, e7, x[12]*x[10]*x[16] == 0.471947)
@NLconstraint(m, e8, -1.79e-5*x[12]*(136410000000+4806000000000*x[11])+249.082*x[13] == 0.0)
@constraint(m, e9, x[13] <= 24.0)
@constraint(m, e10, -0.865*x[1]+x[14] == -17.0)
@constraint(m, e11, x[3]-0.5*x[14] >= 12.0)
@constraint(m, e12, x[3]-x[14] <= -40.0)
@constraint(m, e13, 0.5*x[3]-0.5*x[14]+x[15] == 6.0)
@NLconstraint(m, e14, -6.283186e-7*x[4]*(x[14]-2*x[15])*x[15]*x[2]+x[16] == 0.0)
@NLconstraint(m, e15, -3.141593e-6*(x[14]*x[2]+(x[14]-2*x[15])*(-20+x[2]))+x[17] == 0.0)
@NLconstraint(m, e16, -7.8539825e-10*(20*(2*x[14]*x[14]- ((-40)+x[14])^2- ((-60)+x[14])^2)+15* (x[14])^2)+x[18] == 0.0)
@constraint(m, e17, x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26] == 0.0)
@constraint(m, e18, -0.38*x[16]+x[20] == 0.0)
@constraint(m, e19, -2.07*x[17]+x[21] == 0.0)
@constraint(m, e20, -1200*x[18]+x[22] == 0.0)
@NLconstraint(m, e21, -0.84*x[16]/x[2]+x[23] == 0.0)
@constraint(m, e22, -0.34*x[17]+x[24] == 0.0)
@NLconstraint(m, e23, -0.000391*(4*x[14]*x[2]+6* (x[14])^2)+x[25] == 0.0)
@NLconstraint(m, e24, -22.08* (i[32])^2+x[26] == 0.0)
@constraint(m, e25, -0.45*x[19]+x[27] == 0.0)
@constraint(m, e26, -x[19]-x[27]+x[28] == 0.0)
@NLconstraint(m, e27, -1120/(10+x[14])+i[32] == 0.0)
@NLconstraint(m, e28, -0.006289469186*(2* (0.05*x[1])^2+0.1*x[1]*x[2])+x[29] == 0.0)
@constraint(m, e29, -0.8*x[16]+x[30] == 0.0)
@constraint(m, e30, -x[28]-x[29]-x[30]+x[31] == 0.0)
@constraint(m, e31, 1000*x[5]-x[31]+x[33] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[33])

m = m 		 # model get returned when including this script. 
