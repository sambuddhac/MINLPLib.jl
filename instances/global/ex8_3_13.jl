using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116]
@variable(m, x[x_Idx])
setlowerbound(x[85], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[110], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[113], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[111], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[107], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[116], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[98], 0.0)
setlowerbound(x[61], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[97], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[73], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[108], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[76], 0.0)
setupperbound(x[2], 1000.0)
setupperbound(x[3], 1000.0)
setupperbound(x[4], 1000.0)
setupperbound(x[5], 1000.0)
setupperbound(x[6], 1000.0)
setupperbound(x[7], 1000.0)
setupperbound(x[8], 1000.0)
setupperbound(x[9], 1000.0)
setupperbound(x[10], 1000.0)
setupperbound(x[11], 1000.0)
setupperbound(x[12], 1000.0)
setupperbound(x[13], 1000.0)
setupperbound(x[14], 1000.0)
setupperbound(x[15], 1000.0)
setupperbound(x[16], 1000.0)
setupperbound(x[17], 1.0)
setupperbound(x[18], 1.0)
setupperbound(x[19], 1.0)
setupperbound(x[20], 1.0)
setupperbound(x[21], 1.0)
setupperbound(x[22], 1.0)
setupperbound(x[23], 1.0)
setupperbound(x[24], 1.0)
setupperbound(x[25], 1.0)
setupperbound(x[26], 1.0)
setupperbound(x[27], 1.0)
setupperbound(x[28], 1.0)
setupperbound(x[29], 1.0)
setupperbound(x[30], 1.0)
setupperbound(x[31], 1.0)
setupperbound(x[32], 1.0)
setupperbound(x[33], 1.0)
setupperbound(x[34], 1.0)
setupperbound(x[35], 1.0)
setupperbound(x[36], 1.0)
setupperbound(x[37], 1000.0)
setupperbound(x[38], 1000.0)
setupperbound(x[39], 1000.0)
setupperbound(x[40], 1000.0)
setupperbound(x[41], 1000.0)
setupperbound(x[42], 1.0)
setupperbound(x[43], 1.0)
setupperbound(x[44], 1.0)
setupperbound(x[45], 1.0)
setupperbound(x[46], 1.0)
setupperbound(x[47], 1.0)
setupperbound(x[48], 1.0)
setupperbound(x[49], 1.0)
setupperbound(x[50], 1.0)
setupperbound(x[51], 1.0)
setupperbound(x[52], 1.0)
setupperbound(x[53], 1.0)
setupperbound(x[54], 1.0)
setupperbound(x[55], 1.0)
setupperbound(x[56], 1.0)
setupperbound(x[57], 1.0)
setupperbound(x[58], 1.0)
setupperbound(x[59], 1.0)
setupperbound(x[60], 1.0)
setupperbound(x[61], 1.0)
setupperbound(x[62], 1000.0)
setupperbound(x[63], 1000.0)
setupperbound(x[64], 1000.0)
setupperbound(x[65], 1000.0)
setupperbound(x[66], 1000.0)
setupperbound(x[67], 1000.0)
setupperbound(x[68], 1000.0)
setupperbound(x[69], 1000.0)
setupperbound(x[70], 1000.0)
setupperbound(x[71], 1000.0)
setupperbound(x[72], 1000.0)
setupperbound(x[73], 1000.0)
setupperbound(x[74], 1000.0)
setupperbound(x[75], 1000.0)
setupperbound(x[76], 1000.0)
setupperbound(x[77], 1000.0)
setupperbound(x[78], 1000.0)
setupperbound(x[79], 1000.0)
setupperbound(x[80], 1000.0)
setupperbound(x[81], 1000.0)
setupperbound(x[82], 1000.0)
setupperbound(x[83], 1000.0)
setupperbound(x[84], 1000.0)
setupperbound(x[85], 1000.0)
setupperbound(x[86], 1000.0)
setupperbound(x[87], 1000.0)
setupperbound(x[88], 1000.0)
setupperbound(x[89], 1000.0)
setupperbound(x[90], 1000.0)
setupperbound(x[91], 1000.0)
setupperbound(x[92], 1000.0)
setupperbound(x[93], 1.0)
setupperbound(x[94], 1.0)
setupperbound(x[95], 1.0)
setupperbound(x[96], 1.0)
setupperbound(x[97], 10000.0)
setupperbound(x[98], 10000.0)
setupperbound(x[99], 10000.0)
setupperbound(x[100], 10000.0)
setupperbound(x[101], 10000.0)
setlowerbound(x[102], 300.0)
setupperbound(x[102], 800.0)
setlowerbound(x[103], 300.0)
setupperbound(x[103], 800.0)
setlowerbound(x[104], 300.0)
setupperbound(x[104], 800.0)
setlowerbound(x[105], 300.0)
setupperbound(x[105], 800.0)
setlowerbound(x[106], 300.0)
setupperbound(x[106], 800.0)
setupperbound(x[107], 10000.0)
setupperbound(x[108], 10000.0)
setupperbound(x[109], 10000.0)
setupperbound(x[110], 10000.0)
setupperbound(x[111], 10000.0)
setupperbound(x[112], 10000.0)
setupperbound(x[113], 10000.0)
setupperbound(x[114], 10000.0)
setupperbound(x[115], 10000.0)
setupperbound(x[116], 10000.0)


