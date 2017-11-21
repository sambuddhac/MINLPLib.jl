using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setupperbound(x[1], 10.0)
setlowerbound(x[2], -1.0)
setupperbound(x[2], 1.0)
setlowerbound(x[3], -1.0)
setupperbound(x[3], 1.0)
setlowerbound(x[4], -1.0)
setupperbound(x[4], 1.0)
setlowerbound(x[5], -1.0)
setupperbound(x[5], 1.0)
setlowerbound(x[6], -1.0)
setupperbound(x[6], 1.0)
setlowerbound(x[7], -1.0)
setupperbound(x[7], 1.0)
setlowerbound(x[8], -1.0)
setupperbound(x[8], 1.0)
setlowerbound(x[9], -1.0)
setupperbound(x[9], 1.0)
setlowerbound(x[10], -1.0)
setupperbound(x[10], 1.0)
setlowerbound(x[11], -1.0)
setupperbound(x[11], 1.0)
setlowerbound(x[12], -1.0)
setupperbound(x[12], 1.0)
setlowerbound(x[13], -1.0)
setupperbound(x[13], 1.0)
setlowerbound(x[14], -1.0)
setupperbound(x[14], 1.0)
setlowerbound(x[15], -1.0)
setupperbound(x[15], 1.0)
setlowerbound(x[16], -1.0)
setupperbound(x[16], 1.0)
setlowerbound(x[17], -1.0)
setupperbound(x[17], 1.0)
setlowerbound(x[18], -1.0)
setupperbound(x[18], 1.0)
setlowerbound(x[19], -1.0)
setupperbound(x[19], 1.0)
setlowerbound(x[20], -1.0)
setupperbound(x[20], 1.0)
setlowerbound(x[21], -1.0)
setupperbound(x[21], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[2]*x[2]-x[12]*x[12]+2*x[2]*x[4]+2*x[12]*x[14]+2*x[3]*x[5]+2*x[13]*x[15]+2*x[4]*x[6]+2*x[14]*x[16]+2*x[5]*x[7]+2*x[15]*x[17]+2*x[8]*x[6]+2*x[18]*x[16]+2*x[9]*x[7]+2*x[19]*x[17]+2*x[10]*x[8]+2*x[20]*x[18]+2*x[11]*x[9]+2*x[21]*x[19]+2*x[10]+x[11]*x[11]-x[21]*x[21]-2*x[1]*x[3] == 0.0)
@NLconstraint(m, e2, 2*x[2]*x[4]-2*x[12]*x[14]+x[3]*x[3]-x[13]*x[13]+2*x[2]*x[6]+2*x[12]*x[16]+2*x[3]*x[7]+2*x[13]*x[17]+2*x[4]*x[8]+2*x[14]*x[18]+2*x[9]*x[5]+2*x[19]*x[15]+2*x[10]*x[6]+2*x[20]*x[16]+2*x[11]*x[7]+2*x[21]*x[17]+2*x[8]+2*x[11]*x[9]-2*x[21]*x[19]+x[10]*x[10]-x[20]*x[20]-2*x[1]*x[5] == 0.0)
@NLconstraint(m, e3, 2*x[2]*x[6]-2*x[12]*x[16]+2*x[3]*x[5]-2*x[13]*x[15]+x[4]*x[4]-x[14]*x[14]+2*x[2]*x[8]+2*x[12]*x[18]+2*x[3]*x[9]+2*x[13]*x[19]+2*x[10]*x[4]+2*x[20]*x[14]+2*x[11]*x[5]+2*x[21]*x[15]+2*x[6]+2*x[11]*x[7]-2*x[21]*x[17]+2*x[10]*x[8]-2*x[20]*x[18]+x[9]*x[9]-x[19]*x[19]-2*x[1]*x[7] == 0.0)
@NLconstraint(m, e4, 2*x[2]*x[8]-2*x[12]*x[18]+2*x[3]*x[7]-2*x[13]*x[17]+2*x[4]*x[6]-2*x[14]*x[16]+x[5]*x[5]-x[15]*x[15]+2*x[2]*x[10]+2*x[12]*x[20]+2*x[11]*x[3]+2*x[21]*x[13]+2*x[4]+2*x[11]*x[5]-2*x[21]*x[15]+2*x[10]*x[6]-2*x[20]*x[16]+2*x[9]*x[7]-2*x[19]*x[17]+x[8]*x[8]-x[18]*x[18]-2*x[1]*x[9] == 0.0)
@NLconstraint(m, e5, 2*x[2]*x[10]-2*x[12]*x[20]+2*x[3]*x[9]-2*x[13]*x[19]+2*x[4]*x[8]-2*x[14]*x[18]+2*x[5]*x[7]-2*x[15]*x[17]+x[6]*x[6]-x[16]*x[16]+2*x[2]+2*x[11]*x[3]-2*x[21]*x[13]+2*x[10]*x[4]-2*x[20]*x[14]+2*x[9]*x[5]-2*x[19]*x[15]+2*x[8]*x[6]-2*x[18]*x[16]+x[7]*x[7]-x[17]*x[17]-2*x[1]*x[11] == 0.0)
@NLconstraint(m, e6, 2*x[2]*x[12]-2*x[12]*x[4]+2*x[2]*x[14]-2*x[13]*x[5]+2*x[3]*x[15]-2*x[14]*x[6]+2*x[4]*x[16]-2*x[15]*x[7]+2*x[5]*x[17]-2*x[8]*x[16]+2*x[18]*x[6]-2*x[9]*x[17]+2*x[19]*x[7]-2*x[10]*x[18]+2*x[20]*x[8]-2*x[11]*x[19]+2*x[21]*x[9]-2*x[20]-2*x[11]*x[21]-2*x[1]*x[13] == 0.0)
@NLconstraint(m, e7, 2*x[2]*x[14]+2*x[12]*x[4]+2*x[3]*x[13]-2*x[12]*x[6]+2*x[2]*x[16]-2*x[13]*x[7]+2*x[3]*x[17]-2*x[14]*x[8]+2*x[4]*x[18]-2*x[9]*x[15]+2*x[19]*x[5]-2*x[10]*x[16]+2*x[20]*x[6]-2*x[11]*x[17]+2*x[21]*x[7]-2*x[18]-2*x[11]*x[19]-2*x[21]*x[9]-2*x[10]*x[20]-2*x[1]*x[15] == 0.0)
@NLconstraint(m, e8, 2*x[2]*x[16]+2*x[12]*x[6]+2*x[3]*x[15]+2*x[13]*x[5]+2*x[4]*x[14]-2*x[12]*x[8]+2*x[2]*x[18]-2*x[13]*x[9]+2*x[3]*x[19]-2*x[10]*x[14]+2*x[20]*x[4]-2*x[11]*x[15]+2*x[21]*x[5]-2*x[16]-2*x[11]*x[17]-2*x[21]*x[7]-2*x[10]*x[18]-2*x[20]*x[8]-2*x[9]*x[19]-2*x[1]*x[17] == 0.0)
@NLconstraint(m, e9, 2*x[2]*x[18]+2*x[12]*x[8]+2*x[3]*x[17]+2*x[13]*x[7]+2*x[4]*x[16]+2*x[14]*x[6]+2*x[5]*x[15]-2*x[12]*x[10]+2*x[2]*x[20]-2*x[11]*x[13]+2*x[21]*x[3]-2*x[14]-2*x[11]*x[15]-2*x[21]*x[5]-2*x[10]*x[16]-2*x[20]*x[6]-2*x[9]*x[17]-2*x[19]*x[7]-2*x[8]*x[18]-2*x[1]*x[19] == 0.0)
@NLconstraint(m, e10, 2*x[2]*x[20]+2*x[12]*x[10]+2*x[3]*x[19]+2*x[13]*x[9]+2*x[4]*x[18]+2*x[14]*x[8]+2*x[5]*x[17]+2*x[15]*x[7]+2*x[6]*x[16]-2*x[12]-2*x[11]*x[13]-2*x[21]*x[3]-2*x[10]*x[14]-2*x[20]*x[4]-2*x[9]*x[15]-2*x[19]*x[5]-2*x[8]*x[16]-2*x[18]*x[6]-2*x[7]*x[17]-2*x[1]*x[21] == 0.0)
@NLconstraint(m, e11, x[2]*x[2]+x[12]*x[12] == 1.0)
@NLconstraint(m, e12, x[3]*x[3]+x[13]*x[13] == 1.0)
@NLconstraint(m, e13, x[4]*x[4]+x[14]*x[14] == 1.0)
@NLconstraint(m, e14, x[5]*x[5]+x[15]*x[15] == 1.0)
@NLconstraint(m, e15, x[6]*x[6]+x[16]*x[16] == 1.0)
@NLconstraint(m, e16, x[7]*x[7]+x[17]*x[17] == 1.0)
@NLconstraint(m, e17, x[8]*x[8]+x[18]*x[18] == 1.0)
@NLconstraint(m, e18, x[9]*x[9]+x[19]*x[19] == 1.0)
@NLconstraint(m, e19, x[10]*x[10]+x[20]*x[20] == 1.0)
@NLconstraint(m, e20, x[11]*x[11]+x[21]*x[21] == 1.0)
@NLconstraint(m, e21, x[2]*x[11]+x[12]*x[21]+0.911130261884677*x[3]+0.412118485241757*x[13] == 0.0)
@NLconstraint(m, e22, x[3]*x[10]+x[13]*x[20]-0.66031670824408*x[5]-0.750987246771676*x[15] == 0.0)
@NLconstraint(m, e23, x[4]*x[9]+x[14]*x[19]+0.292138808733836*x[7]+0.956375928404503*x[17] == 0.0)
@NLconstraint(m, e24, x[5]*x[8]+x[15]*x[18]+0.127963689627405*x[9]-0.991778853443116*x[19] == 0.0)
@NLconstraint(m, e25, x[6]*x[7]+x[16]*x[17]-0.52532198881773*x[11]+0.850903524534118*x[21] == 0.0)
@NLconstraint(m, e26, x[6]*x[7]+x[16]*x[17]+0.82930983286315*x[11]+0.558789048851616*x[21] == 0.0)
@NLconstraint(m, e27, x[5]*x[8]+x[15]*x[18]-0.98589658158255*x[9]-0.167355700302807*x[19] == 0.0)
@NLconstraint(m, e28, x[4]*x[9]+x[14]*x[19]+0.967250588273882*x[7]-0.253823362762036*x[17] == 0.0)
@NLconstraint(m, e29, x[3]*x[10]+x[13]*x[20]-0.776685982021631*x[5]+0.629887994274454*x[15] == 0.0)
@NLconstraint(m, e30, x[2]*x[11]+x[12]*x[21]+0.44807361612917*x[3]-0.893996663600558*x[13] == 0.0)
@NLconstraint(m, e31, x[11]*x[12]-x[2]*x[21]-0.412118485241757*x[3]+8.20017235696209*x[13] == 0.0)
@NLconstraint(m, e32, x[10]*x[13]-x[3]*x[20]-5.94285037419672*x[13]+0.750987246771676*x[5] == 0.0)
@NLconstraint(m, e33, x[9]*x[14]-x[4]*x[19]-0.956375928404503*x[7]+2.62924927860453*x[13] == 0.0)
@NLconstraint(m, e34, x[8]*x[15]-x[5]*x[18]+0.991778853443116*x[9]+1.15167320664664*x[13] == 0.0)
@NLconstraint(m, e35, x[7]*x[16]-x[6]*x[17]-0.850903524534118*x[11]-4.72789789935957*x[13] == 0.0)
@NLconstraint(m, e36, x[6]*x[17]-x[7]*x[16]+0.558789048851616*x[11]+7.46378849576835*x[13] == 0.0)
@NLconstraint(m, e37, x[5]*x[18]-x[8]*x[15]-0.167355700302807*x[9]-8.87306923424295*x[13] == 0.0)
@NLconstraint(m, e38, x[4]*x[19]-x[9]*x[14]-0.253823362762036*x[7]+8.70525529446494*x[13] == 0.0)
@NLconstraint(m, e39, x[3]*x[20]-x[10]*x[13]-6.99017383819468*x[13]+0.629887994274454*x[5] == 0.0)
@NLconstraint(m, e40, x[2]*x[21]-x[11]*x[12]-0.893996663600558*x[3]+4.03266254516253*x[13] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
