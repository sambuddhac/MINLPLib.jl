using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157]
@variable(m, x[x_Idx])
setlowerbound(x[117], 0.0)
setlowerbound(x[115], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[116], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[120], 0.0)
setlowerbound(x[1], 2.33333)
setupperbound(x[1], 6.41667)
setlowerbound(x[2], 4.92222)
setupperbound(x[2], 13.5361)
setlowerbound(x[3], 13.1333)
setupperbound(x[3], 36.1167)
setlowerbound(x[4], 9.55556)
setupperbound(x[4], 26.2778)
setlowerbound(x[5], 6.06667)
setupperbound(x[5], 16.6833)
setupperbound(x[6], 6400.0)
setlowerbound(x[7], 1600.0)
setupperbound(x[7], 6400.0)
setupperbound(x[8], 6400.0)
setlowerbound(x[9], 1600.0)
setupperbound(x[9], 6400.0)
setlowerbound(x[10], 1600.0)
setupperbound(x[10], 6400.0)
setlowerbound(x[11], 1600.0)
setupperbound(x[11], 6400.0)
setupperbound(x[12], 6400.0)
setlowerbound(x[13], 1600.0)
setupperbound(x[13], 6400.0)
setlowerbound(x[14], 1600.0)
setupperbound(x[14], 6400.0)
setupperbound(x[15], 6400.0)
setlowerbound(x[16], 1600.0)
setupperbound(x[16], 6400.0)
setupperbound(x[17], 6400.0)
setlowerbound(x[18], 1600.0)
setupperbound(x[18], 6400.0)
setlowerbound(x[19], 1600.0)
setupperbound(x[19], 6400.0)
setupperbound(x[20], 6400.0)
setlowerbound(x[21], 1600.0)
setupperbound(x[21], 6400.0)
setlowerbound(x[22], 1600.0)
setupperbound(x[22], 6400.0)
setlowerbound(x[23], 1600.0)
setupperbound(x[23], 6400.0)
setupperbound(x[24], 6400.0)
setlowerbound(x[25], 1600.0)
setupperbound(x[25], 6400.0)
setlowerbound(x[26], 1600.0)
setupperbound(x[26], 4489.0)
setlowerbound(x[27], 1600.0)
setupperbound(x[27], 6400.0)
setlowerbound(x[28], 1600.0)
setupperbound(x[28], 6400.0)
setupperbound(x[29], 6400.0)
setlowerbound(x[30], 1600.0)
setupperbound(x[30], 6400.0)
setlowerbound(x[31], 1600.0)
setupperbound(x[31], 6400.0)
setupperbound(x[32], 6400.0)
setlowerbound(x[33], 1600.0)
setupperbound(x[33], 6400.0)
setupperbound(x[34], 6400.0)
setlowerbound(x[35], 1600.0)
setupperbound(x[35], 6400.0)
setlowerbound(x[36], 1600.0)
setupperbound(x[36], 6400.0)
setupperbound(x[37], 6400.0)
setlowerbound(x[38], 1600.0)
setupperbound(x[38], 6400.0)
setupperbound(x[39], 6400.0)
setlowerbound(x[40], 1600.0)
setupperbound(x[40], 6400.0)
setlowerbound(x[41], 1600.0)
setupperbound(x[41], 6400.0)
setupperbound(x[42], 4489.0)
setlowerbound(x[43], 1600.0)
setupperbound(x[43], 6400.0)
setlowerbound(x[44], 1600.0)
setupperbound(x[44], 6400.0)
setlowerbound(x[45], 1600.0)
setupperbound(x[45], 6400.0)
setlowerbound(x[46], 1600.0)
setupperbound(x[46], 6400.0)
setlowerbound(x[47], 1600.0)
setupperbound(x[47], 6400.0)
setlowerbound(x[48], 1600.0)
setupperbound(x[48], 6400.0)
setlowerbound(x[49], 1600.0)
setupperbound(x[49], 4489.0)
setlowerbound(x[50], 1600.0)
setupperbound(x[50], 6400.0)
setlowerbound(x[51], 1600.0)
setupperbound(x[51], 6400.0)
setlowerbound(x[52], 1600.0)
setupperbound(x[52], 6400.0)
setlowerbound(x[53], 1600.0)
setupperbound(x[53], 6400.0)
setlowerbound(x[54], -361.167)
setupperbound(x[54], 361.167)
setlowerbound(x[55], -361.167)
setupperbound(x[55], 361.167)
setlowerbound(x[56], -361.167)
setupperbound(x[56], 361.167)
setlowerbound(x[57], -361.167)
setupperbound(x[57], 361.167)
setlowerbound(x[58], -361.167)
setupperbound(x[58], 361.167)
setlowerbound(x[59], -361.167)
setupperbound(x[59], 361.167)
setlowerbound(x[60], -361.167)
setupperbound(x[60], 361.167)
setlowerbound(x[61], -361.167)
setupperbound(x[61], 361.167)
setlowerbound(x[62], -361.167)
setupperbound(x[62], 361.167)
setlowerbound(x[63], -361.167)
setupperbound(x[63], 361.167)
setlowerbound(x[64], -361.167)
setupperbound(x[64], 361.167)
setlowerbound(x[65], -361.167)
setupperbound(x[65], 361.167)
setlowerbound(x[66], -361.167)
setupperbound(x[66], 361.167)
setlowerbound(x[67], -361.167)
setupperbound(x[67], 361.167)
setlowerbound(x[68], -361.167)
setupperbound(x[68], 361.167)
setlowerbound(x[69], -361.167)
setupperbound(x[69], 361.167)
setlowerbound(x[70], -361.167)
setupperbound(x[70], 361.167)
setlowerbound(x[71], -361.167)
setupperbound(x[71], 361.167)
setlowerbound(x[72], -361.167)
setupperbound(x[72], 361.167)
setlowerbound(x[73], -361.167)
setupperbound(x[73], 361.167)
setlowerbound(x[74], -361.167)
setupperbound(x[74], 361.167)
setlowerbound(x[75], -361.167)
setupperbound(x[75], 361.167)
setlowerbound(x[76], -361.167)
setupperbound(x[76], 361.167)
setlowerbound(x[77], -361.167)
setupperbound(x[77], 361.167)
setlowerbound(x[78], -361.167)
setupperbound(x[78], 361.167)
setlowerbound(x[79], -361.167)
setupperbound(x[79], 361.167)
setlowerbound(x[80], -361.167)
setupperbound(x[80], 361.167)
setlowerbound(x[81], -361.167)
setupperbound(x[81], 361.167)
setlowerbound(x[82], -361.167)
setupperbound(x[82], 361.167)
setlowerbound(x[83], -361.167)
setupperbound(x[83], 361.167)
setlowerbound(x[84], -361.167)
setupperbound(x[84], 361.167)
setlowerbound(x[85], -361.167)
setupperbound(x[85], 361.167)
setlowerbound(x[86], -361.167)
setupperbound(x[86], 361.167)
setlowerbound(x[87], -361.167)
setupperbound(x[87], 361.167)
setlowerbound(x[88], -361.167)
setupperbound(x[88], 361.167)
setlowerbound(x[89], -361.167)
setupperbound(x[89], 361.167)
setlowerbound(x[90], -361.167)
setupperbound(x[90], 361.167)
setlowerbound(x[91], -361.167)
setupperbound(x[91], 361.167)
setlowerbound(x[92], -361.167)
setupperbound(x[92], 361.167)
setlowerbound(x[93], -361.167)
setupperbound(x[93], 361.167)
setlowerbound(x[94], -361.167)
setupperbound(x[94], 361.167)
setlowerbound(x[95], -361.167)
setupperbound(x[95], 361.167)
setlowerbound(x[96], -361.167)
setupperbound(x[96], 361.167)
setlowerbound(x[97], -361.167)
setupperbound(x[97], 361.167)
setlowerbound(x[98], -361.167)
setupperbound(x[98], 361.167)
setlowerbound(x[99], -361.167)
setupperbound(x[99], 361.167)
setlowerbound(x[100], -361.167)
setupperbound(x[100], 361.167)
setlowerbound(x[101], -361.167)
setupperbound(x[101], 361.167)
setlowerbound(x[102], -361.167)
setupperbound(x[102], 361.167)
setlowerbound(x[103], -361.167)
setupperbound(x[103], 361.167)
setlowerbound(x[104], -361.167)
setupperbound(x[104], 361.167)
setlowerbound(x[105], -361.167)
setupperbound(x[105], 361.167)
setlowerbound(x[106], -361.167)
setupperbound(x[106], 361.167)
setlowerbound(x[107], -361.167)
setupperbound(x[107], 361.167)
setlowerbound(x[108], -361.167)
setupperbound(x[108], 361.167)
setlowerbound(x[109], -361.167)
setupperbound(x[109], 361.167)
setlowerbound(x[110], -361.167)
setupperbound(x[110], 361.167)
setlowerbound(x[111], -361.167)
setupperbound(x[111], 361.167)
setlowerbound(x[112], -361.167)
setupperbound(x[112], 361.167)
setlowerbound(x[113], -361.167)
setupperbound(x[113], 361.167)
setupperbound(x[117], 4.8)
setupperbound(x[118], 24.5)
setupperbound(x[119], 13.2)


