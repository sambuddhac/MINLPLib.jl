using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127]
@variable(m, x[x_Idx])
setlowerbound(x[117], 0.0)
setlowerbound(x[85], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[110], 0.0)
setlowerbound(x[113], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[111], 0.0)
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
setlowerbound(x[122], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[120], 0.0)
setlowerbound(x[121], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[126], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[103], 0.0)
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
setlowerbound(x[123], 0.0)
setlowerbound(x[127], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[73], 0.0)
setlowerbound(x[125], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[108], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[102], 0.0)
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
setupperbound(x[12], 10.0)
setupperbound(x[13], 10.0)
setupperbound(x[14], 10.0)
setupperbound(x[15], 10.0)
setupperbound(x[16], 10.0)
setupperbound(x[17], 10.0)
setupperbound(x[18], 10.0)
setupperbound(x[19], 10.0)
setupperbound(x[20], 10.0)
setupperbound(x[21], 10.0)
setupperbound(x[22], 10.0)
setupperbound(x[23], 10.0)
setupperbound(x[24], 10.0)
setupperbound(x[25], 10.0)
setupperbound(x[26], 10.0)
setupperbound(x[27], 10.0)
setupperbound(x[28], 10.0)
setupperbound(x[29], 10.0)
setupperbound(x[30], 10.0)
setupperbound(x[31], 10.0)
setupperbound(x[32], 10.0)
setupperbound(x[33], 10.0)
setupperbound(x[34], 10.0)
setupperbound(x[35], 10.0)
setupperbound(x[36], 10.0)
setupperbound(x[37], 1000.0)
setupperbound(x[38], 1000.0)
setupperbound(x[39], 1000.0)
setupperbound(x[40], 1000.0)
setupperbound(x[41], 1000.0)
setupperbound(x[42], 10.0)
setupperbound(x[43], 10.0)
setupperbound(x[44], 10.0)
setupperbound(x[45], 10.0)
setupperbound(x[46], 10.0)
setupperbound(x[47], 10.0)
setupperbound(x[48], 10.0)
setupperbound(x[49], 10.0)
setupperbound(x[50], 10.0)
setupperbound(x[51], 10.0)
setupperbound(x[52], 10.0)
setupperbound(x[53], 10.0)
setupperbound(x[54], 10.0)
setupperbound(x[55], 10.0)
setupperbound(x[56], 10.0)
setupperbound(x[57], 10.0)
setupperbound(x[58], 10.0)
setupperbound(x[59], 10.0)
setupperbound(x[60], 10.0)
setupperbound(x[61], 10.0)
setupperbound(x[62], 10.0)
setupperbound(x[63], 10.0)
setupperbound(x[64], 10.0)
setupperbound(x[65], 10.0)
setupperbound(x[66], 10.0)
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
setupperbound(x[93], 1000.0)
setupperbound(x[94], 1000.0)
setupperbound(x[95], 1000.0)
setupperbound(x[96], 1000.0)
setupperbound(x[97], 1000.0)
setupperbound(x[98], 10.0)
setupperbound(x[99], 10.0)
setupperbound(x[100], 10.0)
setupperbound(x[101], 10.0)
setupperbound(x[102], 10.0)
setupperbound(x[103], 10000.0)
setupperbound(x[104], 10000.0)
setupperbound(x[105], 10000.0)
setupperbound(x[106], 10000.0)
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
setupperbound(x[117], 10000.0)
setupperbound(x[118], 10000.0)
setupperbound(x[119], 10000.0)
setupperbound(x[120], 10000.0)
setupperbound(x[121], 10000.0)
setupperbound(x[122], 10000.0)
setupperbound(x[123], 10000.0)
setupperbound(x[124], 10000.0)
setupperbound(x[125], 10000.0)
setupperbound(x[126], 10000.0)
setupperbound(x[127], 10000.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -x[99]/x[101]-objvar == 0.0)
@constraint(m, e2, -x[2]-x[3]-x[4]-x[5]-x[6] == -100.0)
@constraint(m, e3, -x[2]+x[7]-x[67]-x[72]-x[77]-x[82]-x[87] == 0.0)
@constraint(m, e4, -x[3]+x[8]-x[68]-x[73]-x[78]-x[83]-x[88] == 0.0)
@constraint(m, e5, -x[4]+x[9]-x[69]-x[74]-x[79]-x[84]-x[89] == 0.0)
@constraint(m, e6, -x[5]+x[10]-x[70]-x[75]-x[80]-x[85]-x[90] == 0.0)
@constraint(m, e7, -x[6]+x[11]-x[71]-x[76]-x[81]-x[86]-x[91] == 0.0)
@NLconstraint(m, e8, x[12]*x[7]-(x[42]*x[67]+x[47]*x[72]+x[52]*x[77]+x[57]*x[82]+x[62]*x[87])-6*x[2] == 0.0)
@NLconstraint(m, e9, x[13]*x[7]-(x[43]*x[67]+x[48]*x[72]+x[53]*x[77]+x[58]*x[82]+x[63]*x[87]) == 0.0)
@NLconstraint(m, e10, x[14]*x[7]-(x[44]*x[67]+x[49]*x[72]+x[54]*x[77]+x[59]*x[82]+x[64]*x[87]) == 0.0)
@NLconstraint(m, e11, x[15]*x[7]-(x[45]*x[67]+x[50]*x[72]+x[55]*x[77]+x[60]*x[82]+x[65]*x[87])-0.6*x[2] == 0.0)
@NLconstraint(m, e12, x[16]*x[7]-(x[46]*x[67]+x[51]*x[72]+x[56]*x[77]+x[61]*x[82]+x[66]*x[87]) == 0.0)
@NLconstraint(m, e13, x[17]*x[8]-(x[42]*x[68]+x[47]*x[73]+x[52]*x[78]+x[57]*x[83]+x[62]*x[88])-6*x[3] == 0.0)
@NLconstraint(m, e14, x[18]*x[8]-(x[43]*x[68]+x[48]*x[73]+x[53]*x[78]+x[58]*x[83]+x[63]*x[88]) == 0.0)
@NLconstraint(m, e15, x[19]*x[8]-(x[44]*x[68]+x[49]*x[73]+x[54]*x[78]+x[59]*x[83]+x[64]*x[88]) == 0.0)
@NLconstraint(m, e16, x[20]*x[8]-(x[45]*x[68]+x[50]*x[73]+x[55]*x[78]+x[60]*x[83]+x[65]*x[88])-0.6*x[3] == 0.0)
@NLconstraint(m, e17, x[21]*x[8]-(x[46]*x[68]+x[51]*x[73]+x[56]*x[78]+x[61]*x[83]+x[66]*x[88]) == 0.0)
@NLconstraint(m, e18, x[22]*x[9]-(x[42]*x[69]+x[47]*x[74]+x[52]*x[79]+x[57]*x[84]+x[62]*x[89])-6*x[4] == 0.0)
@NLconstraint(m, e19, x[23]*x[9]-(x[43]*x[69]+x[48]*x[74]+x[53]*x[79]+x[58]*x[84]+x[63]*x[89]) == 0.0)
@NLconstraint(m, e20, x[24]*x[9]-(x[44]*x[69]+x[49]*x[74]+x[54]*x[79]+x[59]*x[84]+x[64]*x[89]) == 0.0)
@NLconstraint(m, e21, x[25]*x[9]-(x[45]*x[69]+x[50]*x[74]+x[55]*x[79]+x[60]*x[84]+x[65]*x[89])-0.6*x[4] == 0.0)
@NLconstraint(m, e22, x[26]*x[9]-(x[46]*x[69]+x[51]*x[74]+x[56]*x[79]+x[61]*x[84]+x[66]*x[89]) == 0.0)
@NLconstraint(m, e23, x[27]*x[10]-(x[42]*x[70]+x[47]*x[75]+x[52]*x[80]+x[57]*x[85]+x[62]*x[90])-6*x[5] == 0.0)
@NLconstraint(m, e24, x[28]*x[10]-(x[43]*x[70]+x[48]*x[75]+x[53]*x[80]+x[58]*x[85]+x[63]*x[90]) == 0.0)
@NLconstraint(m, e25, x[29]*x[10]-(x[44]*x[70]+x[49]*x[75]+x[54]*x[80]+x[59]*x[85]+x[64]*x[90]) == 0.0)
@NLconstraint(m, e26, x[30]*x[10]-(x[45]*x[70]+x[50]*x[75]+x[55]*x[80]+x[60]*x[85]+x[65]*x[90])-0.6*x[5] == 0.0)
@NLconstraint(m, e27, x[31]*x[10]-(x[46]*x[70]+x[51]*x[75]+x[56]*x[80]+x[61]*x[85]+x[66]*x[90]) == 0.0)
@NLconstraint(m, e28, x[32]*x[11]-(x[42]*x[71]+x[47]*x[76]+x[52]*x[81]+x[57]*x[86]+x[62]*x[91])-6*x[6] == 0.0)
@NLconstraint(m, e29, x[33]*x[11]-(x[43]*x[71]+x[48]*x[76]+x[53]*x[81]+x[58]*x[86]+x[63]*x[91]) == 0.0)
@NLconstraint(m, e30, x[34]*x[11]-(x[44]*x[71]+x[49]*x[76]+x[54]*x[81]+x[59]*x[86]+x[64]*x[91]) == 0.0)
@NLconstraint(m, e31, x[35]*x[11]-(x[45]*x[71]+x[50]*x[76]+x[55]*x[81]+x[60]*x[86]+x[65]*x[91])-0.6*x[6] == 0.0)
@NLconstraint(m, e32, x[36]*x[11]-(x[46]*x[71]+x[51]*x[76]+x[56]*x[81]+x[61]*x[86]+x[66]*x[91]) == 0.0)
@constraint(m, e33, -x[7]+x[37] == 0.0)
@constraint(m, e34, -x[8]+x[38] == 0.0)
@constraint(m, e35, -x[9]+x[39] == 0.0)
@constraint(m, e36, -x[10]+x[40] == 0.0)
@constraint(m, e37, -x[11]+x[41] == 0.0)
@NLconstraint(m, e38, x[42]*x[37]-(x[12]*x[7]+x[103]*(-x[108]-x[110])) == 0.0)
@NLconstraint(m, e39, x[43]*x[37]-(x[13]*x[7]+x[103]*(0.5*x[108]-x[109]-x[111])) == 0.0)
@NLconstraint(m, e40, x[44]*x[37]-(x[14]*x[7]+x[103]*x[109]) == 0.0)
@NLconstraint(m, e41, x[45]*x[37]-(x[15]*x[7]+x[103]*x[110]) == 0.0)
@NLconstraint(m, e42, x[46]*x[37]-(x[16]*x[7]+x[103]*x[111]) == 0.0)
@NLconstraint(m, e43, x[47]*x[38]-(x[17]*x[8]+x[104]*(-x[112]-x[114])) == 0.0)
@NLconstraint(m, e44, x[48]*x[38]-(x[18]*x[8]+x[104]*(0.5*x[112]-x[113]-x[115])) == 0.0)
@NLconstraint(m, e45, x[49]*x[38]-(x[19]*x[8]+x[104]*x[113]) == 0.0)
@NLconstraint(m, e46, x[50]*x[38]-(x[20]*x[8]+x[104]*x[114]) == 0.0)
@NLconstraint(m, e47, x[51]*x[38]-(x[21]*x[8]+x[104]*x[115]) == 0.0)
@NLconstraint(m, e48, x[52]*x[39]-(x[22]*x[9]+x[105]*(-x[116]-x[118])) == 0.0)
@NLconstraint(m, e49, x[53]*x[39]-(x[23]*x[9]+x[105]*(0.5*x[116]-x[117]-x[119])) == 0.0)
@NLconstraint(m, e50, x[54]*x[39]-(x[24]*x[9]+x[105]*x[117]) == 0.0)
@NLconstraint(m, e51, x[55]*x[39]-(x[25]*x[9]+x[105]*x[118]) == 0.0)
@NLconstraint(m, e52, x[56]*x[39]-(x[26]*x[9]+x[105]*x[119]) == 0.0)
@NLconstraint(m, e53, x[57]*x[40]-(x[27]*x[10]+x[106]*(-x[120]-x[122])) == 0.0)
@NLconstraint(m, e54, x[58]*x[40]-(x[28]*x[10]+x[106]*(0.5*x[120]-x[121]-x[123])) == 0.0)
@NLconstraint(m, e55, x[59]*x[40]-(x[29]*x[10]+x[106]*x[121]) == 0.0)
@NLconstraint(m, e56, x[60]*x[40]-(x[30]*x[10]+x[106]*x[122]) == 0.0)
@NLconstraint(m, e57, x[61]*x[40]-(x[31]*x[10]+x[106]*x[123]) == 0.0)
@NLconstraint(m, e58, x[62]*x[41]-(x[32]*x[11]+x[107]*(-x[124]-x[126])) == 0.0)
@NLconstraint(m, e59, x[63]*x[41]-(x[33]*x[11]+x[107]*(0.5*x[124]-x[125]-x[127])) == 0.0)
@NLconstraint(m, e60, x[64]*x[41]-(x[34]*x[11]+x[107]*x[125]) == 0.0)
@NLconstraint(m, e61, x[65]*x[41]-(x[35]*x[11]+x[107]*x[126]) == 0.0)
@NLconstraint(m, e62, x[66]*x[41]-(x[36]*x[11]+x[107]*x[127]) == 0.0)
@NLconstraint(m, e63, -x[42]*x[42]+x[108] == 0.0)
@NLconstraint(m, e64, -x[47]*x[47]+x[112] == 0.0)
@NLconstraint(m, e65, -x[52]*x[52]+x[116] == 0.0)
@NLconstraint(m, e66, -x[57]*x[57]+x[120] == 0.0)
@NLconstraint(m, e67, -x[62]*x[62]+x[124] == 0.0)
@constraint(m, e68, -0.6*x[43]+x[109] == 0.0)
@constraint(m, e69, -0.6*x[48]+x[113] == 0.0)
@constraint(m, e70, -0.6*x[53]+x[117] == 0.0)
@constraint(m, e71, -0.6*x[58]+x[121] == 0.0)
@constraint(m, e72, -0.6*x[63]+x[125] == 0.0)
@constraint(m, e73, -0.6*x[42]+x[110] == 0.0)
@constraint(m, e74, -0.6*x[47]+x[114] == 0.0)
@constraint(m, e75, -0.6*x[52]+x[118] == 0.0)
@constraint(m, e76, -0.6*x[57]+x[122] == 0.0)
@constraint(m, e77, -0.6*x[62]+x[126] == 0.0)
@NLconstraint(m, e78, -0.1*x[43]*x[43]+x[111] == 0.0)
@NLconstraint(m, e79, -0.1*x[48]*x[48]+x[115] == 0.0)
@NLconstraint(m, e80, -0.1*x[53]*x[53]+x[119] == 0.0)
@NLconstraint(m, e81, -0.1*x[58]*x[58]+x[123] == 0.0)
@NLconstraint(m, e82, -0.1*x[63]*x[63]+x[127] == 0.0)
@constraint(m, e83, x[37]-x[67]-x[68]-x[69]-x[70]-x[71]-x[92] == 0.0)
@constraint(m, e84, x[38]-x[72]-x[73]-x[74]-x[75]-x[76]-x[93] == 0.0)
@constraint(m, e85, x[39]-x[77]-x[78]-x[79]-x[80]-x[81]-x[94] == 0.0)
@constraint(m, e86, x[40]-x[82]-x[83]-x[84]-x[85]-x[86]-x[95] == 0.0)
@constraint(m, e87, x[41]-x[87]-x[88]-x[89]-x[90]-x[91]-x[96] == 0.0)
@constraint(m, e88, -x[92]-x[93]-x[94]-x[95]-x[96]+x[97] == 0.0)
@NLconstraint(m, e89, x[97]*x[98]-(x[92]*x[42]+x[93]*x[47]+x[94]*x[52]+x[95]*x[57]+x[96]*x[62]) == 0.0)
@NLconstraint(m, e90, x[97]*x[99]-(x[92]*x[43]+x[93]*x[48]+x[94]*x[53]+x[95]*x[58]+x[96]*x[63]) == 0.0)
@NLconstraint(m, e91, x[97]*x[100]-(x[92]*x[44]+x[93]*x[49]+x[94]*x[54]+x[95]*x[59]+x[96]*x[64]) == 0.0)
@NLconstraint(m, e92, x[97]*x[101]-(x[92]*x[45]+x[93]*x[50]+x[94]*x[55]+x[95]*x[60]+x[96]*x[65]) == 0.0)
@NLconstraint(m, e93, x[97]*x[102]-(x[92]*x[46]+x[93]*x[51]+x[94]*x[56]+x[95]*x[61]+x[96]*x[66]) == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
