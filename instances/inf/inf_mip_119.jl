using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
@variable(m, x[x_Idx])
b_Idx = Any[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265]
@variable(m, b[b_Idx])
setcategory(b[35], :Bin)
setcategory(b[216], :Bin)
setcategory(b[230], :Bin)
setcategory(b[228], :Bin)
setcategory(b[176], :Bin)
setcategory(b[133], :Bin)
setcategory(b[45], :Bin)
setcategory(b[169], :Bin)
setcategory(b[196], :Bin)
setcategory(b[180], :Bin)
setcategory(b[178], :Bin)
setcategory(b[232], :Bin)
setcategory(b[208], :Bin)
setcategory(b[64], :Bin)
setcategory(b[112], :Bin)
setcategory(b[36], :Bin)
setcategory(b[243], :Bin)
setcategory(b[130], :Bin)
setcategory(b[87], :Bin)
setcategory(b[132], :Bin)
setlowerbound(x[3], 0.0)
setcategory(b[211], :Bin)
setcategory(b[119], :Bin)
setcategory(b[79], :Bin)
setcategory(b[213], :Bin)
setcategory(b[264], :Bin)
setcategory(b[60], :Bin)
setcategory(b[159], :Bin)
setcategory(b[227], :Bin)
setcategory(b[197], :Bin)
setcategory(b[235], :Bin)
setcategory(b[193], :Bin)
setcategory(b[39], :Bin)
setcategory(b[37], :Bin)
setcategory(b[88], :Bin)
setcategory(b[50], :Bin)
setlowerbound(x[6], 0.0)
setcategory(b[192], :Bin)
setcategory(b[209], :Bin)
setcategory(b[97], :Bin)
setcategory(b[262], :Bin)
setcategory(b[200], :Bin)
setlowerbound(x[23], 0.0)
setcategory(b[188], :Bin)
setcategory(b[62], :Bin)
setcategory(b[113], :Bin)
setcategory(b[218], :Bin)
setcategory(b[220], :Bin)
setcategory(b[236], :Bin)
setcategory(b[162], :Bin)
setcategory(b[161], :Bin)
setcategory(b[224], :Bin)
setcategory(b[199], :Bin)
setcategory(b[252], :Bin)
setcategory(b[75], :Bin)
setcategory(b[128], :Bin)
setcategory(b[167], :Bin)
setcategory(b[177], :Bin)
setcategory(b[70], :Bin)
setcategory(b[163], :Bin)
setcategory(b[41], :Bin)
setcategory(b[48], :Bin)
setlowerbound(x[9], 0.0)
setcategory(b[242], :Bin)
setcategory(b[28], :Bin)
setcategory(b[143], :Bin)
setcategory(b[90], :Bin)
setcategory(b[206], :Bin)
setcategory(b[229], :Bin)
setcategory(b[233], :Bin)
setcategory(b[84], :Bin)
setcategory(b[53], :Bin)
setcategory(b[116], :Bin)
setcategory(b[255], :Bin)
setcategory(b[29], :Bin)
setlowerbound(x[5], 0.0)
setcategory(b[61], :Bin)
setcategory(b[223], :Bin)
setcategory(b[89], :Bin)
setcategory(b[34], :Bin)
setcategory(b[145], :Bin)
setlowerbound(x[24], 0.0)
setcategory(b[86], :Bin)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setcategory(b[114], :Bin)
setcategory(b[256], :Bin)
setcategory(b[260], :Bin)
setcategory(b[153], :Bin)
setcategory(b[69], :Bin)
setcategory(b[144], :Bin)
setcategory(b[68], :Bin)
setcategory(b[240], :Bin)
setcategory(b[244], :Bin)
setcategory(b[166], :Bin)
setcategory(b[246], :Bin)
setcategory(b[47], :Bin)
setlowerbound(x[12], 0.0)
setcategory(b[214], :Bin)
setcategory(b[138], :Bin)
setcategory(b[226], :Bin)
setcategory(b[151], :Bin)
setcategory(b[135], :Bin)
setcategory(b[108], :Bin)
setcategory(b[154], :Bin)
setcategory(b[76], :Bin)
setcategory(b[109], :Bin)
setcategory(b[174], :Bin)
setcategory(b[259], :Bin)
setcategory(b[237], :Bin)
setcategory(b[155], :Bin)
setcategory(b[94], :Bin)
setcategory(b[149], :Bin)
setcategory(b[107], :Bin)
setlowerbound(x[19], 0.0)
setcategory(b[181], :Bin)
setcategory(b[52], :Bin)
setcategory(b[139], :Bin)
setlowerbound(x[15], 0.0)
setcategory(b[131], :Bin)
setcategory(b[241], :Bin)
setcategory(b[38], :Bin)
setcategory(b[71], :Bin)
setlowerbound(x[16], 0.0)
setcategory(b[78], :Bin)
setlowerbound(x[14], 0.0)
setcategory(b[215], :Bin)
setcategory(b[66], :Bin)
setcategory(b[80], :Bin)
setcategory(b[160], :Bin)
setcategory(b[49], :Bin)
setlowerbound(x[22], 0.0)
setcategory(b[137], :Bin)
setcategory(b[185], :Bin)
setcategory(b[105], :Bin)
setcategory(b[164], :Bin)
setcategory(b[124], :Bin)
setlowerbound(x[8], 0.0)
setcategory(b[54], :Bin)
setcategory(b[111], :Bin)
setcategory(b[170], :Bin)
setcategory(b[239], :Bin)
setcategory(b[98], :Bin)
setlowerbound(x[4], 0.0)
setcategory(b[257], :Bin)
setcategory(b[219], :Bin)
setcategory(b[186], :Bin)
setcategory(b[77], :Bin)
setcategory(b[254], :Bin)
setlowerbound(x[25], 0.0)
setcategory(b[172], :Bin)
setcategory(b[46], :Bin)
setcategory(b[127], :Bin)
setcategory(b[56], :Bin)
setcategory(b[104], :Bin)
setcategory(b[171], :Bin)
setcategory(b[221], :Bin)
setcategory(b[74], :Bin)
setcategory(b[32], :Bin)
setcategory(b[248], :Bin)
setcategory(b[92], :Bin)
setcategory(b[72], :Bin)
setcategory(b[126], :Bin)
setlowerbound(x[18], 0.0)
setcategory(b[129], :Bin)
setcategory(b[238], :Bin)
setcategory(b[190], :Bin)
setcategory(b[234], :Bin)
setcategory(b[212], :Bin)
setcategory(b[125], :Bin)
setcategory(b[184], :Bin)
setcategory(b[43], :Bin)
setcategory(b[110], :Bin)
setcategory(b[231], :Bin)
setcategory(b[183], :Bin)
setcategory(b[117], :Bin)
setcategory(b[195], :Bin)
setcategory(b[83], :Bin)
setcategory(b[59], :Bin)
setcategory(b[204], :Bin)
setcategory(b[67], :Bin)
setcategory(b[175], :Bin)
setcategory(b[222], :Bin)
setcategory(b[93], :Bin)
setcategory(b[99], :Bin)
setcategory(b[198], :Bin)
setcategory(b[146], :Bin)
setcategory(b[123], :Bin)
setcategory(b[187], :Bin)
setcategory(b[202], :Bin)
setcategory(b[122], :Bin)
setlowerbound(x[20], 0.0)
setcategory(b[121], :Bin)
setcategory(b[250], :Bin)
setcategory(b[157], :Bin)
setcategory(b[147], :Bin)
setcategory(b[201], :Bin)
setcategory(b[258], :Bin)
setcategory(b[156], :Bin)
setcategory(b[26], :Bin)
setcategory(b[73], :Bin)
setcategory(b[217], :Bin)
setcategory(b[118], :Bin)
setcategory(b[44], :Bin)
setcategory(b[158], :Bin)
setcategory(b[120], :Bin)
setcategory(b[85], :Bin)
setcategory(b[251], :Bin)
setcategory(b[82], :Bin)
setcategory(b[42], :Bin)
setcategory(b[168], :Bin)
setcategory(b[106], :Bin)
setcategory(b[207], :Bin)
setcategory(b[81], :Bin)
setcategory(b[225], :Bin)
setlowerbound(x[2], 0.0)
setcategory(b[141], :Bin)
setcategory(b[136], :Bin)
setcategory(b[150], :Bin)
setcategory(b[203], :Bin)
setcategory(b[95], :Bin)
setcategory(b[115], :Bin)
setcategory(b[189], :Bin)
setcategory(b[33], :Bin)
setlowerbound(x[11], 0.0)
setcategory(b[30], :Bin)
setcategory(b[173], :Bin)
setcategory(b[40], :Bin)
setcategory(b[249], :Bin)
setcategory(b[58], :Bin)
setcategory(b[96], :Bin)
setcategory(b[57], :Bin)
setcategory(b[102], :Bin)
setlowerbound(x[21], 0.0)
setcategory(b[245], :Bin)
setlowerbound(x[10], 0.0)
setcategory(b[247], :Bin)
setcategory(b[51], :Bin)
setcategory(b[100], :Bin)
setcategory(b[142], :Bin)
setcategory(b[65], :Bin)
setcategory(b[205], :Bin)
setcategory(b[265], :Bin)
setcategory(b[165], :Bin)
setcategory(b[210], :Bin)
setcategory(b[101], :Bin)
setcategory(b[253], :Bin)
setcategory(b[182], :Bin)
setcategory(b[194], :Bin)
setcategory(b[179], :Bin)
setcategory(b[191], :Bin)
setcategory(b[261], :Bin)
setcategory(b[134], :Bin)
setcategory(b[27], :Bin)
setlowerbound(x[17], 0.0)
setcategory(b[140], :Bin)
setcategory(b[31], :Bin)
setcategory(b[91], :Bin)
setcategory(b[152], :Bin)
setcategory(b[103], :Bin)
setcategory(b[55], :Bin)
setcategory(b[148], :Bin)
setcategory(b[63], :Bin)
setcategory(b[263], :Bin)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[2]-2*x[3]-4*x[4]-8*x[5]-16*x[6]-32*x[7]-x[8]-2*x[9]-4*x[10]-8*x[11]-16*x[12]-32*x[13]-x[14]-2*x[15]-4*x[16]-8*x[17]-16*x[18]-32*x[19]-x[20]-2*x[21]-4*x[22]-8*x[23]-16*x[24]-32*x[25] == 7986.0)
@constraint(m, e2, b[26] == 1.0)
@constraint(m, e3, b[27] == 1.0)
@constraint(m, e4, b[28] == 1.0)
@constraint(m, e5, b[29] == 1.0)
@constraint(m, e6, b[30] == 1.0)
@constraint(m, e7, b[31] == 1.0)
@constraint(m, e8, b[32] == 1.0)
@constraint(m, e9, b[33] == 1.0)
@constraint(m, e10, b[34] == 1.0)
@constraint(m, e11, b[35] == 1.0)
@constraint(m, e12, b[36] == 1.0)
@constraint(m, e13, b[37] == 1.0)
@constraint(m, e14, b[38] == 1.0)
@constraint(m, e15, b[39] == 1.0)
@constraint(m, e16, b[40] == 1.0)
@constraint(m, e17, b[41] == 1.0)
@constraint(m, e18, b[42] == 1.0)
@constraint(m, e19, b[43] == 1.0)
@constraint(m, e20, b[44] == 1.0)
@constraint(m, e21, b[45] == 1.0)
@constraint(m, e22, b[46] == 1.0)
@constraint(m, e23, b[47] == 1.0)
@constraint(m, e24, b[48] == 1.0)
@constraint(m, e25, b[49] == 1.0)
@constraint(m, e26, b[50] == 1.0)
@constraint(m, e27, b[51] == 1.0)
@constraint(m, e28, b[52] == 1.0)
@constraint(m, e29, b[53] == 1.0)
@constraint(m, e30, b[54] == 1.0)
@constraint(m, e31, b[55] == 1.0)
@constraint(m, e32, b[56] == 1.0)
@constraint(m, e33, b[57] == 1.0)
@constraint(m, e34, b[58] == 1.0)
@constraint(m, e35, b[59] == 1.0)
@constraint(m, e36, b[60] == 1.0)
@constraint(m, e37, b[61] == 1.0)
@constraint(m, e38, b[62] == 1.0)
@constraint(m, e39, b[63] == 1.0)
@constraint(m, e40, b[64] == 1.0)
@constraint(m, e41, b[65] == 1.0)
@constraint(m, e42, b[66] == 1.0)
@constraint(m, e43, b[67] == 1.0)
@constraint(m, e44, b[68] == 1.0)
@constraint(m, e45, b[69] == 1.0)
@constraint(m, e46, b[70] == 1.0)
@constraint(m, e47, b[71] == 1.0)
@constraint(m, e48, b[72] == 1.0)
@constraint(m, e49, b[73] == 1.0)
@constraint(m, e50, b[74] == 1.0)
@constraint(m, e51, b[75] == 1.0)
@constraint(m, e52, b[76] == 1.0)
@constraint(m, e53, b[77] == 1.0)
@constraint(m, e54, b[78] == 1.0)
@constraint(m, e55, b[79] == 1.0)
@constraint(m, e56, b[80] == 1.0)
@constraint(m, e57, b[81] == 1.0)
@constraint(m, e58, b[82] == 1.0)
@constraint(m, e59, b[83] == 1.0)
@constraint(m, e60, b[84] == 1.0)
@constraint(m, e61, b[85] == 1.0)
@constraint(m, e62, b[86] == 1.0)
@constraint(m, e63, b[87] == 1.0)
@constraint(m, e64, b[88] == 1.0)
@constraint(m, e65, b[89] == 1.0)
@constraint(m, e66, b[90] == 1.0)
@constraint(m, e67, b[91] == 1.0)
@constraint(m, e68, b[92] == 1.0)
@constraint(m, e69, b[93] == 1.0)
@constraint(m, e70, b[94] == 1.0)
@constraint(m, e71, b[95] == 1.0)
@constraint(m, e72, b[96] == 1.0)
@constraint(m, e73, b[97] == 1.0)
@constraint(m, e74, b[98] == 1.0)
@constraint(m, e75, b[99] == 1.0)
@constraint(m, e76, b[100] == 1.0)
@constraint(m, e77, b[101] == 1.0)
@constraint(m, e78, b[102] == 1.0)
@constraint(m, e79, b[103] == 1.0)
@constraint(m, e80, b[104] == 1.0)
@constraint(m, e81, b[105] == 1.0)
@constraint(m, e82, b[106] == 1.0)
@constraint(m, e83, b[107] == 1.0)
@constraint(m, e84, b[108] == 1.0)
@constraint(m, e85, b[109] == 1.0)
@constraint(m, e86, b[110] == 1.0)
@constraint(m, e87, b[111] == 1.0)
@constraint(m, e88, b[112] == 1.0)
@constraint(m, e89, b[113] == 1.0)
@constraint(m, e90, b[114] == 1.0)
@constraint(m, e91, b[115] == 1.0)
@constraint(m, e92, b[116] == 1.0)
@constraint(m, e93, b[117] == 1.0)
@constraint(m, e94, b[118] == 1.0)
@constraint(m, e95, b[119] == 1.0)
@constraint(m, e96, b[120] == 1.0)
@constraint(m, e97, b[121] == 1.0)
@constraint(m, e98, b[122] == 1.0)
@constraint(m, e99, b[123] == 1.0)
@constraint(m, e100, b[124] == 1.0)
@constraint(m, e101, b[125] == 1.0)
@constraint(m, e102, b[126] == 1.0)
@constraint(m, e103, b[127] == 1.0)
@constraint(m, e104, b[128] == 1.0)
@constraint(m, e105, b[129] == 1.0)
@constraint(m, e106, b[130] == 1.0)
@constraint(m, e107, b[131] == 1.0)
@constraint(m, e108, b[132] == 1.0)
@constraint(m, e109, b[133] == 1.0)
@constraint(m, e110, b[134] == 1.0)
@constraint(m, e111, b[135] == 1.0)
@constraint(m, e112, b[136] == 1.0)
@constraint(m, e113, b[137] == 1.0)
@constraint(m, e114, b[138] == 1.0)
@constraint(m, e115, b[139] == 1.0)
@constraint(m, e116, b[140] == 1.0)
@constraint(m, e117, b[141] == 1.0)
@constraint(m, e118, b[142] == 1.0)
@constraint(m, e119, b[143] == 1.0)
@constraint(m, e120, b[144] == 1.0)
@constraint(m, e121, b[145] == 1.0)
@constraint(m, e122, b[146] == 1.0)
@constraint(m, e123, b[147] == 1.0)
@constraint(m, e124, b[148] == 1.0)
@constraint(m, e125, b[149] == 1.0)
@constraint(m, e126, b[150] == 1.0)
@constraint(m, e127, b[151] == 1.0)
@constraint(m, e128, b[152] == 1.0)
@constraint(m, e129, b[153] == 1.0)
@constraint(m, e130, b[154] == 1.0)
@constraint(m, e131, b[155] == 1.0)
@constraint(m, e132, b[156] == 1.0)
@constraint(m, e133, b[157] == 1.0)
@constraint(m, e134, b[158] == 1.0)
@constraint(m, e135, b[159] == 1.0)
@constraint(m, e136, b[160] == 1.0)
@constraint(m, e137, b[161] == 1.0)
@constraint(m, e138, b[162] == 1.0)
@constraint(m, e139, b[163] == 1.0)
@constraint(m, e140, b[164] == 1.0)
@constraint(m, e141, b[165] == 1.0)
@constraint(m, e142, b[166] == 1.0)
@constraint(m, e143, b[167] == 1.0)
@constraint(m, e144, b[168] == 1.0)
@constraint(m, e145, b[169] == 1.0)
@constraint(m, e146, 2*b[170] == 1.0)
@constraint(m, e147, 2*b[171] == 1.0)
@constraint(m, e148, 2*b[172] == 1.0)
@constraint(m, e149, 2*b[173] == 1.0)
@constraint(m, e150, 2*b[174] == 1.0)
@constraint(m, e151, 2*b[175] == 1.0)
@constraint(m, e152, b[176]+b[194] == 1.0)
@constraint(m, e153, b[177]+b[195] == 1.0)
@constraint(m, e154, b[178]+b[196] == 1.0)
@constraint(m, e155, b[179]+b[197] == 1.0)
@constraint(m, e156, b[180]+b[198] == 1.0)
@constraint(m, e157, b[181]+b[199] == 1.0)
@constraint(m, e158, b[182]+b[218] == 1.0)
@constraint(m, e159, b[183]+b[219] == 1.0)
@constraint(m, e160, b[184]+b[220] == 1.0)
@constraint(m, e161, b[185]+b[221] == 1.0)
@constraint(m, e162, b[186]+b[222] == 1.0)
@constraint(m, e163, b[187]+b[223] == 1.0)
@constraint(m, e164, b[188]+b[242] == 1.0)
@constraint(m, e165, b[189]+b[243] == 1.0)
@constraint(m, e166, b[190]+b[244] == 1.0)
@constraint(m, e167, b[191]+b[245] == 1.0)
@constraint(m, e168, b[192]+b[246] == 1.0)
@constraint(m, e169, b[193]+b[247] == 1.0)
@constraint(m, e170, b[176]+b[194] == 1.0)
@constraint(m, e171, b[177]+b[195] == 1.0)
@constraint(m, e172, b[178]+b[196] == 1.0)
@constraint(m, e173, b[179]+b[197] == 1.0)
@constraint(m, e174, b[180]+b[198] == 1.0)
@constraint(m, e175, b[181]+b[199] == 1.0)
@constraint(m, e176, 2*b[200] == 1.0)
@constraint(m, e177, 2*b[201] == 1.0)
@constraint(m, e178, 2*b[202] == 1.0)
@constraint(m, e179, 2*b[203] == 1.0)
@constraint(m, e180, 2*b[204] == 1.0)
@constraint(m, e181, 2*b[205] == 1.0)
@constraint(m, e182, b[206]+b[224] == 1.0)
@constraint(m, e183, b[207]+b[225] == 1.0)
@constraint(m, e184, b[208]+b[226] == 1.0)
@constraint(m, e185, b[209]+b[227] == 1.0)
@constraint(m, e186, b[210]+b[228] == 1.0)
@constraint(m, e187, b[211]+b[229] == 1.0)
@constraint(m, e188, b[212]+b[248] == 1.0)
@constraint(m, e189, b[213]+b[249] == 1.0)
@constraint(m, e190, b[214]+b[250] == 1.0)
@constraint(m, e191, b[215]+b[251] == 1.0)
@constraint(m, e192, b[216]+b[252] == 1.0)
@constraint(m, e193, b[217]+b[253] == 1.0)
@constraint(m, e194, b[182]+b[218] == 1.0)
@constraint(m, e195, b[183]+b[219] == 1.0)
@constraint(m, e196, b[184]+b[220] == 1.0)
@constraint(m, e197, b[185]+b[221] == 1.0)
@constraint(m, e198, b[186]+b[222] == 1.0)
@constraint(m, e199, b[187]+b[223] == 1.0)
@constraint(m, e200, b[206]+b[224] == 1.0)
@constraint(m, e201, b[207]+b[225] == 1.0)
@constraint(m, e202, b[208]+b[226] == 1.0)
@constraint(m, e203, b[209]+b[227] == 1.0)
@constraint(m, e204, b[210]+b[228] == 1.0)
@constraint(m, e205, b[211]+b[229] == 1.0)
@constraint(m, e206, 2*b[230] == 1.0)
@constraint(m, e207, 2*b[231] == 1.0)
@constraint(m, e208, 2*b[232] == 1.0)
@constraint(m, e209, 2*b[233] == 1.0)
@constraint(m, e210, 2*b[234] == 1.0)
@constraint(m, e211, 2*b[235] == 1.0)
@constraint(m, e212, b[236]+b[254] == 1.0)
@constraint(m, e213, b[237]+b[255] == 1.0)
@constraint(m, e214, b[238]+b[256] == 1.0)
@constraint(m, e215, b[239]+b[257] == 1.0)
@constraint(m, e216, b[240]+b[258] == 1.0)
@constraint(m, e217, b[241]+b[259] == 1.0)
@constraint(m, e218, b[188]+b[242] == 1.0)
@constraint(m, e219, b[189]+b[243] == 1.0)
@constraint(m, e220, b[190]+b[244] == 1.0)
@constraint(m, e221, b[191]+b[245] == 1.0)
@constraint(m, e222, b[192]+b[246] == 1.0)
@constraint(m, e223, b[193]+b[247] == 1.0)
@constraint(m, e224, b[212]+b[248] == 1.0)
@constraint(m, e225, b[213]+b[249] == 1.0)
@constraint(m, e226, b[214]+b[250] == 1.0)
@constraint(m, e227, b[215]+b[251] == 1.0)
@constraint(m, e228, b[216]+b[252] == 1.0)
@constraint(m, e229, b[217]+b[253] == 1.0)
@constraint(m, e230, b[236]+b[254] == 1.0)
@constraint(m, e231, b[237]+b[255] == 1.0)
@constraint(m, e232, b[238]+b[256] == 1.0)
@constraint(m, e233, b[239]+b[257] == 1.0)
@constraint(m, e234, b[240]+b[258] == 1.0)
@constraint(m, e235, b[241]+b[259] == 1.0)
@constraint(m, e236, 2*b[260] == 1.0)
@constraint(m, e237, 2*b[261] == 1.0)
@constraint(m, e238, 2*b[262] == 1.0)
@constraint(m, e239, 2*b[263] == 1.0)
@constraint(m, e240, 2*b[264] == 1.0)
@constraint(m, e241, 2*b[265] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