# ----- Constraints ----- #
@constraint(m, e1, -objvar-100*x[95]+x[97]+x[98]+x[99]+x[100]+x[101] == 0.0)
@constraint(m, e2, -x[2]-x[3]-x[4]-x[5]-x[6] == -50.0)
@constraint(m, e3, -x[7]-x[8]-x[9]-x[10]-x[11] == -50.0)
@constraint(m, e4, -x[2]-x[7]+x[12]-x[62]-x[67]-x[72]-x[77]-x[82] == 0.0)
@constraint(m, e5, -x[3]-x[8]+x[13]-x[63]-x[68]-x[73]-x[78]-x[83] == 0.0)
@constraint(m, e6, -x[4]-x[9]+x[14]-x[64]-x[69]-x[74]-x[79]-x[84] == 0.0)
@constraint(m, e7, -x[5]-x[10]+x[15]-x[65]-x[70]-x[75]-x[80]-x[85] == 0.0)
@constraint(m, e8, -x[6]-x[11]+x[16]-x[66]-x[71]-x[76]-x[81]-x[86] == 0.0)
@NLconstraint(m, e9, x[17]*x[12]-(x[42]*x[62]+x[46]*x[67]+x[50]*x[72]+x[54]*x[77]+x[58]*x[82])-x[2] == 0.0)
@NLconstraint(m, e10, x[18]*x[12]-(x[43]*x[62]+x[47]*x[67]+x[51]*x[72]+x[55]*x[77]+x[59]*x[82])-x[7] == 0.0)
@NLconstraint(m, e11, x[19]*x[12]-(x[44]*x[62]+x[48]*x[67]+x[52]*x[72]+x[56]*x[77]+x[60]*x[82]) == 0.0)
@NLconstraint(m, e12, x[20]*x[12]-(x[45]*x[62]+x[49]*x[67]+x[53]*x[72]+x[57]*x[77]+x[61]*x[82]) == 0.0)
@NLconstraint(m, e13, x[21]*x[13]-(x[42]*x[63]+x[46]*x[68]+x[50]*x[73]+x[54]*x[78]+x[58]*x[83])-x[3] == 0.0)
@NLconstraint(m, e14, x[22]*x[13]-(x[43]*x[63]+x[47]*x[68]+x[51]*x[73]+x[55]*x[78]+x[59]*x[83])-x[8] == 0.0)
@NLconstraint(m, e15, x[23]*x[13]-(x[44]*x[63]+x[48]*x[68]+x[52]*x[73]+x[56]*x[78]+x[60]*x[83]) == 0.0)
@NLconstraint(m, e16, x[24]*x[13]-(x[45]*x[63]+x[49]*x[68]+x[53]*x[73]+x[57]*x[78]+x[61]*x[83]) == 0.0)
@NLconstraint(m, e17, x[25]*x[14]-(x[42]*x[64]+x[46]*x[69]+x[50]*x[74]+x[54]*x[79]+x[58]*x[84])-x[4] == 0.0)
@NLconstraint(m, e18, x[26]*x[14]-(x[43]*x[64]+x[47]*x[69]+x[51]*x[74]+x[55]*x[79]+x[59]*x[84])-x[9] == 0.0)
@NLconstraint(m, e19, x[27]*x[14]-(x[44]*x[64]+x[48]*x[69]+x[52]*x[74]+x[56]*x[79]+x[60]*x[84]) == 0.0)
@NLconstraint(m, e20, x[28]*x[14]-(x[45]*x[64]+x[49]*x[69]+x[53]*x[74]+x[57]*x[79]+x[61]*x[84]) == 0.0)
@NLconstraint(m, e21, x[29]*x[15]-(x[42]*x[65]+x[46]*x[70]+x[50]*x[75]+x[54]*x[80]+x[58]*x[85])-x[5] == 0.0)
@NLconstraint(m, e22, x[30]*x[15]-(x[43]*x[65]+x[47]*x[70]+x[51]*x[75]+x[55]*x[80]+x[59]*x[85])-x[10] == 0.0)
@NLconstraint(m, e23, x[31]*x[15]-(x[44]*x[65]+x[48]*x[70]+x[52]*x[75]+x[56]*x[80]+x[60]*x[85]) == 0.0)
@NLconstraint(m, e24, x[32]*x[15]-(x[45]*x[65]+x[49]*x[70]+x[53]*x[75]+x[57]*x[80]+x[61]*x[85]) == 0.0)
@NLconstraint(m, e25, x[33]*x[16]-(x[42]*x[66]+x[46]*x[71]+x[50]*x[76]+x[54]*x[81]+x[58]*x[86])-x[6] == 0.0)
@NLconstraint(m, e26, x[34]*x[16]-(x[43]*x[66]+x[47]*x[71]+x[51]*x[76]+x[55]*x[81]+x[59]*x[86])-x[11] == 0.0)
@NLconstraint(m, e27, x[35]*x[16]-(x[44]*x[66]+x[48]*x[71]+x[52]*x[76]+x[56]*x[81]+x[60]*x[86]) == 0.0)
@NLconstraint(m, e28, x[36]*x[16]-(x[45]*x[66]+x[49]*x[71]+x[53]*x[76]+x[57]*x[81]+x[61]*x[86]) == 0.0)
@constraint(m, e29, -x[12]+x[37] == 0.0)
@constraint(m, e30, -x[13]+x[38] == 0.0)
@constraint(m, e31, -x[14]+x[39] == 0.0)
@constraint(m, e32, -x[15]+x[40] == 0.0)
@constraint(m, e33, -x[16]+x[41] == 0.0)
@NLconstraint(m, e34, x[42]*x[37]-(x[17]*x[12]+x[97]*(-x[107]-x[108])) == 0.0)
@NLconstraint(m, e35, x[43]*x[37]-(x[18]*x[12]+x[97]*(-x[107]-x[108])) == 0.0)
@NLconstraint(m, e36, x[44]*x[37]-(x[19]*x[12]+x[97]*x[107]) == 0.0)
@NLconstraint(m, e37, x[45]*x[37]-(x[20]*x[12]+x[97]*x[108]) == 0.0)
@NLconstraint(m, e38, x[46]*x[38]-(x[21]*x[13]+x[98]*(-x[109]-x[110])) == 0.0)
@NLconstraint(m, e39, x[47]*x[38]-(x[22]*x[13]+x[98]*(-x[109]-x[110])) == 0.0)
@NLconstraint(m, e40, x[48]*x[38]-(x[23]*x[13]+x[98]*x[109]) == 0.0)
@NLconstraint(m, e41, x[49]*x[38]-(x[24]*x[13]+x[98]*x[110]) == 0.0)
@NLconstraint(m, e42, x[50]*x[39]-(x[25]*x[14]+x[99]*(-x[111]-x[112])) == 0.0)
@NLconstraint(m, e43, x[51]*x[39]-(x[26]*x[14]+x[99]*(-x[111]-x[112])) == 0.0)
@NLconstraint(m, e44, x[52]*x[39]-(x[27]*x[14]+x[99]*x[111]) == 0.0)
@NLconstraint(m, e45, x[53]*x[39]-(x[28]*x[14]+x[99]*x[112]) == 0.0)
@NLconstraint(m, e46, x[54]*x[40]-(x[29]*x[15]+x[100]*(-x[113]-x[114])) == 0.0)
@NLconstraint(m, e47, x[55]*x[40]-(x[30]*x[15]+x[100]*(-x[113]-x[114])) == 0.0)
@NLconstraint(m, e48, x[56]*x[40]-(x[31]*x[15]+x[100]*x[113]) == 0.0)
@NLconstraint(m, e49, x[57]*x[40]-(x[32]*x[15]+x[100]*x[114]) == 0.0)
@NLconstraint(m, e50, x[58]*x[41]-(x[33]*x[16]+x[101]*(-x[115]-x[116])) == 0.0)
@NLconstraint(m, e51, x[59]*x[41]-(x[34]*x[16]+x[101]*(-x[115]-x[116])) == 0.0)
@NLconstraint(m, e52, x[60]*x[41]-(x[35]*x[16]+x[101]*x[115]) == 0.0)
@NLconstraint(m, e53, x[61]*x[41]-(x[36]*x[16]+x[101]*x[116]) == 0.0)
@NLconstraint(m, e54, -54000000*exp(-9631.60543532964/x[102])*x[42]*x[43]^0.3+x[107] == 0.0)
@NLconstraint(m, e55, -54000000*exp(-9631.60543532964/x[103])*x[46]*x[47]^0.3+x[109] == 0.0)
@NLconstraint(m, e56, -54000000*exp(-9631.60543532964/x[104])*x[50]*x[51]^0.3+x[111] == 0.0)
@NLconstraint(m, e57, -54000000*exp(-9631.60543532964/x[105])*x[54]*x[55]^0.3+x[113] == 0.0)
@NLconstraint(m, e58, -54000000*exp(-9631.60543532964/x[106])*x[58]*x[59]^0.3+x[115] == 0.0)
@NLconstraint(m, e59, -360000*exp(-4815.80271766482/x[102])*x[42]^0.5*x[43]^1.8+x[108] == 0.0)
@NLconstraint(m, e60, -360000*exp(-4815.80271766482/x[103])*x[46]^0.5*x[47]^1.8+x[110] == 0.0)
@NLconstraint(m, e61, -360000*exp(-4815.80271766482/x[104])*x[50]^0.5*x[51]^1.8+x[112] == 0.0)
@NLconstraint(m, e62, -360000*exp(-4815.80271766482/x[105])*x[54]^0.5*x[55]^1.8+x[114] == 0.0)
@NLconstraint(m, e63, -360000*exp(-4815.80271766482/x[106])*x[58]^0.5*x[59]^1.8+x[116] == 0.0)
@constraint(m, e64, x[37]-x[62]-x[63]-x[64]-x[65]-x[66]-x[87] == 0.0)
@constraint(m, e65, x[38]-x[67]-x[68]-x[69]-x[70]-x[71]-x[88] == 0.0)
@constraint(m, e66, x[39]-x[72]-x[73]-x[74]-x[75]-x[76]-x[89] == 0.0)
@constraint(m, e67, x[40]-x[77]-x[78]-x[79]-x[80]-x[81]-x[90] == 0.0)
@constraint(m, e68, x[41]-x[82]-x[83]-x[84]-x[85]-x[86]-x[91] == 0.0)
@constraint(m, e69, -x[87]-x[88]-x[89]-x[90]-x[91]+x[92] == 0.0)
@NLconstraint(m, e70, x[92]*x[93]-(x[87]*x[42]+x[88]*x[46]+x[89]*x[50]+x[90]*x[54]+x[91]*x[58]) == 0.0)
@NLconstraint(m, e71, x[92]*x[94]-(x[87]*x[43]+x[88]*x[47]+x[89]*x[51]+x[90]*x[55]+x[91]*x[59]) == 0.0)
@NLconstraint(m, e72, x[92]*x[95]-(x[87]*x[44]+x[88]*x[48]+x[89]*x[52]+x[90]*x[56]+x[91]*x[60]) == 0.0)
@NLconstraint(m, e73, x[92]*x[96]-(x[87]*x[45]+x[88]*x[49]+x[89]*x[53]+x[90]*x[57]+x[91]*x[61]) == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
