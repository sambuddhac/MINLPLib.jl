using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127]
@variable(m, x[x_Idx])
b_Idx = Any[128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166]
@variable(m, b[b_Idx])
setlowerbound(x[117], 0.0)
setlowerbound(x[85], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[14], 0.0)
setcategory(b[158], :Bin)
setcategory(b[161], :Bin)
setlowerbound(x[62], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[114], 0.0)
setcategory(b[128], :Bin)
setlowerbound(x[42], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[110], 0.0)
setcategory(b[133], :Bin)
setlowerbound(x[113], 0.0)
setcategory(b[137], :Bin)
setcategory(b[160], :Bin)
setcategory(b[163], :Bin)
setlowerbound(x[74], 0.0)
setcategory(b[164], :Bin)
setcategory(b[141], :Bin)
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
setcategory(b[136], :Bin)
setcategory(b[143], :Bin)
setcategory(b[130], :Bin)
setlowerbound(x[36], 0.0)
setcategory(b[150], :Bin)
setlowerbound(x[54], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setcategory(b[132], :Bin)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setcategory(b[145], :Bin)
setlowerbound(x[82], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[122], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[104], 0.0)
setcategory(b[129], :Bin)
setlowerbound(x[49], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[120], 0.0)
setlowerbound(x[121], 0.0)
setlowerbound(x[21], 0.0)
setcategory(b[153], :Bin)
setcategory(b[159], :Bin)
setlowerbound(x[10], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[86], 0.0)
setcategory(b[144], :Bin)
setlowerbound(x[126], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[103], 0.0)
setlowerbound(x[107], 0.0)
setcategory(b[142], :Bin)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setcategory(b[166], :Bin)
setlowerbound(x[66], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[116], 0.0)
setcategory(b[138], :Bin)
setcategory(b[165], :Bin)
setlowerbound(x[44], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[98], 0.0)
setcategory(b[135], :Bin)
setlowerbound(x[61], 0.0)
setlowerbound(x[50], 0.0)
setcategory(b[151], :Bin)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[90], 0.0)
setcategory(b[154], :Bin)
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
setcategory(b[134], :Bin)
setlowerbound(x[60], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setcategory(b[140], :Bin)
setcategory(b[155], :Bin)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[109], 0.0)
setcategory(b[146], :Bin)
setcategory(b[149], :Bin)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[73], 0.0)
setcategory(b[152], :Bin)
setlowerbound(x[125], 0.0)
setlowerbound(x[20], 0.0)
setcategory(b[139], :Bin)
setlowerbound(x[39], 0.0)
setcategory(b[157], :Bin)
setlowerbound(x[15], 0.0)
setlowerbound(x[108], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setcategory(b[147], :Bin)
setcategory(b[148], :Bin)
setcategory(b[156], :Bin)
setlowerbound(x[102], 0.0)
setcategory(b[131], :Bin)
setcategory(b[162], :Bin)
setlowerbound(x[65], 0.0)
setlowerbound(x[76], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[8]*x[86]+x[9]*x[87]+x[10]*x[88]+x[11]*x[89]+x[12]*x[90]+x[13]*x[91]+x[14]*x[92]+x[15]*x[93]+x[16]*x[94]+x[17]*x[95]+x[18]*x[96]+x[19]*x[97]+x[20]*x[98])+x[5] == 0.0)
@NLconstraint(m, e2, -(x[21]*x[99]+x[22]*x[100]+x[23]*x[101]+x[24]*x[102]+x[25]*x[103]+x[26]*x[104]+x[27]*x[105]+x[28]*x[106]+x[29]*x[107]+x[30]*x[108]+x[31]*x[109]+x[32]*x[110]+x[33]*x[111])+x[6] == 0.0)
@NLconstraint(m, e3, -(x[34]*x[112]+x[35]*x[113]+x[36]*x[114]+x[37]*x[115]+x[38]*x[116]+x[39]*x[117]+x[40]*x[118]+x[41]*x[119]+x[42]*x[120]+x[43]*x[121]+x[44]*x[122]+x[45]*x[123]+x[46]*x[124])+x[7] == 0.0)
@constraint(m, e4, x[2]-x[86]-x[87]-x[88]-x[89]-x[90]-x[91]-x[92]-x[93]-x[94]-x[95]-x[96]-x[97]-x[98] == 0.0)
@constraint(m, e5, x[3]-x[99]-x[100]-x[101]-x[102]-x[103]-x[104]-x[105]-x[106]-x[107]-x[108]-x[109]-x[110]-x[111] == 0.0)
@constraint(m, e6, x[4]-x[112]-x[113]-x[114]-x[115]-x[116]-x[117]-x[118]-x[119]-x[120]-x[121]-x[122]-x[123]-x[124] == 0.0)
@constraint(m, e7, x[1]-x[5]-x[6]-x[7] == 0.0)
@constraint(m, e8, 17.5409*x[8]+x[86] == 6684.74)
@constraint(m, e9, 18.067127*x[9]+x[87] == 6334.74)
@constraint(m, e10, 18.60914081*x[10]+x[88] == 5984.74)
@constraint(m, e11, 19.1674150343*x[11]+x[89] == 5634.74)
@constraint(m, e12, 19.742437485329*x[12]+x[90] == 5284.74)
@constraint(m, e13, 20.3347106098889*x[13]+x[91] == 4934.74)
@constraint(m, e14, 20.9447519281855*x[14]+x[92] == 4584.74)
@constraint(m, e15, 21.5730944860311*x[15]+x[93] == 4234.74)
@constraint(m, e16, 22.220287320612*x[16]+x[94] == 3884.74)
@constraint(m, e17, 22.8868959402304*x[17]+x[95] == 3534.74)
@constraint(m, e18, 23.5735028184373*x[18]+x[96] == 3184.74)
@constraint(m, e19, 24.2807079029904*x[19]+x[97] == 2834.74)
@constraint(m, e20, 25.0091291400802*x[20]+x[98] == 2484.74)
@constraint(m, e21, 17.407*x[21]+x[99] == 5784.632)
@constraint(m, e22, 17.92921*x[22]+x[100] == 5434.632)
@constraint(m, e23, 18.4670863*x[23]+x[101] == 5084.632)
@constraint(m, e24, 19.021098889*x[24]+x[102] == 4734.632)
@constraint(m, e25, 19.59173185567*x[25]+x[103] == 4384.632)
@constraint(m, e26, 20.1794838113401*x[26]+x[104] == 4034.632)
@constraint(m, e27, 20.7848683256803*x[27]+x[105] == 3684.632)
@constraint(m, e28, 21.4084143754507*x[28]+x[106] == 3334.632)
@constraint(m, e29, 22.0506668067142*x[29]+x[107] == 2984.632)
@constraint(m, e30, 22.7121868109157*x[30]+x[108] == 2634.632)
@constraint(m, e31, 23.3935524152431*x[31]+x[109] == 2284.632)
@constraint(m, e32, 24.0953589877004*x[32]+x[110] == 1934.632)
@constraint(m, e33, 24.8182197573314*x[33]+x[111] == 1584.632)
@constraint(m, e34, 21.939*x[34]+x[112] == 5159.452)
@constraint(m, e35, 22.59717*x[35]+x[113] == 4809.452)
@constraint(m, e36, 23.2750851*x[36]+x[114] == 4459.452)
@constraint(m, e37, 23.973337653*x[37]+x[115] == 4109.452)
@constraint(m, e38, 24.69253778259*x[38]+x[116] == 3759.452)
@constraint(m, e39, 25.4333139160677*x[39]+x[117] == 3409.452)
@constraint(m, e40, 26.1963133335497*x[40]+x[118] == 3059.452)
@constraint(m, e41, 26.9822027335562*x[41]+x[119] == 2709.452)
@constraint(m, e42, 27.7916688155629*x[42]+x[120] == 2359.452)
@constraint(m, e43, 28.6254188800298*x[43]+x[121] == 2009.452)
@constraint(m, e44, 29.4841814464307*x[44]+x[122] == 1659.452)
@constraint(m, e45, 30.3687068898236*x[45]+x[123] == 1309.452)
@constraint(m, e46, 31.2797680965183*x[46]+x[124] == 959.452)
@constraint(m, e47, x[8]-x[47] == 0.0)
@constraint(m, e48, x[9]-x[48] == 0.0)
@constraint(m, e49, x[10]-x[49] == 0.0)
@constraint(m, e50, x[11]-x[50] == 0.0)
@constraint(m, e51, x[12]-x[51] == 0.0)
@constraint(m, e52, x[13]-x[52] == 0.0)
@constraint(m, e53, x[14]-x[53] == 0.0)
@constraint(m, e54, x[15]-x[54] == 0.0)
@constraint(m, e55, x[16]-x[55] == 0.0)
@constraint(m, e56, x[17]-x[56] == 0.0)
@constraint(m, e57, x[18]-x[57] == 0.0)
@constraint(m, e58, x[19]-x[58] == 0.0)
@constraint(m, e59, x[20]-x[59] == 0.0)
@constraint(m, e60, x[21]-x[60] == 0.0)
@constraint(m, e61, x[22]-x[61] == 0.0)
@constraint(m, e62, x[23]-x[62] == 0.0)
@constraint(m, e63, x[24]-x[63] == 0.0)
@constraint(m, e64, x[25]-x[64] == 0.0)
@constraint(m, e65, x[26]-x[65] == 0.0)
@constraint(m, e66, x[27]-x[66] == 0.0)
@constraint(m, e67, x[28]-x[67] == 0.0)
@constraint(m, e68, x[29]-x[68] == 0.0)
@constraint(m, e69, x[30]-x[69] == 0.0)
@constraint(m, e70, x[31]-x[70] == 0.0)
@constraint(m, e71, x[32]-x[71] == 0.0)
@constraint(m, e72, x[33]-x[72] == 0.0)
@constraint(m, e73, x[34]-x[73] == 0.0)
@constraint(m, e74, x[35]-x[74] == 0.0)
@constraint(m, e75, x[36]-x[75] == 0.0)
@constraint(m, e76, x[37]-x[76] == 0.0)
@constraint(m, e77, x[38]-x[77] == 0.0)
@constraint(m, e78, x[39]-x[78] == 0.0)
@constraint(m, e79, x[40]-x[79] == 0.0)
@constraint(m, e80, x[41]-x[80] == 0.0)
@constraint(m, e81, x[42]-x[81] == 0.0)
@constraint(m, e82, x[43]-x[82] == 0.0)
@constraint(m, e83, x[44]-x[83] == 0.0)
@constraint(m, e84, x[45]-x[84] == 0.0)
@constraint(m, e85, x[46]-x[85] == 0.0)
@constraint(m, e86, x[86] >= 0.0)
@constraint(m, e87, x[87] >= 0.0)
@constraint(m, e88, x[88] >= 0.0)
@constraint(m, e89, x[89] >= 0.0)
@constraint(m, e90, x[90] >= 0.0)
@constraint(m, e91, x[91] >= 0.0)
@constraint(m, e92, x[92] >= 0.0)
@constraint(m, e93, x[93] >= 0.0)
@constraint(m, e94, x[94] >= 0.0)
@constraint(m, e95, x[95] >= 0.0)
@constraint(m, e96, x[96] >= 0.0)
@constraint(m, e97, x[97] >= 0.0)
@constraint(m, e98, x[98] >= 0.0)
@constraint(m, e99, x[99] >= 0.0)
@constraint(m, e100, x[100] >= 0.0)
@constraint(m, e101, x[101] >= 0.0)
@constraint(m, e102, x[102] >= 0.0)
@constraint(m, e103, x[103] >= 0.0)
@constraint(m, e104, x[104] >= 0.0)
@constraint(m, e105, x[105] >= 0.0)
@constraint(m, e106, x[106] >= 0.0)
@constraint(m, e107, x[107] >= 0.0)
@constraint(m, e108, x[108] >= 0.0)
@constraint(m, e109, x[109] >= 0.0)
@constraint(m, e110, x[110] >= 0.0)
@constraint(m, e111, x[111] >= 0.0)
@constraint(m, e112, x[112] >= 0.0)
@constraint(m, e113, x[113] >= 0.0)
@constraint(m, e114, x[114] >= 0.0)
@constraint(m, e115, x[115] >= 0.0)
@constraint(m, e116, x[116] >= 0.0)
@constraint(m, e117, x[117] >= 0.0)
@constraint(m, e118, x[118] >= 0.0)
@constraint(m, e119, x[119] >= 0.0)
@constraint(m, e120, x[120] >= 0.0)
@constraint(m, e121, x[121] >= 0.0)
@constraint(m, e122, x[122] >= 0.0)
@constraint(m, e123, x[123] >= 0.0)
@constraint(m, e124, x[124] >= 0.0)
@constraint(m, e125, x[2] <= 100000.0)
@constraint(m, e126, x[3] <= 100000.0)
@constraint(m, e127, x[4] <= 100000.0)
@constraint(m, e128, b[128]+b[129]+b[130]+b[131]+b[132]+b[133]+b[134]+b[135]+b[136]+b[137]+b[138]+b[139]+b[140] <= 5.0)
@constraint(m, e129, b[141]+b[142]+b[143]+b[144]+b[145]+b[146]+b[147]+b[148]+b[149]+b[150]+b[151]+b[152]+b[153] <= 5.0)
@constraint(m, e130, b[154]+b[155]+b[156]+b[157]+b[158]+b[159]+b[160]+b[161]+b[162]+b[163]+b[164]+b[165]+b[166] <= 5.0)
@constraint(m, e131, x[47]+13*b[128] == 130.0)
@constraint(m, e132, x[60]+8*b[141] == 80.0)
@constraint(m, e133, x[73]+6*b[154] == 60.0)
@NLconstraint(m, e134, -(0.9*x[47]*b[129]+x[47]*(1-b[129]))+x[48] == 0.0)
@NLconstraint(m, e135, -(0.9*x[48]*b[130]+x[48]*(1-b[130]))+x[49] == 0.0)
@NLconstraint(m, e136, -(0.9*x[49]*b[131]+x[49]*(1-b[131]))+x[50] == 0.0)
@NLconstraint(m, e137, -(0.9*x[50]*b[132]+x[50]*(1-b[132]))+x[51] == 0.0)
@NLconstraint(m, e138, -(0.9*x[51]*b[133]+x[51]*(1-b[133]))+x[52] == 0.0)
@NLconstraint(m, e139, -(0.9*x[52]*b[134]+x[52]*(1-b[134]))+x[53] == 0.0)
@NLconstraint(m, e140, -(0.9*x[53]*b[135]+x[53]*(1-b[135]))+x[54] == 0.0)
@NLconstraint(m, e141, -(0.9*x[54]*b[136]+x[54]*(1-b[136]))+x[55] == 0.0)
@NLconstraint(m, e142, -(0.9*x[55]*b[137]+x[55]*(1-b[137]))+x[56] == 0.0)
@NLconstraint(m, e143, -(0.9*x[56]*b[138]+x[56]*(1-b[138]))+x[57] == 0.0)
@NLconstraint(m, e144, -(0.9*x[57]*b[139]+x[57]*(1-b[139]))+x[58] == 0.0)
@NLconstraint(m, e145, -(0.9*x[58]*b[140]+x[58]*(1-b[140]))+x[59] == 0.0)
@NLconstraint(m, e146, -(0.9*x[60]*b[142]+x[60]*(1-b[142]))+x[61] == 0.0)
@NLconstraint(m, e147, -(0.9*x[61]*b[143]+x[61]*(1-b[143]))+x[62] == 0.0)
@NLconstraint(m, e148, -(0.9*x[62]*b[144]+x[62]*(1-b[144]))+x[63] == 0.0)
@NLconstraint(m, e149, -(0.9*x[63]*b[145]+x[63]*(1-b[145]))+x[64] == 0.0)
@NLconstraint(m, e150, -(0.9*x[64]*b[146]+x[64]*(1-b[146]))+x[65] == 0.0)
@NLconstraint(m, e151, -(0.9*x[65]*b[147]+x[65]*(1-b[147]))+x[66] == 0.0)
@NLconstraint(m, e152, -(0.9*x[66]*b[148]+x[66]*(1-b[148]))+x[67] == 0.0)
@NLconstraint(m, e153, -(0.9*x[67]*b[149]+x[67]*(1-b[149]))+x[68] == 0.0)
@NLconstraint(m, e154, -(0.9*x[68]*b[150]+x[68]*(1-b[150]))+x[69] == 0.0)
@NLconstraint(m, e155, -(0.9*x[69]*b[151]+x[69]*(1-b[151]))+x[70] == 0.0)
@NLconstraint(m, e156, -(0.9*x[70]*b[152]+x[70]*(1-b[152]))+x[71] == 0.0)
@NLconstraint(m, e157, -(0.9*x[71]*b[153]+x[71]*(1-b[153]))+x[72] == 0.0)
@NLconstraint(m, e158, -(0.9*x[73]*b[155]+x[73]*(1-b[155]))+x[74] == 0.0)
@NLconstraint(m, e159, -(0.9*x[74]*b[156]+x[74]*(1-b[156]))+x[75] == 0.0)
@NLconstraint(m, e160, -(0.9*x[75]*b[157]+x[75]*(1-b[157]))+x[76] == 0.0)
@NLconstraint(m, e161, -(0.9*x[76]*b[158]+x[76]*(1-b[158]))+x[77] == 0.0)
@NLconstraint(m, e162, -(0.9*x[77]*b[159]+x[77]*(1-b[159]))+x[78] == 0.0)
@NLconstraint(m, e163, -(0.9*x[78]*b[160]+x[78]*(1-b[160]))+x[79] == 0.0)
@NLconstraint(m, e164, -(0.9*x[79]*b[161]+x[79]*(1-b[161]))+x[80] == 0.0)
@NLconstraint(m, e165, -(0.9*x[80]*b[162]+x[80]*(1-b[162]))+x[81] == 0.0)
@NLconstraint(m, e166, -(0.9*x[81]*b[163]+x[81]*(1-b[163]))+x[82] == 0.0)
@NLconstraint(m, e167, -(0.9*x[82]*b[164]+x[82]*(1-b[164]))+x[83] == 0.0)
@NLconstraint(m, e168, -(0.9*x[83]*b[165]+x[83]*(1-b[165]))+x[84] == 0.0)
@NLconstraint(m, e169, -(0.9*x[84]*b[166]+x[84]*(1-b[166]))+x[85] == 0.0)
@constraint(m, e170, x[2]+x[125] == 100000.0)
@constraint(m, e171, x[3]+x[126] == 100000.0)
@constraint(m, e172, x[4]+x[127] == 100000.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script. 
