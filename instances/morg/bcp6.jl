using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 119]
@variable(m, x[x_Idx])
b_Idx = Any[112, 113, 114, 115, 116, 117, 118]
@variable(m, b[b_Idx])
set_lower_bound(x[36], 0.0)
set_binary(b[118])
set_lower_bound(x[32], 0.0)
set_lower_bound(x[14], 0.0)
set_binary(b[115])
set_lower_bound(x[38], 0.0)
set_binary(b[116])
set_lower_bound(x[34], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[37], 0.0)
set_binary(b[113])
set_binary(b[117])
set_lower_bound(x[55], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_binary(b[112])
set_lower_bound(x[13], 0.0)
set_binary(b[114])
set_lower_bound(x[81], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[1], 0.95)
set_upper_bound(x[1], 1.0)
set_lower_bound(x[2], 0.001)
set_upper_bound(x[2], 10.0)
set_lower_bound(x[3], 0.001)
set_upper_bound(x[3], 10.0)
set_lower_bound(x[4], 0.001)
set_upper_bound(x[4], 10.0)
set_lower_bound(x[5], 0.001)
set_upper_bound(x[5], 10.0)
set_lower_bound(x[6], 0.001)
set_upper_bound(x[6], 10.0)
set_lower_bound(x[7], 0.001)
set_upper_bound(x[7], 10.0)
set_lower_bound(x[8], 0.001)
set_upper_bound(x[8], 10.0)
set_lower_bound(x[16], 0.001)
set_upper_bound(x[16], 10.0)
set_lower_bound(x[17], 0.001)
set_upper_bound(x[17], 10.0)
set_lower_bound(x[18], 0.001)
set_upper_bound(x[18], 10.0)
set_lower_bound(x[19], 0.001)
set_upper_bound(x[19], 10.0)
set_lower_bound(x[20], 0.001)
set_upper_bound(x[20], 10.0)
set_lower_bound(x[21], 0.001)
set_upper_bound(x[21], 10.0)
set_lower_bound(x[22], 0.001)
set_upper_bound(x[22], 10.0)
set_lower_bound(x[23], 0.001)
set_upper_bound(x[23], 10.0)
set_lower_bound(x[24], 0.001)
set_upper_bound(x[24], 10.0)
set_lower_bound(x[25], 0.001)
set_upper_bound(x[25], 10.0)
set_lower_bound(x[26], 0.001)
set_upper_bound(x[26], 10.0)
set_lower_bound(x[27], 0.001)
set_upper_bound(x[27], 10.0)
set_lower_bound(x[28], 0.001)
set_upper_bound(x[28], 10.0)
set_lower_bound(x[29], 0.001)
set_upper_bound(x[29], 10.0)
set_lower_bound(x[30], 0.001)
set_upper_bound(x[30], 10.0)
set_lower_bound(x[31], 0.001)
set_upper_bound(x[31], 10.0)
set_lower_bound(x[39], 0.001)
set_upper_bound(x[39], 10.0)
set_lower_bound(x[40], 0.001)
set_upper_bound(x[40], 10.0)
set_lower_bound(x[41], 0.001)
set_upper_bound(x[41], 10.0)
set_lower_bound(x[42], 0.001)
set_upper_bound(x[42], 10.0)
set_lower_bound(x[43], 0.001)
set_upper_bound(x[43], 10.0)
set_lower_bound(x[44], 0.001)
set_upper_bound(x[44], 10.0)
set_lower_bound(x[45], 0.001)
set_upper_bound(x[45], 10.0)
set_lower_bound(x[46], 0.001)
set_upper_bound(x[46], 10.0)
set_lower_bound(x[47], 0.001)
set_upper_bound(x[47], 10.0)
set_lower_bound(x[48], 0.001)
set_upper_bound(x[48], 10.0)
set_lower_bound(x[49], 0.001)
set_upper_bound(x[49], 10.0)
set_lower_bound(x[50], 0.001)
set_upper_bound(x[50], 10.0)
set_lower_bound(x[51], 0.001)
set_upper_bound(x[51], 10.0)
set_lower_bound(x[52], 0.001)
set_upper_bound(x[52], 10.0)
set_lower_bound(x[53], 0.001)
set_upper_bound(x[53], 10.0)
set_lower_bound(x[54], 0.001)
set_upper_bound(x[54], 10.0)
set_upper_bound(x[55], 10.0)
set_lower_bound(x[56], 1.0e-5)
set_upper_bound(x[56], 10.0)
set_lower_bound(x[57], -10.0)
set_upper_bound(x[57], 10.0)
set_lower_bound(x[58], -10.0)
set_upper_bound(x[58], 10.0)
set_lower_bound(x[59], -10.0)
set_upper_bound(x[59], 10.0)
set_lower_bound(x[60], 1.0e-5)
set_upper_bound(x[60], 10.0)
set_lower_bound(x[61], -10.0)
set_upper_bound(x[61], 10.0)
set_lower_bound(x[62], -10.0)
set_upper_bound(x[62], 10.0)
set_lower_bound(x[63], -10.0)
set_upper_bound(x[63], 10.0)
set_lower_bound(x[64], 1.0e-5)
set_upper_bound(x[64], 10.0)
set_lower_bound(x[65], -10.0)
set_upper_bound(x[65], 10.0)
set_lower_bound(x[66], -10.0)
set_upper_bound(x[66], 10.0)
set_lower_bound(x[67], -10.0)
set_upper_bound(x[67], 10.0)
set_lower_bound(x[68], 1.0e-5)
set_upper_bound(x[68], 10.0)
set_lower_bound(x[69], -10.0)
set_upper_bound(x[69], 10.0)
set_lower_bound(x[70], -10.0)
set_upper_bound(x[70], 10.0)
set_lower_bound(x[71], -10.0)
set_upper_bound(x[71], 10.0)
set_lower_bound(x[72], 0.001)
set_upper_bound(x[72], 10.0)
set_lower_bound(x[73], 0.001)
set_upper_bound(x[73], 10.0)
set_lower_bound(x[74], 0.001)
set_upper_bound(x[74], 10.0)
set_lower_bound(x[75], 0.001)
set_upper_bound(x[75], 10.0)
set_lower_bound(x[76], 0.001)
set_upper_bound(x[76], 10.0)
set_lower_bound(x[77], 0.001)
set_upper_bound(x[77], 10.0)
set_lower_bound(x[78], 0.001)
set_upper_bound(x[78], 10.0)
set_lower_bound(x[79], 0.001)
set_upper_bound(x[79], 10.0)
set_lower_bound(x[80], 0.001)
set_upper_bound(x[80], 10.0)
set_upper_bound(x[81], 10.0)
set_lower_bound(x[82], 1.0e-5)
set_upper_bound(x[82], 10.0)
set_lower_bound(x[83], -10.0)
set_upper_bound(x[83], 10.0)
set_lower_bound(x[84], -10.0)
set_upper_bound(x[84], 10.0)
set_lower_bound(x[85], -10.0)
set_upper_bound(x[85], 10.0)
set_lower_bound(x[86], -10.0)
set_upper_bound(x[86], 10.0)
set_lower_bound(x[87], 1.0e-5)
set_upper_bound(x[87], 10.0)
set_lower_bound(x[88], -10.0)
set_upper_bound(x[88], 10.0)
set_lower_bound(x[89], -10.0)
set_upper_bound(x[89], 10.0)
set_lower_bound(x[90], -10.0)
set_upper_bound(x[90], 10.0)
set_lower_bound(x[91], -10.0)
set_upper_bound(x[91], 10.0)
set_lower_bound(x[92], 1.0e-5)
set_upper_bound(x[92], 10.0)
set_lower_bound(x[93], -10.0)
set_upper_bound(x[93], 10.0)
set_lower_bound(x[94], -10.0)
set_upper_bound(x[94], 10.0)
set_lower_bound(x[95], -10.0)
set_upper_bound(x[95], 10.0)
set_lower_bound(x[96], -10.0)
set_upper_bound(x[96], 10.0)
set_lower_bound(x[97], 1.0e-5)
set_upper_bound(x[97], 10.0)
set_lower_bound(x[98], -10.0)
set_upper_bound(x[98], 10.0)
set_lower_bound(x[99], -10.0)
set_upper_bound(x[99], 10.0)
set_lower_bound(x[100], -10.0)
set_upper_bound(x[100], 10.0)
set_lower_bound(x[101], -10.0)
set_upper_bound(x[101], 10.0)
set_lower_bound(x[102], 1.0e-5)
set_upper_bound(x[102], 10.0)
set_lower_bound(x[103], -10.0)
set_upper_bound(x[103], 10.0)
set_lower_bound(x[104], -10.0)
set_upper_bound(x[104], 10.0)
set_lower_bound(x[105], -10.0)
set_upper_bound(x[105], 10.0)
set_lower_bound(x[106], -10.0)
set_upper_bound(x[106], 10.0)
set_lower_bound(x[107], 1.0e-5)
set_upper_bound(x[107], 10.0)
set_lower_bound(x[108], -10.0)
set_upper_bound(x[108], 10.0)
set_lower_bound(x[109], -10.0)
set_upper_bound(x[109], 10.0)
set_lower_bound(x[110], -10.0)
set_upper_bound(x[110], 10.0)
set_lower_bound(x[111], -10.0)
set_upper_bound(x[111], 10.0)
set_lower_bound(b[112], 1.0)
set_upper_bound(b[112], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+x[119] == 0.0)
@constraint(m, e2, -x[9]+0.001*b[112] <= 0.0)
@constraint(m, e3, -x[10]+0.001*b[113] <= 0.0)
@constraint(m, e4, -x[11]+0.001*b[114] <= 0.0)
@constraint(m, e5, -x[12]+0.001*b[115] <= 0.0)
@constraint(m, e6, -x[13]+0.001*b[116] <= 0.0)
@constraint(m, e7, -x[14]+0.001*b[117] <= 0.0)
@constraint(m, e8, -x[15]+0.001*b[118] <= 0.0)
@constraint(m, e9, x[9]-10*b[112] <= 0.0)
@constraint(m, e10, x[10]-10*b[113] <= 0.0)
@constraint(m, e11, x[11]-10*b[114] <= 0.0)
@constraint(m, e12, x[12]-10*b[115] <= 0.0)
@constraint(m, e13, x[13]-10*b[116] <= 0.0)
@constraint(m, e14, x[14]-10*b[117] <= 0.0)
@constraint(m, e15, x[15]-10*b[118] <= 0.0)
@constraint(m, e16, -x[32]+0.001*b[112] <= 0.0)
@constraint(m, e17, -x[33]+0.001*b[113] <= 0.0)
@constraint(m, e18, -x[34]+0.001*b[114] <= 0.0)
@constraint(m, e19, -x[35]+0.001*b[115] <= 0.0)
@constraint(m, e20, -x[36]+0.001*b[116] <= 0.0)
@constraint(m, e21, -x[37]+0.001*b[117] <= 0.0)
@constraint(m, e22, -x[38]+0.001*b[118] <= 0.0)
@constraint(m, e23, x[32]-10*b[112] <= 0.0)
@constraint(m, e24, x[33]-10*b[113] <= 0.0)
@constraint(m, e25, x[34]-10*b[114] <= 0.0)
@constraint(m, e26, x[35]-10*b[115] <= 0.0)
@constraint(m, e27, x[36]-10*b[116] <= 0.0)
@constraint(m, e28, x[37]-10*b[117] <= 0.0)
@constraint(m, e29, x[38]-10*b[118] <= 0.0)
@constraint(m, e30, b[112]-b[113] >= 0.0)
@constraint(m, e31, b[113]-b[114] >= 0.0)
@constraint(m, e32, b[114]-b[115] >= 0.0)
@constraint(m, e33, b[115]-b[116] >= 0.0)
@constraint(m, e34, b[116]-b[117] >= 0.0)
@constraint(m, e35, b[117]-b[118] >= 0.0)
@constraint(m, e36, -100000000*x[2]+100000000*x[9]+x[16] == 0.0)
@NLconstraint(m, e37, 20000000*x[1]*x[2]-10000000*x[3]+10000000*x[10]+x[17] == 0.0)
@NLconstraint(m, e38, 2000000*x[1]*x[3]-1000000*x[2]-1000000*x[4]-1000000*x[9]+1000000*x[11]+x[18] == 0.0)
@NLconstraint(m, e39, 200000*x[1]*x[4]-100000*x[3]-100000*x[5]-100000*x[10]+100000*x[12]+x[19] == 0.0)
@NLconstraint(m, e40, 20000*x[1]*x[5]-10000*x[4]-10000*x[6]-10000*x[11]+10000*x[13]+x[20] == 0.0)
@NLconstraint(m, e41, 2000*x[1]*x[6]-1000*x[5]-1000*x[7]-1000*x[12]+1000*x[14]+x[21] == 0.0)
@NLconstraint(m, e42, 200*x[1]*x[7]-100*x[6]-100*x[8]-100*x[13]+100*x[15]+x[22] == 0.0)
@NLconstraint(m, e43, 20*x[1]*x[8]-10*x[7]-10*x[14]+x[23] == 0.0)
@constraint(m, e44, -x[8]-x[15]+x[24] == 0.0)
@constraint(m, e45, -x[2]+1E-5*x[3]-1E-10*x[4]+x[25] == 0.0)
@constraint(m, e46, -x[3]+2E-5*x[4]-3E-10*x[5]+x[26] == 0.0)
@constraint(m, e47, -x[4]+3E-5*x[5]-6E-10*x[6]+x[27] == 0.0)
@constraint(m, e48, -x[5]+4E-5*x[6]-1E-9*x[7]+x[28] == 0.0)
@constraint(m, e49, -x[6]+5E-5*x[7]-1.5E-9*x[8]+x[29] == 0.0)
@constraint(m, e50, -x[7]+6E-5*x[8]+x[30] == 0.0)
@constraint(m, e51, -x[8]+x[31] == 0.0)
@constraint(m, e52, -x[9]+1E-5*x[10]-1E-10*x[11]+x[32] == 0.0)
@constraint(m, e53, -x[10]+2E-5*x[11]-3E-10*x[12]+x[33] == 0.0)
@constraint(m, e54, -x[11]+3E-5*x[12]-6E-10*x[13]+x[34] == 0.0)
@constraint(m, e55, -x[12]+4E-5*x[13]-1E-9*x[14]+x[35] == 0.0)
@constraint(m, e56, -x[13]+5E-5*x[14]-1.5E-9*x[15]+x[36] == 0.0)
@constraint(m, e57, -x[14]+6E-5*x[15]+x[37] == 0.0)
@constraint(m, e58, -x[15]+x[38] == 0.0)
@constraint(m, e59, -x[16]+1E-5*x[17]-1E-10*x[18]+x[39] == 0.0)
@constraint(m, e60, -x[17]+2E-5*x[18]-3E-10*x[19]+x[40] == 0.0)
@constraint(m, e61, -x[18]+3E-5*x[19]-6E-10*x[20]+x[41] == 0.0)
@constraint(m, e62, -x[19]+4E-5*x[20]-1E-9*x[21]+x[42] == 0.0)
@constraint(m, e63, -x[20]+5E-5*x[21]-1.5E-9*x[22]+x[43] == 0.0)
@constraint(m, e64, -x[21]+6E-5*x[22]-2.1E-9*x[23]+x[44] == 0.0)
@constraint(m, e65, -x[22]+7E-5*x[23]-2.8E-9*x[24]+x[45] == 0.0)
@constraint(m, e66, -x[23]+8E-5*x[24]+x[46] == 0.0)
@constraint(m, e67, -x[24]+x[47] == 0.0)
@constraint(m, e68, -x[31]+x[48] == 0.0)
@constraint(m, e69, -x[29]+x[49] == 0.0)
@constraint(m, e70, -x[27]+x[50] == 0.0)
@constraint(m, e71, -x[25]+x[51] == 0.0)
@constraint(m, e72, -x[30]+x[52] == 0.0)
@constraint(m, e73, -x[28]+x[53] == 0.0)
@constraint(m, e74, -x[26]+x[54] == 0.0)
@constraint(m, e75, x[55] == 0.0)
@NLconstraint(m, e76, x[48]*x[53]/x[52]-x[49]+x[56] == 0.0)
@NLconstraint(m, e77, x[48]*x[54]/x[52]-x[50]+x[57] == 0.0)
@NLconstraint(m, e78, x[48]*x[55]/x[52]-x[51]+x[58] == 0.0)
@NLconstraint(m, e79, x[52]*x[57]/x[56]-x[53]+x[60] == 0.0)
@NLconstraint(m, e80, x[52]*x[58]/x[56]-x[54]+x[61] == 0.0)
@NLconstraint(m, e81, x[52]*x[59]/x[56]-x[55]+x[62] == 0.0)
@NLconstraint(m, e82, x[56]*x[61]/x[60]-x[57]+x[64] == 0.0)
@NLconstraint(m, e83, x[56]*x[62]/x[60]-x[58]+x[65] == 0.0)
@NLconstraint(m, e84, x[56]*x[63]/x[60]-x[59]+x[66] == 0.0)
@NLconstraint(m, e85, x[60]*x[65]/x[64]-x[61]+x[68] == 0.0)
@NLconstraint(m, e86, x[60]*x[66]/x[64]-x[62]+x[69] == 0.0)
@NLconstraint(m, e87, x[60]*x[67]/x[64]-x[63]+x[70] == 0.0)
@constraint(m, e88, x[59] == 0.0)
@constraint(m, e89, x[63] == 0.0)
@constraint(m, e90, x[67] == 0.0)
@constraint(m, e91, x[71] == 0.0)
@constraint(m, e92, -x[47]+x[72] == 0.0)
@constraint(m, e93, -x[45]+x[73] == 0.0)
@constraint(m, e94, -x[43]+x[74] == 0.0)
@constraint(m, e95, -x[41]+x[75] == 0.0)
@constraint(m, e96, -x[39]+x[76] == 0.0)
@constraint(m, e97, -x[46]+x[77] == 0.0)
@constraint(m, e98, -x[44]+x[78] == 0.0)
@constraint(m, e99, -x[42]+x[79] == 0.0)
@constraint(m, e100, -x[40]+x[80] == 0.0)
@constraint(m, e101, x[81] == 0.0)
@NLconstraint(m, e102, x[72]*x[78]/x[77]-x[73]+x[82] == 0.0)
@NLconstraint(m, e103, x[72]*x[79]/x[77]-x[74]+x[83] == 0.0)
@NLconstraint(m, e104, x[72]*x[80]/x[77]-x[75]+x[84] == 0.0)
@NLconstraint(m, e105, x[72]*x[81]/x[77]-x[76]+x[85] == 0.0)
@NLconstraint(m, e106, x[77]*x[83]/x[82]-x[78]+x[87] == 0.0)
@NLconstraint(m, e107, x[77]*x[84]/x[82]-x[79]+x[88] == 0.0)
@NLconstraint(m, e108, x[77]*x[85]/x[82]-x[80]+x[89] == 0.0)
@NLconstraint(m, e109, x[77]*x[86]/x[82]-x[81]+x[90] == 0.0)
@NLconstraint(m, e110, x[82]*x[88]/x[87]-x[83]+x[92] == 0.0)
@NLconstraint(m, e111, x[82]*x[89]/x[87]-x[84]+x[93] == 0.0)
@NLconstraint(m, e112, x[82]*x[90]/x[87]-x[85]+x[94] == 0.0)
@NLconstraint(m, e113, x[82]*x[91]/x[87]-x[86]+x[95] == 0.0)
@NLconstraint(m, e114, x[87]*x[93]/x[92]-x[88]+x[97] == 0.0)
@NLconstraint(m, e115, x[87]*x[94]/x[92]-x[89]+x[98] == 0.0)
@NLconstraint(m, e116, x[87]*x[95]/x[92]-x[90]+x[99] == 0.0)
@NLconstraint(m, e117, x[87]*x[96]/x[92]-x[91]+x[100] == 0.0)
@NLconstraint(m, e118, x[92]*x[98]/x[97]-x[93]+x[102] == 0.0)
@NLconstraint(m, e119, x[92]*x[99]/x[97]-x[94]+x[103] == 0.0)
@NLconstraint(m, e120, x[92]*x[100]/x[97]-x[95]+x[104] == 0.0)
@NLconstraint(m, e121, x[92]*x[101]/x[97]-x[96]+x[105] == 0.0)
@NLconstraint(m, e122, x[97]*x[103]/x[102]-x[98]+x[107] == 0.0)
@NLconstraint(m, e123, x[97]*x[104]/x[102]-x[99]+x[108] == 0.0)
@NLconstraint(m, e124, x[97]*x[105]/x[102]-x[100]+x[109] == 0.0)
@NLconstraint(m, e125, x[97]*x[106]/x[102]-x[101]+x[110] == 0.0)
@constraint(m, e126, x[86] == 0.0)
@constraint(m, e127, x[91] == 0.0)
@constraint(m, e128, x[96] == 0.0)
@constraint(m, e129, x[101] == 0.0)
@constraint(m, e130, x[106] == 0.0)
@constraint(m, e131, x[111] == 0.0)
@NLconstraint(m, e132, x[36]*x[37]-x[35]*x[38]-1E-5*b[118] >= 0.0)
@NLconstraint(m, e133, x[35]*x[36]*x[37]-x[35]*x[35]*x[38]+x[33]*x[37]*x[38]-x[34]*x[37]*x[37]-1E-5*b[117] >= 0.0)
@NLconstraint(m, e134, x[34]*x[35]*x[36]*x[37]-x[35]^2*x[34]*x[38]-x[34]^2*x[37]^2+2*x[33]*x[34]*x[37]*x[38]-x[33]^2*x[38]^2+x[33]*x[35]*x[36]*x[38]-x[36]^2*x[33]*x[37]+x[32]*x[36]*x[37]^2-x[32]*x[35]*x[37]*x[38]+(x[34]*x[35]-x[33]*x[36])*(1-b[117])-1E-5*b[116] >= 0.0)
@NLconstraint(m, e135, x[33]*x[34]*x[35]*x[36]*x[37]-x[33]*x[34]*x[35]^2*x[38]+2*x[33]^2*x[34]*x[37]*x[38]-x[34]^2*x[33]*x[37]^2-x[33]^3*x[38]^2+x[33]^2*x[35]*x[36]*x[38]-x[33]^2*x[36]^2*x[37]-3*x[32]*x[33]*x[35]*x[37]*x[38]+x[35]^3*x[32]*x[38]-x[35]^2*x[32]*x[36]*x[37]+x[32]*x[34]*x[35]*x[37]^2+2*x[32]*x[33]*x[36]*x[37]^2-x[32]^2*x[37]^3+(x[33]*x[34]*x[35]-x[33]^2*x[36]-x[35]^2*x[32])*(1-b[117])-1E-5*b[115] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[119])

m = m 		 # model get returned when including this script.