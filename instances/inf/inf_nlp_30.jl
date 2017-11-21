using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.014446600412)
setupperbound(x[1], 0.014446600412)
setlowerbound(x[2], 2.928142488507)
setupperbound(x[2], 2.928142488507)
setlowerbound(x[3], 0.038140998733)
setupperbound(x[3], 0.038140998733)
setlowerbound(x[4], 0.083671122872)
setupperbound(x[4], 0.083671122872)
setlowerbound(x[5], 0.042011075452)
setupperbound(x[5], 0.042011075452)
setlowerbound(x[6], 0.059944582424)
setupperbound(x[6], 0.059944582424)
setlowerbound(x[7], 2.162080688055)
setupperbound(x[7], 2.162080688055)
setlowerbound(x[8], 0.01654684882)
setupperbound(x[8], 0.01654684882)
setlowerbound(x[9], 0.323221535504)
setupperbound(x[9], 0.323221535504)
setlowerbound(x[10], 0.116479353497)
setupperbound(x[10], 0.116479353497)
setlowerbound(x[11], 32.189470319942)
setupperbound(x[11], 32.189470319942)
setlowerbound(x[12], 0.056292817058)
setupperbound(x[12], 0.056292817058)
setlowerbound(x[13], 0.052965670171)
setupperbound(x[13], 0.052965670171)
setlowerbound(x[14], 0.064593160839)
setupperbound(x[14], 0.064593160839)
setlowerbound(x[15], 0.018397893812)
setupperbound(x[15], 0.018397893812)
setlowerbound(x[16], 0.246020445901)
setupperbound(x[16], 0.246020445901)
setlowerbound(x[17], 0.307430910056)
setupperbound(x[17], 0.307430910056)
setlowerbound(x[18], 0.043632668021)
setupperbound(x[18], 0.043632668021)
setlowerbound(x[19], 0.023738221128)
setupperbound(x[19], 0.023738221128)
setlowerbound(x[20], 1.212777931419)
setupperbound(x[20], 1.212777931419)


# ----- Constraints ----- #
@NLconstraint(m, e1, 0.5*( ((-2)+x[1])^2+2* ((-2)+x[2])^2+3* ((-2)+x[3])^2+4* ((-2)+x[4])^2+5* ((-2)+x[5])^2+6* ((-2)+x[6])^2+7* ((-2)+x[7])^2+8* ((-2)+x[8])^2+9* ((-2)+x[9])^2+10* ((-2)+x[10])^2+11* ((-2)+x[11])^2+12* ((-2)+x[12])^2+13* ((-2)+x[13])^2+14* ((-2)+x[14])^2+15* ((-2)+x[15])^2+16* ((-2)+x[16])^2+17* ((-2)+x[17])^2+18* ((-2)+x[18])^2+19* ((-2)+x[19])^2+20* ((-2)+x[20])^2)+x[21] == 0.0)
@constraint(m, e2, -3*x[1]+7*x[2]-5*x[4]+x[5]+x[6]+2*x[8]-x[9]-x[10]-9*x[11]+3*x[12]+5*x[13]+x[16]+7*x[17]-7*x[18]-4*x[19]-6*x[20] <= -5.0)
@constraint(m, e3, 7*x[1]-5*x[3]+x[4]+x[5]+2*x[7]-x[8]-x[9]-9*x[10]+3*x[11]+5*x[12]+x[15]+7*x[16]-7*x[17]-4*x[18]-6*x[19]-3*x[20] <= 2.0)
@constraint(m, e4, -5*x[2]+x[3]+x[4]+2*x[6]-x[7]-x[8]-9*x[9]+3*x[10]+5*x[11]+x[14]+7*x[15]-7*x[16]-4*x[17]-6*x[18]-3*x[19]+7*x[20] <= -1.0)
@constraint(m, e5, -5*x[1]+x[2]+x[3]+2*x[5]-x[6]-x[7]-9*x[8]+3*x[9]+5*x[10]+x[13]+7*x[14]-7*x[15]-4*x[16]-6*x[17]-3*x[18]+7*x[19] <= -3.0)
@constraint(m, e6, x[1]+x[2]+2*x[4]-x[5]-x[6]-9*x[7]+3*x[8]+5*x[9]+x[12]+7*x[13]-7*x[14]-4*x[15]-6*x[16]-3*x[17]+7*x[18]-5*x[20] <= 5.0)
@constraint(m, e7, x[1]+2*x[3]-x[4]-x[5]-9*x[6]+3*x[7]+5*x[8]+x[11]+7*x[12]-7*x[13]-4*x[14]-6*x[15]-3*x[16]+7*x[17]-5*x[19]+x[20] <= 4.0)
@constraint(m, e8, 2*x[2]-x[3]-x[4]-9*x[5]+3*x[6]+5*x[7]+x[10]+7*x[11]-7*x[12]-4*x[13]-6*x[14]-3*x[15]+7*x[16]-5*x[18]+x[19]+x[20] <= -1.0)
@constraint(m, e9, 2*x[1]-x[2]-x[3]-9*x[4]+3*x[5]+5*x[6]+x[9]+7*x[10]-7*x[11]-4*x[12]-6*x[13]-3*x[14]+7*x[15]-5*x[17]+x[18]+x[19] <= 0.0)
@constraint(m, e10, -x[1]-x[2]-9*x[3]+3*x[4]+5*x[5]+x[8]+7*x[9]-7*x[10]-4*x[11]-6*x[12]-3*x[13]+7*x[14]-5*x[16]+x[17]+x[18]+2*x[20] <= 9.0)
@constraint(m, e11, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10]+x[11]+x[12]+x[13]+x[14]+x[15]+x[16]+x[17]+x[18]+x[19]+x[20] <= 40.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
