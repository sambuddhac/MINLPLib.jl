using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
@variable(m, x[x_Idx])
b_Idx = Any[33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207]
@variable(m, b[b_Idx])
setcategory(b[35], :Bin)
setcategory(b[176], :Bin)
setcategory(b[133], :Bin)
setcategory(b[45], :Bin)
setcategory(b[169], :Bin)
setcategory(b[196], :Bin)
setcategory(b[180], :Bin)
setcategory(b[178], :Bin)
setcategory(b[64], :Bin)
setcategory(b[112], :Bin)
setcategory(b[36], :Bin)
setcategory(b[130], :Bin)
setcategory(b[87], :Bin)
setcategory(b[132], :Bin)
setlowerbound(x[3], 0.0)
setcategory(b[119], :Bin)
setcategory(b[79], :Bin)
setcategory(b[60], :Bin)
setcategory(b[159], :Bin)
setcategory(b[197], :Bin)
setcategory(b[193], :Bin)
setcategory(b[39], :Bin)
setcategory(b[37], :Bin)
setcategory(b[88], :Bin)
setcategory(b[50], :Bin)
setlowerbound(x[6], 0.0)
setcategory(b[192], :Bin)
setcategory(b[97], :Bin)
setcategory(b[200], :Bin)
setlowerbound(x[23], 0.0)
setcategory(b[188], :Bin)
setcategory(b[62], :Bin)
setcategory(b[113], :Bin)
setcategory(b[162], :Bin)
setcategory(b[161], :Bin)
setcategory(b[199], :Bin)
setcategory(b[75], :Bin)
setcategory(b[128], :Bin)
setcategory(b[167], :Bin)
setcategory(b[177], :Bin)
setcategory(b[70], :Bin)
setcategory(b[163], :Bin)
setcategory(b[41], :Bin)
setcategory(b[48], :Bin)
setlowerbound(x[9], 0.0)
setcategory(b[143], :Bin)
setcategory(b[90], :Bin)
setcategory(b[206], :Bin)
setlowerbound(x[27], 0.0)
setcategory(b[84], :Bin)
setlowerbound(x[30], 0.0)
setcategory(b[53], :Bin)
setcategory(b[116], :Bin)
setlowerbound(x[5], 0.0)
setcategory(b[61], :Bin)
setcategory(b[89], :Bin)
setcategory(b[34], :Bin)
setcategory(b[145], :Bin)
setlowerbound(x[24], 0.0)
setcategory(b[86], :Bin)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setcategory(b[114], :Bin)
setcategory(b[153], :Bin)
setcategory(b[69], :Bin)
setcategory(b[144], :Bin)
setcategory(b[68], :Bin)
setlowerbound(x[26], 0.0)
setcategory(b[166], :Bin)
setcategory(b[47], :Bin)
setlowerbound(x[12], 0.0)
setcategory(b[138], :Bin)
setcategory(b[151], :Bin)
setcategory(b[135], :Bin)
setcategory(b[108], :Bin)
setcategory(b[154], :Bin)
setcategory(b[76], :Bin)
setcategory(b[109], :Bin)
setcategory(b[174], :Bin)
setlowerbound(x[28], 0.0)
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
setcategory(b[38], :Bin)
setcategory(b[71], :Bin)
setlowerbound(x[16], 0.0)
setcategory(b[78], :Bin)
setlowerbound(x[14], 0.0)
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
setcategory(b[98], :Bin)
setlowerbound(x[4], 0.0)
setcategory(b[186], :Bin)
setcategory(b[77], :Bin)
setlowerbound(x[25], 0.0)
setcategory(b[172], :Bin)
setcategory(b[46], :Bin)
setcategory(b[127], :Bin)
setcategory(b[56], :Bin)
setcategory(b[104], :Bin)
setlowerbound(x[29], 0.0)
setcategory(b[171], :Bin)
setcategory(b[74], :Bin)
setcategory(b[92], :Bin)
setcategory(b[72], :Bin)
setcategory(b[126], :Bin)
setlowerbound(x[18], 0.0)
setcategory(b[129], :Bin)
setlowerbound(x[1], 0.0)
setcategory(b[190], :Bin)
setcategory(b[125], :Bin)
setcategory(b[184], :Bin)
setcategory(b[43], :Bin)
setcategory(b[110], :Bin)
setcategory(b[183], :Bin)
setcategory(b[117], :Bin)
setcategory(b[195], :Bin)
setcategory(b[83], :Bin)
setcategory(b[59], :Bin)
setcategory(b[204], :Bin)
setcategory(b[67], :Bin)
setcategory(b[175], :Bin)
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
setcategory(b[157], :Bin)
setcategory(b[147], :Bin)
setcategory(b[201], :Bin)
setcategory(b[156], :Bin)
setcategory(b[73], :Bin)
setcategory(b[118], :Bin)
setcategory(b[44], :Bin)
setcategory(b[158], :Bin)
setcategory(b[120], :Bin)
setcategory(b[85], :Bin)
setcategory(b[82], :Bin)
setcategory(b[42], :Bin)
setcategory(b[168], :Bin)
setcategory(b[106], :Bin)
setcategory(b[207], :Bin)
setcategory(b[81], :Bin)
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
setcategory(b[173], :Bin)
setcategory(b[40], :Bin)
setcategory(b[58], :Bin)
setcategory(b[96], :Bin)
setcategory(b[57], :Bin)
setcategory(b[102], :Bin)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setcategory(b[51], :Bin)
setcategory(b[100], :Bin)
setcategory(b[142], :Bin)
setcategory(b[65], :Bin)
setcategory(b[205], :Bin)
setcategory(b[165], :Bin)
setcategory(b[101], :Bin)
setlowerbound(x[31], 0.0)
setcategory(b[182], :Bin)
setcategory(b[194], :Bin)
setcategory(b[179], :Bin)
setcategory(b[191], :Bin)
setcategory(b[134], :Bin)
setlowerbound(x[17], 0.0)
setcategory(b[140], :Bin)
setcategory(b[91], :Bin)
setcategory(b[152], :Bin)
setcategory(b[103], :Bin)
setcategory(b[55], :Bin)
setcategory(b[148], :Bin)
setcategory(b[63], :Bin)


