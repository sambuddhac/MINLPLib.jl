using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232]
@variable(m, x[x_Idx])
b_Idx = Any[233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292]
@variable(m, b[b_Idx])
setlowerbound(x[146], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[132], 0.0)
setlowerbound(x[154], 0.0)
setlowerbound(x[164], 0.0)
setlowerbound(x[143], 0.0)
setlowerbound(x[91], 0.0)
setcategory(b[271], :Bin)
setlowerbound(x[59], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[165], 0.0)
setlowerbound(x[186], 0.0)
setcategory(b[243], :Bin)
setcategory(b[282], :Bin)
setlowerbound(x[202], 0.0)
setlowerbound(x[220], 0.0)
setcategory(b[291], :Bin)
setcategory(b[270], :Bin)
setlowerbound(x[88], 0.0)
setlowerbound(x[141], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[144], 0.0)
setcategory(b[264], :Bin)
setlowerbound(x[63], 0.0)
setlowerbound(x[145], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[172], 0.0)
setlowerbound(x[226], 0.0)
setlowerbound(x[120], 0.0)
setlowerbound(x[160], 0.0)
setlowerbound(x[188], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setcategory(b[275], :Bin)
setlowerbound(x[103], 0.0)
setlowerbound(x[75], 0.0)
setcategory(b[235], :Bin)
setlowerbound(x[162], 0.0)
setlowerbound(x[116], 0.0)
setcategory(b[286], :Bin)
setlowerbound(x[95], 0.0)
setlowerbound(x[200], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[206], 0.0)
setlowerbound(x[215], 0.0)
setlowerbound(x[174], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[169], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[197], 0.0)
setlowerbound(x[198], 0.0)
setlowerbound(x[148], 0.0)
setcategory(b[262], :Bin)
setlowerbound(x[150], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[218], 0.0)
setlowerbound(x[225], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[73], 0.0)
setcategory(b[278], :Bin)
setlowerbound(x[231], 0.0)
setcategory(b[236], :Bin)
setlowerbound(x[101], 0.0)
setlowerbound(x[136], 0.0)
setlowerbound(x[190], 0.0)
setlowerbound(x[196], 0.0)
setcategory(b[276], :Bin)
setcategory(b[252], :Bin)
setlowerbound(x[38], 0.0)
setlowerbound(x[232], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[151], 0.0)
setlowerbound(x[171], 0.0)
setlowerbound(x[147], 0.0)
setlowerbound(x[138], 0.0)
setcategory(b[269], :Bin)
setlowerbound(x[77], 0.0)
setcategory(b[285], :Bin)
setcategory(b[289], :Bin)
setcategory(b[274], :Bin)
setlowerbound(x[92], 0.0)
setcategory(b[242], :Bin)
setlowerbound(x[111], 0.0)
setlowerbound(x[219], 0.0)
setlowerbound(x[185], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[137], 0.0)
setcategory(b[233], :Bin)
setlowerbound(x[87], 0.0)
setlowerbound(x[224], 0.0)
setlowerbound(x[179], 0.0)
setlowerbound(x[175], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[142], 0.0)
setlowerbound(x[209], 0.0)
setlowerbound(x[53], 0.0)
setcategory(b[255], :Bin)
setlowerbound(x[128], 0.0)
setlowerbound(x[161], 0.0)
setcategory(b[256], :Bin)
setcategory(b[281], :Bin)
setcategory(b[260], :Bin)
setlowerbound(x[67], 0.0)
setlowerbound(x[156], 0.0)
setlowerbound(x[199], 0.0)
setcategory(b[240], :Bin)
setcategory(b[244], :Bin)
setlowerbound(x[213], 0.0)
setcategory(b[246], :Bin)
setlowerbound(x[173], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[176], 0.0)
setcategory(b[259], :Bin)
setlowerbound(x[123], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setcategory(b[292], :Bin)
setlowerbound(x[227], 0.0)
setlowerbound(x[189], 0.0)
setlowerbound(x[187], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[166], 0.0)
setlowerbound(x[157], 0.0)
setcategory(b[237], :Bin)
setlowerbound(x[46], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[230], 0.0)
setlowerbound(x[163], 0.0)
setlowerbound(x[216], 0.0)
setcategory(b[277], :Bin)
setlowerbound(x[133], 0.0)
setlowerbound(x[192], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[205], 0.0)
setlowerbound(x[76], 0.0)
setlowerbound(x[195], 0.0)
setlowerbound(x[117], 0.0)
setlowerbound(x[85], 0.0)
setlowerbound(x[207], 0.0)
setcategory(b[241], :Bin)
setlowerbound(x[89], 0.0)
setlowerbound(x[140], 0.0)
setlowerbound(x[181], 0.0)
setlowerbound(x[153], 0.0)
setlowerbound(x[201], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[223], 0.0)
setlowerbound(x[113], 0.0)
setlowerbound(x[130], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[208], 0.0)
setcategory(b[239], :Bin)
setlowerbound(x[36], 0.0)
setlowerbound(x[131], 0.0)
setcategory(b[280], :Bin)
setlowerbound(x[96], 0.0)
setcategory(b[257], :Bin)
setlowerbound(x[210], 0.0)
setcategory(b[254], :Bin)
setcategory(b[273], :Bin)
setlowerbound(x[182], 0.0)
setlowerbound(x[191], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[177], 0.0)
setlowerbound(x[82], 0.0)
setcategory(b[248], :Bin)
setcategory(b[238], :Bin)
setlowerbound(x[52], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[121], 0.0)
setcategory(b[234], :Bin)
setlowerbound(x[152], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[79], 0.0)
setcategory(b[268], :Bin)
setlowerbound(x[45], 0.0)
setlowerbound(x[184], 0.0)
setcategory(b[290], :Bin)
setlowerbound(x[98], 0.0)
setcategory(b[279], :Bin)
setlowerbound(x[158], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[203], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[35], 0.0)
setcategory(b[284], :Bin)
setlowerbound(x[170], 0.0)
setcategory(b[272], :Bin)
setlowerbound(x[149], 0.0)
setlowerbound(x[221], 0.0)
setlowerbound(x[217], 0.0)
setlowerbound(x[212], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[125], 0.0)
setcategory(b[250], :Bin)
setlowerbound(x[183], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setcategory(b[258], :Bin)
setlowerbound(x[167], 0.0)
setlowerbound(x[102], 0.0)
setcategory(b[266], :Bin)
setlowerbound(x[228], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[93], 0.0)
setcategory(b[251], :Bin)
setlowerbound(x[78], 0.0)
setlowerbound(x[222], 0.0)
setlowerbound(x[110], 0.0)
setlowerbound(x[56], 0.0)
setcategory(b[267], :Bin)
setlowerbound(x[155], 0.0)
setlowerbound(x[204], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[193], 0.0)
setlowerbound(x[134], 0.0)
setlowerbound(x[180], 0.0)
setcategory(b[249], :Bin)
setlowerbound(x[57], 0.0)
setlowerbound(x[122], 0.0)
setlowerbound(x[129], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[194], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[214], 0.0)
setcategory(b[245], :Bin)
setcategory(b[247], :Bin)
setlowerbound(x[178], 0.0)
setlowerbound(x[139], 0.0)
setlowerbound(x[126], 0.0)
setlowerbound(x[107], 0.0)
setcategory(b[288], :Bin)
setlowerbound(x[66], 0.0)
setlowerbound(x[168], 0.0)
setlowerbound(x[40], 0.0)
setcategory(b[265], :Bin)
setlowerbound(x[61], 0.0)
setcategory(b[283], :Bin)
setcategory(b[253], :Bin)
setlowerbound(x[64], 0.0)
setcategory(b[261], :Bin)
setlowerbound(x[97], 0.0)
setlowerbound(x[127], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[159], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[135], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[229], 0.0)
setlowerbound(x[211], 0.0)
setlowerbound(x[108], 0.0)
setcategory(b[287], :Bin)
setcategory(b[263], :Bin)
setupperbound(x[32], 40.0)
setupperbound(x[33], 40.0)
setupperbound(x[34], 40.0)
setupperbound(x[65], 30.0)
setupperbound(x[66], 30.0)
setupperbound(x[67], 30.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[32]+x[33]+x[34]-5*x[50]-10*x[51]-5*x[52]+2*x[65]+x[66]+2*x[67]-80*x[89]-90*x[90]-120*x[91]-285*x[92]-390*x[93]-350*x[94]-290*x[95]-405*x[96]-190*x[97]-280*x[98]-400*x[99]-430*x[100]-290*x[101]-300*x[102]-240*x[103]-350*x[104]-250*x[105]-300*x[106]+5*b[263]+4*b[264]+6*b[265]+8*b[266]+7*b[267]+6*b[268]+6*b[269]+9*b[270]+4*b[271]+10*b[272]+9*b[273]+5*b[274]+6*b[275]+10*b[276]+6*b[277]+7*b[278]+7*b[279]+4*b[280]+4*b[281]+3*b[282]+2*b[283]+5*b[284]+6*b[285]+7*b[286]+2*b[287]+5*b[288]+2*b[289]+4*b[290]+7*b[291]+4*b[292] == 0.0)
@constraint(m, e2, x[32]-x[35]-x[38] == 0.0)
@constraint(m, e3, x[33]-x[36]-x[39] == 0.0)
@constraint(m, e4, x[34]-x[37]-x[40] == 0.0)
@constraint(m, e5, -x[41]-x[44]+x[47] == 0.0)
@constraint(m, e6, -x[42]-x[45]+x[48] == 0.0)
@constraint(m, e7, -x[43]-x[46]+x[49] == 0.0)
@constraint(m, e8, x[47]-x[50]-x[53] == 0.0)
@constraint(m, e9, x[48]-x[51]-x[54] == 0.0)
@constraint(m, e10, x[49]-x[52]-x[55] == 0.0)
@constraint(m, e11, x[53]-x[56]-x[59]-x[62] == 0.0)
@constraint(m, e12, x[54]-x[57]-x[60]-x[63] == 0.0)
@constraint(m, e13, x[55]-x[58]-x[61]-x[64] == 0.0)
@constraint(m, e14, x[68]-x[77]-x[80] == 0.0)
@constraint(m, e15, x[69]-x[78]-x[81] == 0.0)
@constraint(m, e16, x[70]-x[79]-x[82] == 0.0)
@constraint(m, e17, x[74]-x[83]-x[86]-x[89] == 0.0)
@constraint(m, e18, x[75]-x[84]-x[87]-x[90] == 0.0)
@constraint(m, e19, x[76]-x[85]-x[88]-x[91] == 0.0)
@NLconstraint(m, e20, (x[119]/(1e-6+b[233])-log(1+x[107]/(1e-6+b[233])))*(1e-6+b[233]) <= 0.0)
@NLconstraint(m, e21, (x[120]/(1e-6+b[234])-log(1+x[108]/(1e-6+b[234])))*(1e-6+b[234]) <= 0.0)
@NLconstraint(m, e22, (x[121]/(1e-6+b[235])-log(1+x[109]/(1e-6+b[235])))*(1e-6+b[235]) <= 0.0)
@constraint(m, e23, x[110] == 0.0)
@constraint(m, e24, x[111] == 0.0)
@constraint(m, e25, x[112] == 0.0)
@constraint(m, e26, x[122] == 0.0)
@constraint(m, e27, x[123] == 0.0)
@constraint(m, e28, x[124] == 0.0)
@constraint(m, e29, x[35]-x[107]-x[110] == 0.0)
@constraint(m, e30, x[36]-x[108]-x[111] == 0.0)
@constraint(m, e31, x[37]-x[109]-x[112] == 0.0)
@constraint(m, e32, x[41]-x[119]-x[122] == 0.0)
@constraint(m, e33, x[42]-x[120]-x[123] == 0.0)
@constraint(m, e34, x[43]-x[121]-x[124] == 0.0)
@constraint(m, e35, x[107]-40*b[233] <= 0.0)
@constraint(m, e36, x[108]-40*b[234] <= 0.0)
@constraint(m, e37, x[109]-40*b[235] <= 0.0)
@constraint(m, e38, x[110]+40*b[233] <= 40.0)
@constraint(m, e39, x[111]+40*b[234] <= 40.0)
@constraint(m, e40, x[112]+40*b[235] <= 40.0)
@constraint(m, e41, x[119]-3.71357206670431*b[233] <= 0.0)
@constraint(m, e42, x[120]-3.71357206670431*b[234] <= 0.0)
@constraint(m, e43, x[121]-3.71357206670431*b[235] <= 0.0)
@constraint(m, e44, x[122]+3.71357206670431*b[233] <= 3.71357206670431)
@constraint(m, e45, x[123]+3.71357206670431*b[234] <= 3.71357206670431)
@constraint(m, e46, x[124]+3.71357206670431*b[235] <= 3.71357206670431)
@NLconstraint(m, e47, (x[125]/(1e-6+b[236])-1.2*log(1+x[113]/(1e-6+b[236])))*(1e-6+b[236]) <= 0.0)
@NLconstraint(m, e48, (x[126]/(1e-6+b[237])-1.2*log(1+x[114]/(1e-6+b[237])))*(1e-6+b[237]) <= 0.0)
@NLconstraint(m, e49, (x[127]/(1e-6+b[238])-1.2*log(1+x[115]/(1e-6+b[238])))*(1e-6+b[238]) <= 0.0)
@constraint(m, e50, x[116] == 0.0)
@constraint(m, e51, x[117] == 0.0)
@constraint(m, e52, x[118] == 0.0)
@constraint(m, e53, x[128] == 0.0)
@constraint(m, e54, x[129] == 0.0)
@constraint(m, e55, x[130] == 0.0)
@constraint(m, e56, x[38]-x[113]-x[116] == 0.0)
@constraint(m, e57, x[39]-x[114]-x[117] == 0.0)
@constraint(m, e58, x[40]-x[115]-x[118] == 0.0)
@constraint(m, e59, x[44]-x[125]-x[128] == 0.0)
@constraint(m, e60, x[45]-x[126]-x[129] == 0.0)
@constraint(m, e61, x[46]-x[127]-x[130] == 0.0)
@constraint(m, e62, x[113]-40*b[236] <= 0.0)
@constraint(m, e63, x[114]-40*b[237] <= 0.0)
@constraint(m, e64, x[115]-40*b[238] <= 0.0)
@constraint(m, e65, x[116]+40*b[236] <= 40.0)
@constraint(m, e66, x[117]+40*b[237] <= 40.0)
@constraint(m, e67, x[118]+40*b[238] <= 40.0)
@constraint(m, e68, x[125]-4.45628648004517*b[236] <= 0.0)
@constraint(m, e69, x[126]-4.45628648004517*b[237] <= 0.0)
@constraint(m, e70, x[127]-4.45628648004517*b[238] <= 0.0)
@constraint(m, e71, x[128]+4.45628648004517*b[236] <= 4.45628648004517)
@constraint(m, e72, x[129]+4.45628648004517*b[237] <= 4.45628648004517)
@constraint(m, e73, x[130]+4.45628648004517*b[238] <= 4.45628648004517)
@constraint(m, e74, -0.75*x[131]+x[155] == 0.0)
@constraint(m, e75, -0.75*x[132]+x[156] == 0.0)
@constraint(m, e76, -0.75*x[133]+x[157] == 0.0)
@constraint(m, e77, x[134] == 0.0)
@constraint(m, e78, x[135] == 0.0)
@constraint(m, e79, x[136] == 0.0)
@constraint(m, e80, x[158] == 0.0)
@constraint(m, e81, x[159] == 0.0)
@constraint(m, e82, x[160] == 0.0)
@constraint(m, e83, x[56]-x[131]-x[134] == 0.0)
@constraint(m, e84, x[57]-x[132]-x[135] == 0.0)
@constraint(m, e85, x[58]-x[133]-x[136] == 0.0)
@constraint(m, e86, x[68]-x[155]-x[158] == 0.0)
@constraint(m, e87, x[69]-x[156]-x[159] == 0.0)
@constraint(m, e88, x[70]-x[157]-x[160] == 0.0)
@constraint(m, e89, x[131]-4.45628648004517*b[239] <= 0.0)
@constraint(m, e90, x[132]-4.45628648004517*b[240] <= 0.0)
@constraint(m, e91, x[133]-4.45628648004517*b[241] <= 0.0)
@constraint(m, e92, x[134]+4.45628648004517*b[239] <= 4.45628648004517)
@constraint(m, e93, x[135]+4.45628648004517*b[240] <= 4.45628648004517)
@constraint(m, e94, x[136]+4.45628648004517*b[241] <= 4.45628648004517)
@constraint(m, e95, x[155]-3.34221486003388*b[239] <= 0.0)
@constraint(m, e96, x[156]-3.34221486003388*b[240] <= 0.0)
@constraint(m, e97, x[157]-3.34221486003388*b[241] <= 0.0)
@constraint(m, e98, x[158]+3.34221486003388*b[239] <= 3.34221486003388)
@constraint(m, e99, x[159]+3.34221486003388*b[240] <= 3.34221486003388)
@constraint(m, e100, x[160]+3.34221486003388*b[241] <= 3.34221486003388)
@NLconstraint(m, e101, (x[161]/(1e-6+b[242])-1.5*log(1+x[137]/(1e-6+b[242])))*(1e-6+b[242]) <= 0.0)
@NLconstraint(m, e102, (x[162]/(1e-6+b[243])-1.5*log(1+x[138]/(1e-6+b[243])))*(1e-6+b[243]) <= 0.0)
@NLconstraint(m, e103, (x[163]/(1e-6+b[244])-1.5*log(1+x[139]/(1e-6+b[244])))*(1e-6+b[244]) <= 0.0)
@constraint(m, e104, x[140] == 0.0)
@constraint(m, e105, x[141] == 0.0)
@constraint(m, e106, x[142] == 0.0)
@constraint(m, e107, x[167] == 0.0)
@constraint(m, e108, x[168] == 0.0)
@constraint(m, e109, x[169] == 0.0)
@constraint(m, e110, x[59]-x[137]-x[140] == 0.0)
@constraint(m, e111, x[60]-x[138]-x[141] == 0.0)
@constraint(m, e112, x[61]-x[139]-x[142] == 0.0)
@constraint(m, e113, x[71]-x[161]-x[167] == 0.0)
@constraint(m, e114, x[72]-x[162]-x[168] == 0.0)
@constraint(m, e115, x[73]-x[163]-x[169] == 0.0)
@constraint(m, e116, x[137]-4.45628648004517*b[242] <= 0.0)
@constraint(m, e117, x[138]-4.45628648004517*b[243] <= 0.0)
@constraint(m, e118, x[139]-4.45628648004517*b[244] <= 0.0)
@constraint(m, e119, x[140]+4.45628648004517*b[242] <= 4.45628648004517)
@constraint(m, e120, x[141]+4.45628648004517*b[243] <= 4.45628648004517)
@constraint(m, e121, x[142]+4.45628648004517*b[244] <= 4.45628648004517)
@constraint(m, e122, x[161]-2.54515263975353*b[242] <= 0.0)
@constraint(m, e123, x[162]-2.54515263975353*b[243] <= 0.0)
@constraint(m, e124, x[163]-2.54515263975353*b[244] <= 0.0)
@constraint(m, e125, x[167]+2.54515263975353*b[242] <= 2.54515263975353)
@constraint(m, e126, x[168]+2.54515263975353*b[243] <= 2.54515263975353)
@constraint(m, e127, x[169]+2.54515263975353*b[244] <= 2.54515263975353)
@constraint(m, e128, -x[143]+x[173] == 0.0)
@constraint(m, e129, -x[144]+x[174] == 0.0)
@constraint(m, e130, -x[145]+x[175] == 0.0)
@constraint(m, e131, -0.5*x[149]+x[173] == 0.0)
@constraint(m, e132, -0.5*x[150]+x[174] == 0.0)
@constraint(m, e133, -0.5*x[151]+x[175] == 0.0)
@constraint(m, e134, x[146] == 0.0)
@constraint(m, e135, x[147] == 0.0)
@constraint(m, e136, x[148] == 0.0)
@constraint(m, e137, x[152] == 0.0)
@constraint(m, e138, x[153] == 0.0)
@constraint(m, e139, x[154] == 0.0)
@constraint(m, e140, x[176] == 0.0)
@constraint(m, e141, x[177] == 0.0)
@constraint(m, e142, x[178] == 0.0)
@constraint(m, e143, x[62]-x[143]-x[146] == 0.0)
@constraint(m, e144, x[63]-x[144]-x[147] == 0.0)
@constraint(m, e145, x[64]-x[145]-x[148] == 0.0)
@constraint(m, e146, x[65]-x[149]-x[152] == 0.0)
@constraint(m, e147, x[66]-x[150]-x[153] == 0.0)
@constraint(m, e148, x[67]-x[151]-x[154] == 0.0)
@constraint(m, e149, x[74]-x[173]-x[176] == 0.0)
@constraint(m, e150, x[75]-x[174]-x[177] == 0.0)
@constraint(m, e151, x[76]-x[175]-x[178] == 0.0)
@constraint(m, e152, x[143]-4.45628648004517*b[245] <= 0.0)
@constraint(m, e153, x[144]-4.45628648004517*b[246] <= 0.0)
@constraint(m, e154, x[145]-4.45628648004517*b[247] <= 0.0)
@constraint(m, e155, x[146]+4.45628648004517*b[245] <= 4.45628648004517)
@constraint(m, e156, x[147]+4.45628648004517*b[246] <= 4.45628648004517)
@constraint(m, e157, x[148]+4.45628648004517*b[247] <= 4.45628648004517)
@constraint(m, e158, x[149]-30*b[245] <= 0.0)
@constraint(m, e159, x[150]-30*b[246] <= 0.0)
@constraint(m, e160, x[151]-30*b[247] <= 0.0)
@constraint(m, e161, x[152]+30*b[245] <= 30.0)
@constraint(m, e162, x[153]+30*b[246] <= 30.0)
@constraint(m, e163, x[154]+30*b[247] <= 30.0)
@constraint(m, e164, x[173]-15*b[245] <= 0.0)
@constraint(m, e165, x[174]-15*b[246] <= 0.0)
@constraint(m, e166, x[175]-15*b[247] <= 0.0)
@constraint(m, e167, x[176]+15*b[245] <= 15.0)
@constraint(m, e168, x[177]+15*b[246] <= 15.0)
@constraint(m, e169, x[178]+15*b[247] <= 15.0)
@NLconstraint(m, e170, (x[203]/(1e-6+b[248])-1.25*log(1+x[179]/(1e-6+b[248])))*(1e-6+b[248]) <= 0.0)
@NLconstraint(m, e171, (x[204]/(1e-6+b[249])-1.25*log(1+x[180]/(1e-6+b[249])))*(1e-6+b[249]) <= 0.0)
@NLconstraint(m, e172, (x[205]/(1e-6+b[250])-1.25*log(1+x[181]/(1e-6+b[250])))*(1e-6+b[250]) <= 0.0)
@constraint(m, e173, x[182] == 0.0)
@constraint(m, e174, x[183] == 0.0)
@constraint(m, e175, x[184] == 0.0)
@constraint(m, e176, x[206] == 0.0)
@constraint(m, e177, x[207] == 0.0)
@constraint(m, e178, x[208] == 0.0)
@constraint(m, e179, x[77]-x[179]-x[182] == 0.0)
@constraint(m, e180, x[78]-x[180]-x[183] == 0.0)
@constraint(m, e181, x[79]-x[181]-x[184] == 0.0)
@constraint(m, e182, x[92]-x[203]-x[206] == 0.0)
@constraint(m, e183, x[93]-x[204]-x[207] == 0.0)
@constraint(m, e184, x[94]-x[205]-x[208] == 0.0)
@constraint(m, e185, x[179]-3.34221486003388*b[248] <= 0.0)
@constraint(m, e186, x[180]-3.34221486003388*b[249] <= 0.0)
@constraint(m, e187, x[181]-3.34221486003388*b[250] <= 0.0)
@constraint(m, e188, x[182]+3.34221486003388*b[248] <= 3.34221486003388)
@constraint(m, e189, x[183]+3.34221486003388*b[249] <= 3.34221486003388)
@constraint(m, e190, x[184]+3.34221486003388*b[250] <= 3.34221486003388)
@constraint(m, e191, x[203]-1.83548069293539*b[248] <= 0.0)
@constraint(m, e192, x[204]-1.83548069293539*b[249] <= 0.0)
@constraint(m, e193, x[205]-1.83548069293539*b[250] <= 0.0)
@constraint(m, e194, x[206]+1.83548069293539*b[248] <= 1.83548069293539)
@constraint(m, e195, x[207]+1.83548069293539*b[249] <= 1.83548069293539)
@constraint(m, e196, x[208]+1.83548069293539*b[250] <= 1.83548069293539)
@NLconstraint(m, e197, (x[209]/(1e-6+b[251])-0.9*log(1+x[185]/(1e-6+b[251])))*(1e-6+b[251]) <= 0.0)
@NLconstraint(m, e198, (x[210]/(1e-6+b[252])-0.9*log(1+x[186]/(1e-6+b[252])))*(1e-6+b[252]) <= 0.0)
@NLconstraint(m, e199, (x[211]/(1e-6+b[253])-0.9*log(1+x[187]/(1e-6+b[253])))*(1e-6+b[253]) <= 0.0)
@constraint(m, e200, x[188] == 0.0)
@constraint(m, e201, x[189] == 0.0)
@constraint(m, e202, x[190] == 0.0)
@constraint(m, e203, x[212] == 0.0)
@constraint(m, e204, x[213] == 0.0)
@constraint(m, e205, x[214] == 0.0)
@constraint(m, e206, x[80]-x[185]-x[188] == 0.0)
@constraint(m, e207, x[81]-x[186]-x[189] == 0.0)
@constraint(m, e208, x[82]-x[187]-x[190] == 0.0)
@constraint(m, e209, x[95]-x[209]-x[212] == 0.0)
@constraint(m, e210, x[96]-x[210]-x[213] == 0.0)
@constraint(m, e211, x[97]-x[211]-x[214] == 0.0)
@constraint(m, e212, x[185]-3.34221486003388*b[251] <= 0.0)
@constraint(m, e213, x[186]-3.34221486003388*b[252] <= 0.0)
@constraint(m, e214, x[187]-3.34221486003388*b[253] <= 0.0)
@constraint(m, e215, x[188]+3.34221486003388*b[251] <= 3.34221486003388)
@constraint(m, e216, x[189]+3.34221486003388*b[252] <= 3.34221486003388)
@constraint(m, e217, x[190]+3.34221486003388*b[253] <= 3.34221486003388)
@constraint(m, e218, x[209]-1.32154609891348*b[251] <= 0.0)
@constraint(m, e219, x[210]-1.32154609891348*b[252] <= 0.0)
@constraint(m, e220, x[211]-1.32154609891348*b[253] <= 0.0)
@constraint(m, e221, x[212]+1.32154609891348*b[251] <= 1.32154609891348)
@constraint(m, e222, x[213]+1.32154609891348*b[252] <= 1.32154609891348)
@constraint(m, e223, x[214]+1.32154609891348*b[253] <= 1.32154609891348)
@NLconstraint(m, e224, (x[215]/(1e-6+b[254])-log(1+x[164]/(1e-6+b[254])))*(1e-6+b[254]) <= 0.0)
@NLconstraint(m, e225, (x[216]/(1e-6+b[255])-log(1+x[165]/(1e-6+b[255])))*(1e-6+b[255]) <= 0.0)
@NLconstraint(m, e226, (x[217]/(1e-6+b[256])-log(1+x[166]/(1e-6+b[256])))*(1e-6+b[256]) <= 0.0)
@constraint(m, e227, x[170] == 0.0)
@constraint(m, e228, x[171] == 0.0)
@constraint(m, e229, x[172] == 0.0)
@constraint(m, e230, x[218] == 0.0)
@constraint(m, e231, x[219] == 0.0)
@constraint(m, e232, x[220] == 0.0)
@constraint(m, e233, x[71]-x[164]-x[170] == 0.0)
@constraint(m, e234, x[72]-x[165]-x[171] == 0.0)
@constraint(m, e235, x[73]-x[166]-x[172] == 0.0)
@constraint(m, e236, x[98]-x[215]-x[218] == 0.0)
@constraint(m, e237, x[99]-x[216]-x[219] == 0.0)
@constraint(m, e238, x[100]-x[217]-x[220] == 0.0)
@constraint(m, e239, x[164]-2.54515263975353*b[254] <= 0.0)
@constraint(m, e240, x[165]-2.54515263975353*b[255] <= 0.0)
@constraint(m, e241, x[166]-2.54515263975353*b[256] <= 0.0)
@constraint(m, e242, x[170]+2.54515263975353*b[254] <= 2.54515263975353)
@constraint(m, e243, x[171]+2.54515263975353*b[255] <= 2.54515263975353)
@constraint(m, e244, x[172]+2.54515263975353*b[256] <= 2.54515263975353)
@constraint(m, e245, x[215]-1.26558121681553*b[254] <= 0.0)
@constraint(m, e246, x[216]-1.26558121681553*b[255] <= 0.0)
@constraint(m, e247, x[217]-1.26558121681553*b[256] <= 0.0)
@constraint(m, e248, x[218]+1.26558121681553*b[254] <= 1.26558121681553)
@constraint(m, e249, x[219]+1.26558121681553*b[255] <= 1.26558121681553)
@constraint(m, e250, x[220]+1.26558121681553*b[256] <= 1.26558121681553)
@constraint(m, e251, -0.9*x[191]+x[221] == 0.0)
@constraint(m, e252, -0.9*x[192]+x[222] == 0.0)
@constraint(m, e253, -0.9*x[193]+x[223] == 0.0)
@constraint(m, e254, x[194] == 0.0)
@constraint(m, e255, x[195] == 0.0)
@constraint(m, e256, x[196] == 0.0)
@constraint(m, e257, x[224] == 0.0)
@constraint(m, e258, x[225] == 0.0)
@constraint(m, e259, x[226] == 0.0)
@constraint(m, e260, x[83]-x[191]-x[194] == 0.0)
@constraint(m, e261, x[84]-x[192]-x[195] == 0.0)
@constraint(m, e262, x[85]-x[193]-x[196] == 0.0)
@constraint(m, e263, x[101]-x[221]-x[224] == 0.0)
@constraint(m, e264, x[102]-x[222]-x[225] == 0.0)
@constraint(m, e265, x[103]-x[223]-x[226] == 0.0)
@constraint(m, e266, x[191]-15*b[257] <= 0.0)
@constraint(m, e267, x[192]-15*b[258] <= 0.0)
@constraint(m, e268, x[193]-15*b[259] <= 0.0)
@constraint(m, e269, x[194]+15*b[257] <= 15.0)
@constraint(m, e270, x[195]+15*b[258] <= 15.0)
@constraint(m, e271, x[196]+15*b[259] <= 15.0)
@constraint(m, e272, x[221]-13.5*b[257] <= 0.0)
@constraint(m, e273, x[222]-13.5*b[258] <= 0.0)
@constraint(m, e274, x[223]-13.5*b[259] <= 0.0)
@constraint(m, e275, x[224]+13.5*b[257] <= 13.5)
@constraint(m, e276, x[225]+13.5*b[258] <= 13.5)
@constraint(m, e277, x[226]+13.5*b[259] <= 13.5)
@constraint(m, e278, -0.6*x[197]+x[227] == 0.0)
@constraint(m, e279, -0.6*x[198]+x[228] == 0.0)
@constraint(m, e280, -0.6*x[199]+x[229] == 0.0)
@constraint(m, e281, x[200] == 0.0)
@constraint(m, e282, x[201] == 0.0)
@constraint(m, e283, x[202] == 0.0)
@constraint(m, e284, x[230] == 0.0)
@constraint(m, e285, x[231] == 0.0)
@constraint(m, e286, x[232] == 0.0)
@constraint(m, e287, x[86]-x[197]-x[200] == 0.0)
@constraint(m, e288, x[87]-x[198]-x[201] == 0.0)
@constraint(m, e289, x[88]-x[199]-x[202] == 0.0)
@constraint(m, e290, x[104]-x[227]-x[230] == 0.0)
@constraint(m, e291, x[105]-x[228]-x[231] == 0.0)
@constraint(m, e292, x[106]-x[229]-x[232] == 0.0)
@constraint(m, e293, x[197]-15*b[260] <= 0.0)
@constraint(m, e294, x[198]-15*b[261] <= 0.0)
@constraint(m, e295, x[199]-15*b[262] <= 0.0)
@constraint(m, e296, x[200]+15*b[260] <= 15.0)
@constraint(m, e297, x[201]+15*b[261] <= 15.0)
@constraint(m, e298, x[202]+15*b[262] <= 15.0)
@constraint(m, e299, x[227]-9*b[260] <= 0.0)
@constraint(m, e300, x[228]-9*b[261] <= 0.0)
@constraint(m, e301, x[229]-9*b[262] <= 0.0)
@constraint(m, e302, x[230]+9*b[260] <= 9.0)
@constraint(m, e303, x[231]+9*b[261] <= 9.0)
@constraint(m, e304, x[232]+9*b[262] <= 9.0)
@constraint(m, e305, x[2]+5*b[263] == 0.0)
@constraint(m, e306, x[3]+4*b[264] == 0.0)
@constraint(m, e307, x[4]+6*b[265] == 0.0)
@constraint(m, e308, x[5]+8*b[266] == 0.0)
@constraint(m, e309, x[6]+7*b[267] == 0.0)
@constraint(m, e310, x[7]+6*b[268] == 0.0)
@constraint(m, e311, x[8]+6*b[269] == 0.0)
@constraint(m, e312, x[9]+9*b[270] == 0.0)
@constraint(m, e313, x[10]+4*b[271] == 0.0)
@constraint(m, e314, x[11]+10*b[272] == 0.0)
@constraint(m, e315, x[12]+9*b[273] == 0.0)
@constraint(m, e316, x[13]+5*b[274] == 0.0)
@constraint(m, e317, x[14]+6*b[275] == 0.0)
@constraint(m, e318, x[15]+10*b[276] == 0.0)
@constraint(m, e319, x[16]+6*b[277] == 0.0)
@constraint(m, e320, x[17]+7*b[278] == 0.0)
@constraint(m, e321, x[18]+7*b[279] == 0.0)
@constraint(m, e322, x[19]+4*b[280] == 0.0)
@constraint(m, e323, x[20]+4*b[281] == 0.0)
@constraint(m, e324, x[21]+3*b[282] == 0.0)
@constraint(m, e325, x[22]+2*b[283] == 0.0)
@constraint(m, e326, x[23]+5*b[284] == 0.0)
@constraint(m, e327, x[24]+6*b[285] == 0.0)
@constraint(m, e328, x[25]+7*b[286] == 0.0)
@constraint(m, e329, x[26]+2*b[287] == 0.0)
@constraint(m, e330, x[27]+5*b[288] == 0.0)
@constraint(m, e331, x[28]+2*b[289] == 0.0)
@constraint(m, e332, x[29]+4*b[290] == 0.0)
@constraint(m, e333, x[30]+7*b[291] == 0.0)
@constraint(m, e334, x[31]+4*b[292] == 0.0)
@constraint(m, e335, b[233]-b[234] <= 0.0)
@constraint(m, e336, b[233]-b[235] <= 0.0)
@constraint(m, e337, b[234]-b[235] <= 0.0)
@constraint(m, e338, b[236]-b[237] <= 0.0)
@constraint(m, e339, b[236]-b[238] <= 0.0)
@constraint(m, e340, b[237]-b[238] <= 0.0)
@constraint(m, e341, b[239]-b[240] <= 0.0)
@constraint(m, e342, b[239]-b[241] <= 0.0)
@constraint(m, e343, b[240]-b[241] <= 0.0)
@constraint(m, e344, b[242]-b[243] <= 0.0)
@constraint(m, e345, b[242]-b[244] <= 0.0)
@constraint(m, e346, b[243]-b[244] <= 0.0)
@constraint(m, e347, b[245]-b[246] <= 0.0)
@constraint(m, e348, b[245]-b[247] <= 0.0)
@constraint(m, e349, b[246]-b[247] <= 0.0)
@constraint(m, e350, b[248]-b[249] <= 0.0)
@constraint(m, e351, b[248]-b[250] <= 0.0)
@constraint(m, e352, b[249]-b[250] <= 0.0)
@constraint(m, e353, b[251]-b[252] <= 0.0)
@constraint(m, e354, b[251]-b[253] <= 0.0)
@constraint(m, e355, b[252]-b[253] <= 0.0)
@constraint(m, e356, b[254]-b[255] <= 0.0)
@constraint(m, e357, b[254]-b[256] <= 0.0)
@constraint(m, e358, b[255]-b[256] <= 0.0)
@constraint(m, e359, b[257]-b[258] <= 0.0)
@constraint(m, e360, b[257]-b[259] <= 0.0)
@constraint(m, e361, b[258]-b[259] <= 0.0)
@constraint(m, e362, b[260]-b[261] <= 0.0)
@constraint(m, e363, b[260]-b[262] <= 0.0)
@constraint(m, e364, b[261]-b[262] <= 0.0)
@constraint(m, e365, b[263]+b[264] <= 1.0)
@constraint(m, e366, b[263]+b[265] <= 1.0)
@constraint(m, e367, b[263]+b[264] <= 1.0)
@constraint(m, e368, b[264]+b[265] <= 1.0)
@constraint(m, e369, b[263]+b[265] <= 1.0)
@constraint(m, e370, b[264]+b[265] <= 1.0)
@constraint(m, e371, b[266]+b[267] <= 1.0)
@constraint(m, e372, b[266]+b[268] <= 1.0)
@constraint(m, e373, b[266]+b[267] <= 1.0)
@constraint(m, e374, b[267]+b[268] <= 1.0)
@constraint(m, e375, b[266]+b[268] <= 1.0)
@constraint(m, e376, b[267]+b[268] <= 1.0)
@constraint(m, e377, b[269]+b[270] <= 1.0)
@constraint(m, e378, b[269]+b[271] <= 1.0)
@constraint(m, e379, b[269]+b[270] <= 1.0)
@constraint(m, e380, b[270]+b[271] <= 1.0)
@constraint(m, e381, b[269]+b[271] <= 1.0)
@constraint(m, e382, b[270]+b[271] <= 1.0)
@constraint(m, e383, b[272]+b[273] <= 1.0)
@constraint(m, e384, b[272]+b[274] <= 1.0)
@constraint(m, e385, b[272]+b[273] <= 1.0)
@constraint(m, e386, b[273]+b[274] <= 1.0)
@constraint(m, e387, b[272]+b[274] <= 1.0)
@constraint(m, e388, b[273]+b[274] <= 1.0)
@constraint(m, e389, b[275]+b[276] <= 1.0)
@constraint(m, e390, b[275]+b[277] <= 1.0)
@constraint(m, e391, b[275]+b[276] <= 1.0)
@constraint(m, e392, b[276]+b[277] <= 1.0)
@constraint(m, e393, b[275]+b[277] <= 1.0)
@constraint(m, e394, b[276]+b[277] <= 1.0)
@constraint(m, e395, b[278]+b[279] <= 1.0)
@constraint(m, e396, b[278]+b[280] <= 1.0)
@constraint(m, e397, b[278]+b[279] <= 1.0)
@constraint(m, e398, b[279]+b[280] <= 1.0)
@constraint(m, e399, b[278]+b[280] <= 1.0)
@constraint(m, e400, b[279]+b[280] <= 1.0)
@constraint(m, e401, b[281]+b[282] <= 1.0)
@constraint(m, e402, b[281]+b[283] <= 1.0)
@constraint(m, e403, b[281]+b[282] <= 1.0)
@constraint(m, e404, b[282]+b[283] <= 1.0)
@constraint(m, e405, b[281]+b[283] <= 1.0)
@constraint(m, e406, b[282]+b[283] <= 1.0)
@constraint(m, e407, b[284]+b[285] <= 1.0)
@constraint(m, e408, b[284]+b[286] <= 1.0)
@constraint(m, e409, b[284]+b[285] <= 1.0)
@constraint(m, e410, b[285]+b[286] <= 1.0)
@constraint(m, e411, b[284]+b[286] <= 1.0)
@constraint(m, e412, b[285]+b[286] <= 1.0)
@constraint(m, e413, b[287]+b[288] <= 1.0)
@constraint(m, e414, b[287]+b[289] <= 1.0)
@constraint(m, e415, b[287]+b[288] <= 1.0)
@constraint(m, e416, b[288]+b[289] <= 1.0)
@constraint(m, e417, b[287]+b[289] <= 1.0)
@constraint(m, e418, b[288]+b[289] <= 1.0)
@constraint(m, e419, b[290]+b[291] <= 1.0)
@constraint(m, e420, b[290]+b[292] <= 1.0)
@constraint(m, e421, b[290]+b[291] <= 1.0)
@constraint(m, e422, b[291]+b[292] <= 1.0)
@constraint(m, e423, b[290]+b[292] <= 1.0)
@constraint(m, e424, b[291]+b[292] <= 1.0)
@constraint(m, e425, b[233]-b[263] <= 0.0)
@constraint(m, e426, -b[233]+b[234]-b[264] <= 0.0)
@constraint(m, e427, -b[233]-b[234]+b[235]-b[265] <= 0.0)
@constraint(m, e428, b[236]-b[266] <= 0.0)
@constraint(m, e429, -b[236]+b[237]-b[267] <= 0.0)
@constraint(m, e430, -b[236]-b[237]+b[238]-b[268] <= 0.0)
@constraint(m, e431, b[239]-b[269] <= 0.0)
@constraint(m, e432, -b[239]+b[240]-b[270] <= 0.0)
@constraint(m, e433, -b[239]-b[240]+b[241]-b[271] <= 0.0)
@constraint(m, e434, b[242]-b[272] <= 0.0)
@constraint(m, e435, -b[242]+b[243]-b[273] <= 0.0)
@constraint(m, e436, -b[242]-b[243]+b[244]-b[274] <= 0.0)
@constraint(m, e437, b[245]-b[275] <= 0.0)
@constraint(m, e438, -b[245]+b[246]-b[276] <= 0.0)
@constraint(m, e439, -b[245]-b[246]+b[247]-b[277] <= 0.0)
@constraint(m, e440, b[248]-b[278] <= 0.0)
@constraint(m, e441, -b[248]+b[249]-b[279] <= 0.0)
@constraint(m, e442, -b[248]-b[249]+b[250]-b[280] <= 0.0)
@constraint(m, e443, b[251]-b[281] <= 0.0)
@constraint(m, e444, -b[251]+b[252]-b[282] <= 0.0)
@constraint(m, e445, -b[251]-b[252]+b[253]-b[283] <= 0.0)
@constraint(m, e446, b[254]-b[284] <= 0.0)
@constraint(m, e447, -b[254]+b[255]-b[285] <= 0.0)
@constraint(m, e448, -b[254]-b[255]+b[256]-b[286] <= 0.0)
@constraint(m, e449, b[257]-b[287] <= 0.0)
@constraint(m, e450, -b[257]+b[258]-b[288] <= 0.0)
@constraint(m, e451, -b[257]-b[258]+b[259]-b[289] <= 0.0)
@constraint(m, e452, b[260]-b[290] <= 0.0)
@constraint(m, e453, -b[260]+b[261]-b[291] <= 0.0)
@constraint(m, e454, -b[260]-b[261]+b[262]-b[292] <= 0.0)
@constraint(m, e455, b[233]+b[236] == 1.0)
@constraint(m, e456, b[234]+b[237] == 1.0)
@constraint(m, e457, b[235]+b[238] == 1.0)
@constraint(m, e458, -b[239]+b[248]+b[251] >= 0.0)
@constraint(m, e459, -b[240]+b[249]+b[252] >= 0.0)
@constraint(m, e460, -b[241]+b[250]+b[253] >= 0.0)
@constraint(m, e461, -b[242]+b[254] >= 0.0)
@constraint(m, e462, -b[243]+b[255] >= 0.0)
@constraint(m, e463, -b[244]+b[256] >= 0.0)
@constraint(m, e464, b[233]+b[236]-b[239] >= 0.0)
@constraint(m, e465, b[234]+b[237]-b[240] >= 0.0)
@constraint(m, e466, b[235]+b[238]-b[241] >= 0.0)
@constraint(m, e467, b[233]+b[236]-b[242] >= 0.0)
@constraint(m, e468, b[234]+b[237]-b[243] >= 0.0)
@constraint(m, e469, b[235]+b[238]-b[244] >= 0.0)
@constraint(m, e470, b[233]+b[236]-b[245] >= 0.0)
@constraint(m, e471, b[234]+b[237]-b[246] >= 0.0)
@constraint(m, e472, b[235]+b[238]-b[247] >= 0.0)
@constraint(m, e473, b[239]-b[248] >= 0.0)
@constraint(m, e474, b[240]-b[249] >= 0.0)
@constraint(m, e475, b[241]-b[250] >= 0.0)
@constraint(m, e476, b[239]-b[251] >= 0.0)
@constraint(m, e477, b[240]-b[252] >= 0.0)
@constraint(m, e478, b[241]-b[253] >= 0.0)
@constraint(m, e479, b[242]-b[254] >= 0.0)
@constraint(m, e480, b[243]-b[255] >= 0.0)
@constraint(m, e481, b[244]-b[256] >= 0.0)
@constraint(m, e482, b[245]-b[257] >= 0.0)
@constraint(m, e483, b[246]-b[258] >= 0.0)
@constraint(m, e484, b[247]-b[259] >= 0.0)
@constraint(m, e485, b[245]-b[260] >= 0.0)
@constraint(m, e486, b[246]-b[261] >= 0.0)
@constraint(m, e487, b[247]-b[262] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script. 
