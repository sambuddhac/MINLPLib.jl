using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101]
@variable(m, x[x_Idx])
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
setlowerbound(x[22], -1.0)
setupperbound(x[22], 1.0)
setlowerbound(x[23], -1.0)
setupperbound(x[23], 1.0)
setlowerbound(x[24], -1.0)
setupperbound(x[24], 1.0)
setlowerbound(x[25], -1.0)
setupperbound(x[25], 1.0)
setlowerbound(x[26], -1.0)
setupperbound(x[26], 1.0)
setlowerbound(x[27], -1.0)
setupperbound(x[27], 1.0)
setlowerbound(x[28], -1.0)
setupperbound(x[28], 1.0)
setlowerbound(x[29], -1.0)
setupperbound(x[29], 1.0)
setlowerbound(x[30], -1.0)
setupperbound(x[30], 1.0)
setlowerbound(x[31], -1.0)
setupperbound(x[31], 1.0)
setlowerbound(x[32], -1.0)
setupperbound(x[32], 1.0)
setlowerbound(x[33], -1.0)
setupperbound(x[33], 1.0)
setlowerbound(x[34], -1.0)
setupperbound(x[34], 1.0)
setlowerbound(x[35], -1.0)
setupperbound(x[35], 1.0)
setlowerbound(x[36], -1.0)
setupperbound(x[36], 1.0)
setlowerbound(x[37], -1.0)
setupperbound(x[37], 1.0)
setlowerbound(x[38], -1.0)
setupperbound(x[38], 1.0)
setlowerbound(x[39], -1.0)
setupperbound(x[39], 1.0)
setlowerbound(x[40], -1.0)
setupperbound(x[40], 1.0)
setlowerbound(x[41], -1.0)
setupperbound(x[41], 1.0)
setlowerbound(x[42], -1.0)
setupperbound(x[42], 1.0)
setlowerbound(x[43], -1.0)
setupperbound(x[43], 1.0)
setlowerbound(x[44], -1.0)
setupperbound(x[44], 1.0)
setlowerbound(x[45], -1.0)
setupperbound(x[45], 1.0)
setlowerbound(x[46], -1.0)
setupperbound(x[46], 1.0)
setlowerbound(x[47], -1.0)
setupperbound(x[47], 1.0)
setlowerbound(x[48], -1.0)
setupperbound(x[48], 1.0)
setlowerbound(x[49], -1.0)
setupperbound(x[49], 1.0)
setlowerbound(x[50], -1.0)
setupperbound(x[50], 1.0)
setlowerbound(x[51], -1.0)
setupperbound(x[51], 1.0)
setlowerbound(x[52], -1.0)
setupperbound(x[52], 1.0)
setlowerbound(x[53], -1.0)
setupperbound(x[53], 1.0)
setlowerbound(x[54], -1.0)
setupperbound(x[54], 1.0)
setlowerbound(x[55], -1.0)
setupperbound(x[55], 1.0)
setlowerbound(x[56], -1.0)
setupperbound(x[56], 1.0)
setlowerbound(x[57], -1.0)
setupperbound(x[57], 1.0)
setlowerbound(x[58], -1.0)
setupperbound(x[58], 1.0)
setlowerbound(x[59], -1.0)
setupperbound(x[59], 1.0)
setlowerbound(x[60], -1.0)
setupperbound(x[60], 1.0)
setlowerbound(x[61], -1.0)
setupperbound(x[61], 1.0)
setlowerbound(x[62], -1.0)
setupperbound(x[62], 1.0)
setlowerbound(x[63], -1.0)
setupperbound(x[63], 1.0)
setlowerbound(x[64], -1.0)
setupperbound(x[64], 1.0)
setlowerbound(x[65], -1.0)
setupperbound(x[65], 1.0)
setlowerbound(x[66], -1.0)
setupperbound(x[66], 1.0)
setlowerbound(x[67], -1.0)
setupperbound(x[67], 1.0)
setlowerbound(x[68], -1.0)
setupperbound(x[68], 1.0)
setlowerbound(x[69], -1.0)
setupperbound(x[69], 1.0)
setlowerbound(x[70], -1.0)
setupperbound(x[70], 1.0)
setlowerbound(x[71], -1.0)
setupperbound(x[71], 1.0)
setlowerbound(x[72], -1.0)
setupperbound(x[72], 1.0)
setlowerbound(x[73], -1.0)
setupperbound(x[73], 1.0)
setlowerbound(x[74], -1.0)
setupperbound(x[74], 1.0)
setlowerbound(x[75], -1.0)
setupperbound(x[75], 1.0)
setlowerbound(x[76], -1.0)
setupperbound(x[76], 1.0)
setlowerbound(x[77], -1.0)
setupperbound(x[77], 1.0)
setlowerbound(x[78], -1.0)
setupperbound(x[78], 1.0)
setlowerbound(x[79], -1.0)
setupperbound(x[79], 1.0)
setlowerbound(x[80], -1.0)
setupperbound(x[80], 1.0)
setlowerbound(x[81], -1.0)
setupperbound(x[81], 1.0)
setlowerbound(x[82], -1.0)
setupperbound(x[82], 1.0)
setlowerbound(x[83], -1.0)
setupperbound(x[83], 1.0)
setlowerbound(x[84], -1.0)
setupperbound(x[84], 1.0)
setlowerbound(x[85], -1.0)
setupperbound(x[85], 1.0)
setlowerbound(x[86], -1.0)
setupperbound(x[86], 1.0)
setlowerbound(x[87], -1.0)
setupperbound(x[87], 1.0)
setlowerbound(x[88], -1.0)
setupperbound(x[88], 1.0)
setlowerbound(x[89], -1.0)
setupperbound(x[89], 1.0)
setlowerbound(x[90], -1.0)
setupperbound(x[90], 1.0)
setlowerbound(x[91], -1.0)
setupperbound(x[91], 1.0)
setlowerbound(x[92], -1.0)
setupperbound(x[92], 1.0)
setlowerbound(x[93], -1.0)
setupperbound(x[93], 1.0)
setlowerbound(x[94], -1.0)
setupperbound(x[94], 1.0)
setlowerbound(x[95], -1.0)
setupperbound(x[95], 1.0)
setlowerbound(x[96], -1.0)
setupperbound(x[96], 1.0)
setlowerbound(x[97], -1.0)
setupperbound(x[97], 1.0)
setlowerbound(x[98], -1.0)
setupperbound(x[98], 1.0)
setlowerbound(x[99], -1.0)
setupperbound(x[99], 1.0)
setlowerbound(x[100], -1.0)
setupperbound(x[100], 1.0)
setlowerbound(x[101], -1.0)
setupperbound(x[101], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[2]*x[2]+x[3]*x[3]+x[4]*x[4]+x[5]*x[5]+x[6]*x[6]+x[7]*x[7]+x[8]*x[8]+x[9]*x[9]+x[10]*x[10]+x[11]*x[11]+x[12]*x[12]+x[13]*x[13]+x[14]*x[14]+x[15]*x[15]+x[16]*x[16]+x[17]*x[17]+x[18]*x[18]+x[19]*x[19]+x[20]*x[20]+x[21]*x[21]+x[22]*x[22]+x[23]*x[23]+x[24]*x[24]+x[25]*x[25]+x[26]*x[26]+x[27]*x[27]+x[28]*x[28]+x[29]*x[29]+x[30]*x[30]+x[31]*x[31]+x[32]*x[32]+x[33]*x[33]+x[34]*x[34]+x[35]*x[35]+x[36]*x[36]+x[37]*x[37]+x[38]*x[38]+x[39]*x[39]+x[40]*x[40]+x[41]*x[41]+x[42]*x[42]+x[43]*x[43]+x[44]*x[44]+x[45]*x[45]+x[46]*x[46]+x[47]*x[47]+x[48]*x[48]+x[49]*x[49]+x[50]*x[50]+x[51]*x[51]+x[52]*x[52]+x[53]*x[53]+x[54]*x[54]+x[55]*x[55]+x[56]*x[56]+x[57]*x[57]+x[58]*x[58]+x[59]*x[59]+x[60]*x[60]+x[61]*x[61]+x[62]*x[62]+x[63]*x[63]+x[64]*x[64]+x[65]*x[65]+x[66]*x[66]+x[67]*x[67]+x[68]*x[68]+x[69]*x[69]+x[70]*x[70]+x[71]*x[71]+x[72]*x[72]+x[73]*x[73]+x[74]*x[74]+x[75]*x[75]+x[76]*x[76]+x[77]*x[77]+x[78]*x[78]+x[79]*x[79]+x[80]*x[80]+x[81]*x[81]+x[82]*x[82]+x[83]*x[83]+x[84]*x[84]+x[85]*x[85]+x[86]*x[86]+x[87]*x[87]+x[88]*x[88]+x[89]*x[89]+x[90]*x[90]+x[91]*x[91]+x[92]*x[92]+x[93]*x[93]+x[94]*x[94]+x[95]*x[95]+x[96]*x[96]+x[97]*x[97]+x[98]*x[98]+x[99]*x[99]+x[100]*x[100]+x[101]*x[101] == 1.0)
@NLconstraint(m, e2, x[2]*x[1]-x[2] == 0.0)
@NLconstraint(m, e3, x[3]*x[1]-2*x[3] == 0.0)
@NLconstraint(m, e4, x[4]*x[1]-3*x[4] == 0.0)
@NLconstraint(m, e5, x[5]*x[1]-4*x[5] == 0.0)
@NLconstraint(m, e6, x[6]*x[1]-5*x[6] == 0.0)
@NLconstraint(m, e7, x[7]*x[1]-6*x[7] == 0.0)
@NLconstraint(m, e8, x[8]*x[1]-7*x[8] == 0.0)
@NLconstraint(m, e9, x[9]*x[1]-8*x[9] == 0.0)
@NLconstraint(m, e10, x[10]*x[1]-9*x[10] == 0.0)
@NLconstraint(m, e11, x[11]*x[1]-10*x[11] == 0.0)
@NLconstraint(m, e12, x[12]*x[1]-11*x[12] == 0.0)
@NLconstraint(m, e13, x[13]*x[1]-12*x[13] == 0.0)
@NLconstraint(m, e14, x[14]*x[1]-13*x[14] == 0.0)
@NLconstraint(m, e15, x[15]*x[1]-14*x[15] == 0.0)
@NLconstraint(m, e16, x[16]*x[1]-15*x[16] == 0.0)
@NLconstraint(m, e17, x[17]*x[1]-16*x[17] == 0.0)
@NLconstraint(m, e18, x[18]*x[1]-17*x[18] == 0.0)
@NLconstraint(m, e19, x[19]*x[1]-18*x[19] == 0.0)
@NLconstraint(m, e20, x[20]*x[1]-19*x[20] == 0.0)
@NLconstraint(m, e21, x[21]*x[1]-20*x[21] == 0.0)
@NLconstraint(m, e22, x[22]*x[1]-21*x[22] == 0.0)
@NLconstraint(m, e23, x[23]*x[1]-22*x[23] == 0.0)
@NLconstraint(m, e24, x[24]*x[1]-23*x[24] == 0.0)
@NLconstraint(m, e25, x[25]*x[1]-24*x[25] == 0.0)
@NLconstraint(m, e26, x[26]*x[1]-25*x[26] == 0.0)
@NLconstraint(m, e27, x[27]*x[1]-26*x[27] == 0.0)
@NLconstraint(m, e28, x[28]*x[1]-27*x[28] == 0.0)
@NLconstraint(m, e29, x[29]*x[1]-28*x[29] == 0.0)
@NLconstraint(m, e30, x[30]*x[1]-29*x[30] == 0.0)
@NLconstraint(m, e31, x[31]*x[1]-30*x[31] == 0.0)
@NLconstraint(m, e32, x[32]*x[1]-31*x[32] == 0.0)
@NLconstraint(m, e33, x[33]*x[1]-32*x[33] == 0.0)
@NLconstraint(m, e34, x[34]*x[1]-33*x[34] == 0.0)
@NLconstraint(m, e35, x[35]*x[1]-34*x[35] == 0.0)
@NLconstraint(m, e36, x[36]*x[1]-35*x[36] == 0.0)
@NLconstraint(m, e37, x[37]*x[1]-36*x[37] == 0.0)
@NLconstraint(m, e38, x[38]*x[1]-37*x[38] == 0.0)
@NLconstraint(m, e39, x[39]*x[1]-38*x[39] == 0.0)
@NLconstraint(m, e40, x[40]*x[1]-39*x[40] == 0.0)
@NLconstraint(m, e41, x[41]*x[1]-40*x[41] == 0.0)
@NLconstraint(m, e42, x[42]*x[1]-41*x[42] == 0.0)
@NLconstraint(m, e43, x[43]*x[1]-42*x[43] == 0.0)
@NLconstraint(m, e44, x[44]*x[1]-43*x[44] == 0.0)
@NLconstraint(m, e45, x[45]*x[1]-44*x[45] == 0.0)
@NLconstraint(m, e46, x[46]*x[1]-45*x[46] == 0.0)
@NLconstraint(m, e47, x[47]*x[1]-46*x[47] == 0.0)
@NLconstraint(m, e48, x[48]*x[1]-47*x[48] == 0.0)
@NLconstraint(m, e49, x[49]*x[1]-48*x[49] == 0.0)
@NLconstraint(m, e50, x[50]*x[1]-49*x[50] == 0.0)
@NLconstraint(m, e51, x[51]*x[1]-50*x[51] == 0.0)
@NLconstraint(m, e52, x[52]*x[1]-51*x[52] == 0.0)
@NLconstraint(m, e53, x[53]*x[1]-52*x[53] == 0.0)
@NLconstraint(m, e54, x[54]*x[1]-53*x[54] == 0.0)
@NLconstraint(m, e55, x[55]*x[1]-54*x[55] == 0.0)
@NLconstraint(m, e56, x[56]*x[1]-55*x[56] == 0.0)
@NLconstraint(m, e57, x[57]*x[1]-56*x[57] == 0.0)
@NLconstraint(m, e58, x[58]*x[1]-57*x[58] == 0.0)
@NLconstraint(m, e59, x[59]*x[1]-58*x[59] == 0.0)
@NLconstraint(m, e60, x[60]*x[1]-59*x[60] == 0.0)
@NLconstraint(m, e61, x[61]*x[1]-60*x[61] == 0.0)
@NLconstraint(m, e62, x[62]*x[1]-61*x[62] == 0.0)
@NLconstraint(m, e63, x[63]*x[1]-62*x[63] == 0.0)
@NLconstraint(m, e64, x[64]*x[1]-63*x[64] == 0.0)
@NLconstraint(m, e65, x[65]*x[1]-64*x[65] == 0.0)
@NLconstraint(m, e66, x[66]*x[1]-65*x[66] == 0.0)
@NLconstraint(m, e67, x[67]*x[1]-66*x[67] == 0.0)
@NLconstraint(m, e68, x[68]*x[1]-67*x[68] == 0.0)
@NLconstraint(m, e69, x[69]*x[1]-68*x[69] == 0.0)
@NLconstraint(m, e70, x[70]*x[1]-69*x[70] == 0.0)
@NLconstraint(m, e71, x[71]*x[1]-70*x[71] == 0.0)
@NLconstraint(m, e72, x[72]*x[1]-71*x[72] == 0.0)
@NLconstraint(m, e73, x[73]*x[1]-72*x[73] == 0.0)
@NLconstraint(m, e74, x[74]*x[1]-73*x[74] == 0.0)
@NLconstraint(m, e75, x[75]*x[1]-74*x[75] == 0.0)
@NLconstraint(m, e76, x[76]*x[1]-75*x[76] == 0.0)
@NLconstraint(m, e77, x[77]*x[1]-76*x[77] == 0.0)
@NLconstraint(m, e78, x[78]*x[1]-77*x[78] == 0.0)
@NLconstraint(m, e79, x[79]*x[1]-78*x[79] == 0.0)
@NLconstraint(m, e80, x[80]*x[1]-79*x[80] == 0.0)
@NLconstraint(m, e81, x[81]*x[1]-80*x[81] == 0.0)
@NLconstraint(m, e82, x[82]*x[1]-81*x[82] == 0.0)
@NLconstraint(m, e83, x[83]*x[1]-82*x[83] == 0.0)
@NLconstraint(m, e84, x[84]*x[1]-83*x[84] == 0.0)
@NLconstraint(m, e85, x[85]*x[1]-84*x[85] == 0.0)
@NLconstraint(m, e86, x[86]*x[1]-85*x[86] == 0.0)
@NLconstraint(m, e87, x[87]*x[1]-86*x[87] == 0.0)
@NLconstraint(m, e88, x[88]*x[1]-87*x[88] == 0.0)
@NLconstraint(m, e89, x[89]*x[1]-88*x[89] == 0.0)
@NLconstraint(m, e90, x[90]*x[1]-89*x[90] == 0.0)
@NLconstraint(m, e91, x[91]*x[1]-90*x[91] == 0.0)
@NLconstraint(m, e92, x[92]*x[1]-91*x[92] == 0.0)
@NLconstraint(m, e93, x[93]*x[1]-92*x[93] == 0.0)
@NLconstraint(m, e94, x[94]*x[1]-93*x[94] == 0.0)
@NLconstraint(m, e95, x[95]*x[1]-94*x[95] == 0.0)
@NLconstraint(m, e96, x[96]*x[1]-95*x[96] == 0.0)
@NLconstraint(m, e97, x[97]*x[1]-96*x[97] == 0.0)
@NLconstraint(m, e98, x[98]*x[1]-97*x[98] == 0.0)
@NLconstraint(m, e99, x[99]*x[1]-98*x[99] == 0.0)
@NLconstraint(m, e100, x[100]*x[1]-99*x[100] == 0.0)
@NLconstraint(m, e101, x[101]*x[1]-100*x[101] == 0.0)
@constraint(m, e102, x[1]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