# ----- Constraints ----- #
@constraint(m, e1, -x[31]+x[32] == 0.0)
@constraint(m, e2, -x[2]+x[4]+7.1*b[36]+3.6*b[43]-3.6*b[50]+3.6*b[57]+190*b[80] <= 189.0)
@constraint(m, e3, -x[3]+x[4]+7.1*b[36]+3.6*b[43]-3.6*b[50]+3.6*b[57]+190*b[81] <= 189.0)
@constraint(m, e4, 7.1*b[36]+3.6*b[43]-3.6*b[50]+3.6*b[57]+190*b[82] <= 189.0)
@constraint(m, e5, x[4]-x[5]+7.1*b[36]+3.6*b[43]-3.6*b[50]+3.6*b[57]+190*b[83] <= 189.0)
@constraint(m, e6, x[4]-x[6]+7.1*b[36]+3.6*b[43]-3.6*b[50]+3.6*b[57]+190*b[84] <= 189.0)
@constraint(m, e7, x[4]-x[7]+7.1*b[36]+3.6*b[43]-3.6*b[50]+3.6*b[57]+190*b[85] <= 189.0)
@constraint(m, e8, -x[1]+x[5]+5.11*b[37]+4.86*b[44]-4.86*b[51]+4.86*b[58]+190*b[86] <= 189.3)
@constraint(m, e9, -x[3]+x[5]+5.11*b[37]+4.86*b[44]-4.86*b[51]+4.86*b[58]+190*b[88] <= 189.3)
@constraint(m, e10, -x[4]+x[5]+5.11*b[37]+4.86*b[44]-4.86*b[51]+4.86*b[58]+190*b[89] <= 189.3)
@constraint(m, e11, 5.11*b[37]+4.86*b[44]-4.86*b[51]+4.86*b[58]+190*b[90] <= 189.3)
@constraint(m, e12, x[5]-x[6]+5.11*b[37]+4.86*b[44]-4.86*b[51]+4.86*b[58]+190*b[91] <= 189.3)
@constraint(m, e13, x[5]-x[7]+5.11*b[37]+4.86*b[44]-4.86*b[51]+4.86*b[58]+190*b[92] <= 189.3)
@constraint(m, e14, -x[1]+x[6]+7.325*b[38]+4*b[45]-4*b[52]+4*b[59]+190*b[93] <= 189.2)
@constraint(m, e15, -x[2]+x[6]+7.325*b[38]+4*b[45]-4*b[52]+4*b[59]+190*b[94] <= 189.2)
@constraint(m, e16, -x[4]+x[6]+7.325*b[38]+4*b[45]-4*b[52]+4*b[59]+190*b[96] <= 189.2)
@constraint(m, e17, -x[5]+x[6]+7.325*b[38]+4*b[45]-4*b[52]+4*b[59]+190*b[97] <= 189.2)
@constraint(m, e18, 7.325*b[38]+4*b[45]-4*b[52]+4*b[59]+190*b[98] <= 189.2)
@constraint(m, e19, x[6]-x[7]+7.325*b[38]+4*b[45]-4*b[52]+4*b[59]+190*b[99] <= 189.2)
@constraint(m, e20, -x[1]+x[7]+6.7975*b[39]+4.16*b[46]-4.16*b[53]+4.16*b[60]+190*b[100] <= 189.36)
@constraint(m, e21, -x[2]+x[7]+6.7975*b[39]+4.16*b[46]-4.16*b[53]+4.16*b[60]+190*b[101] <= 189.36)
@constraint(m, e22, -x[3]+x[7]+6.7975*b[39]+4.16*b[46]-4.16*b[53]+4.16*b[60]+190*b[102] <= 189.36)
@constraint(m, e23, -x[5]+x[7]+6.7975*b[39]+4.16*b[46]-4.16*b[53]+4.16*b[60]+190*b[104] <= 189.36)
@constraint(m, e24, -x[6]+x[7]+6.7975*b[39]+4.16*b[46]-4.16*b[53]+4.16*b[60]+190*b[105] <= 189.36)
@constraint(m, e25, 6.7975*b[39]+4.16*b[46]-4.16*b[53]+4.16*b[60]+190*b[106] <= 189.36)
@NLconstraint(m, e26, x[22]*b[33]+x[25]*(b[40]-b[47]+b[54])+x[28]*(1-b[33]-b[40]+b[47]-b[54])+x[1]-x[2]+190*b[61] <= 190.0)
@NLconstraint(m, e27, x[22]*b[33]+x[25]*(b[40]-b[47]+b[54])+x[28]*(1-b[33]-b[40]+b[47]-b[54])+x[1]-x[3]+190*b[62] <= 190.0)
@NLconstraint(m, e28, x[22]*b[33]+x[25]*(b[40]-b[47]+b[54])+x[28]*(1-b[33]-b[40]+b[47]-b[54])+x[1]-x[4]+190*b[63] <= 190.0)
@NLconstraint(m, e29, x[22]*b[33]+x[25]*(b[40]-b[47]+b[54])+x[28]*(1-b[33]-b[40]+b[47]-b[54])+x[1]-x[5]+190*b[64] <= 190.0)
@NLconstraint(m, e30, x[22]*b[33]+x[25]*(b[40]-b[47]+b[54])+x[28]*(1-b[33]-b[40]+b[47]-b[54])+x[1]-x[6]+190*b[65] <= 190.0)
@NLconstraint(m, e31, x[22]*b[33]+x[25]*(b[40]-b[47]+b[54])+x[28]*(1-b[33]-b[40]+b[47]-b[54])+x[1]-x[7]+190*b[66] <= 190.0)
@NLconstraint(m, e32, x[23]*b[34]+x[26]*(b[41]-b[48]+b[55])+x[29]*(1-b[34]-b[41]+b[48]-b[55])-x[1]+x[2]+190*b[67] <= 190.0)
@NLconstraint(m, e33, x[23]*b[34]+x[26]*(b[41]-b[48]+b[55])+x[29]*(1-b[34]-b[41]+b[48]-b[55])+x[2]-x[3]+190*b[68] <= 190.0)
@NLconstraint(m, e34, x[23]*b[34]+x[26]*(b[41]-b[48]+b[55])+x[29]*(1-b[34]-b[41]+b[48]-b[55])+x[2]-x[4]+190*b[69] <= 190.0)
@NLconstraint(m, e35, x[23]*b[34]+x[26]*(b[41]-b[48]+b[55])+x[29]*(1-b[34]-b[41]+b[48]-b[55])+x[2]-x[5]+190*b[70] <= 190.0)
@NLconstraint(m, e36, x[23]*b[34]+x[26]*(b[41]-b[48]+b[55])+x[29]*(1-b[34]-b[41]+b[48]-b[55])+x[2]-x[6]+190*b[71] <= 190.0)
@NLconstraint(m, e37, x[23]*b[34]+x[26]*(b[41]-b[48]+b[55])+x[29]*(1-b[34]-b[41]+b[48]-b[55])+x[2]-x[7]+190*b[72] <= 190.0)
@NLconstraint(m, e38, x[24]*b[35]+x[27]*(b[42]-b[49]+b[56])+x[30]*(1-b[35]-b[42]+b[49]-b[56])-x[1]+x[3]+190*b[73] <= 190.0)
@NLconstraint(m, e39, x[24]*b[35]+x[27]*(b[42]-b[49]+b[56])+x[30]*(1-b[35]-b[42]+b[49]-b[56])-x[2]+x[3]+190*b[74] <= 190.0)
@NLconstraint(m, e40, x[24]*b[35]+x[27]*(b[42]-b[49]+b[56])+x[30]*(1-b[35]-b[42]+b[49]-b[56])+x[3]-x[4]+190*b[75] <= 190.0)
@NLconstraint(m, e41, x[24]*b[35]+x[27]*(b[42]-b[49]+b[56])+x[30]*(1-b[35]-b[42]+b[49]-b[56])+x[3]-x[5]+190*b[76] <= 190.0)
@NLconstraint(m, e42, x[24]*b[35]+x[27]*(b[42]-b[49]+b[56])+x[30]*(1-b[35]-b[42]+b[49]-b[56])+x[3]-x[6]+190*b[77] <= 190.0)
@NLconstraint(m, e43, x[24]*b[35]+x[27]*(b[42]-b[49]+b[56])+x[30]*(1-b[35]-b[42]+b[49]-b[56])+x[3]-x[7]+190*b[78] <= 190.0)
@constraint(m, e44, -x[9]+x[11]-7.1*b[36]-7.1*b[43]+3.6*b[50]+190*b[126] <= 181.9)
@constraint(m, e45, -x[10]+x[11]-7.1*b[36]-7.1*b[43]+3.6*b[50]+190*b[127] <= 181.9)
@constraint(m, e46, -7.1*b[36]-7.1*b[43]+3.6*b[50]+190*b[128] <= 181.9)
@constraint(m, e47, x[11]-x[12]-7.1*b[36]-7.1*b[43]+3.6*b[50]+190*b[129] <= 181.9)
@constraint(m, e48, x[11]-x[13]-7.1*b[36]-7.1*b[43]+3.6*b[50]+190*b[130] <= 181.9)
@constraint(m, e49, x[11]-x[14]-7.1*b[36]-7.1*b[43]+3.6*b[50]+190*b[131] <= 181.9)
@constraint(m, e50, -x[8]+x[12]-5.11*b[37]-5.11*b[44]+4.86*b[51]+190*b[132] <= 184.19)
@constraint(m, e51, -x[10]+x[12]-5.11*b[37]-5.11*b[44]+4.86*b[51]+190*b[134] <= 184.19)
@constraint(m, e52, -x[11]+x[12]-5.11*b[37]-5.11*b[44]+4.86*b[51]+190*b[135] <= 184.19)
@constraint(m, e53, -5.11*b[37]-5.11*b[44]+4.86*b[51]+190*b[136] <= 184.19)
@constraint(m, e54, x[12]-x[13]-5.11*b[37]-5.11*b[44]+4.86*b[51]+190*b[137] <= 184.19)
@constraint(m, e55, x[12]-x[14]-5.11*b[37]-5.11*b[44]+4.86*b[51]+190*b[138] <= 184.19)
@constraint(m, e56, -x[8]+x[13]-7.325*b[38]-7.325*b[45]+4*b[52]+190*b[139] <= 181.875)
@constraint(m, e57, -x[9]+x[13]-7.325*b[38]-7.325*b[45]+4*b[52]+190*b[140] <= 181.875)
@constraint(m, e58, -x[11]+x[13]-7.325*b[38]-7.325*b[45]+4*b[52]+190*b[142] <= 181.875)
@constraint(m, e59, -x[12]+x[13]-7.325*b[38]-7.325*b[45]+4*b[52]+190*b[143] <= 181.875)
@constraint(m, e60, -7.325*b[38]-7.325*b[45]+4*b[52]+190*b[144] <= 181.875)
@constraint(m, e61, x[13]-x[14]-7.325*b[38]-7.325*b[45]+4*b[52]+190*b[145] <= 181.875)
@constraint(m, e62, -x[8]+x[14]-6.7975*b[39]-6.7975*b[46]+4.16*b[53]+190*b[146] <= 182.5625)
@constraint(m, e63, -x[9]+x[14]-6.7975*b[39]-6.7975*b[46]+4.16*b[53]+190*b[147] <= 182.5625)
@constraint(m, e64, -x[10]+x[14]-6.7975*b[39]-6.7975*b[46]+4.16*b[53]+190*b[148] <= 182.5625)
@constraint(m, e65, -x[12]+x[14]-6.7975*b[39]-6.7975*b[46]+4.16*b[53]+190*b[150] <= 182.5625)
@constraint(m, e66, -x[13]+x[14]-6.7975*b[39]-6.7975*b[46]+4.16*b[53]+190*b[151] <= 182.5625)
@constraint(m, e67, -6.7975*b[39]-6.7975*b[46]+4.16*b[53]+190*b[152] <= 182.5625)
@NLconstraint(m, e68, x[25]*b[47]+x[22]*(1-b[33]-b[40])+x[28]*(b[33]+b[40]-b[47])+x[8]-x[9]+190*b[107] <= 190.0)
@NLconstraint(m, e69, x[25]*b[47]+x[22]*(1-b[33]-b[40])+x[28]*(b[33]+b[40]-b[47])+x[8]-x[10]+190*b[108] <= 190.0)
@NLconstraint(m, e70, x[25]*b[47]+x[22]*(1-b[33]-b[40])+x[28]*(b[33]+b[40]-b[47])+x[8]-x[11]+190*b[109] <= 190.0)
@NLconstraint(m, e71, x[25]*b[47]+x[22]*(1-b[33]-b[40])+x[28]*(b[33]+b[40]-b[47])+x[8]-x[12]+190*b[110] <= 190.0)
@NLconstraint(m, e72, x[25]*b[47]+x[22]*(1-b[33]-b[40])+x[28]*(b[33]+b[40]-b[47])+x[8]-x[13]+190*b[111] <= 190.0)
@NLconstraint(m, e73, x[25]*b[47]+x[22]*(1-b[33]-b[40])+x[28]*(b[33]+b[40]-b[47])+x[8]-x[14]+190*b[112] <= 190.0)
@NLconstraint(m, e74, x[26]*b[48]+x[23]*(1-b[34]-b[41])+x[29]*(b[34]+b[41]-b[48])-x[8]+x[9]+190*b[113] <= 190.0)
@NLconstraint(m, e75, x[26]*b[48]+x[23]*(1-b[34]-b[41])+x[29]*(b[34]+b[41]-b[48])+x[9]-x[10]+190*b[114] <= 190.0)
@NLconstraint(m, e76, x[26]*b[48]+x[23]*(1-b[34]-b[41])+x[29]*(b[34]+b[41]-b[48])+x[9]-x[11]+190*b[115] <= 190.0)
@NLconstraint(m, e77, x[26]*b[48]+x[23]*(1-b[34]-b[41])+x[29]*(b[34]+b[41]-b[48])+x[9]-x[12]+190*b[116] <= 190.0)
@NLconstraint(m, e78, x[26]*b[48]+x[23]*(1-b[34]-b[41])+x[29]*(b[34]+b[41]-b[48])+x[9]-x[13]+190*b[117] <= 190.0)
@NLconstraint(m, e79, x[26]*b[48]+x[23]*(1-b[34]-b[41])+x[29]*(b[34]+b[41]-b[48])+x[9]-x[14]+190*b[118] <= 190.0)
@NLconstraint(m, e80, x[27]*b[49]+x[24]*(1-b[35]-b[42])+x[30]*(b[35]+b[42]-b[49])-x[8]+x[10]+190*b[119] <= 190.0)
@NLconstraint(m, e81, x[27]*b[49]+x[24]*(1-b[35]-b[42])+x[30]*(b[35]+b[42]-b[49])-x[9]+x[10]+190*b[120] <= 190.0)
@NLconstraint(m, e82, x[27]*b[49]+x[24]*(1-b[35]-b[42])+x[30]*(b[35]+b[42]-b[49])+x[10]-x[11]+190*b[121] <= 190.0)
@NLconstraint(m, e83, x[27]*b[49]+x[24]*(1-b[35]-b[42])+x[30]*(b[35]+b[42]-b[49])+x[10]-x[12]+190*b[122] <= 190.0)
@NLconstraint(m, e84, x[27]*b[49]+x[24]*(1-b[35]-b[42])+x[30]*(b[35]+b[42]-b[49])+x[10]-x[13]+190*b[123] <= 190.0)
@NLconstraint(m, e85, x[27]*b[49]+x[24]*(1-b[35]-b[42])+x[30]*(b[35]+b[42]-b[49])+x[10]-x[14]+190*b[124] <= 190.0)
@constraint(m, e86, -x[16]+x[18]+3.5*b[43]-3.6*b[57]+190*b[172] <= 185.4)
@constraint(m, e87, -x[17]+x[18]+3.5*b[43]-3.6*b[57]+190*b[173] <= 185.4)
@constraint(m, e88, 3.5*b[43]-3.6*b[57]+190*b[174] <= 185.4)
@constraint(m, e89, x[18]-x[19]+3.5*b[43]-3.6*b[57]+190*b[175] <= 185.4)
@constraint(m, e90, x[18]-x[20]+3.5*b[43]-3.6*b[57]+190*b[176] <= 185.4)
@constraint(m, e91, x[18]-x[21]+3.5*b[43]-3.6*b[57]+190*b[177] <= 185.4)
@constraint(m, e92, -x[15]+x[19]+0.25*b[44]-4.86*b[58]+190*b[178] <= 184.44)
@constraint(m, e93, -x[17]+x[19]+0.25*b[44]-4.86*b[58]+190*b[180] <= 184.44)
@constraint(m, e94, -x[18]+x[19]+0.25*b[44]-4.86*b[58]+190*b[181] <= 184.44)
@constraint(m, e95, 0.25*b[44]-4.86*b[58]+190*b[182] <= 184.44)
@constraint(m, e96, x[19]-x[20]+0.25*b[44]-4.86*b[58]+190*b[183] <= 184.44)
@constraint(m, e97, x[19]-x[21]+0.25*b[44]-4.86*b[58]+190*b[184] <= 184.44)
@constraint(m, e98, -x[15]+x[20]+3.325*b[45]-4*b[59]+190*b[185] <= 185.2)
@constraint(m, e99, -x[16]+x[20]+3.325*b[45]-4*b[59]+190*b[186] <= 185.2)
@constraint(m, e100, -x[18]+x[20]+3.325*b[45]-4*b[59]+190*b[188] <= 185.2)
@constraint(m, e101, -x[19]+x[20]+3.325*b[45]-4*b[59]+190*b[189] <= 185.2)
@constraint(m, e102, 3.325*b[45]-4*b[59]+190*b[190] <= 185.2)
@constraint(m, e103, x[20]-x[21]+3.325*b[45]-4*b[59]+190*b[191] <= 185.2)
@constraint(m, e104, -x[15]+x[21]+2.6375*b[46]-4.16*b[60]+190*b[192] <= 185.2)
@constraint(m, e105, -x[16]+x[21]+2.6375*b[46]-4.16*b[60]+190*b[193] <= 185.2)
@constraint(m, e106, -x[17]+x[21]+2.6375*b[46]-4.16*b[60]+190*b[194] <= 185.2)
@constraint(m, e107, -x[19]+x[21]+2.6375*b[46]-4.16*b[60]+190*b[196] <= 185.2)
@constraint(m, e108, -x[20]+x[21]+2.6375*b[46]-4.16*b[60]+190*b[197] <= 185.2)
@constraint(m, e109, 2.6375*b[46]-4.16*b[60]+190*b[198] <= 185.2)
@NLconstraint(m, e110, x[28]*b[54]+x[25]*(1-b[40]-b[54])+x[22]*b[40]+x[15]-x[16]+190*b[153] <= 190.0)
@NLconstraint(m, e111, x[28]*b[54]+x[25]*(1-b[40]-b[54])+x[22]*b[40]+x[15]-x[17]+190*b[154] <= 190.0)
@NLconstraint(m, e112, x[28]*b[54]+x[25]*(1-b[40]-b[54])+x[22]*b[40]+x[15]-x[18]+190*b[155] <= 190.0)
@NLconstraint(m, e113, x[28]*b[54]+x[25]*(1-b[40]-b[54])+x[22]*b[40]+x[15]-x[19]+190*b[156] <= 190.0)
@NLconstraint(m, e114, x[28]*b[54]+x[25]*(1-b[40]-b[54])+x[22]*b[40]+x[15]-x[20]+190*b[157] <= 190.0)
@NLconstraint(m, e115, x[28]*b[54]+x[25]*(1-b[40]-b[54])+x[22]*b[40]+x[15]-x[21]+190*b[158] <= 190.0)
@NLconstraint(m, e116, x[29]*b[55]+x[26]*(1-b[41]-b[55])+x[23]*b[41]-x[15]+x[16]+190*b[159] <= 190.0)
@NLconstraint(m, e117, x[29]*b[55]+x[26]*(1-b[41]-b[55])+x[23]*b[41]+x[16]-x[17]+190*b[160] <= 190.0)
@NLconstraint(m, e118, x[29]*b[55]+x[26]*(1-b[41]-b[55])+x[23]*b[41]+x[16]-x[18]+190*b[161] <= 190.0)
@NLconstraint(m, e119, x[29]*b[55]+x[26]*(1-b[41]-b[55])+x[23]*b[41]+x[16]-x[19]+190*b[162] <= 190.0)
@NLconstraint(m, e120, x[29]*b[55]+x[26]*(1-b[41]-b[55])+x[23]*b[41]+x[16]-x[20]+190*b[163] <= 190.0)
@NLconstraint(m, e121, x[29]*b[55]+x[26]*(1-b[41]-b[55])+x[23]*b[41]+x[16]-x[21]+190*b[164] <= 190.0)
@NLconstraint(m, e122, x[30]*b[56]+x[27]*(1-b[42]-b[56])+x[24]*b[42]-x[15]+x[17]+190*b[165] <= 190.0)
@NLconstraint(m, e123, x[30]*b[56]+x[27]*(1-b[42]-b[56])+x[24]*b[42]-x[16]+x[17]+190*b[166] <= 190.0)
@NLconstraint(m, e124, x[30]*b[56]+x[27]*(1-b[42]-b[56])+x[24]*b[42]+x[17]-x[18]+190*b[167] <= 190.0)
@NLconstraint(m, e125, x[30]*b[56]+x[27]*(1-b[42]-b[56])+x[24]*b[42]+x[17]-x[19]+190*b[168] <= 190.0)
@NLconstraint(m, e126, x[30]*b[56]+x[27]*(1-b[42]-b[56])+x[24]*b[42]+x[17]-x[20]+190*b[169] <= 190.0)
@NLconstraint(m, e127, x[30]*b[56]+x[27]*(1-b[42]-b[56])+x[24]*b[42]+x[17]-x[21]+190*b[170] <= 190.0)
@constraint(m, e128, b[61]+b[67]+b[107]+b[113]+b[153]+b[159] >= 1.0)
@constraint(m, e129, b[62]+b[73]+b[108]+b[119]+b[154]+b[165] >= 1.0)
@constraint(m, e130, b[63]+b[79]+b[109]+b[125]+b[155]+b[171] >= 1.0)
@constraint(m, e131, b[64]+b[86]+b[110]+b[132]+b[156]+b[178] >= 1.0)
@constraint(m, e132, b[65]+b[93]+b[111]+b[139]+b[157]+b[185] >= 1.0)
@constraint(m, e133, b[66]+b[100]+b[112]+b[146]+b[158]+b[192] >= 1.0)
@constraint(m, e134, b[61]+b[67]+b[107]+b[113]+b[153]+b[159] >= 1.0)
@constraint(m, e135, b[68]+b[74]+b[114]+b[120]+b[160]+b[166] >= 1.0)
@constraint(m, e136, b[69]+b[80]+b[115]+b[126]+b[161]+b[172] >= 1.0)
@constraint(m, e137, b[70]+b[87]+b[116]+b[133]+b[162]+b[179] >= 1.0)
@constraint(m, e138, b[71]+b[94]+b[117]+b[140]+b[163]+b[186] >= 1.0)
@constraint(m, e139, b[72]+b[101]+b[118]+b[147]+b[164]+b[193] >= 1.0)
@constraint(m, e140, b[62]+b[73]+b[108]+b[119]+b[154]+b[165] >= 1.0)
@constraint(m, e141, b[68]+b[74]+b[114]+b[120]+b[160]+b[166] >= 1.0)
@constraint(m, e142, b[75]+b[81]+b[121]+b[127]+b[167]+b[173] >= 1.0)
@constraint(m, e143, b[76]+b[88]+b[122]+b[134]+b[168]+b[180] >= 1.0)
@constraint(m, e144, b[77]+b[95]+b[123]+b[141]+b[169]+b[187] >= 1.0)
@constraint(m, e145, b[78]+b[102]+b[124]+b[148]+b[170]+b[194] >= 1.0)
@constraint(m, e146, b[63]+b[79]+b[109]+b[125]+b[155]+b[171] >= 1.0)
@constraint(m, e147, b[69]+b[80]+b[115]+b[126]+b[161]+b[172] >= 1.0)
@constraint(m, e148, b[75]+b[81]+b[121]+b[127]+b[167]+b[173] >= 1.0)
@constraint(m, e149, b[83]+b[89]+b[129]+b[135]+b[175]+b[181] >= 1.0)
@constraint(m, e150, b[84]+b[96]+b[130]+b[142]+b[176]+b[188] >= 1.0)
@constraint(m, e151, b[85]+b[103]+b[131]+b[149]+b[177]+b[195] >= 1.0)
@constraint(m, e152, b[64]+b[86]+b[110]+b[132]+b[156]+b[178] >= 1.0)
@constraint(m, e153, b[70]+b[87]+b[116]+b[133]+b[162]+b[179] >= 1.0)
@constraint(m, e154, b[76]+b[88]+b[122]+b[134]+b[168]+b[180] >= 1.0)
@constraint(m, e155, b[83]+b[89]+b[129]+b[135]+b[175]+b[181] >= 1.0)
@constraint(m, e156, b[91]+b[97]+b[137]+b[143]+b[183]+b[189] >= 1.0)
@constraint(m, e157, b[92]+b[104]+b[138]+b[150]+b[184]+b[196] >= 1.0)
@constraint(m, e158, b[65]+b[93]+b[111]+b[139]+b[157]+b[185] >= 1.0)
@constraint(m, e159, b[71]+b[94]+b[117]+b[140]+b[163]+b[186] >= 1.0)
@constraint(m, e160, b[77]+b[95]+b[123]+b[141]+b[169]+b[187] >= 1.0)
@constraint(m, e161, b[84]+b[96]+b[130]+b[142]+b[176]+b[188] >= 1.0)
@constraint(m, e162, b[91]+b[97]+b[137]+b[143]+b[183]+b[189] >= 1.0)
@constraint(m, e163, b[99]+b[105]+b[145]+b[151]+b[191]+b[197] >= 1.0)
@constraint(m, e164, b[66]+b[100]+b[112]+b[146]+b[158]+b[192] >= 1.0)
@constraint(m, e165, b[72]+b[101]+b[118]+b[147]+b[164]+b[193] >= 1.0)
@constraint(m, e166, b[78]+b[102]+b[124]+b[148]+b[170]+b[194] >= 1.0)
@constraint(m, e167, b[85]+b[103]+b[131]+b[149]+b[177]+b[195] >= 1.0)
@constraint(m, e168, b[92]+b[104]+b[138]+b[150]+b[184]+b[196] >= 1.0)
@constraint(m, e169, b[99]+b[105]+b[145]+b[151]+b[191]+b[197] >= 1.0)
@constraint(m, e170, x[4]-x[31]+7.1*b[36]+3.6*b[43]-3.6*b[50]+3.6*b[57] <= -1.0)
@constraint(m, e171, x[5]-x[31]+5.11*b[37]+4.86*b[44]-4.86*b[51]+4.86*b[58] <= -0.7)
@constraint(m, e172, x[6]-x[31]+7.325*b[38]+4*b[45]-4*b[52]+4*b[59] <= -0.8)
@constraint(m, e173, x[7]-x[31]+6.7975*b[39]+4.16*b[46]-4.16*b[53]+4.16*b[60] <= -0.64)
@constraint(m, e174, x[11]-7.1*b[36]-7.1*b[43]+3.6*b[50] <= -2.92)
@constraint(m, e175, x[12]-5.11*b[37]-5.11*b[44]+4.86*b[51] <= -0.63)
@constraint(m, e176, x[13]-7.325*b[38]-7.325*b[45]+4*b[52] <= -2.945)
@constraint(m, e177, x[14]-6.7975*b[39]-6.7975*b[46]+4.16*b[53] <= -2.2575)
@constraint(m, e178, x[18]+3.5*b[43]-3.6*b[57] <= -1.56)
@constraint(m, e179, x[19]+0.25*b[44]-4.86*b[58] <= -2.52)
@constraint(m, e180, x[20]+3.325*b[45]-4*b[59] <= -1.76)
@constraint(m, e181, x[21]+2.6375*b[46]-4.16*b[60] <= -1.76)
@NLconstraint(m, e182, x[22]*b[33]+x[25]*(b[40]-b[47]+b[54])+x[28]*(1-b[33]-b[40]+b[47]-b[54])+x[1]-x[31] <= 0.0)
@NLconstraint(m, e183, x[23]*b[34]+x[26]*(b[41]-b[48]+b[55])+x[29]*(1-b[34]-b[41]+b[48]-b[55])+x[2]-x[31] <= 0.0)
@NLconstraint(m, e184, x[24]*b[35]+x[27]*(b[42]-b[49]+b[56])+x[30]*(1-b[35]-b[42]+b[49]-b[56])+x[3]-x[31] <= 0.0)
@NLconstraint(m, e185, x[25]*b[47]+x[22]*(1-b[33]-b[40])+x[28]*(b[33]+b[40]-b[47])+x[8] <= 5.18)
@NLconstraint(m, e186, x[26]*b[48]+x[23]*(1-b[34]-b[41])+x[29]*(b[34]+b[41]-b[48])+x[9] <= 5.18)
@NLconstraint(m, e187, x[27]*b[49]+x[24]*(1-b[35]-b[42])+x[30]*(b[35]+b[42]-b[49])+x[10] <= 5.18)
@NLconstraint(m, e188, x[28]*b[54]+x[25]*(1-b[40]-b[54])+x[22]*b[40]+x[15] <= 3.04)
@NLconstraint(m, e189, x[29]*b[55]+x[26]*(1-b[41]-b[55])+x[23]*b[41]+x[16] <= 3.04)
@NLconstraint(m, e190, x[30]*b[56]+x[27]*(1-b[42]-b[56])+x[24]*b[42]+x[17] <= 3.04)
@constraint(m, e191, b[33]+b[40] <= 1.0)
@constraint(m, e192, b[34]+b[41] <= 1.0)
@constraint(m, e193, b[35]+b[42] <= 1.0)
@constraint(m, e194, b[36]+b[43] <= 1.0)
@constraint(m, e195, b[37]+b[44] <= 1.0)
@constraint(m, e196, b[38]+b[45] <= 1.0)
@constraint(m, e197, b[39]+b[46] <= 1.0)
@constraint(m, e198, b[40]+b[54] <= 1.0)
@constraint(m, e199, b[41]+b[55] <= 1.0)
@constraint(m, e200, b[42]+b[56] <= 1.0)
@constraint(m, e201, b[43]+b[57] <= 1.0)
@constraint(m, e202, b[44]+b[58] <= 1.0)
@constraint(m, e203, b[45]+b[59] <= 1.0)
@constraint(m, e204, b[46]+b[60] <= 1.0)
@constraint(m, e205, b[40]-b[47]+b[54] <= 1.0)
@constraint(m, e206, b[41]-b[48]+b[55] <= 1.0)
@constraint(m, e207, b[42]-b[49]+b[56] <= 1.0)
@constraint(m, e208, b[43]-b[50]+b[57] <= 1.0)
@constraint(m, e209, b[44]-b[51]+b[58] <= 1.0)
@constraint(m, e210, b[45]-b[52]+b[59] <= 1.0)
@constraint(m, e211, b[46]-b[53]+b[60] <= 1.0)
@constraint(m, e212, b[40]-b[47]+b[54] >= 0.0)
@constraint(m, e213, b[41]-b[48]+b[55] >= 0.0)
@constraint(m, e214, b[42]-b[49]+b[56] >= 0.0)
@constraint(m, e215, b[43]-b[50]+b[57] >= 0.0)
@constraint(m, e216, b[44]-b[51]+b[58] >= 0.0)
@constraint(m, e217, b[45]-b[52]+b[59] >= 0.0)
@constraint(m, e218, b[46]-b[53]+b[60] >= 0.0)
@constraint(m, e219, -b[33]-b[40]+b[47]-b[54] <= 0.0)
@constraint(m, e220, -b[34]-b[41]+b[48]-b[55] <= 0.0)
@constraint(m, e221, -b[35]-b[42]+b[49]-b[56] <= 0.0)
@constraint(m, e222, -b[36]-b[43]+b[50]-b[57] <= 0.0)
@constraint(m, e223, -b[37]-b[44]+b[51]-b[58] <= 0.0)
@constraint(m, e224, -b[38]-b[45]+b[52]-b[59] <= 0.0)
@constraint(m, e225, -b[39]-b[46]+b[53]-b[60] <= 0.0)
@constraint(m, e226, -b[33]-b[40]+b[47]-b[54] >= -1.0)
@constraint(m, e227, -b[34]-b[41]+b[48]-b[55] >= -1.0)
@constraint(m, e228, -b[35]-b[42]+b[49]-b[56] >= -1.0)
@constraint(m, e229, -b[36]-b[43]+b[50]-b[57] >= -1.0)
@constraint(m, e230, -b[37]-b[44]+b[51]-b[58] >= -1.0)
@constraint(m, e231, -b[38]-b[45]+b[52]-b[59] >= -1.0)
@constraint(m, e232, -b[39]-b[46]+b[53]-b[60] >= -1.0)
@constraint(m, e233, b[33]+b[40]-b[47] <= 1.0)
@constraint(m, e234, b[34]+b[41]-b[48] <= 1.0)
@constraint(m, e235, b[35]+b[42]-b[49] <= 1.0)
@constraint(m, e236, b[36]+b[43]-b[50] <= 1.0)
@constraint(m, e237, b[37]+b[44]-b[51] <= 1.0)
@constraint(m, e238, b[38]+b[45]-b[52] <= 1.0)
@constraint(m, e239, b[39]+b[46]-b[53] <= 1.0)
@constraint(m, e240, b[33]+b[40]-b[47] >= 0.0)
@constraint(m, e241, b[34]+b[41]-b[48] >= 0.0)
@constraint(m, e242, b[35]+b[42]-b[49] >= 0.0)
@constraint(m, e243, b[36]+b[43]-b[50] >= 0.0)
@constraint(m, e244, b[37]+b[44]-b[51] >= 0.0)
@constraint(m, e245, b[38]+b[45]-b[52] >= 0.0)
@constraint(m, e246, b[39]+b[46]-b[53] >= 0.0)
@constraint(m, e247, x[22]-190*b[199] >= -184.5)
@constraint(m, e248, x[22]-190*b[200] >= -185.875)
@constraint(m, e249, x[22]-190*b[201] >= -186.75)
@constraint(m, e250, x[23]-190*b[202] >= -185.0)
@constraint(m, e251, x[23]-190*b[203] >= -187.625)
@constraint(m, e252, x[23]-190*b[204] >= -185.3)
@constraint(m, e253, x[24]-190*b[205] >= -184.5)
@constraint(m, e254, x[24]-190*b[206] >= -186.0)
@constraint(m, e255, x[24]-190*b[207] >= -182.0)
@constraint(m, e256, x[22]+190*b[199] <= 195.5)
@constraint(m, e257, x[22]+190*b[200] <= 194.125)
@constraint(m, e258, x[22]+190*b[201] <= 193.25)
@constraint(m, e259, x[23]+190*b[202] <= 195.0)
@constraint(m, e260, x[23]+190*b[203] <= 192.375)
@constraint(m, e261, x[23]+190*b[204] <= 194.7)
@constraint(m, e262, x[24]+190*b[205] <= 195.5)
@constraint(m, e263, x[24]+190*b[206] <= 194.0)
@constraint(m, e264, x[24]+190*b[207] <= 198.0)
@constraint(m, e265, x[25]-190*b[199] >= -187.625)
@constraint(m, e266, x[25]-190*b[200] >= -187.875)
@constraint(m, e267, x[25]-190*b[201] >= -188.75)
@constraint(m, e268, x[26]-190*b[202] >= -185.875)
@constraint(m, e269, x[26]-190*b[203] >= -185.75)
@constraint(m, e270, x[26]-190*b[204] >= -189.43)
@constraint(m, e271, x[27]-190*b[205] >= -184.0)
@constraint(m, e272, x[27]-190*b[206] >= -184.0)
@constraint(m, e273, x[27]-190*b[207] >= -185.3)
@constraint(m, e274, x[25]+190*b[199] <= 192.375)
@constraint(m, e275, x[25]+190*b[200] <= 192.125)
@constraint(m, e276, x[25]+190*b[201] <= 191.25)
@constraint(m, e277, x[26]+190*b[202] <= 194.125)
@constraint(m, e278, x[26]+190*b[203] <= 194.25)
@constraint(m, e279, x[26]+190*b[204] <= 190.57)
@constraint(m, e280, x[27]+190*b[205] <= 196.0)
@constraint(m, e281, x[27]+190*b[206] <= 196.0)
@constraint(m, e282, x[27]+190*b[207] <= 194.7)
@constraint(m, e283, x[28]-190*b[199] >= -189.625)
@constraint(m, e284, x[28]-190*b[200] >= -189.0)
@constraint(m, e285, x[28]-190*b[201] >= -188.75)
@constraint(m, e286, x[29]-190*b[202] >= -189.75)
@constraint(m, e287, x[29]-190*b[203] >= -189.625)
@constraint(m, e288, x[29]-190*b[204] >= -189.71)
@constraint(m, e289, x[30]-190*b[205] >= -189.5)
@constraint(m, e290, x[30]-190*b[206] >= -188.625)
@constraint(m, e291, x[30]-190*b[207] >= -189.2)
@constraint(m, e292, x[28]+190*b[199] <= 190.375)
@constraint(m, e293, x[28]+190*b[200] <= 191.0)
@constraint(m, e294, x[28]+190*b[201] <= 191.25)
@constraint(m, e295, x[29]+190*b[202] <= 190.25)
@constraint(m, e296, x[29]+190*b[203] <= 190.375)
@constraint(m, e297, x[29]+190*b[204] <= 190.29)
@constraint(m, e298, x[30]+190*b[205] <= 190.5)
@constraint(m, e299, x[30]+190*b[206] <= 191.375)
@constraint(m, e300, x[30]+190*b[207] <= 190.8)
@constraint(m, e301, b[199]+b[200]+b[201] == 1.0)
@constraint(m, e302, b[202]+b[203]+b[204] == 1.0)
@constraint(m, e303, b[205]+b[206]+b[207] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[32])

m = m 		 # model get returned when including this script. 