# ----- Constraints ----- #
@constraint(m, e1, x[54]-x[69]-x[109] == 0.0)
@constraint(m, e2, -x[54]+x[127] == 0.0)
@constraint(m, e3, x[55]+x[108]-x[117] == 0.0)
@constraint(m, e4, -x[55]+x[125] == 0.0)
@constraint(m, e5, x[56]+x[126] == 0.0)
@constraint(m, e6, -x[56]+x[57]+x[128] == 0.0)
@constraint(m, e7, -x[57]-x[88]+x[89]-x[100]+x[101] == 0.0)
@constraint(m, e8, x[58]+x[62]-x[118]+x[141] == 0.0)
@constraint(m, e9, -x[58]+x[59]+x[142] == 0.0)
@constraint(m, e10, -x[59]+x[60]-x[61] == 0.0)
@constraint(m, e11, -x[60]+x[129] == 0.0)
@constraint(m, e12, x[61]-x[63]+x[64] == 0.0)
@constraint(m, e13, -x[62]+x[63]+x[143] == 0.0)
@constraint(m, e14, -x[64]+x[65]+x[144] == 0.0)
@constraint(m, e15, -x[65]-x[68]+x[69] == 0.0)
@constraint(m, e16, x[66]-x[89]-x[101]-x[107]+x[130] == 0.0)
@constraint(m, e17, -x[66]+x[67]+x[145] == 0.0)
@constraint(m, e18, -x[67]+x[68]+x[146] == 0.0)
@constraint(m, e19, x[70]+x[80]+x[93] == 0.0)
@constraint(m, e20, -x[70]+x[71]+x[147] == 0.0)
@constraint(m, e21, -x[71]+x[72]-x[114]+x[148] == 0.0)
@constraint(m, e22, -x[72]+x[150]+x[151] == 0.0)
@constraint(m, e23, x[73]-x[119]+x[156]+x[157] == 0.0)
@constraint(m, e24, -x[73]+x[74]-x[86]-x[99] == 0.0)
@constraint(m, e25, -x[74]+x[75]+x[153] == 0.0)
@constraint(m, e26, -x[75]+x[76]+x[154] == 0.0)
@constraint(m, e27, -x[76]-x[77]+x[87] == 0.0)
@constraint(m, e28, x[77]-x[78]+x[79]+x[92]+x[139] == 0.0)
@constraint(m, e29, x[78]-x[105]+x[106] == 0.0)
@constraint(m, e30, -x[79]-x[83]+x[84]-x[92]-x[96]+x[97]+x[138] == 0.0)
@constraint(m, e31, -x[80]+x[81]-x[93]+x[94]+x[149] == 0.0)
@constraint(m, e32, -x[81]+x[82]-x[94]+x[95] == 0.0)
@constraint(m, e33, -x[82]+x[83]-x[95]+x[96]+x[152] == 0.0)
@constraint(m, e34, -x[84]+x[85]-x[87]-x[97]+x[98] == 0.0)
@constraint(m, e35, -x[85]+x[86]-x[98]+x[99]+x[155] == 0.0)
@constraint(m, e36, x[88]-x[91]+x[100]+x[131] == 0.0)
@constraint(m, e37, x[90]+x[102]-x[120] == 0.0)
@constraint(m, e38, -x[90]+x[91]+x[122] == 0.0)
@constraint(m, e39, -x[102]+x[103]+x[134] == 0.0)
@constraint(m, e40, -x[103]-x[104]+x[105]+x[135] == 0.0)
@constraint(m, e41, x[104]-x[116]+x[137] == 0.0)
@constraint(m, e42, -x[106]+x[107]+x[132] == 0.0)
@constraint(m, e43, -x[108]+x[109]+x[140] == 0.0)
@constraint(m, e44, x[110]+x[112]-x[115]+x[121] == 0.0)
@constraint(m, e45, -x[110]+x[111]+x[123] == 0.0)
@constraint(m, e46, -x[111]+x[124] == 0.0)
@constraint(m, e47, -x[112]+x[113]+x[133] == 0.0)
@constraint(m, e48, -x[113]+x[136] == 0.0)
@NLconstraint(m, e49, abs(x[54])*x[54]-0.697133*x[6]+0.697133*x[7] == 0.0)
@NLconstraint(m, e50, abs(x[55])*x[55]-0.00265927*x[8]+0.00265927*x[9] == 0.0)
@NLconstraint(m, e51, abs(x[56])*x[56]-0.172371*x[10]+0.172371*x[11] == 0.0)
@NLconstraint(m, e52, abs(x[57])*x[57]-0.258556*x[11]+0.258556*x[12] == 0.0)
@NLconstraint(m, e53, abs(x[58])*x[58]-0.19002*x[13]+0.19002*x[14] == 0.0)
@NLconstraint(m, e54, abs(x[59])*x[59]-4.18044*x[14]+4.18044*x[15] == 0.0)
@NLconstraint(m, e55, abs(x[60])*x[60]-0.321572*x[15]+0.321572*x[16] == 0.0)
@NLconstraint(m, e56, abs(x[61])*x[61]+0.0432263*x[15]-0.0432263*x[17] == 0.0)
@NLconstraint(m, e57, abs(x[62])*x[62]-0.00611442*x[13]+0.00611442*x[18] == 0.0)
@NLconstraint(m, e58, abs(x[63])*x[63]+0.0116174*x[17]-0.0116174*x[18] == 0.0)
@NLconstraint(m, e59, abs(x[64])*x[64]-0.259358*x[17]+0.259358*x[19] == 0.0)
@NLconstraint(m, e60, abs(x[65])*x[65]-0.259358*x[19]+0.259358*x[20] == 0.0)
@NLconstraint(m, e61, abs(x[66])*x[66]-0.0285181*x[21]+0.0285181*x[22] == 0.0)
@NLconstraint(m, e62, abs(x[67])*x[67]-0.0399253*x[22]+0.0399253*x[23] == 0.0)
@NLconstraint(m, e63, abs(x[68])*x[68]+0.0285181*x[20]-0.0285181*x[23] == 0.0)
@NLconstraint(m, e64, abs(x[69])*x[69]+0.0181479*x[6]-0.0181479*x[20] == 0.0)
@NLconstraint(m, e65, abs(x[70])*x[70]-0.0864525*x[24]+0.0864525*x[25] == 0.0)
@NLconstraint(m, e66, abs(x[71])*x[71]-0.0741022*x[25]+0.0741022*x[26] == 0.0)
@NLconstraint(m, e67, abs(x[72])*x[72]-0.19002*x[26]+0.19002*x[27] == 0.0)
@NLconstraint(m, e68, abs(x[73])*x[73]-0.023578*x[28]+0.023578*x[29] == 0.0)
@NLconstraint(m, e69, abs(x[74])*x[74]-4.18044*x[29]+4.18044*x[30] == 0.0)
@NLconstraint(m, e70, abs(x[75])*x[75]-0.522555*x[30]+0.522555*x[31] == 0.0)
@NLconstraint(m, e71, abs(x[76])*x[76]-1.39348*x[31]+1.39348*x[32] == 0.0)
@NLconstraint(m, e72, abs(x[77])*x[77]+0.696739*x[32]-0.696739*x[33] == 0.0)
@NLconstraint(m, e73, abs(x[78])*x[78]+0.418044*x[33]-0.418044*x[34] == 0.0)
@NLconstraint(m, e74, abs(x[79])*x[79]-0.000633373*x[33]+0.000633373*x[35] == 0.0)
@NLconstraint(m, e75, abs(x[80])*x[80]-0.0332711*x[24]+0.0332711*x[36] == 0.0)
@NLconstraint(m, e76, abs(x[81])*x[81]-0.0998133*x[36]+0.0998133*x[37] == 0.0)
@NLconstraint(m, e77, abs(x[82])*x[82]-0.0332711*x[37]+0.0332711*x[38] == 0.0)
@NLconstraint(m, e78, abs(x[83])*x[83]+0.0332711*x[35]-0.0332711*x[38] == 0.0)
@NLconstraint(m, e79, abs(x[84])*x[84]-0.00954957*x[35]+0.00954957*x[39] == 0.0)
@NLconstraint(m, e80, abs(x[85])*x[85]-0.066847*x[39]+0.066847*x[40] == 0.0)
@NLconstraint(m, e81, abs(x[86])*x[86]+0.006077*x[29]-0.006077*x[40] == 0.0)
@NLconstraint(m, e82, abs(x[87])*x[87]-0.41024*x[32]+0.41024*x[39] == 0.0)
@NLconstraint(m, e83, abs(x[88])*x[88]+0.0998133*x[12]-0.0998133*x[41] == 0.0)
@NLconstraint(m, e84, abs(x[89])*x[89]-0.0499067*x[12]+0.0499067*x[21] == 0.0)
@NLconstraint(m, e85, abs(x[90])*x[90]-0.34837*x[42]+0.34837*x[43] == 0.0)
@NLconstraint(m, e86, abs(x[91])*x[91]+0.696739*x[41]-0.696739*x[43] == 0.0)
@NLconstraint(m, e87, abs(x[92])*x[92]-0.0199627*x[33]+0.0199627*x[35] == 0.0)
@NLconstraint(m, e88, abs(x[93])*x[93]-0.0193623*x[24]+0.0193623*x[36] == 0.0)
@NLconstraint(m, e89, abs(x[94])*x[94]-0.058087*x[36]+0.058087*x[37] == 0.0)
@NLconstraint(m, e90, abs(x[95])*x[95]-0.0193623*x[37]+0.0193623*x[38] == 0.0)
@NLconstraint(m, e91, abs(x[96])*x[96]+0.0193623*x[35]-0.0193623*x[38] == 0.0)
@NLconstraint(m, e92, abs(x[97])*x[97]-0.00954957*x[35]+0.00954957*x[39] == 0.0)
@NLconstraint(m, e93, abs(x[98])*x[98]-0.066847*x[39]+0.066847*x[40] == 0.0)
@NLconstraint(m, e94, abs(x[99])*x[99]+0.006077*x[29]-0.006077*x[40] == 0.0)
@NLconstraint(m, e95, abs(x[100])*x[100]+2.09022*x[12]-2.09022*x[41] == 0.0)
@NLconstraint(m, e96, abs(x[101])*x[101]-0.696739*x[12]+0.696739*x[21] == 0.0)
@NLconstraint(m, e97, abs(x[102])*x[102]-0.0143027*x[42]+0.0143027*x[44] == 0.0)
@NLconstraint(m, e98, abs(x[103])*x[103]-0.109654*x[44]+0.109654*x[45] == 0.0)
@NLconstraint(m, e99, abs(x[104])*x[104]+0.522555*x[45]-0.522555*x[46] == 0.0)
@NLconstraint(m, e100, abs(x[105])*x[105]+0.321572*x[34]-0.321572*x[45] == 0.0)
@NLconstraint(m, e101, abs(x[106])*x[106]-0.164096*x[34]+0.164096*x[47] == 0.0)
@NLconstraint(m, e102, abs(x[107])*x[107]+0.136747*x[21]-0.136747*x[47] == 0.0)
@NLconstraint(m, e103, abs(x[108])*x[108]-0.0399253*x[8]+0.0399253*x[48] == 0.0)
@NLconstraint(m, e104, abs(x[109])*x[109]+0.0285181*x[6]-0.0285181*x[48] == 0.0)
@NLconstraint(m, e105, abs(x[110])*x[110]-0.182329*x[49]+0.182329*x[50] == 0.0)
@NLconstraint(m, e106, abs(x[111])*x[111]-0.182329*x[50]+0.182329*x[51] == 0.0)
@NLconstraint(m, e107, abs(x[112])*x[112]-0.0332711*x[49]+0.0332711*x[52] == 0.0)
@NLconstraint(m, e108, abs(x[113])*x[113]-0.00998133*x[52]+0.00998133*x[53] == 0.0)
@constraint(m, e109, -x[121] <= -8.9)
@constraint(m, e110, -x[122]-x[123]-x[124] <= -3.3)
@constraint(m, e111, -x[125]-x[126] <= -5.4)
@constraint(m, e112, -x[127]-x[128]-x[129]-x[130]-x[131] <= -14.5)
@constraint(m, e113, -x[132]-x[133] <= -2.2)
@constraint(m, e114, -x[134]-x[135]-x[136] <= -5.8)
@constraint(m, e115, -x[137] <= -3.5)
@constraint(m, e116, -x[138] <= -1.7)
@constraint(m, e117, -x[139] <= -1.5)
@constraint(m, e118, -x[140] <= -0.8)
@constraint(m, e119, -x[141] <= -1.3)
@constraint(m, e120, -x[142]-x[143] <= -2.3)
@constraint(m, e121, -x[144]-x[145]-x[146] <= -2.2)
@constraint(m, e122, -x[147]-x[148] <= -1.1)
@constraint(m, e123, -x[149] <= -0.7)
@constraint(m, e124, -x[150] <= -1.5)
@constraint(m, e125, -x[151] <= -4.3)
@constraint(m, e126, -x[152] <= -1.5)
@constraint(m, e127, -x[153]-x[154]-x[155] <= -4.3)
@constraint(m, e128, -x[156] <= -1.1)
@constraint(m, e129, -x[157] <= -5.0)
@constraint(m, e130, -x[1]+x[114] <= 0.0)
@constraint(m, e131, -x[2]+x[115] <= 0.0)
@constraint(m, e132, -x[3]+x[116] <= 0.0)
@constraint(m, e133, -x[4]+x[117]+x[118]+x[119] <= 0.0)
@constraint(m, e134, -x[5]+x[120] <= 0.0)
@constraint(m, e135, -x[1]-x[2]-x[3]-x[4]-x[5]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
