using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144]
@variable(m, x[x_Idx])
setlowerbound(x[117], 0.0)
setlowerbound(x[85], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[136], 0.0)
setlowerbound(x[140], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[132], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[143], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[110], 0.0)
setlowerbound(x[138], 0.0)
setlowerbound(x[113], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[130], 0.0)
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
setlowerbound(x[131], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[137], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[134], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[141], 0.0)
setlowerbound(x[128], 0.0)
setlowerbound(x[142], 0.0)
setlowerbound(x[144], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[122], 0.0)
setlowerbound(x[129], 0.0)
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
setlowerbound(x[139], 0.0)
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
setlowerbound(x[135], 0.0)
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
setlowerbound(x[133], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[76], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-19.904+x[3]+2*x[4]+3*x[5]+4*x[6]+5*x[7]+6*x[8]+7*x[9]+8*x[10]+9*x[11]+10*x[12]+11*x[13]+12*x[14]+13*x[15]+14*x[16]+15*x[17]+16*x[18]+17*x[19]+18*x[20]+19*x[21]+20*x[22]+21*x[23]+22*x[24]+23*x[25]+24*x[26]+25*x[27]+26*x[28]+27*x[29]+28*x[30]+29*x[31]+30*x[32]+31*x[33]+32*x[34]+33*x[35]+34*x[36]+35*x[37]+36*x[38]+37*x[39]+38*x[40]+39*x[41]+40*x[42]+41*x[43]+42*x[44]+43*x[45]+44*x[46]+45*x[47]+46*x[48]+47*x[49]+48*x[50]+49*x[51]+50*x[52]+51*x[53]+52*x[54]+53*x[55]+54*x[56]+55*x[57]+56*x[58]+57*x[59]+58*x[60]+59*x[61]+60*x[62]+61*x[63]+62*x[64]+63*x[65]+64*x[66]+65*x[67]+66*x[68]+67*x[69]+68*x[70]+69*x[71]+70*x[72]+71*x[73])*(-19.904+x[3]+2*x[4]+3*x[5]+4*x[6]+5*x[7]+6*x[8]+7*x[9]+8*x[10]+9*x[11]+10*x[12]+11*x[13]+12*x[14]+13*x[15]+14*x[16]+15*x[17]+16*x[18]+17*x[19]+18*x[20]+19*x[21]+20*x[22]+21*x[23]+22*x[24]+23*x[25]+24*x[26]+25*x[27]+26*x[28]+27*x[29]+28*x[30]+29*x[31]+30*x[32]+31*x[33]+32*x[34]+33*x[35]+34*x[36]+35*x[37]+36*x[38]+37*x[39]+38*x[40]+39*x[41]+40*x[42]+41*x[43]+42*x[44]+43*x[45]+44*x[46]+45*x[47]+46*x[48]+47*x[49]+48*x[50]+49*x[51]+50*x[52]+51*x[53]+52*x[54]+53*x[55]+54*x[56]+55*x[57]+56*x[58]+57*x[59]+58*x[60]+59*x[61]+60*x[62]+61*x[63]+62*x[64]+63*x[65]+64*x[66]+65*x[67]+66*x[68]+67*x[69]+68*x[70]+69*x[71]+70*x[72]+71*x[73])+x[1] == 0.0)
@NLconstraint(m, e2, x[3]*x[3]+x[4]*x[4]+x[5]*x[5]+x[6]*x[6]+x[7]*x[7]+x[8]*x[8]+x[9]*x[9]+x[10]*x[10]+x[11]*x[11]+x[12]*x[12]+x[13]*x[13]+x[14]*x[14]+x[15]*x[15]+x[16]*x[16]+x[17]*x[17]+x[18]*x[18]+x[19]*x[19]+x[20]*x[20]+x[21]*x[21]+x[22]*x[22]+x[23]*x[23]+x[24]*x[24]+x[25]*x[25]+x[26]*x[26]+x[27]*x[27]+x[28]*x[28]+x[29]*x[29]+x[30]*x[30]+x[31]*x[31]+x[32]*x[32]+x[33]*x[33]+x[34]*x[34]+x[35]*x[35]+x[36]*x[36]+x[37]*x[37]+x[38]*x[38]+x[39]*x[39]+x[40]*x[40]+x[41]*x[41]+x[42]*x[42]+x[43]*x[43]+x[44]*x[44]+x[45]*x[45]+x[46]*x[46]+x[47]*x[47]+x[48]*x[48]+x[49]*x[49]+x[50]*x[50]+x[51]*x[51]+x[52]*x[52]+x[53]*x[53]+x[54]*x[54]+x[55]*x[55]+x[56]*x[56]+x[57]*x[57]+x[58]*x[58]+x[59]*x[59]+x[60]*x[60]+x[61]*x[61]+x[62]*x[62]+x[63]*x[63]+x[64]*x[64]+x[65]*x[65]+x[66]*x[66]+x[67]*x[67]+x[68]*x[68]+x[69]*x[69]+x[70]*x[70]+x[71]*x[71]+x[72]*x[72]+x[73]*x[73]-0.002918242*x[3]-0.00370885*x[4]-0.004711514*x[5]-0.00598179*x[6]-0.007588974*x[7]-0.00961898*x[8]-0.012177506*x[9]-0.015393232*x[10]-0.019420664*x[11]-0.024441762*x[12]-0.030665096*x[13]-0.03832034*x[14]-0.047644912*x[15]-0.058858124*x[16]-0.07211678*x[17]-0.087445196*x[18]-0.104633596*x[19]-0.131041*x[20]-0.141757122*x[21]-0.158837432*x[22]-0.171900048*x[23]-0.17800259*x[24]-0.174268384*x[25]-0.158884828*x[26]-0.132343476*x[27]-0.098304176*x[28]-0.06315968*x[29]-0.033777994*x[30]-0.014329496*x[31]-0.00453989*x[32]-0.00099627*x[33]-0.000137854*x[34]-1.0694e-5*x[35]-4.02e-7*x[36]-6e-9*x[37] <= -0.625398479104)
@constraint(m, e3, x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10]+x[11]+x[12]+x[13]+x[14]+x[15]+x[16]+x[17]+x[18]+x[19]+x[20]+x[21]+x[22]+x[23]+x[24]+x[25]+x[26]+x[27]+x[28]+x[29]+x[30]+x[31]+x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]+x[41]+x[42]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48]+x[49]+x[50]+x[51]+x[52]+x[53]+x[54]+x[55]+x[56]+x[57]+x[58]+x[59]+x[60]+x[61]+x[62]+x[63]+x[64]+x[65]+x[66]+x[67]+x[68]+x[69]+x[70]+x[71]+x[72]+x[73] == 1.0)
@constraint(m, e4, -x[2]+x[89] == 0.0)
@constraint(m, e5, -x[2]+x[90] == 0.0)
@constraint(m, e6, -x[2]+x[91] == 0.0)
@constraint(m, e7, -x[2]+x[92] == 0.0)
@constraint(m, e8, -x[2]+x[93] == 0.0)
@constraint(m, e9, x[74] >= 0.000459)
@constraint(m, e10, x[75] >= 0.000857)
@constraint(m, e11, x[76] >= 0.001364)
@constraint(m, e12, x[77] >= 0.002008)
@constraint(m, e13, x[78] >= 0.002828)
@constraint(m, e14, x[79] >= 0.00387)
@constraint(m, e15, x[80] >= 0.005196)
@constraint(m, e16, x[81] >= 0.006881)
@constraint(m, e17, -x[2]+x[94] == 0.0)
@constraint(m, e18, -x[2]+x[95] == 0.0)
@constraint(m, e19, -x[2]+x[96] == 0.0)
@constraint(m, e20, -x[2]+x[97] == 0.0)
@constraint(m, e21, -x[2]+x[98] == 0.0)
@constraint(m, e22, -x[2]+x[99] == 0.0)
@constraint(m, e23, -x[2]+x[100] == 0.0)
@constraint(m, e24, -x[2]+x[101] == 0.0)
@constraint(m, e25, -x[2]+x[102] == 0.0)
@constraint(m, e26, -x[2]+x[103] == 0.0)
@constraint(m, e27, -x[2]+x[104] == 0.0)
@constraint(m, e28, -x[2]+x[105] == 0.0)
@constraint(m, e29, -x[2]+x[106] == 0.0)
@constraint(m, e30, -x[2]+x[107] == 0.0)
@constraint(m, e31, -x[2]+x[108] == 0.0)
@constraint(m, e32, -x[2]+x[109] == 0.0)
@constraint(m, e33, -x[2]+x[110] == 0.0)
@constraint(m, e34, -x[2]+x[111] == 0.0)
@constraint(m, e35, -x[2]+x[112] == 0.0)
@constraint(m, e36, -x[2]+x[113] == 0.0)
@constraint(m, e37, -x[2]+x[114] == 0.0)
@constraint(m, e38, -x[2]+x[115] == 0.0)
@constraint(m, e39, -x[2]+x[116] == 0.0)
@constraint(m, e40, -x[2]+x[117] == 0.0)
@constraint(m, e41, -x[2]+x[118] == 0.0)
@constraint(m, e42, -x[2]+x[119] == 0.0)
@constraint(m, e43, -x[2]+x[120] == 0.0)
@constraint(m, e44, -x[2]+x[121] == 0.0)
@constraint(m, e45, -x[2]+x[122] == 0.0)
@constraint(m, e46, -x[2]+x[123] == 0.0)
@constraint(m, e47, -x[2]+x[124] == 0.0)
@constraint(m, e48, -x[2]+x[125] == 0.0)
@constraint(m, e49, -x[2]+x[126] == 0.0)
@constraint(m, e50, -x[2]+x[127] == 0.0)
@constraint(m, e51, -x[2]+x[128] == 0.0)
@constraint(m, e52, -x[2]+x[129] == 0.0)
@constraint(m, e53, -x[2]+x[130] == 0.0)
@constraint(m, e54, -x[2]+x[131] == 0.0)
@constraint(m, e55, -x[2]+x[132] == 0.0)
@constraint(m, e56, -x[2]+x[133] == 0.0)
@constraint(m, e57, -x[2]+x[134] == 0.0)
@constraint(m, e58, -x[2]+x[135] == 0.0)
@constraint(m, e59, -x[2]+x[136] == 0.0)
@constraint(m, e60, -x[2]+x[137] == 0.0)
@constraint(m, e61, -x[2]+x[138] == 0.0)
@constraint(m, e62, -x[2]+x[139] == 0.0)
@constraint(m, e63, -x[2]+x[140] == 0.0)
@constraint(m, e64, -x[2]+x[141] == 0.0)
@constraint(m, e65, -x[2]+x[142] == 0.0)
@constraint(m, e66, -x[2]+x[143] == 0.0)
@constraint(m, e67, x[144] == 1.0)
@constraint(m, e68, x[74] <= 0.002459)
@constraint(m, e69, x[75] <= 0.002857)
@constraint(m, e70, x[76] <= 0.003364)
@constraint(m, e71, x[77] <= 0.004008)
@constraint(m, e72, x[78] <= 0.004828)
@constraint(m, e73, x[79] <= 0.00587)
@constraint(m, e74, x[80] <= 0.007196)
@constraint(m, e75, x[81] <= 0.008881)
@constraint(m, e76, x[74]-x[75] <= 0.0)
@constraint(m, e77, x[75]-x[76] <= 0.0)
@constraint(m, e78, x[76]-x[77] <= 0.0)
@constraint(m, e79, x[77]-x[78] <= 0.0)
@constraint(m, e80, x[78]-x[79] <= 0.0)
@constraint(m, e81, x[79]-x[80] <= 0.0)
@constraint(m, e82, x[80]-x[81] <= 0.0)
@constraint(m, e83, x[81]-x[82] <= 0.0)
@constraint(m, e84, x[82]-x[83] <= 0.0)
@constraint(m, e85, x[83]-x[84] <= 0.0)
@constraint(m, e86, x[84]-x[85] <= 0.0)
@constraint(m, e87, x[85]-x[86] <= 0.0)
@constraint(m, e88, x[86]-x[87] <= 0.0)
@constraint(m, e89, x[87]-x[88] <= 0.0)
@constraint(m, e90, x[88]-x[89] <= 0.0)
@constraint(m, e91, x[89]-x[90] <= 0.0)
@constraint(m, e92, x[90]-x[91] <= 0.0)
@constraint(m, e93, x[91]-x[92] <= 0.0)
@constraint(m, e94, x[92]-x[93] <= 0.0)
@constraint(m, e95, x[93]-x[94] <= 0.0)
@constraint(m, e96, x[94]-x[95] <= 0.0)
@constraint(m, e97, x[95]-x[96] <= 0.0)
@constraint(m, e98, x[96]-x[97] <= 0.0)
@constraint(m, e99, x[97]-x[98] <= 0.0)
@constraint(m, e100, x[98]-x[99] <= 0.0)
@constraint(m, e101, x[99]-x[100] <= 0.0)
@constraint(m, e102, x[100]-x[101] <= 0.0)
@constraint(m, e103, x[101]-x[102] <= 0.0)
@constraint(m, e104, x[102]-x[103] <= 0.0)
@constraint(m, e105, x[103]-x[104] <= 0.0)
@constraint(m, e106, x[104]-x[105] <= 0.0)
@constraint(m, e107, x[105]-x[106] <= 0.0)
@constraint(m, e108, x[106]-x[107] <= 0.0)
@constraint(m, e109, x[107]-x[108] <= 0.0)
@constraint(m, e110, x[108]-x[109] <= 0.0)
@constraint(m, e111, x[109]-x[110] <= 0.0)
@constraint(m, e112, x[110]-x[111] <= 0.0)
@constraint(m, e113, x[111]-x[112] <= 0.0)
@constraint(m, e114, x[112]-x[113] <= 0.0)
@constraint(m, e115, x[113]-x[114] <= 0.0)
@constraint(m, e116, x[114]-x[115] <= 0.0)
@constraint(m, e117, x[115]-x[116] <= 0.0)
@constraint(m, e118, x[116]-x[117] <= 0.0)
@constraint(m, e119, x[117]-x[118] <= 0.0)
@constraint(m, e120, x[118]-x[119] <= 0.0)
@constraint(m, e121, x[119]-x[120] <= 0.0)
@constraint(m, e122, x[120]-x[121] <= 0.0)
@constraint(m, e123, x[121]-x[122] <= 0.0)
@constraint(m, e124, x[122]-x[123] <= 0.0)
@constraint(m, e125, x[123]-x[124] <= 0.0)
@constraint(m, e126, x[124]-x[125] <= 0.0)
@constraint(m, e127, x[125]-x[126] <= 0.0)
@constraint(m, e128, x[126]-x[127] <= 0.0)
@constraint(m, e129, x[127]-x[128] <= 0.0)
@constraint(m, e130, x[128]-x[129] <= 0.0)
@constraint(m, e131, x[129]-x[130] <= 0.0)
@constraint(m, e132, x[130]-x[131] <= 0.0)
@constraint(m, e133, x[131]-x[132] <= 0.0)
@constraint(m, e134, x[132]-x[133] <= 0.0)
@constraint(m, e135, x[133]-x[134] <= 0.0)
@constraint(m, e136, x[134]-x[135] <= 0.0)
@constraint(m, e137, x[135]-x[136] <= 0.0)
@constraint(m, e138, x[136]-x[137] <= 0.0)
@constraint(m, e139, x[137]-x[138] <= 0.0)
@constraint(m, e140, x[138]-x[139] <= 0.0)
@constraint(m, e141, x[139]-x[140] <= 0.0)
@constraint(m, e142, x[140]-x[141] <= 0.0)
@constraint(m, e143, x[141]-x[142] <= 0.0)
@constraint(m, e144, x[142]-x[143] <= 0.0)
@constraint(m, e145, x[143]-x[144] <= 0.0)
@constraint(m, e146, x[3]-x[74] == 0.0)
@NLconstraint(m, e147, -x[75]*(1-x[3])+x[4] == 0.0)
@NLconstraint(m, e148, -x[76]*(1-x[3]-x[4])+x[5] == 0.0)
@NLconstraint(m, e149, -x[77]*(1-x[3]-x[4]-x[5])+x[6] == 0.0)
@NLconstraint(m, e150, -x[78]*(1-x[3]-x[4]-x[5]-x[6])+x[7] == 0.0)
@NLconstraint(m, e151, -x[79]*(1-x[3]-x[4]-x[5]-x[6]-x[7])+x[8] == 0.0)
@NLconstraint(m, e152, -x[80]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8])+x[9] == 0.0)
@NLconstraint(m, e153, -x[81]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9])+x[10] == 0.0)
@NLconstraint(m, e154, -x[82]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10])+x[11] == 0.0)
@NLconstraint(m, e155, -x[83]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11])+x[12] == 0.0)
@NLconstraint(m, e156, -x[84]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12])+x[13] == 0.0)
@NLconstraint(m, e157, -x[85]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13])+x[14] == 0.0)
@NLconstraint(m, e158, -x[86]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14])+x[15] == 0.0)
@NLconstraint(m, e159, -x[87]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15])+x[16] == 0.0)
@NLconstraint(m, e160, -x[88]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16])+x[17] == 0.0)
@NLconstraint(m, e161, -x[89]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17])+x[18] == 0.0)
@NLconstraint(m, e162, -x[90]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18])+x[19] == 0.0)
@NLconstraint(m, e163, -x[91]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19])+x[20] == 0.0)
@NLconstraint(m, e164, -x[92]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20])+x[21] == 0.0)
@NLconstraint(m, e165, -x[93]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21])+x[22] == 0.0)
@NLconstraint(m, e166, -x[94]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22])+x[23] == 0.0)
@NLconstraint(m, e167, -x[95]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23])+x[24] == 0.0)
@NLconstraint(m, e168, -x[96]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24])+x[25] == 0.0)
@NLconstraint(m, e169, -x[97]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25])+x[26] == 0.0)
@NLconstraint(m, e170, -x[98]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26])+x[27] == 0.0)
@NLconstraint(m, e171, -x[99]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27])+x[28] == 0.0)
@NLconstraint(m, e172, -x[100]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28])+x[29] == 0.0)
@NLconstraint(m, e173, -x[101]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29])+x[30] == 0.0)
@NLconstraint(m, e174, -x[102]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30])+x[31] == 0.0)
@NLconstraint(m, e175, -x[103]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31])+x[32] == 0.0)
@NLconstraint(m, e176, -x[104]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32])+x[33] == 0.0)
@NLconstraint(m, e177, -x[105]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33])+x[34] == 0.0)
@NLconstraint(m, e178, -x[106]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34])+x[35] == 0.0)
@NLconstraint(m, e179, -x[107]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35])+x[36] == 0.0)
@NLconstraint(m, e180, -x[108]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36])+x[37] == 0.0)
@NLconstraint(m, e181, -x[109]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37])+x[38] == 0.0)
@NLconstraint(m, e182, -x[110]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38])+x[39] == 0.0)
@NLconstraint(m, e183, -x[111]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39])+x[40] == 0.0)
@NLconstraint(m, e184, -x[112]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40])+x[41] == 0.0)
@NLconstraint(m, e185, -x[113]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41])+x[42] == 0.0)
@NLconstraint(m, e186, -x[114]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42])+x[43] == 0.0)
@NLconstraint(m, e187, -x[115]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43])+x[44] == 0.0)
@NLconstraint(m, e188, -x[116]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44])+x[45] == 0.0)
@NLconstraint(m, e189, -x[117]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45])+x[46] == 0.0)
@NLconstraint(m, e190, -x[118]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46])+x[47] == 0.0)
@NLconstraint(m, e191, -x[119]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47])+x[48] == 0.0)
@NLconstraint(m, e192, -x[120]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48])+x[49] == 0.0)
@NLconstraint(m, e193, -x[121]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49])+x[50] == 0.0)
@NLconstraint(m, e194, -x[122]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50])+x[51] == 0.0)
@NLconstraint(m, e195, -x[123]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51])+x[52] == 0.0)
@NLconstraint(m, e196, -x[124]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52])+x[53] == 0.0)
@NLconstraint(m, e197, -x[125]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53])+x[54] == 0.0)
@NLconstraint(m, e198, -x[126]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54])+x[55] == 0.0)
@NLconstraint(m, e199, -x[127]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55])+x[56] == 0.0)
@NLconstraint(m, e200, -x[128]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56])+x[57] == 0.0)
@NLconstraint(m, e201, -x[129]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57])+x[58] == 0.0)
@NLconstraint(m, e202, -x[130]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58])+x[59] == 0.0)
@NLconstraint(m, e203, -x[131]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59])+x[60] == 0.0)
@NLconstraint(m, e204, -x[132]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60])+x[61] == 0.0)
@NLconstraint(m, e205, -x[133]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61])+x[62] == 0.0)
@NLconstraint(m, e206, -x[134]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62])+x[63] == 0.0)
@NLconstraint(m, e207, -x[135]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63])+x[64] == 0.0)
@NLconstraint(m, e208, -x[136]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64])+x[65] == 0.0)
@NLconstraint(m, e209, -x[137]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65])+x[66] == 0.0)
@NLconstraint(m, e210, -x[138]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66])+x[67] == 0.0)
@NLconstraint(m, e211, -x[139]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66]-x[67])+x[68] == 0.0)
@NLconstraint(m, e212, -x[140]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66]-x[67]-x[68])+x[69] == 0.0)
@NLconstraint(m, e213, -x[141]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66]-x[67]-x[68]-x[69])+x[70] == 0.0)
@NLconstraint(m, e214, -x[142]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66]-x[67]-x[68]-x[69]-x[70])+x[71] == 0.0)
@NLconstraint(m, e215, -x[143]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66]-x[67]-x[68]-x[69]-x[70]-x[71])+x[72] == 0.0)
@NLconstraint(m, e216, -x[144]*(1-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66]-x[67]-x[68]-x[69]-x[70]-x[71]-x[72])+x[73] == 0.0)
@constraint(m, e217, x[10]-x[11] <= 0.0)
@constraint(m, e218, x[11]-x[12] <= 0.0)
@constraint(m, e219, x[12]-x[13] <= 0.0)
@constraint(m, e220, x[13]-x[14] <= 0.0)
@constraint(m, e221, x[14]-x[15] <= 0.0)
@constraint(m, e222, x[15]-x[16] <= 0.0)
@constraint(m, e223, x[16]-x[17] <= 0.0)
@constraint(m, e224, x[17]-x[18] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
