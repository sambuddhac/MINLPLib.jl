using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138]
@variable(m, x[x_Idx])
setlowerbound(x[117], 0.0)
setlowerbound(x[85], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[136], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[132], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[110], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[138], 0.0)
setlowerbound(x[113], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[130], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[111], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[131], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[137], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[134], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[128], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[122], 0.0)
setlowerbound(x[129], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[120], 0.0)
setlowerbound(x[121], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[126], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[103], 0.0)
setlowerbound(x[107], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[116], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[98], 0.0)
setlowerbound(x[61], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[97], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setlowerbound(x[123], 0.0)
setlowerbound(x[127], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[135], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[73], 0.0)
setlowerbound(x[125], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[102], 0.0)
setlowerbound(x[133], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[76], 0.0)
setlowerbound(x[20], 10.0)
setupperbound(x[20], 500.0)
setlowerbound(x[21], 10.0)
setupperbound(x[21], 500.0)
setlowerbound(x[22], 10.0)
setupperbound(x[22], 500.0)
setlowerbound(x[23], 10.0)
setupperbound(x[23], 500.0)
setlowerbound(x[24], 10.0)
setupperbound(x[24], 500.0)
setlowerbound(x[25], 10.0)
setupperbound(x[25], 500.0)
setlowerbound(x[26], 10.0)
setupperbound(x[26], 500.0)
setlowerbound(x[27], 10.0)
setupperbound(x[27], 500.0)
setlowerbound(x[28], 10.0)
setupperbound(x[28], 500.0)
setlowerbound(x[29], 10.0)
setupperbound(x[29], 500.0)
setlowerbound(x[30], 10.0)
setupperbound(x[30], 500.0)
setlowerbound(x[31], 10.0)
setupperbound(x[31], 500.0)
setlowerbound(x[32], 10.0)
setupperbound(x[32], 500.0)
setlowerbound(x[33], 10.0)
setupperbound(x[33], 500.0)
setlowerbound(x[34], 10.0)
setupperbound(x[34], 500.0)
setlowerbound(x[35], 10.0)
setupperbound(x[35], 500.0)
setlowerbound(x[36], 10.0)
setupperbound(x[36], 500.0)
setlowerbound(x[37], 10.0)
setupperbound(x[37], 500.0)
setlowerbound(x[38], 10.0)
setupperbound(x[38], 500.0)
setlowerbound(x[39], 10.0)
setupperbound(x[39], 500.0)
setlowerbound(x[40], 10.0)
setupperbound(x[40], 500.0)
setlowerbound(x[41], 10.0)
setupperbound(x[41], 500.0)
setupperbound(x[42], 300.0)
setlowerbound(x[43], 0.0)
setupperbound(x[43], 0.0)
setlowerbound(x[44], 0.0)
setupperbound(x[44], 0.0)
setupperbound(x[45], 300.0)
setupperbound(x[46], 300.0)
setlowerbound(x[47], 0.0)
setupperbound(x[47], 0.0)
setlowerbound(x[48], 0.0)
setupperbound(x[48], 0.0)
setupperbound(x[49], 300.0)
setupperbound(x[50], 300.0)
setlowerbound(x[51], 0.0)
setupperbound(x[51], 0.0)
setlowerbound(x[52], 0.0)
setupperbound(x[52], 0.0)
setupperbound(x[53], 300.0)
setupperbound(x[54], 300.0)
setlowerbound(x[55], 0.0)
setupperbound(x[55], 0.0)
setlowerbound(x[56], 0.0)
setupperbound(x[56], 0.0)
setupperbound(x[57], 300.0)
setupperbound(x[58], 300.0)
setlowerbound(x[59], 0.0)
setupperbound(x[59], 0.0)
setlowerbound(x[60], 0.0)
setupperbound(x[60], 0.0)
setupperbound(x[61], 300.0)
setupperbound(x[62], 300.0)
setlowerbound(x[63], 0.0)
setupperbound(x[63], 0.0)
setlowerbound(x[64], 0.0)
setupperbound(x[64], 0.0)
setupperbound(x[65], 300.0)
setupperbound(x[66], 300.0)
setlowerbound(x[67], 0.0)
setupperbound(x[67], 0.0)
setlowerbound(x[68], 0.0)
setupperbound(x[68], 0.0)
setupperbound(x[69], 300.0)
setupperbound(x[70], 300.0)
setlowerbound(x[71], 0.0)
setupperbound(x[71], 0.0)
setlowerbound(x[72], 0.0)
setupperbound(x[72], 0.0)
setupperbound(x[73], 300.0)
setupperbound(x[74], 300.0)
setlowerbound(x[75], 0.0)
setupperbound(x[75], 0.0)
setlowerbound(x[76], 0.0)
setupperbound(x[76], 0.0)
setupperbound(x[77], 300.0)
setupperbound(x[78], 300.0)
setlowerbound(x[79], 0.0)
setupperbound(x[79], 0.0)
setlowerbound(x[80], 0.0)
setupperbound(x[80], 0.0)
setupperbound(x[81], 300.0)
setupperbound(x[82], 300.0)
setlowerbound(x[83], 0.0)
setupperbound(x[83], 0.0)
setlowerbound(x[84], 0.0)
setupperbound(x[84], 0.0)
setupperbound(x[85], 300.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+900*x[12]-900*x[86]+900*x[87] == 0.0)
@constraint(m, e2, -x[2]-900*x[12]-900*x[88]+900*x[89] == 0.0)
@constraint(m, e3, -x[3]+900*x[15]-900*x[90]+900*x[91] == 0.0)
@constraint(m, e4, -x[4]-900*x[13]+900*x[17]-900*x[92]+900*x[93] == 0.0)
@constraint(m, e5, -x[5]+900*x[19]-900*x[94]+900*x[95] == 0.0)
@constraint(m, e6, -x[6]-900*x[14]+900*x[16]-900*x[96]+900*x[97] == 0.0)
@constraint(m, e7, -x[7]-900*x[16]+900*x[18]-900*x[98]+900*x[99] == 0.0)
@constraint(m, e8, -x[8]+282.842712474619*x[16]+282.842712474619*x[17]-400*x[100]+400*x[101] == 0.0)
@constraint(m, e9, -x[9]+282.842712474619*x[12]-282.842712474619*x[13]-282.842712474619*x[14]+282.842712474619*x[15]-400*x[102]+400*x[103] == 0.0)
@constraint(m, e10, -x[10]-282.842712474619*x[12]-282.842712474619*x[13]+282.842712474619*x[18]+282.842712474619*x[19]-400*x[104]+400*x[105] == 0.0)
@constraint(m, e11, -x[11]-282.842712474619*x[16]+282.842712474619*x[17]-400*x[106]+400*x[107] == 0.0)
@constraint(m, e12, x[1]-x[2]+0.707106781186547*x[9]-0.707106781186547*x[10] == 500.0)
@constraint(m, e13, -x[4]-0.707106781186547*x[9]-0.707106781186547*x[10] == -600.0)
@constraint(m, e14, -x[6]-0.707106781186547*x[9] == 0.0)
@constraint(m, e15, x[3]+0.707106781186547*x[9] == -500.0)
@constraint(m, e16, x[6]-x[7]+0.707106781186547*x[8]-0.707106781186547*x[11] == 0.0)
@constraint(m, e17, x[4]+0.707106781186547*x[8]+0.707106781186547*x[11] == -550.0)
@constraint(m, e18, x[7]+0.707106781186547*x[10] == 0.0)
@constraint(m, e19, x[5]+0.707106781186547*x[10] == 0.0)
@NLconstraint(m, e20, x[42]*x[86]+x[43]*x[87]-x[1]+x[20]-x[117] == 0.0)
@NLconstraint(m, e21, x[44]*x[86]+x[45]*x[87]+x[1]+x[21]-x[118] == 0.0)
@NLconstraint(m, e22, x[46]*x[88]+x[47]*x[89]-x[2]+x[22]-x[119] == 0.0)
@NLconstraint(m, e23, x[48]*x[88]+x[49]*x[89]+x[2]+x[23]-x[120] == 0.0)
@NLconstraint(m, e24, x[50]*x[90]+x[51]*x[91]-x[3]+x[24]-x[121] == 0.0)
@NLconstraint(m, e25, x[52]*x[90]+x[53]*x[91]+x[3]+x[25]-x[122] == 0.0)
@NLconstraint(m, e26, x[54]*x[92]+x[55]*x[93]-x[4]+x[26]-x[123] == 0.0)
@NLconstraint(m, e27, x[56]*x[92]+x[57]*x[93]+x[4]+x[27]-x[124] == 0.0)
@NLconstraint(m, e28, x[58]*x[94]+x[59]*x[95]-x[5]+x[28]-x[125] == 0.0)
@NLconstraint(m, e29, x[60]*x[94]+x[61]*x[95]+x[5]+x[29]-x[126] == 0.0)
@NLconstraint(m, e30, x[62]*x[96]+x[63]*x[97]-x[6]+x[30]-x[127] == 0.0)
@NLconstraint(m, e31, x[64]*x[96]+x[65]*x[97]+x[6]+x[31]-x[128] == 0.0)
@NLconstraint(m, e32, x[66]*x[98]+x[67]*x[99]-x[7]+x[32]-x[129] == 0.0)
@NLconstraint(m, e33, x[68]*x[98]+x[69]*x[99]+x[7]+x[33]-x[130] == 0.0)
@NLconstraint(m, e34, x[70]*x[100]+x[71]*x[101]-x[8]+x[34]-x[131] == 0.0)
@NLconstraint(m, e35, x[72]*x[100]+x[73]*x[101]+x[8]+x[35]-x[132] == 0.0)
@NLconstraint(m, e36, x[74]*x[102]+x[75]*x[103]-x[9]+x[36]-x[133] == 0.0)
@NLconstraint(m, e37, x[76]*x[102]+x[77]*x[103]+x[9]+x[37]-x[134] == 0.0)
@NLconstraint(m, e38, x[78]*x[104]+x[79]*x[105]-x[10]+x[38]-x[135] == 0.0)
@NLconstraint(m, e39, x[80]*x[104]+x[81]*x[105]+x[10]+x[39]-x[136] == 0.0)
@NLconstraint(m, e40, x[82]*x[106]+x[83]*x[107]-x[11]+x[40]-x[137] == 0.0)
@NLconstraint(m, e41, x[84]*x[106]+x[85]*x[107]+x[11]+x[41]-x[138] == 0.0)
@constraint(m, e42, x[12]+x[109] >= 0.301137754266277)
@constraint(m, e43, x[13]+x[110] >= -11.1121199924568)
@constraint(m, e44, x[14]+x[111] >= -0.891997538037562)
@constraint(m, e45, x[15]+x[112] >= -5.58531205735265)
@constraint(m, e46, x[16]+x[113] >= -1.15631883618073)
@constraint(m, e47, x[17]+x[114] >= -11.0208158750534)
@constraint(m, e48, x[18]+x[115] >= -1.4673600873009)
@constraint(m, e49, x[19]+x[116] >= -0.311041251120169)
@constraint(m, e50, x[12]-x[109] <= 0.301137754266277)
@constraint(m, e51, x[13]-x[110] <= -11.1121199924568)
@constraint(m, e52, x[14]-x[111] <= -0.891997538037562)
@constraint(m, e53, x[15]-x[112] <= -5.58531205735265)
@constraint(m, e54, x[16]-x[113] <= -1.15631883618073)
@constraint(m, e55, x[17]-x[114] <= -11.0208158750534)
@constraint(m, e56, x[18]-x[115] <= -1.4673600873009)
@constraint(m, e57, x[19]-x[116] <= -0.311041251120169)
@constraint(m, e58, x[108]-x[109]-x[110]-x[111]-x[112]-x[113]-x[114]-x[115]-x[116] == 0.0)
@constraint(m, e59, -x[20]+x[21] == 0.0)
@constraint(m, e60, -x[20]+x[22] == 0.0)
@constraint(m, e61, -x[20]+x[23] == 0.0)
@constraint(m, e62, -x[20]+x[24] == 0.0)
@constraint(m, e63, -x[20]+x[25] == 0.0)
@constraint(m, e64, -x[20]+x[26] == 0.0)
@constraint(m, e65, -x[20]+x[27] == 0.0)
@constraint(m, e66, -x[20]+x[28] == 0.0)
@constraint(m, e67, -x[20]+x[29] == 0.0)
@constraint(m, e68, -x[20]+x[30] == 0.0)
@constraint(m, e69, -x[20]+x[31] == 0.0)
@constraint(m, e70, -x[20]+x[32] == 0.0)
@constraint(m, e71, -x[20]+x[33] == 0.0)
@constraint(m, e72, -x[34]+x[35] == 0.0)
@constraint(m, e73, -x[34]+x[36] == 0.0)
@constraint(m, e74, -x[34]+x[37] == 0.0)
@constraint(m, e75, -x[34]+x[38] == 0.0)
@constraint(m, e76, -x[34]+x[39] == 0.0)
@constraint(m, e77, -x[34]+x[40] == 0.0)
@constraint(m, e78, -x[34]+x[41] == 0.0)
@constraint(m, e79, -x[42]+x[45] == 0.0)
@constraint(m, e80, -x[42]+x[46] == 0.0)
@constraint(m, e81, -x[42]+x[49] == 0.0)
@constraint(m, e82, -x[42]+x[50] == 0.0)
@constraint(m, e83, -x[42]+x[53] == 0.0)
@constraint(m, e84, -x[42]+x[54] == 0.0)
@constraint(m, e85, -x[42]+x[57] == 0.0)
@constraint(m, e86, -x[42]+x[58] == 0.0)
@constraint(m, e87, -x[42]+x[61] == 0.0)
@constraint(m, e88, -x[42]+x[62] == 0.0)
@constraint(m, e89, -x[42]+x[65] == 0.0)
@constraint(m, e90, -x[42]+x[66] == 0.0)
@constraint(m, e91, -x[42]+x[69] == 0.0)
@constraint(m, e92, -x[70]+x[73] == 0.0)
@constraint(m, e93, -x[70]+x[74] == 0.0)
@constraint(m, e94, -x[70]+x[77] == 0.0)
@constraint(m, e95, -x[70]+x[78] == 0.0)
@constraint(m, e96, -x[70]+x[81] == 0.0)
@constraint(m, e97, -x[70]+x[82] == 0.0)
@constraint(m, e98, -x[70]+x[85] == 0.0)
@NLconstraint(m, e99, x[117]*x[86] == 0.0)
@NLconstraint(m, e100, x[118]*x[87] == 0.0)
@NLconstraint(m, e101, x[119]*x[88] == 0.0)
@NLconstraint(m, e102, x[120]*x[89] == 0.0)
@NLconstraint(m, e103, x[121]*x[90] == 0.0)
@NLconstraint(m, e104, x[122]*x[91] == 0.0)
@NLconstraint(m, e105, x[123]*x[92] == 0.0)
@NLconstraint(m, e106, x[124]*x[93] == 0.0)
@NLconstraint(m, e107, x[125]*x[94] == 0.0)
@NLconstraint(m, e108, x[126]*x[95] == 0.0)
@NLconstraint(m, e109, x[127]*x[96] == 0.0)
@NLconstraint(m, e110, x[128]*x[97] == 0.0)
@NLconstraint(m, e111, x[129]*x[98] == 0.0)
@NLconstraint(m, e112, x[130]*x[99] == 0.0)
@NLconstraint(m, e113, x[131]*x[100] == 0.0)
@NLconstraint(m, e114, x[132]*x[101] == 0.0)
@NLconstraint(m, e115, x[133]*x[102] == 0.0)
@NLconstraint(m, e116, x[134]*x[103] == 0.0)
@NLconstraint(m, e117, x[135]*x[104] == 0.0)
@NLconstraint(m, e118, x[136]*x[105] == 0.0)
@NLconstraint(m, e119, x[137]*x[106] == 0.0)
@NLconstraint(m, e120, x[138]*x[107] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[108])

m = m 		 # model get returned when including this script. 
