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
@NLconstraint(m, e2, x[2]-b[26]*(3+x[2]) >= 0.0)
@NLconstraint(m, e3, -b[27]*(3+x[2])+x[3] >= 0.0)
@NLconstraint(m, e4, -b[28]*(3+x[2])+x[4] >= 0.0)
@NLconstraint(m, e5, -b[29]*(3+x[2])+x[5] >= 0.0)
@NLconstraint(m, e6, -b[30]*(3+x[2])+x[6] >= 0.0)
@NLconstraint(m, e7, -b[31]*(3+x[2])+x[7] >= 0.0)
@NLconstraint(m, e8, -b[32]*(16+x[3])+x[2] >= 0.0)
@NLconstraint(m, e9, x[3]-b[33]*(16+x[3]) >= 0.0)
@NLconstraint(m, e10, -b[34]*(16+x[3])+x[4] >= 0.0)
@NLconstraint(m, e11, -b[35]*(16+x[3])+x[5] >= 0.0)
@NLconstraint(m, e12, -b[36]*(16+x[3])+x[6] >= 0.0)
@NLconstraint(m, e13, -b[37]*(16+x[3])+x[7] >= 0.0)
@NLconstraint(m, e14, -b[38]*(50+x[4])+x[2] >= 0.0)
@NLconstraint(m, e15, -b[39]*(50+x[4])+x[3] >= 0.0)
@NLconstraint(m, e16, x[4]-b[40]*(50+x[4]) >= 0.0)
@NLconstraint(m, e17, -b[41]*(50+x[4])+x[5] >= 0.0)
@NLconstraint(m, e18, -b[42]*(50+x[4])+x[6] >= 0.0)
@NLconstraint(m, e19, -b[43]*(50+x[4])+x[7] >= 0.0)
@NLconstraint(m, e20, -b[44]*(100+x[5])+x[2] >= 0.0)
@NLconstraint(m, e21, -b[45]*(100+x[5])+x[3] >= 0.0)
@NLconstraint(m, e22, -b[46]*(100+x[5])+x[4] >= 0.0)
@NLconstraint(m, e23, x[5]-b[47]*(100+x[5]) >= 0.0)
@NLconstraint(m, e24, -b[48]*(100+x[5])+x[6] >= 0.0)
@NLconstraint(m, e25, -b[49]*(100+x[5])+x[7] >= 0.0)
@NLconstraint(m, e26, -b[50]*(20+x[6])+x[2] >= 0.0)
@NLconstraint(m, e27, -b[51]*(20+x[6])+x[3] >= 0.0)
@NLconstraint(m, e28, -b[52]*(20+x[6])+x[4] >= 0.0)
@NLconstraint(m, e29, -b[53]*(20+x[6])+x[5] >= 0.0)
@NLconstraint(m, e30, x[6]-b[54]*(20+x[6]) >= 0.0)
@NLconstraint(m, e31, -b[55]*(20+x[6])+x[7] >= 0.0)
@NLconstraint(m, e32, -b[56]*(34+x[7])+x[2] >= 0.0)
@NLconstraint(m, e33, -b[57]*(34+x[7])+x[3] >= 0.0)
@NLconstraint(m, e34, -b[58]*(34+x[7])+x[4] >= 0.0)
@NLconstraint(m, e35, -b[59]*(34+x[7])+x[5] >= 0.0)
@NLconstraint(m, e36, -b[60]*(34+x[7])+x[6] >= 0.0)
@NLconstraint(m, e37, x[7]-b[61]*(34+x[7]) >= 0.0)
@NLconstraint(m, e38, x[8]-b[62]*(5+x[8]) >= 0.0)
@NLconstraint(m, e39, -b[63]*(5+x[8])+x[9] >= 0.0)
@NLconstraint(m, e40, -b[64]*(5+x[8])+x[10] >= 0.0)
@NLconstraint(m, e41, -b[65]*(5+x[8])+x[11] >= 0.0)
@NLconstraint(m, e42, -b[66]*(5+x[8])+x[12] >= 0.0)
@NLconstraint(m, e43, -b[67]*(5+x[8])+x[13] >= 0.0)
@NLconstraint(m, e44, -b[68]*(15+x[9])+x[8] >= 0.0)
@NLconstraint(m, e45, x[9]-b[69]*(15+x[9]) >= 0.0)
@NLconstraint(m, e46, -b[70]*(15+x[9])+x[10] >= 0.0)
@NLconstraint(m, e47, -b[71]*(15+x[9])+x[11] >= 0.0)
@NLconstraint(m, e48, -b[72]*(15+x[9])+x[12] >= 0.0)
@NLconstraint(m, e49, -b[73]*(15+x[9])+x[13] >= 0.0)
@NLconstraint(m, e50, -b[74]*(20+x[10])+x[8] >= 0.0)
@NLconstraint(m, e51, -b[75]*(20+x[10])+x[9] >= 0.0)
@NLconstraint(m, e52, x[10]-b[76]*(20+x[10]) >= 0.0)
@NLconstraint(m, e53, -b[77]*(20+x[10])+x[11] >= 0.0)
@NLconstraint(m, e54, -b[78]*(20+x[10])+x[12] >= 0.0)
@NLconstraint(m, e55, -b[79]*(20+x[10])+x[13] >= 0.0)
@NLconstraint(m, e56, -b[80]*(130+x[11])+x[8] >= 0.0)
@NLconstraint(m, e57, -b[81]*(130+x[11])+x[9] >= 0.0)
@NLconstraint(m, e58, -b[82]*(130+x[11])+x[10] >= 0.0)
@NLconstraint(m, e59, x[11]-b[83]*(130+x[11]) >= 0.0)
@NLconstraint(m, e60, -b[84]*(130+x[11])+x[12] >= 0.0)
@NLconstraint(m, e61, -b[85]*(130+x[11])+x[13] >= 0.0)
@NLconstraint(m, e62, -b[86]*(23+x[12])+x[8] >= 0.0)
@NLconstraint(m, e63, -b[87]*(23+x[12])+x[9] >= 0.0)
@NLconstraint(m, e64, -b[88]*(23+x[12])+x[10] >= 0.0)
@NLconstraint(m, e65, -b[89]*(23+x[12])+x[11] >= 0.0)
@NLconstraint(m, e66, x[12]-b[90]*(23+x[12]) >= 0.0)
@NLconstraint(m, e67, -b[91]*(23+x[12])+x[13] >= 0.0)
@NLconstraint(m, e68, -b[92]*(30+x[13])+x[8] >= 0.0)
@NLconstraint(m, e69, -b[93]*(30+x[13])+x[9] >= 0.0)
@NLconstraint(m, e70, -b[94]*(30+x[13])+x[10] >= 0.0)
@NLconstraint(m, e71, -b[95]*(30+x[13])+x[11] >= 0.0)
@NLconstraint(m, e72, -b[96]*(30+x[13])+x[12] >= 0.0)
@NLconstraint(m, e73, x[13]-b[97]*(30+x[13]) >= 0.0)
@NLconstraint(m, e74, x[14]-b[98]*(7+x[14]) >= 0.0)
@NLconstraint(m, e75, -b[99]*(7+x[14])+x[15] >= 0.0)
@NLconstraint(m, e76, -b[100]*(7+x[14])+x[16] >= 0.0)
@NLconstraint(m, e77, -b[101]*(7+x[14])+x[17] >= 0.0)
@NLconstraint(m, e78, -b[102]*(7+x[14])+x[18] >= 0.0)
@NLconstraint(m, e79, -b[103]*(7+x[14])+x[19] >= 0.0)
@NLconstraint(m, e80, -b[104]*(14+x[15])+x[14] >= 0.0)
@NLconstraint(m, e81, x[15]-b[105]*(14+x[15]) >= 0.0)
@NLconstraint(m, e82, -b[106]*(14+x[15])+x[16] >= 0.0)
@NLconstraint(m, e83, -b[107]*(14+x[15])+x[17] >= 0.0)
@NLconstraint(m, e84, -b[108]*(14+x[15])+x[18] >= 0.0)
@NLconstraint(m, e85, -b[109]*(14+x[15])+x[19] >= 0.0)
@NLconstraint(m, e86, -b[110]*(10+x[16])+x[14] >= 0.0)
@NLconstraint(m, e87, -b[111]*(10+x[16])+x[15] >= 0.0)
@NLconstraint(m, e88, x[16]-b[112]*(10+x[16]) >= 0.0)
@NLconstraint(m, e89, -b[113]*(10+x[16])+x[17] >= 0.0)
@NLconstraint(m, e90, -b[114]*(10+x[16])+x[18] >= 0.0)
@NLconstraint(m, e91, -b[115]*(10+x[16])+x[19] >= 0.0)
@NLconstraint(m, e92, -b[116]*(10+x[17])+x[14] >= 0.0)
@NLconstraint(m, e93, -b[117]*(10+x[17])+x[15] >= 0.0)
@NLconstraint(m, e94, -b[118]*(10+x[17])+x[16] >= 0.0)
@NLconstraint(m, e95, x[17]-b[119]*(10+x[17]) >= 0.0)
@NLconstraint(m, e96, -b[120]*(10+x[17])+x[18] >= 0.0)
@NLconstraint(m, e97, -b[121]*(10+x[17])+x[19] >= 0.0)
@NLconstraint(m, e98, -b[122]*(20+x[18])+x[14] >= 0.0)
@NLconstraint(m, e99, -b[123]*(20+x[18])+x[15] >= 0.0)
@NLconstraint(m, e100, -b[124]*(20+x[18])+x[16] >= 0.0)
@NLconstraint(m, e101, -b[125]*(20+x[18])+x[17] >= 0.0)
@NLconstraint(m, e102, x[18]-b[126]*(20+x[18]) >= 0.0)
@NLconstraint(m, e103, -b[127]*(20+x[18])+x[19] >= 0.0)
@NLconstraint(m, e104, -b[128]*(21+x[19])+x[14] >= 0.0)
@NLconstraint(m, e105, -b[129]*(21+x[19])+x[15] >= 0.0)
@NLconstraint(m, e106, -b[130]*(21+x[19])+x[16] >= 0.0)
@NLconstraint(m, e107, -b[131]*(21+x[19])+x[17] >= 0.0)
@NLconstraint(m, e108, -b[132]*(21+x[19])+x[18] >= 0.0)
@NLconstraint(m, e109, x[19]-b[133]*(21+x[19]) >= 0.0)
@NLconstraint(m, e110, x[20]-b[134]*(3+x[20]) >= 0.0)
@NLconstraint(m, e111, -b[135]*(3+x[20])+x[21] >= 0.0)
@NLconstraint(m, e112, -b[136]*(3+x[20])+x[22] >= 0.0)
@NLconstraint(m, e113, -b[137]*(3+x[20])+x[23] >= 0.0)
@NLconstraint(m, e114, -b[138]*(3+x[20])+x[24] >= 0.0)
@NLconstraint(m, e115, -b[139]*(3+x[20])+x[25] >= 0.0)
@NLconstraint(m, e116, -b[140]*(15+x[21])+x[20] >= 0.0)
@NLconstraint(m, e117, x[21]-b[141]*(15+x[21]) >= 0.0)
@NLconstraint(m, e118, -b[142]*(15+x[21])+x[22] >= 0.0)
@NLconstraint(m, e119, -b[143]*(15+x[21])+x[23] >= 0.0)
@NLconstraint(m, e120, -b[144]*(15+x[21])+x[24] >= 0.0)
@NLconstraint(m, e121, -b[145]*(15+x[21])+x[25] >= 0.0)
@NLconstraint(m, e122, -b[146]*(30+x[22])+x[20] >= 0.0)
@NLconstraint(m, e123, -b[147]*(30+x[22])+x[21] >= 0.0)
@NLconstraint(m, e124, x[22]-b[148]*(30+x[22]) >= 0.0)
@NLconstraint(m, e125, -b[149]*(30+x[22])+x[23] >= 0.0)
@NLconstraint(m, e126, -b[150]*(30+x[22])+x[24] >= 0.0)
@NLconstraint(m, e127, -b[151]*(30+x[22])+x[25] >= 0.0)
@NLconstraint(m, e128, -b[152]*(110+x[23])+x[20] >= 0.0)
@NLconstraint(m, e129, -b[153]*(110+x[23])+x[21] >= 0.0)
@NLconstraint(m, e130, -b[154]*(110+x[23])+x[22] >= 0.0)
@NLconstraint(m, e131, x[23]-b[155]*(110+x[23]) >= 0.0)
@NLconstraint(m, e132, -b[156]*(110+x[23])+x[24] >= 0.0)
@NLconstraint(m, e133, -b[157]*(110+x[23])+x[25] >= 0.0)
@NLconstraint(m, e134, -b[158]*(19+x[24])+x[20] >= 0.0)
@NLconstraint(m, e135, -b[159]*(19+x[24])+x[21] >= 0.0)
@NLconstraint(m, e136, -b[160]*(19+x[24])+x[22] >= 0.0)
@NLconstraint(m, e137, -b[161]*(19+x[24])+x[23] >= 0.0)
@NLconstraint(m, e138, x[24]-b[162]*(19+x[24]) >= 0.0)
@NLconstraint(m, e139, -b[163]*(19+x[24])+x[25] >= 0.0)
@NLconstraint(m, e140, -b[164]*(18+x[25])+x[20] >= 0.0)
@NLconstraint(m, e141, -b[165]*(18+x[25])+x[21] >= 0.0)
@NLconstraint(m, e142, -b[166]*(18+x[25])+x[22] >= 0.0)
@NLconstraint(m, e143, -b[167]*(18+x[25])+x[23] >= 0.0)
@NLconstraint(m, e144, -b[168]*(18+x[25])+x[24] >= 0.0)
@NLconstraint(m, e145, x[25]-b[169]*(18+x[25]) >= 0.0)
@constraint(m, e146, 2*b[26] == 1.0)
@constraint(m, e147, b[27]+b[32] == 1.0)
@constraint(m, e148, b[28]+b[38] == 1.0)
@constraint(m, e149, b[29]+b[44] == 1.0)
@constraint(m, e150, b[30]+b[50] == 1.0)
@constraint(m, e151, b[31]+b[56] == 1.0)
@constraint(m, e152, b[27]+b[32] == 1.0)
@constraint(m, e153, 2*b[33] == 1.0)
@constraint(m, e154, b[34]+b[39] == 1.0)
@constraint(m, e155, b[35]+b[45] == 1.0)
@constraint(m, e156, b[36]+b[51] == 1.0)
@constraint(m, e157, b[37]+b[57] == 1.0)
@constraint(m, e158, b[28]+b[38] == 1.0)
@constraint(m, e159, b[34]+b[39] == 1.0)
@constraint(m, e160, 2*b[40] == 1.0)
@constraint(m, e161, b[41]+b[46] == 1.0)
@constraint(m, e162, b[42]+b[52] == 1.0)
@constraint(m, e163, b[43]+b[58] == 1.0)
@constraint(m, e164, b[29]+b[44] == 1.0)
@constraint(m, e165, b[35]+b[45] == 1.0)
@constraint(m, e166, b[41]+b[46] == 1.0)
@constraint(m, e167, 2*b[47] == 1.0)
@constraint(m, e168, b[48]+b[53] == 1.0)
@constraint(m, e169, b[49]+b[59] == 1.0)
@constraint(m, e170, b[30]+b[50] == 1.0)
@constraint(m, e171, b[36]+b[51] == 1.0)
@constraint(m, e172, b[42]+b[52] == 1.0)
@constraint(m, e173, b[48]+b[53] == 1.0)
@constraint(m, e174, 2*b[54] == 1.0)
@constraint(m, e175, b[55]+b[60] == 1.0)
@constraint(m, e176, b[31]+b[56] == 1.0)
@constraint(m, e177, b[37]+b[57] == 1.0)
@constraint(m, e178, b[43]+b[58] == 1.0)
@constraint(m, e179, b[49]+b[59] == 1.0)
@constraint(m, e180, b[55]+b[60] == 1.0)
@constraint(m, e181, 2*b[61] == 1.0)
@constraint(m, e182, 2*b[62] == 1.0)
@constraint(m, e183, b[63]+b[68] == 1.0)
@constraint(m, e184, b[64]+b[74] == 1.0)
@constraint(m, e185, b[65]+b[80] == 1.0)
@constraint(m, e186, b[66]+b[86] == 1.0)
@constraint(m, e187, b[67]+b[92] == 1.0)
@constraint(m, e188, b[63]+b[68] == 1.0)
@constraint(m, e189, 2*b[69] == 1.0)
@constraint(m, e190, b[70]+b[75] == 1.0)
@constraint(m, e191, b[71]+b[81] == 1.0)
@constraint(m, e192, b[72]+b[87] == 1.0)
@constraint(m, e193, b[73]+b[93] == 1.0)
@constraint(m, e194, b[64]+b[74] == 1.0)
@constraint(m, e195, b[70]+b[75] == 1.0)
@constraint(m, e196, 2*b[76] == 1.0)
@constraint(m, e197, b[77]+b[82] == 1.0)
@constraint(m, e198, b[78]+b[88] == 1.0)
@constraint(m, e199, b[79]+b[94] == 1.0)
@constraint(m, e200, b[65]+b[80] == 1.0)
@constraint(m, e201, b[71]+b[81] == 1.0)
@constraint(m, e202, b[77]+b[82] == 1.0)
@constraint(m, e203, 2*b[83] == 1.0)
@constraint(m, e204, b[84]+b[89] == 1.0)
@constraint(m, e205, b[85]+b[95] == 1.0)
@constraint(m, e206, b[66]+b[86] == 1.0)
@constraint(m, e207, b[72]+b[87] == 1.0)
@constraint(m, e208, b[78]+b[88] == 1.0)
@constraint(m, e209, b[84]+b[89] == 1.0)
@constraint(m, e210, 2*b[90] == 1.0)
@constraint(m, e211, b[91]+b[96] == 1.0)
@constraint(m, e212, b[67]+b[92] == 1.0)
@constraint(m, e213, b[73]+b[93] == 1.0)
@constraint(m, e214, b[79]+b[94] == 1.0)
@constraint(m, e215, b[85]+b[95] == 1.0)
@constraint(m, e216, b[91]+b[96] == 1.0)
@constraint(m, e217, 2*b[97] == 1.0)
@constraint(m, e218, 2*b[98] == 1.0)
@constraint(m, e219, b[99]+b[104] == 1.0)
@constraint(m, e220, b[100]+b[110] == 1.0)
@constraint(m, e221, b[101]+b[116] == 1.0)
@constraint(m, e222, b[102]+b[122] == 1.0)
@constraint(m, e223, b[103]+b[128] == 1.0)
@constraint(m, e224, b[99]+b[104] == 1.0)
@constraint(m, e225, 2*b[105] == 1.0)
@constraint(m, e226, b[106]+b[111] == 1.0)
@constraint(m, e227, b[107]+b[117] == 1.0)
@constraint(m, e228, b[108]+b[123] == 1.0)
@constraint(m, e229, b[109]+b[129] == 1.0)
@constraint(m, e230, b[100]+b[110] == 1.0)
@constraint(m, e231, b[106]+b[111] == 1.0)
@constraint(m, e232, 2*b[112] == 1.0)
@constraint(m, e233, b[113]+b[118] == 1.0)
@constraint(m, e234, b[114]+b[124] == 1.0)
@constraint(m, e235, b[115]+b[130] == 1.0)
@constraint(m, e236, b[101]+b[116] == 1.0)
@constraint(m, e237, b[107]+b[117] == 1.0)
@constraint(m, e238, b[113]+b[118] == 1.0)
@constraint(m, e239, 2*b[119] == 1.0)
@constraint(m, e240, b[120]+b[125] == 1.0)
@constraint(m, e241, b[121]+b[131] == 1.0)
@constraint(m, e242, b[102]+b[122] == 1.0)
@constraint(m, e243, b[108]+b[123] == 1.0)
@constraint(m, e244, b[114]+b[124] == 1.0)
@constraint(m, e245, b[120]+b[125] == 1.0)
@constraint(m, e246, 2*b[126] == 1.0)
@constraint(m, e247, b[127]+b[132] == 1.0)
@constraint(m, e248, b[103]+b[128] == 1.0)
@constraint(m, e249, b[109]+b[129] == 1.0)
@constraint(m, e250, b[115]+b[130] == 1.0)
@constraint(m, e251, b[121]+b[131] == 1.0)
@constraint(m, e252, b[127]+b[132] == 1.0)
@constraint(m, e253, 2*b[133] == 1.0)
@constraint(m, e254, 2*b[134] == 1.0)
@constraint(m, e255, b[135]+b[140] == 1.0)
@constraint(m, e256, b[136]+b[146] == 1.0)
@constraint(m, e257, b[137]+b[152] == 1.0)
@constraint(m, e258, b[138]+b[158] == 1.0)
@constraint(m, e259, b[139]+b[164] == 1.0)
@constraint(m, e260, b[135]+b[140] == 1.0)
@constraint(m, e261, 2*b[141] == 1.0)
@constraint(m, e262, b[142]+b[147] == 1.0)
@constraint(m, e263, b[143]+b[153] == 1.0)
@constraint(m, e264, b[144]+b[159] == 1.0)
@constraint(m, e265, b[145]+b[165] == 1.0)
@constraint(m, e266, b[136]+b[146] == 1.0)
@constraint(m, e267, b[142]+b[147] == 1.0)
@constraint(m, e268, 2*b[148] == 1.0)
@constraint(m, e269, b[149]+b[154] == 1.0)
@constraint(m, e270, b[150]+b[160] == 1.0)
@constraint(m, e271, b[151]+b[166] == 1.0)
@constraint(m, e272, b[137]+b[152] == 1.0)
@constraint(m, e273, b[143]+b[153] == 1.0)
@constraint(m, e274, b[149]+b[154] == 1.0)
@constraint(m, e275, 2*b[155] == 1.0)
@constraint(m, e276, b[156]+b[161] == 1.0)
@constraint(m, e277, b[157]+b[167] == 1.0)
@constraint(m, e278, b[138]+b[158] == 1.0)
@constraint(m, e279, b[144]+b[159] == 1.0)
@constraint(m, e280, b[150]+b[160] == 1.0)
@constraint(m, e281, b[156]+b[161] == 1.0)
@constraint(m, e282, 2*b[162] == 1.0)
@constraint(m, e283, b[163]+b[168] == 1.0)
@constraint(m, e284, b[139]+b[164] == 1.0)
@constraint(m, e285, b[145]+b[165] == 1.0)
@constraint(m, e286, b[151]+b[166] == 1.0)
@constraint(m, e287, b[157]+b[167] == 1.0)
@constraint(m, e288, b[163]+b[168] == 1.0)
@constraint(m, e289, 2*b[169] == 1.0)
@NLconstraint(m, e290, x[2]-b[170]*(3+x[2]) >= 0.0)
@NLconstraint(m, e291, x[3]-b[171]*(16+x[3]) >= 0.0)
@NLconstraint(m, e292, x[4]-b[172]*(50+x[4]) >= 0.0)
@NLconstraint(m, e293, x[5]-b[173]*(100+x[5]) >= 0.0)
@NLconstraint(m, e294, x[6]-b[174]*(20+x[6]) >= 0.0)
@NLconstraint(m, e295, x[7]-b[175]*(34+x[7]) >= 0.0)
@NLconstraint(m, e296, -b[176]*(3+x[2])+x[8] >= 0.0)
@NLconstraint(m, e297, -b[177]*(16+x[3])+x[9] >= 0.0)
@NLconstraint(m, e298, -b[178]*(50+x[4])+x[10] >= 0.0)
@NLconstraint(m, e299, -b[179]*(100+x[5])+x[11] >= 0.0)
@NLconstraint(m, e300, -b[180]*(20+x[6])+x[12] >= 0.0)
@NLconstraint(m, e301, -b[181]*(34+x[7])+x[13] >= 0.0)
@NLconstraint(m, e302, -b[182]*(3+x[2])+x[14] >= 0.0)
@NLconstraint(m, e303, -b[183]*(16+x[3])+x[15] >= 0.0)
@NLconstraint(m, e304, -b[184]*(50+x[4])+x[16] >= 0.0)
@NLconstraint(m, e305, -b[185]*(100+x[5])+x[17] >= 0.0)
@NLconstraint(m, e306, -b[186]*(20+x[6])+x[18] >= 0.0)
@NLconstraint(m, e307, -b[187]*(34+x[7])+x[19] >= 0.0)
@NLconstraint(m, e308, -b[188]*(3+x[2])+x[20] >= 0.0)
@NLconstraint(m, e309, -b[189]*(16+x[3])+x[21] >= 0.0)
@NLconstraint(m, e310, -b[190]*(50+x[4])+x[22] >= 0.0)
@NLconstraint(m, e311, -b[191]*(100+x[5])+x[23] >= 0.0)
@NLconstraint(m, e312, -b[192]*(20+x[6])+x[24] >= 0.0)
@NLconstraint(m, e313, -b[193]*(34+x[7])+x[25] >= 0.0)
@NLconstraint(m, e314, -b[194]*(5+x[8])+x[2] >= 0.0)
@NLconstraint(m, e315, -b[195]*(15+x[9])+x[3] >= 0.0)
@NLconstraint(m, e316, -b[196]*(20+x[10])+x[4] >= 0.0)
@NLconstraint(m, e317, -b[197]*(130+x[11])+x[5] >= 0.0)
@NLconstraint(m, e318, -b[198]*(23+x[12])+x[6] >= 0.0)
@NLconstraint(m, e319, -b[199]*(30+x[13])+x[7] >= 0.0)
@NLconstraint(m, e320, x[8]-b[200]*(5+x[8]) >= 0.0)
@NLconstraint(m, e321, x[9]-b[201]*(15+x[9]) >= 0.0)
@NLconstraint(m, e322, x[10]-b[202]*(20+x[10]) >= 0.0)
@NLconstraint(m, e323, x[11]-b[203]*(130+x[11]) >= 0.0)
@NLconstraint(m, e324, x[12]-b[204]*(23+x[12]) >= 0.0)
@NLconstraint(m, e325, x[13]-b[205]*(30+x[13]) >= 0.0)
@NLconstraint(m, e326, -b[206]*(5+x[8])+x[14] >= 0.0)
@NLconstraint(m, e327, -b[207]*(15+x[9])+x[15] >= 0.0)
@NLconstraint(m, e328, -b[208]*(20+x[10])+x[16] >= 0.0)
@NLconstraint(m, e329, -b[209]*(130+x[11])+x[17] >= 0.0)
@NLconstraint(m, e330, -b[210]*(23+x[12])+x[18] >= 0.0)
@NLconstraint(m, e331, -b[211]*(30+x[13])+x[19] >= 0.0)
@NLconstraint(m, e332, -b[212]*(5+x[8])+x[20] >= 0.0)
@NLconstraint(m, e333, -b[213]*(15+x[9])+x[21] >= 0.0)
@NLconstraint(m, e334, -b[214]*(20+x[10])+x[22] >= 0.0)
@NLconstraint(m, e335, -b[215]*(130+x[11])+x[23] >= 0.0)
@NLconstraint(m, e336, -b[216]*(23+x[12])+x[24] >= 0.0)
@NLconstraint(m, e337, -b[217]*(30+x[13])+x[25] >= 0.0)
@NLconstraint(m, e338, -b[218]*(7+x[14])+x[2] >= 0.0)
@NLconstraint(m, e339, -b[219]*(14+x[15])+x[3] >= 0.0)
@NLconstraint(m, e340, -b[220]*(10+x[16])+x[4] >= 0.0)
@NLconstraint(m, e341, -b[221]*(10+x[17])+x[5] >= 0.0)
@NLconstraint(m, e342, -b[222]*(20+x[18])+x[6] >= 0.0)
@NLconstraint(m, e343, -b[223]*(21+x[19])+x[7] >= 0.0)
@NLconstraint(m, e344, -b[224]*(7+x[14])+x[8] >= 0.0)
@NLconstraint(m, e345, -b[225]*(14+x[15])+x[9] >= 0.0)
@NLconstraint(m, e346, -b[226]*(10+x[16])+x[10] >= 0.0)
@NLconstraint(m, e347, -b[227]*(10+x[17])+x[11] >= 0.0)
@NLconstraint(m, e348, -b[228]*(20+x[18])+x[12] >= 0.0)
@NLconstraint(m, e349, -b[229]*(21+x[19])+x[13] >= 0.0)
@NLconstraint(m, e350, x[14]-b[230]*(7+x[14]) >= 0.0)
@NLconstraint(m, e351, x[15]-b[231]*(14+x[15]) >= 0.0)
@NLconstraint(m, e352, x[16]-b[232]*(10+x[16]) >= 0.0)
@NLconstraint(m, e353, x[17]-b[233]*(10+x[17]) >= 0.0)
@NLconstraint(m, e354, x[18]-b[234]*(20+x[18]) >= 0.0)
@NLconstraint(m, e355, x[19]-b[235]*(21+x[19]) >= 0.0)
@NLconstraint(m, e356, -b[236]*(7+x[14])+x[20] >= 0.0)
@NLconstraint(m, e357, -b[237]*(14+x[15])+x[21] >= 0.0)
@NLconstraint(m, e358, -b[238]*(10+x[16])+x[22] >= 0.0)
@NLconstraint(m, e359, -b[239]*(10+x[17])+x[23] >= 0.0)
@NLconstraint(m, e360, -b[240]*(20+x[18])+x[24] >= 0.0)
@NLconstraint(m, e361, -b[241]*(21+x[19])+x[25] >= 0.0)
@NLconstraint(m, e362, -b[242]*(3+x[20])+x[2] >= 0.0)
@NLconstraint(m, e363, -b[243]*(15+x[21])+x[3] >= 0.0)
@NLconstraint(m, e364, -b[244]*(30+x[22])+x[4] >= 0.0)
@NLconstraint(m, e365, -b[245]*(110+x[23])+x[5] >= 0.0)
@NLconstraint(m, e366, -b[246]*(19+x[24])+x[6] >= 0.0)
@NLconstraint(m, e367, -b[247]*(18+x[25])+x[7] >= 0.0)
@NLconstraint(m, e368, -b[248]*(3+x[20])+x[8] >= 0.0)
@NLconstraint(m, e369, -b[249]*(15+x[21])+x[9] >= 0.0)
@NLconstraint(m, e370, -b[250]*(30+x[22])+x[10] >= 0.0)
@NLconstraint(m, e371, -b[251]*(110+x[23])+x[11] >= 0.0)
@NLconstraint(m, e372, -b[252]*(19+x[24])+x[12] >= 0.0)
@NLconstraint(m, e373, -b[253]*(18+x[25])+x[13] >= 0.0)
@NLconstraint(m, e374, -b[254]*(3+x[20])+x[14] >= 0.0)
@NLconstraint(m, e375, -b[255]*(15+x[21])+x[15] >= 0.0)
@NLconstraint(m, e376, -b[256]*(30+x[22])+x[16] >= 0.0)
@NLconstraint(m, e377, -b[257]*(110+x[23])+x[17] >= 0.0)
@NLconstraint(m, e378, -b[258]*(19+x[24])+x[18] >= 0.0)
@NLconstraint(m, e379, -b[259]*(18+x[25])+x[19] >= 0.0)
@NLconstraint(m, e380, x[20]-b[260]*(3+x[20]) >= 0.0)
@NLconstraint(m, e381, x[21]-b[261]*(15+x[21]) >= 0.0)
@NLconstraint(m, e382, x[22]-b[262]*(30+x[22]) >= 0.0)
@NLconstraint(m, e383, x[23]-b[263]*(110+x[23]) >= 0.0)
@NLconstraint(m, e384, x[24]-b[264]*(19+x[24]) >= 0.0)
@NLconstraint(m, e385, x[25]-b[265]*(18+x[25]) >= 0.0)
@constraint(m, e386, 2*b[170] == 1.0)
@constraint(m, e387, 2*b[171] == 1.0)
@constraint(m, e388, 2*b[172] == 1.0)
@constraint(m, e389, 2*b[173] == 1.0)
@constraint(m, e390, 2*b[174] == 1.0)
@constraint(m, e391, 2*b[175] == 1.0)
@constraint(m, e392, b[176]+b[194] == 1.0)
@constraint(m, e393, b[177]+b[195] == 1.0)
@constraint(m, e394, b[178]+b[196] == 1.0)
@constraint(m, e395, b[179]+b[197] == 1.0)
@constraint(m, e396, b[180]+b[198] == 1.0)
@constraint(m, e397, b[181]+b[199] == 1.0)
@constraint(m, e398, b[182]+b[218] == 1.0)
@constraint(m, e399, b[183]+b[219] == 1.0)
@constraint(m, e400, b[184]+b[220] == 1.0)
@constraint(m, e401, b[185]+b[221] == 1.0)
@constraint(m, e402, b[186]+b[222] == 1.0)
@constraint(m, e403, b[187]+b[223] == 1.0)
@constraint(m, e404, b[188]+b[242] == 1.0)
@constraint(m, e405, b[189]+b[243] == 1.0)
@constraint(m, e406, b[190]+b[244] == 1.0)
@constraint(m, e407, b[191]+b[245] == 1.0)
@constraint(m, e408, b[192]+b[246] == 1.0)
@constraint(m, e409, b[193]+b[247] == 1.0)
@constraint(m, e410, b[176]+b[194] == 1.0)
@constraint(m, e411, b[177]+b[195] == 1.0)
@constraint(m, e412, b[178]+b[196] == 1.0)
@constraint(m, e413, b[179]+b[197] == 1.0)
@constraint(m, e414, b[180]+b[198] == 1.0)
@constraint(m, e415, b[181]+b[199] == 1.0)
@constraint(m, e416, 2*b[200] == 1.0)
@constraint(m, e417, 2*b[201] == 1.0)
@constraint(m, e418, 2*b[202] == 1.0)
@constraint(m, e419, 2*b[203] == 1.0)
@constraint(m, e420, 2*b[204] == 1.0)
@constraint(m, e421, 2*b[205] == 1.0)
@constraint(m, e422, b[206]+b[224] == 1.0)
@constraint(m, e423, b[207]+b[225] == 1.0)
@constraint(m, e424, b[208]+b[226] == 1.0)
@constraint(m, e425, b[209]+b[227] == 1.0)
@constraint(m, e426, b[210]+b[228] == 1.0)
@constraint(m, e427, b[211]+b[229] == 1.0)
@constraint(m, e428, b[212]+b[248] == 1.0)
@constraint(m, e429, b[213]+b[249] == 1.0)
@constraint(m, e430, b[214]+b[250] == 1.0)
@constraint(m, e431, b[215]+b[251] == 1.0)
@constraint(m, e432, b[216]+b[252] == 1.0)
@constraint(m, e433, b[217]+b[253] == 1.0)
@constraint(m, e434, b[182]+b[218] == 1.0)
@constraint(m, e435, b[183]+b[219] == 1.0)
@constraint(m, e436, b[184]+b[220] == 1.0)
@constraint(m, e437, b[185]+b[221] == 1.0)
@constraint(m, e438, b[186]+b[222] == 1.0)
@constraint(m, e439, b[187]+b[223] == 1.0)
@constraint(m, e440, b[206]+b[224] == 1.0)
@constraint(m, e441, b[207]+b[225] == 1.0)
@constraint(m, e442, b[208]+b[226] == 1.0)
@constraint(m, e443, b[209]+b[227] == 1.0)
@constraint(m, e444, b[210]+b[228] == 1.0)
@constraint(m, e445, b[211]+b[229] == 1.0)
@constraint(m, e446, 2*b[230] == 1.0)
@constraint(m, e447, 2*b[231] == 1.0)
@constraint(m, e448, 2*b[232] == 1.0)
@constraint(m, e449, 2*b[233] == 1.0)
@constraint(m, e450, 2*b[234] == 1.0)
@constraint(m, e451, 2*b[235] == 1.0)
@constraint(m, e452, b[236]+b[254] == 1.0)
@constraint(m, e453, b[237]+b[255] == 1.0)
@constraint(m, e454, b[238]+b[256] == 1.0)
@constraint(m, e455, b[239]+b[257] == 1.0)
@constraint(m, e456, b[240]+b[258] == 1.0)
@constraint(m, e457, b[241]+b[259] == 1.0)
@constraint(m, e458, b[188]+b[242] == 1.0)
@constraint(m, e459, b[189]+b[243] == 1.0)
@constraint(m, e460, b[190]+b[244] == 1.0)
@constraint(m, e461, b[191]+b[245] == 1.0)
@constraint(m, e462, b[192]+b[246] == 1.0)
@constraint(m, e463, b[193]+b[247] == 1.0)
@constraint(m, e464, b[212]+b[248] == 1.0)
@constraint(m, e465, b[213]+b[249] == 1.0)
@constraint(m, e466, b[214]+b[250] == 1.0)
@constraint(m, e467, b[215]+b[251] == 1.0)
@constraint(m, e468, b[216]+b[252] == 1.0)
@constraint(m, e469, b[217]+b[253] == 1.0)
@constraint(m, e470, b[236]+b[254] == 1.0)
@constraint(m, e471, b[237]+b[255] == 1.0)
@constraint(m, e472, b[238]+b[256] == 1.0)
@constraint(m, e473, b[239]+b[257] == 1.0)
@constraint(m, e474, b[240]+b[258] == 1.0)
@constraint(m, e475, b[241]+b[259] == 1.0)
@constraint(m, e476, 2*b[260] == 1.0)
@constraint(m, e477, 2*b[261] == 1.0)
@constraint(m, e478, 2*b[262] == 1.0)
@constraint(m, e479, 2*b[263] == 1.0)
@constraint(m, e480, 2*b[264] == 1.0)
@constraint(m, e481, 2*b[265] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
