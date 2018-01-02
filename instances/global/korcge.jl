using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95]
@variable(m, x[x_Idx])
setlowerbound(x[52], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[1], 1.0)
setupperbound(x[1], 1.0)
setlowerbound(x[2], 0.01)
setlowerbound(x[3], 0.01)
setlowerbound(x[4], 0.01)
setlowerbound(x[5], 0.01)
setlowerbound(x[6], 0.01)
setlowerbound(x[7], 0.01)
setlowerbound(x[11], 0.01)
setlowerbound(x[12], 0.01)
setlowerbound(x[13], 0.01)
setlowerbound(x[14], 0.01)
setlowerbound(x[15], 0.01)
setlowerbound(x[16], 0.01)
setlowerbound(x[17], 0.01)
setlowerbound(x[18], 0.01)
setlowerbound(x[19], 0.01)
setlowerbound(x[24], 1.0)
setupperbound(x[24], 1.0)
setlowerbound(x[25], 0.01)
setlowerbound(x[26], 0.01)
setlowerbound(x[27], 0.01)
setlowerbound(x[28], 0.01)
setlowerbound(x[29], 0.01)
setlowerbound(x[30], 0.01)
setlowerbound(x[31], 0.01)
setlowerbound(x[32], 0.01)
setlowerbound(x[33], 0.01)
setlowerbound(x[34], 0.01)
setlowerbound(x[35], 0.01)
setlowerbound(x[36], 0.01)
setlowerbound(x[37], 0.01)
setlowerbound(x[38], 0.01)
setlowerbound(x[39], 0.01)
setlowerbound(x[40], 657.5754)
setupperbound(x[40], 657.5754)
setlowerbound(x[41], 338.7076)
setupperbound(x[41], 338.7076)
setlowerbound(x[42], 1548.5192)
setupperbound(x[42], 1548.5192)
setlowerbound(x[43], 0.01)
setlowerbound(x[44], 0.01)
setlowerbound(x[45], 0.01)
setlowerbound(x[46], 2515.9)
setupperbound(x[46], 2515.9)
setlowerbound(x[47], 1565.987)
setupperbound(x[47], 1565.987)
setlowerbound(x[48], 948.1)
setupperbound(x[48], 948.1)
setlowerbound(x[49], 0.01)
setlowerbound(x[50], 0.01)
setlowerbound(x[51], 0.0)
setupperbound(x[51], 0.0)
setlowerbound(x[52], 0.0)
setupperbound(x[52], 0.0)
setlowerbound(x[53], 0.01)
setlowerbound(x[54], 0.0)
setupperbound(x[54], 0.0)
setlowerbound(x[55], 0.0)
setupperbound(x[55], 0.0)
setlowerbound(x[56], 0.01)
setlowerbound(x[57], 0.01)
setlowerbound(x[58], 0.01)
setlowerbound(x[59], 0.01)
setlowerbound(x[60], 0.01)
setlowerbound(x[73], 0.01)
setlowerbound(x[78], 141.1519)
setupperbound(x[78], 141.1519)
setlowerbound(x[84], 0.06)
setupperbound(x[84], 0.06)
setlowerbound(x[85], 0.06)
setupperbound(x[85], 0.06)
setlowerbound(x[86], 39.1744)
setupperbound(x[86], 39.1744)
setlowerbound(x[91], 0.0)
setupperbound(x[91], 0.0)
setlowerbound(x[92], 58.759)
setupperbound(x[92], 58.759)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.90909*x[1]*(1.1+x[23])+x[5] == 0.0)
@NLconstraint(m, e2, -0.81466*x[1]*(1.22751+x[23])+x[6] == 0.0)
@NLconstraint(m, e3, -0.92521*x[1]*(1.08084+x[23])+x[7] == 0.0)
@constraint(m, e4, -x[1]+x[8] == 0.0)
@constraint(m, e5, -x[1]+x[9] == 0.0)
@constraint(m, e6, -x[1]+x[10] == 0.0)
@NLconstraint(m, e7, x[17]*x[25]-(x[2]*x[31]+x[5]*x[37]) == 0.0)
@NLconstraint(m, e8, x[18]*x[26]-(x[3]*x[32]+x[6]*x[38]) == 0.0)
@NLconstraint(m, e9, x[19]*x[27]-(x[4]*x[33]+x[7]*x[39]) == 0.0)
@NLconstraint(m, e10, x[14]*x[28]-(x[2]*x[31]+x[8]*x[34]) == 0.0)
@NLconstraint(m, e11, x[15]*x[29]-(x[3]*x[32]+x[9]*x[35]) == 0.0)
@NLconstraint(m, e12, x[16]*x[30]-(x[4]*x[33]+x[10]*x[36]) == 0.0)
@constraint(m, e13, 0.99*x[14]-0.12591*x[17]-0.10353*x[18]-0.02358*x[19]-x[20] == 0.0)
@constraint(m, e14, 0.9608*x[15]-0.19834*x[17]-0.35524*x[18]-0.11608*x[19]-x[21] == 0.0)
@constraint(m, e15, 0.95*x[16]-0.01407*x[17]-0.18954*x[18]-0.0839*x[19]-x[22] == 0.0)
@constraint(m, e16, x[11]-0.93076*x[18]-0.06924*x[19] == 0.0)
@constraint(m, e17, x[12]-0.93774*x[18]-0.06226*x[19] == 0.0)
@constraint(m, e18, x[13]-0.9308*x[18]-0.0692*x[19] == 0.0)
@constraint(m, e19, -0.33263*x[17]-0.43486*x[18]-0.23251*x[19]+x[24] == 0.0)
@NLconstraint(m, e20, -0.61447*x[49]^0.38258*x[50]^0.0674*x[40]^0.55002+x[28] == 0.0)
@NLconstraint(m, e21, -1.60111*x[53]^0.53476*x[41]^0.46524+x[29] == 0.0)
@NLconstraint(m, e22, -0.52019*x[56]^0.16234*x[57]^0.42326*x[42]^0.4144+x[30] == 0.0)
@NLconstraint(m, e23, x[43]*x[49]-0.38258*x[28]*x[20] == 0.0)
@NLconstraint(m, e24, 0.5278*x[44]*x[50]-0.0674*x[28]*x[20] == 0.0)
@NLconstraint(m, e25, 1.21879*x[44]*x[53]-0.53476*x[29]*x[21] == 0.0)
@NLconstraint(m, e26, 1.11541*x[44]*x[56]-0.16234*x[30]*x[22] == 0.0)
@NLconstraint(m, e27, x[45]*x[57]-0.42326*x[30]*x[22] == 0.0)
@constraint(m, e28, -x[46]+x[49]+x[52]+x[55] == 0.0)
@constraint(m, e29, -x[47]+x[50]+x[53]+x[56] == 0.0)
@constraint(m, e30, -x[48]+x[51]+x[54]+x[57] == 0.0)
@NLconstraint(m, e31, -3.85424*(0.86628*x[34]^1.5+0.13372*x[31]^1.5)^0.666666666666667+x[28] == 0.0)
@NLconstraint(m, e32, -3.51886*(0.84602*x[35]^1.5+0.15398*x[32]^1.5)^0.666666666666667+x[29] == 0.0)
@NLconstraint(m, e33, -3.23592*(0.82436*x[36]^1.5+0.17564*x[33]^1.5)^0.666666666666667+x[30] == 0.0)
@NLconstraint(m, e34, x[34]/x[31]- (0.154361176524911*x[8]/x[2])^2 == 0.0)
@NLconstraint(m, e35, x[35]/x[32]- (0.182005153542469*x[9]/x[3])^2 == 0.0)
@NLconstraint(m, e36, x[36]/x[33]- (0.213062254354893*x[10]/x[4])^2 == 0.0)
@NLconstraint(m, e37, -1.59539* (0.2482*x[37]^0.5+0.7518*x[31]^0.5)^2+x[25] == 0.0)
@NLconstraint(m, e38, -1.34652*(0.05111*x[38]^(-0.515151515151515)+0.94889*x[32]^(-0.515151515151515))^(-1.94117647058824)+x[26] == 0.0)
@NLconstraint(m, e39, -1.01839*(1e-5*x[39]^(-1.5)+0.99999*x[33]^(-1.5))^(-0.666666666666667)+x[27] == 0.0)
@NLconstraint(m, e40, x[37]/x[31]- (0.330140994945464*x[2]/x[5])^2 == 0.0)
@NLconstraint(m, e41, x[38]/x[32]-(0.0538629345867277*x[3]/x[6])^0.66 == 0.0)
@NLconstraint(m, e42, x[39]/x[33]-(1.0000100001e-5*x[4]/x[7])^0.4 == 0.0)
@constraint(m, e43, -0.12591*x[28]-0.19834*x[29]-0.01407*x[30]+x[58] == 0.0)
@constraint(m, e44, -0.10353*x[28]-0.35524*x[29]-0.18954*x[30]+x[59] == 0.0)
@constraint(m, e45, -0.02358*x[28]-0.11608*x[29]-0.0839*x[30]+x[60] == 0.0)
@NLconstraint(m, e46, x[17]*x[61]-((0.428123-0.428123*x[84])*x[93]+(0.428123-0.428123*x[85])*x[94]) == 0.0)
@NLconstraint(m, e47, x[18]*x[62]-((0.291478891-0.291478891*x[84])*x[93]+(0.291478891-0.291478891*x[85])*x[94]) == 0.0)
@NLconstraint(m, e48, x[19]*x[63]-((0.191298109-0.191298109*x[84])*x[93]+(0.191298109-0.191298109*x[85])*x[94]) == 0.0)
@constraint(m, e49, x[70] == 0.0)
@constraint(m, e50, x[71] == 0.0)
@constraint(m, e51, x[72] == 0.0)
@constraint(m, e52, x[73]-x[93]-x[94] == 0.0)
@NLconstraint(m, e53, -(x[43]*x[46]+x[44]*x[47]+x[45]*x[48]+x[91]*x[1])+x[93] == 0.0)
@NLconstraint(m, e54, -(x[20]*x[28]+x[21]*x[29]+x[22]*x[30]-(x[43]*x[46]+x[44]*x[47]+x[45]*x[48])+x[92]*x[1])+x[81]-x[90]+x[94] == 0.0)
@constraint(m, e55, -0.0891*x[93]-0.0891*x[94]+x[95] == 0.0)
@constraint(m, e56, x[64]-0.02*x[78] == 0.0)
@constraint(m, e57, x[65]-0.07*x[78] == 0.0)
@constraint(m, e58, x[66]-0.91*x[78] == 0.0)
@constraint(m, e59, x[74]-x[75]-x[76]+x[77]-x[95] == 0.0)
@NLconstraint(m, e60, -(0.090909*x[37]+0.1853432966*x[38]+0.0747939764*x[39])*x[1]+x[75] == 0.0)
@NLconstraint(m, e61, -(0.90909*x[37]+0.81466*x[38]+0.92521*x[39])*x[1]*x[23]+x[90] == 0.0)
@NLconstraint(m, e62, -(0.01*x[14]*x[28]+0.0392*x[15]*x[29]+0.05*x[16]*x[30])+x[76] == 0.0)
@constraint(m, e63, x[77] == 0.0)
@NLconstraint(m, e64, -(0.9109*x[84]*x[93]+0.9109*x[85]*x[94])+x[79] == 0.0)
@NLconstraint(m, e65, -(x[17]*x[64]+x[18]*x[65]+x[19]*x[66])+x[74]-x[80] == 0.0)
@constraint(m, e66, x[81] == 0.0)
@NLconstraint(m, e67, -x[86]*x[1]-x[79]-x[80]-x[81]+x[83] == 0.0)
@NLconstraint(m, e68, x[11]*x[87]+0.13*(x[70]*x[17]+x[71]*x[18]+x[72]*x[19])-0.13*x[82] == 0.0)
@NLconstraint(m, e69, x[12]*x[88]+0.29*(x[70]*x[17]+x[71]*x[18]+x[72]*x[19])-0.29*x[82] == 0.0)
@NLconstraint(m, e70, x[13]*x[89]+0.58*(x[70]*x[17]+x[71]*x[18]+x[72]*x[19])-0.58*x[82] == 0.0)
@constraint(m, e71, x[67] == 0.0)
@constraint(m, e72, x[68]-0.93076*x[87]-0.93774*x[88]-0.9308*x[89] == 0.0)
@constraint(m, e73, x[69]-0.06924*x[87]-0.06226*x[88]-0.0692*x[89] == 0.0)
@constraint(m, e74, -x[34]-x[35]-x[36]+0.90909*x[37]+0.81466*x[38]+0.92521*x[39]-x[86]-x[91]-x[92] == 0.0)
@constraint(m, e75, x[25]-x[58]-x[61]-x[64]-x[67]-x[70] == 0.0)
@constraint(m, e76, x[26]-x[59]-x[62]-x[65]-x[68]-x[71] == 0.0)
@constraint(m, e77, x[27]-x[60]-x[63]-x[66]-x[69]-x[72] == 0.0)
@NLconstraint(m, e78, -x[61]^0.47*x[62]^0.31999*x[63]^0.21001-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 