using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243]
@variable(m, x[x_Idx])
b_Idx = Any[244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303]
@variable(m, b[b_Idx])
set_lower_bound(x[146], 0.0)
set_binary(b[301])
set_lower_bound(x[62], 0.0)
set_lower_bound(x[114], 0.0)
set_binary(b[300])
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[91], 0.0)
set_binary(b[271])
set_lower_bound(x[59], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[241], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[186], 0.0)
set_lower_bound(x[243], 0.0)
set_binary(b[282])
set_lower_bound(x[202], 0.0)
set_lower_bound(x[220], 0.0)
set_binary(b[291])
set_binary(b[270])
set_lower_bound(x[88], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[144], 0.0)
set_binary(b[264])
set_lower_bound(x[63], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[226], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[188], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[238], 0.0)
set_binary(b[275])
set_lower_bound(x[103], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[116], 0.0)
set_binary(b[286])
set_lower_bound(x[95], 0.0)
set_lower_bound(x[200], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[206], 0.0)
set_lower_bound(x[215], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[197], 0.0)
set_lower_bound(x[198], 0.0)
set_lower_bound(x[148], 0.0)
set_binary(b[262])
set_lower_bound(x[150], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[218], 0.0)
set_lower_bound(x[225], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[73], 0.0)
set_binary(b[278])
set_lower_bound(x[231], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[190], 0.0)
set_lower_bound(x[196], 0.0)
set_binary(b[276])
set_binary(b[252])
set_lower_bound(x[38], 0.0)
set_lower_bound(x[232], 0.0)
set_binary(b[295])
set_lower_bound(x[42], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[138], 0.0)
set_binary(b[269])
set_lower_bound(x[77], 0.0)
set_binary(b[285])
set_binary(b[289])
set_lower_bound(x[234], 0.0)
set_binary(b[274])
set_lower_bound(x[92], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[219], 0.0)
set_lower_bound(x[185], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[224], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[209], 0.0)
set_binary(b[299])
set_lower_bound(x[53], 0.0)
set_binary(b[255])
set_lower_bound(x[128], 0.0)
set_lower_bound(x[161], 0.0)
set_binary(b[256])
set_binary(b[281])
set_binary(b[260])
set_lower_bound(x[67], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[199], 0.0)
set_binary(b[244])
set_lower_bound(x[213], 0.0)
set_binary(b[246])
set_lower_bound(x[173], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[47], 0.0)
set_binary(b[297])
set_lower_bound(x[176], 0.0)
set_lower_bound(x[240], 0.0)
set_binary(b[259])
set_lower_bound(x[123], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_binary(b[292])
set_lower_bound(x[227], 0.0)
set_lower_bound(x[189], 0.0)
set_lower_bound(x[187], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[230], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[216], 0.0)
set_binary(b[277])
set_lower_bound(x[133], 0.0)
set_binary(b[303])
set_lower_bound(x[192], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[205], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[195], 0.0)
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[207], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[201], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[223], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[208], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_binary(b[280])
set_lower_bound(x[96], 0.0)
set_binary(b[257])
set_lower_bound(x[210], 0.0)
set_binary(b[254])
set_binary(b[273])
set_lower_bound(x[182], 0.0)
set_lower_bound(x[191], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[82], 0.0)
set_binary(b[248])
set_lower_bound(x[52], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[121], 0.0)
set_binary(b[302])
set_lower_bound(x[152], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_binary(b[268])
set_lower_bound(x[233], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[184], 0.0)
set_binary(b[290])
set_lower_bound(x[236], 0.0)
set_lower_bound(x[98], 0.0)
set_binary(b[279])
set_lower_bound(x[158], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[203], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[35], 0.0)
set_binary(b[284])
set_lower_bound(x[170], 0.0)
set_binary(b[272])
set_lower_bound(x[149], 0.0)
set_lower_bound(x[221], 0.0)
set_binary(b[296])
set_lower_bound(x[217], 0.0)
set_lower_bound(x[212], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[125], 0.0)
set_binary(b[250])
set_lower_bound(x[183], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_binary(b[258])
set_lower_bound(x[167], 0.0)
set_lower_bound(x[102], 0.0)
set_binary(b[266])
set_lower_bound(x[239], 0.0)
set_lower_bound(x[228], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_binary(b[251])
set_lower_bound(x[78], 0.0)
set_lower_bound(x[222], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[56], 0.0)
set_binary(b[267])
set_lower_bound(x[155], 0.0)
set_lower_bound(x[204], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_binary(b[298])
set_lower_bound(x[32], 0.0)
set_lower_bound(x[193], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[180], 0.0)
set_binary(b[249])
set_lower_bound(x[57], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[237], 0.0)
set_lower_bound(x[129], 0.0)
set_binary(b[293])
set_lower_bound(x[41], 0.0)
set_lower_bound(x[194], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[214], 0.0)
set_binary(b[245])
set_binary(b[247])
set_lower_bound(x[178], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[107], 0.0)
set_binary(b[288])
set_lower_bound(x[66], 0.0)
set_lower_bound(x[235], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[40], 0.0)
set_binary(b[265])
set_lower_bound(x[61], 0.0)
set_binary(b[283])
set_binary(b[253])
set_lower_bound(x[242], 0.0)
set_lower_bound(x[64], 0.0)
set_binary(b[261])
set_lower_bound(x[97], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[135], 0.0)
set_binary(b[294])
set_lower_bound(x[48], 0.0)
set_lower_bound(x[229], 0.0)
set_lower_bound(x[211], 0.0)
set_lower_bound(x[108], 0.0)
set_binary(b[287])
set_binary(b[263])
set_upper_bound(x[32], 40.0)
set_upper_bound(x[33], 40.0)
set_upper_bound(x[54], 30.0)
set_upper_bound(x[55], 30.0)
set_upper_bound(x[88], 20.0)
set_upper_bound(x[89], 20.0)
set_upper_bound(x[90], 20.0)
set_upper_bound(x[91], 20.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[32]+x[33]-5*x[44]-10*x[45]+2*x[54]+x[55]-500*x[80]-600*x[81]-350*x[82]-400*x[83]+10*x[88]+5*x[89]+5*x[90]+5*x[91]-80*x[104]-130*x[105]-110*x[106]-120*x[107]-110*x[108]-130*x[109]-80*x[110]-90*x[111]+5*b[274]+4*b[275]+8*b[276]+7*b[277]+6*b[278]+9*b[279]+10*b[280]+9*b[281]+6*b[282]+10*b[283]+7*b[284]+7*b[285]+4*b[286]+3*b[287]+5*b[288]+6*b[289]+2*b[290]+5*b[291]+4*b[292]+7*b[293]+3*b[294]+9*b[295]+7*b[296]+2*b[297]+3*b[298]+b[299]+2*b[300]+6*b[301]+4*b[302]+8*b[303] == 0.0)
@constraint(m, e2, x[32]-x[34]-x[36] == 0.0)
@constraint(m, e3, x[33]-x[35]-x[37] == 0.0)
@constraint(m, e4, -x[38]-x[40]+x[42] == 0.0)
@constraint(m, e5, -x[39]-x[41]+x[43] == 0.0)
@constraint(m, e6, x[42]-x[44]-x[46] == 0.0)
@constraint(m, e7, x[43]-x[45]-x[47] == 0.0)
@constraint(m, e8, x[46]-x[48]-x[50]-x[52] == 0.0)
@constraint(m, e9, x[47]-x[49]-x[51]-x[53] == 0.0)
@constraint(m, e10, x[56]-x[62]-x[64] == 0.0)
@constraint(m, e11, x[57]-x[63]-x[65] == 0.0)
@constraint(m, e12, x[60]-x[66]-x[68]-x[70] == 0.0)
@constraint(m, e13, x[61]-x[67]-x[69]-x[71] == 0.0)
@constraint(m, e14, x[76]-x[84]-x[86] == 0.0)
@constraint(m, e15, x[77]-x[85]-x[87] == 0.0)
@constraint(m, e16, -x[78]-x[90]+x[92] == 0.0)
@constraint(m, e17, -x[79]-x[91]+x[93] == 0.0)
@constraint(m, e18, x[80]-x[94]-x[96] == 0.0)
@constraint(m, e19, x[81]-x[95]-x[97] == 0.0)
@constraint(m, e20, x[82]-x[98]-x[100]-x[102] == 0.0)
@constraint(m, e21, x[83]-x[99]-x[101]-x[103] == 0.0)
@NLconstraint(m, e22, (x[120]/(1e-6+b[244])-log(1+x[112]/(1e-6+b[244])))*(1e-6+b[244]) <= 0.0)
@NLconstraint(m, e23, (x[121]/(1e-6+b[245])-log(1+x[113]/(1e-6+b[245])))*(1e-6+b[245]) <= 0.0)
@constraint(m, e24, x[114] == 0.0)
@constraint(m, e25, x[115] == 0.0)
@constraint(m, e26, x[122] == 0.0)
@constraint(m, e27, x[123] == 0.0)
@constraint(m, e28, x[34]-x[112]-x[114] == 0.0)
@constraint(m, e29, x[35]-x[113]-x[115] == 0.0)
@constraint(m, e30, x[38]-x[120]-x[122] == 0.0)
@constraint(m, e31, x[39]-x[121]-x[123] == 0.0)
@constraint(m, e32, x[112]-40*b[244] <= 0.0)
@constraint(m, e33, x[113]-40*b[245] <= 0.0)
@constraint(m, e34, x[114]+40*b[244] <= 40.0)
@constraint(m, e35, x[115]+40*b[245] <= 40.0)
@constraint(m, e36, x[120]-3.71357206670431*b[244] <= 0.0)
@constraint(m, e37, x[121]-3.71357206670431*b[245] <= 0.0)
@constraint(m, e38, x[122]+3.71357206670431*b[244] <= 3.71357206670431)
@constraint(m, e39, x[123]+3.71357206670431*b[245] <= 3.71357206670431)
@NLconstraint(m, e40, (x[124]/(1e-6+b[246])-1.2*log(1+x[116]/(1e-6+b[246])))*(1e-6+b[246]) <= 0.0)
@NLconstraint(m, e41, (x[125]/(1e-6+b[247])-1.2*log(1+x[117]/(1e-6+b[247])))*(1e-6+b[247]) <= 0.0)
@constraint(m, e42, x[118] == 0.0)
@constraint(m, e43, x[119] == 0.0)
@constraint(m, e44, x[126] == 0.0)
@constraint(m, e45, x[127] == 0.0)
@constraint(m, e46, x[36]-x[116]-x[118] == 0.0)
@constraint(m, e47, x[37]-x[117]-x[119] == 0.0)
@constraint(m, e48, x[40]-x[124]-x[126] == 0.0)
@constraint(m, e49, x[41]-x[125]-x[127] == 0.0)
@constraint(m, e50, x[116]-40*b[246] <= 0.0)
@constraint(m, e51, x[117]-40*b[247] <= 0.0)
@constraint(m, e52, x[118]+40*b[246] <= 40.0)
@constraint(m, e53, x[119]+40*b[247] <= 40.0)
@constraint(m, e54, x[124]-4.45628648004517*b[246] <= 0.0)
@constraint(m, e55, x[125]-4.45628648004517*b[247] <= 0.0)
@constraint(m, e56, x[126]+4.45628648004517*b[246] <= 4.45628648004517)
@constraint(m, e57, x[127]+4.45628648004517*b[247] <= 4.45628648004517)
@constraint(m, e58, -0.75*x[128]+x[144] == 0.0)
@constraint(m, e59, -0.75*x[129]+x[145] == 0.0)
@constraint(m, e60, x[130] == 0.0)
@constraint(m, e61, x[131] == 0.0)
@constraint(m, e62, x[146] == 0.0)
@constraint(m, e63, x[147] == 0.0)
@constraint(m, e64, x[48]-x[128]-x[130] == 0.0)
@constraint(m, e65, x[49]-x[129]-x[131] == 0.0)
@constraint(m, e66, x[56]-x[144]-x[146] == 0.0)
@constraint(m, e67, x[57]-x[145]-x[147] == 0.0)
@constraint(m, e68, x[128]-4.45628648004517*b[248] <= 0.0)
@constraint(m, e69, x[129]-4.45628648004517*b[249] <= 0.0)
@constraint(m, e70, x[130]+4.45628648004517*b[248] <= 4.45628648004517)
@constraint(m, e71, x[131]+4.45628648004517*b[249] <= 4.45628648004517)
@constraint(m, e72, x[144]-3.34221486003388*b[248] <= 0.0)
@constraint(m, e73, x[145]-3.34221486003388*b[249] <= 0.0)
@constraint(m, e74, x[146]+3.34221486003388*b[248] <= 3.34221486003388)
@constraint(m, e75, x[147]+3.34221486003388*b[249] <= 3.34221486003388)
@NLconstraint(m, e76, (x[148]/(1e-6+b[250])-1.5*log(1+x[132]/(1e-6+b[250])))*(1e-6+b[250]) <= 0.0)
@NLconstraint(m, e77, (x[149]/(1e-6+b[251])-1.5*log(1+x[133]/(1e-6+b[251])))*(1e-6+b[251]) <= 0.0)
@constraint(m, e78, x[134] == 0.0)
@constraint(m, e79, x[135] == 0.0)
@constraint(m, e80, x[152] == 0.0)
@constraint(m, e81, x[153] == 0.0)
@constraint(m, e82, x[50]-x[132]-x[134] == 0.0)
@constraint(m, e83, x[51]-x[133]-x[135] == 0.0)
@constraint(m, e84, x[58]-x[148]-x[152] == 0.0)
@constraint(m, e85, x[59]-x[149]-x[153] == 0.0)
@constraint(m, e86, x[132]-4.45628648004517*b[250] <= 0.0)
@constraint(m, e87, x[133]-4.45628648004517*b[251] <= 0.0)
@constraint(m, e88, x[134]+4.45628648004517*b[250] <= 4.45628648004517)
@constraint(m, e89, x[135]+4.45628648004517*b[251] <= 4.45628648004517)
@constraint(m, e90, x[148]-2.54515263975353*b[250] <= 0.0)
@constraint(m, e91, x[149]-2.54515263975353*b[251] <= 0.0)
@constraint(m, e92, x[152]+2.54515263975353*b[250] <= 2.54515263975353)
@constraint(m, e93, x[153]+2.54515263975353*b[251] <= 2.54515263975353)
@constraint(m, e94, -x[136]+x[156] == 0.0)
@constraint(m, e95, -x[137]+x[157] == 0.0)
@constraint(m, e96, -0.5*x[140]+x[156] == 0.0)
@constraint(m, e97, -0.5*x[141]+x[157] == 0.0)
@constraint(m, e98, x[138] == 0.0)
@constraint(m, e99, x[139] == 0.0)
@constraint(m, e100, x[142] == 0.0)
@constraint(m, e101, x[143] == 0.0)
@constraint(m, e102, x[158] == 0.0)
@constraint(m, e103, x[159] == 0.0)
@constraint(m, e104, x[52]-x[136]-x[138] == 0.0)
@constraint(m, e105, x[53]-x[137]-x[139] == 0.0)
@constraint(m, e106, x[54]-x[140]-x[142] == 0.0)
@constraint(m, e107, x[55]-x[141]-x[143] == 0.0)
@constraint(m, e108, x[60]-x[156]-x[158] == 0.0)
@constraint(m, e109, x[61]-x[157]-x[159] == 0.0)
@constraint(m, e110, x[136]-4.45628648004517*b[252] <= 0.0)
@constraint(m, e111, x[137]-4.45628648004517*b[253] <= 0.0)
@constraint(m, e112, x[138]+4.45628648004517*b[252] <= 4.45628648004517)
@constraint(m, e113, x[139]+4.45628648004517*b[253] <= 4.45628648004517)
@constraint(m, e114, x[140]-30*b[252] <= 0.0)
@constraint(m, e115, x[141]-30*b[253] <= 0.0)
@constraint(m, e116, x[142]+30*b[252] <= 30.0)
@constraint(m, e117, x[143]+30*b[253] <= 30.0)
@constraint(m, e118, x[156]-15*b[252] <= 0.0)
@constraint(m, e119, x[157]-15*b[253] <= 0.0)
@constraint(m, e120, x[158]+15*b[252] <= 15.0)
@constraint(m, e121, x[159]+15*b[253] <= 15.0)
@NLconstraint(m, e122, (x[180]/(1e-6+b[254])-1.25*log(1+x[160]/(1e-6+b[254])))*(1e-6+b[254]) <= 0.0)
@NLconstraint(m, e123, (x[181]/(1e-6+b[255])-1.25*log(1+x[161]/(1e-6+b[255])))*(1e-6+b[255]) <= 0.0)
@constraint(m, e124, x[162] == 0.0)
@constraint(m, e125, x[163] == 0.0)
@constraint(m, e126, x[184] == 0.0)
@constraint(m, e127, x[185] == 0.0)
@constraint(m, e128, x[62]-x[160]-x[162] == 0.0)
@constraint(m, e129, x[63]-x[161]-x[163] == 0.0)
@constraint(m, e130, x[72]-x[180]-x[184] == 0.0)
@constraint(m, e131, x[73]-x[181]-x[185] == 0.0)
@constraint(m, e132, x[160]-3.34221486003388*b[254] <= 0.0)
@constraint(m, e133, x[161]-3.34221486003388*b[255] <= 0.0)
@constraint(m, e134, x[162]+3.34221486003388*b[254] <= 3.34221486003388)
@constraint(m, e135, x[163]+3.34221486003388*b[255] <= 3.34221486003388)
@constraint(m, e136, x[180]-1.83548069293539*b[254] <= 0.0)
@constraint(m, e137, x[181]-1.83548069293539*b[255] <= 0.0)
@constraint(m, e138, x[184]+1.83548069293539*b[254] <= 1.83548069293539)
@constraint(m, e139, x[185]+1.83548069293539*b[255] <= 1.83548069293539)
@NLconstraint(m, e140, (x[188]/(1e-6+b[256])-0.9*log(1+x[164]/(1e-6+b[256])))*(1e-6+b[256]) <= 0.0)
@NLconstraint(m, e141, (x[189]/(1e-6+b[257])-0.9*log(1+x[165]/(1e-6+b[257])))*(1e-6+b[257]) <= 0.0)
@constraint(m, e142, x[166] == 0.0)
@constraint(m, e143, x[167] == 0.0)
@constraint(m, e144, x[192] == 0.0)
@constraint(m, e145, x[193] == 0.0)
@constraint(m, e146, x[64]-x[164]-x[166] == 0.0)
@constraint(m, e147, x[65]-x[165]-x[167] == 0.0)
@constraint(m, e148, x[74]-x[188]-x[192] == 0.0)
@constraint(m, e149, x[75]-x[189]-x[193] == 0.0)
@constraint(m, e150, x[164]-3.34221486003388*b[256] <= 0.0)
@constraint(m, e151, x[165]-3.34221486003388*b[257] <= 0.0)
@constraint(m, e152, x[166]+3.34221486003388*b[256] <= 3.34221486003388)
@constraint(m, e153, x[167]+3.34221486003388*b[257] <= 3.34221486003388)
@constraint(m, e154, x[188]-1.32154609891348*b[256] <= 0.0)
@constraint(m, e155, x[189]-1.32154609891348*b[257] <= 0.0)
@constraint(m, e156, x[192]+1.32154609891348*b[256] <= 1.32154609891348)
@constraint(m, e157, x[193]+1.32154609891348*b[257] <= 1.32154609891348)
@NLconstraint(m, e158, (x[196]/(1e-6+b[258])-log(1+x[150]/(1e-6+b[258])))*(1e-6+b[258]) <= 0.0)
@NLconstraint(m, e159, (x[197]/(1e-6+b[259])-log(1+x[151]/(1e-6+b[259])))*(1e-6+b[259]) <= 0.0)
@constraint(m, e160, x[154] == 0.0)
@constraint(m, e161, x[155] == 0.0)
@constraint(m, e162, x[198] == 0.0)
@constraint(m, e163, x[199] == 0.0)
@constraint(m, e164, x[58]-x[150]-x[154] == 0.0)
@constraint(m, e165, x[59]-x[151]-x[155] == 0.0)
@constraint(m, e166, x[76]-x[196]-x[198] == 0.0)
@constraint(m, e167, x[77]-x[197]-x[199] == 0.0)
@constraint(m, e168, x[150]-2.54515263975353*b[258] <= 0.0)
@constraint(m, e169, x[151]-2.54515263975353*b[259] <= 0.0)
@constraint(m, e170, x[154]+2.54515263975353*b[258] <= 2.54515263975353)
@constraint(m, e171, x[155]+2.54515263975353*b[259] <= 2.54515263975353)
@constraint(m, e172, x[196]-1.26558121681553*b[258] <= 0.0)
@constraint(m, e173, x[197]-1.26558121681553*b[259] <= 0.0)
@constraint(m, e174, x[198]+1.26558121681553*b[258] <= 1.26558121681553)
@constraint(m, e175, x[199]+1.26558121681553*b[259] <= 1.26558121681553)
@constraint(m, e176, -0.9*x[168]+x[200] == 0.0)
@constraint(m, e177, -0.9*x[169]+x[201] == 0.0)
@constraint(m, e178, x[170] == 0.0)
@constraint(m, e179, x[171] == 0.0)
@constraint(m, e180, x[202] == 0.0)
@constraint(m, e181, x[203] == 0.0)
@constraint(m, e182, x[66]-x[168]-x[170] == 0.0)
@constraint(m, e183, x[67]-x[169]-x[171] == 0.0)
@constraint(m, e184, x[78]-x[200]-x[202] == 0.0)
@constraint(m, e185, x[79]-x[201]-x[203] == 0.0)
@constraint(m, e186, x[168]-15*b[260] <= 0.0)
@constraint(m, e187, x[169]-15*b[261] <= 0.0)
@constraint(m, e188, x[170]+15*b[260] <= 15.0)
@constraint(m, e189, x[171]+15*b[261] <= 15.0)
@constraint(m, e190, x[200]-13.5*b[260] <= 0.0)
@constraint(m, e191, x[201]-13.5*b[261] <= 0.0)
@constraint(m, e192, x[202]+13.5*b[260] <= 13.5)
@constraint(m, e193, x[203]+13.5*b[261] <= 13.5)
@constraint(m, e194, -0.6*x[172]+x[204] == 0.0)
@constraint(m, e195, -0.6*x[173]+x[205] == 0.0)
@constraint(m, e196, x[174] == 0.0)
@constraint(m, e197, x[175] == 0.0)
@constraint(m, e198, x[206] == 0.0)
@constraint(m, e199, x[207] == 0.0)
@constraint(m, e200, x[68]-x[172]-x[174] == 0.0)
@constraint(m, e201, x[69]-x[173]-x[175] == 0.0)
@constraint(m, e202, x[80]-x[204]-x[206] == 0.0)
@constraint(m, e203, x[81]-x[205]-x[207] == 0.0)
@constraint(m, e204, x[172]-15*b[262] <= 0.0)
@constraint(m, e205, x[173]-15*b[263] <= 0.0)
@constraint(m, e206, x[174]+15*b[262] <= 15.0)
@constraint(m, e207, x[175]+15*b[263] <= 15.0)
@constraint(m, e208, x[204]-9*b[262] <= 0.0)
@constraint(m, e209, x[205]-9*b[263] <= 0.0)
@constraint(m, e210, x[206]+9*b[262] <= 9.0)
@constraint(m, e211, x[207]+9*b[263] <= 9.0)
@NLconstraint(m, e212, (x[208]/(1e-6+b[264])-1.1*log(1+x[176]/(1e-6+b[264])))*(1e-6+b[264]) <= 0.0)
@NLconstraint(m, e213, (x[209]/(1e-6+b[265])-1.1*log(1+x[177]/(1e-6+b[265])))*(1e-6+b[265]) <= 0.0)
@constraint(m, e214, x[178] == 0.0)
@constraint(m, e215, x[179] == 0.0)
@constraint(m, e216, x[210] == 0.0)
@constraint(m, e217, x[211] == 0.0)
@constraint(m, e218, x[70]-x[176]-x[178] == 0.0)
@constraint(m, e219, x[71]-x[177]-x[179] == 0.0)
@constraint(m, e220, x[82]-x[208]-x[210] == 0.0)
@constraint(m, e221, x[83]-x[209]-x[211] == 0.0)
@constraint(m, e222, x[176]-15*b[264] <= 0.0)
@constraint(m, e223, x[177]-15*b[265] <= 0.0)
@constraint(m, e224, x[178]+15*b[264] <= 15.0)
@constraint(m, e225, x[179]+15*b[265] <= 15.0)
@constraint(m, e226, x[208]-3.04984759446376*b[264] <= 0.0)
@constraint(m, e227, x[209]-3.04984759446376*b[265] <= 0.0)
@constraint(m, e228, x[210]+3.04984759446376*b[264] <= 3.04984759446376)
@constraint(m, e229, x[211]+3.04984759446376*b[265] <= 3.04984759446376)
@constraint(m, e230, -0.9*x[182]+x[228] == 0.0)
@constraint(m, e231, -0.9*x[183]+x[229] == 0.0)
@constraint(m, e232, -x[220]+x[228] == 0.0)
@constraint(m, e233, -x[221]+x[229] == 0.0)
@constraint(m, e234, x[186] == 0.0)
@constraint(m, e235, x[187] == 0.0)
@constraint(m, e236, x[222] == 0.0)
@constraint(m, e237, x[223] == 0.0)
@constraint(m, e238, x[230] == 0.0)
@constraint(m, e239, x[231] == 0.0)
@constraint(m, e240, x[72]-x[182]-x[186] == 0.0)
@constraint(m, e241, x[73]-x[183]-x[187] == 0.0)
@constraint(m, e242, x[88]-x[220]-x[222] == 0.0)
@constraint(m, e243, x[89]-x[221]-x[223] == 0.0)
@constraint(m, e244, x[104]-x[228]-x[230] == 0.0)
@constraint(m, e245, x[105]-x[229]-x[231] == 0.0)
@constraint(m, e246, x[182]-1.83548069293539*b[266] <= 0.0)
@constraint(m, e247, x[183]-1.83548069293539*b[267] <= 0.0)
@constraint(m, e248, x[186]+1.83548069293539*b[266] <= 1.83548069293539)
@constraint(m, e249, x[187]+1.83548069293539*b[267] <= 1.83548069293539)
@constraint(m, e250, x[220]-20*b[266] <= 0.0)
@constraint(m, e251, x[221]-20*b[267] <= 0.0)
@constraint(m, e252, x[222]+20*b[266] <= 20.0)
@constraint(m, e253, x[223]+20*b[267] <= 20.0)
@constraint(m, e254, x[228]-20*b[266] <= 0.0)
@constraint(m, e255, x[229]-20*b[267] <= 0.0)
@constraint(m, e256, x[230]+20*b[266] <= 20.0)
@constraint(m, e257, x[231]+20*b[267] <= 20.0)
@NLconstraint(m, e258, (x[232]/(1e-6+b[268])-log(1+x[190]/(1e-6+b[268])))*(1e-6+b[268]) <= 0.0)
@NLconstraint(m, e259, (x[233]/(1e-6+b[269])-log(1+x[191]/(1e-6+b[269])))*(1e-6+b[269]) <= 0.0)
@constraint(m, e260, x[194] == 0.0)
@constraint(m, e261, x[195] == 0.0)
@constraint(m, e262, x[234] == 0.0)
@constraint(m, e263, x[235] == 0.0)
@constraint(m, e264, x[74]-x[190]-x[194] == 0.0)
@constraint(m, e265, x[75]-x[191]-x[195] == 0.0)
@constraint(m, e266, x[106]-x[232]-x[234] == 0.0)
@constraint(m, e267, x[107]-x[233]-x[235] == 0.0)
@constraint(m, e268, x[190]-1.32154609891348*b[268] <= 0.0)
@constraint(m, e269, x[191]-1.32154609891348*b[269] <= 0.0)
@constraint(m, e270, x[194]+1.32154609891348*b[268] <= 1.32154609891348)
@constraint(m, e271, x[195]+1.32154609891348*b[269] <= 1.32154609891348)
@constraint(m, e272, x[232]-0.842233385663186*b[268] <= 0.0)
@constraint(m, e273, x[233]-0.842233385663186*b[269] <= 0.0)
@constraint(m, e274, x[234]+0.842233385663186*b[268] <= 0.842233385663186)
@constraint(m, e275, x[235]+0.842233385663186*b[269] <= 0.842233385663186)
@NLconstraint(m, e276, (x[236]/(1e-6+b[270])-0.7*log(1+x[212]/(1e-6+b[270])))*(1e-6+b[270]) <= 0.0)
@NLconstraint(m, e277, (x[237]/(1e-6+b[271])-0.7*log(1+x[213]/(1e-6+b[271])))*(1e-6+b[271]) <= 0.0)
@constraint(m, e278, x[214] == 0.0)
@constraint(m, e279, x[215] == 0.0)
@constraint(m, e280, x[238] == 0.0)
@constraint(m, e281, x[239] == 0.0)
@constraint(m, e282, x[84]-x[212]-x[214] == 0.0)
@constraint(m, e283, x[85]-x[213]-x[215] == 0.0)
@constraint(m, e284, x[108]-x[236]-x[238] == 0.0)
@constraint(m, e285, x[109]-x[237]-x[239] == 0.0)
@constraint(m, e286, x[212]-1.26558121681553*b[270] <= 0.0)
@constraint(m, e287, x[213]-1.26558121681553*b[271] <= 0.0)
@constraint(m, e288, x[214]+1.26558121681553*b[270] <= 1.26558121681553)
@constraint(m, e289, x[215]+1.26558121681553*b[271] <= 1.26558121681553)
@constraint(m, e290, x[236]-0.572481933717686*b[270] <= 0.0)
@constraint(m, e291, x[237]-0.572481933717686*b[271] <= 0.0)
@constraint(m, e292, x[238]+0.572481933717686*b[270] <= 0.572481933717686)
@constraint(m, e293, x[239]+0.572481933717686*b[271] <= 0.572481933717686)
@NLconstraint(m, e294, (x[240]/(1e-6+b[272])-0.65*log(1+x[216]/(1e-6+b[272])))*(1e-6+b[272]) <= 0.0)
@NLconstraint(m, e295, (x[241]/(1e-6+b[273])-0.65*log(1+x[217]/(1e-6+b[273])))*(1e-6+b[273]) <= 0.0)
@NLconstraint(m, e296, (x[240]/(1e-6+b[272])-0.65*log(1+x[224]/(1e-6+b[272])))*(1e-6+b[272]) <= 0.0)
@NLconstraint(m, e297, (x[241]/(1e-6+b[273])-0.65*log(1+x[225]/(1e-6+b[273])))*(1e-6+b[273]) <= 0.0)
@constraint(m, e298, x[218] == 0.0)
@constraint(m, e299, x[219] == 0.0)
@constraint(m, e300, x[226] == 0.0)
@constraint(m, e301, x[227] == 0.0)
@constraint(m, e302, x[242] == 0.0)
@constraint(m, e303, x[243] == 0.0)
@constraint(m, e304, x[86]-x[216]-x[218] == 0.0)
@constraint(m, e305, x[87]-x[217]-x[219] == 0.0)
@constraint(m, e306, x[92]-x[224]-x[226] == 0.0)
@constraint(m, e307, x[93]-x[225]-x[227] == 0.0)
@constraint(m, e308, x[110]-x[240]-x[242] == 0.0)
@constraint(m, e309, x[111]-x[241]-x[243] == 0.0)
@constraint(m, e310, x[216]-1.26558121681553*b[272] <= 0.0)
@constraint(m, e311, x[217]-1.26558121681553*b[273] <= 0.0)
@constraint(m, e312, x[218]+1.26558121681553*b[272] <= 1.26558121681553)
@constraint(m, e313, x[219]+1.26558121681553*b[273] <= 1.26558121681553)
@constraint(m, e314, x[224]-33.5*b[272] <= 0.0)
@constraint(m, e315, x[225]-33.5*b[273] <= 0.0)
@constraint(m, e316, x[226]+33.5*b[272] <= 33.5)
@constraint(m, e317, x[227]+33.5*b[273] <= 33.5)
@constraint(m, e318, x[240]-2.30162356062425*b[272] <= 0.0)
@constraint(m, e319, x[241]-2.30162356062425*b[273] <= 0.0)
@constraint(m, e320, x[242]+2.30162356062425*b[272] <= 2.30162356062425)
@constraint(m, e321, x[243]+2.30162356062425*b[273] <= 2.30162356062425)
@constraint(m, e322, x[2]+5*b[274] == 0.0)
@constraint(m, e323, x[3]+4*b[275] == 0.0)
@constraint(m, e324, x[4]+8*b[276] == 0.0)
@constraint(m, e325, x[5]+7*b[277] == 0.0)
@constraint(m, e326, x[6]+6*b[278] == 0.0)
@constraint(m, e327, x[7]+9*b[279] == 0.0)
@constraint(m, e328, x[8]+10*b[280] == 0.0)
@constraint(m, e329, x[9]+9*b[281] == 0.0)
@constraint(m, e330, x[10]+6*b[282] == 0.0)
@constraint(m, e331, x[11]+10*b[283] == 0.0)
@constraint(m, e332, x[12]+7*b[284] == 0.0)
@constraint(m, e333, x[13]+7*b[285] == 0.0)
@constraint(m, e334, x[14]+4*b[286] == 0.0)
@constraint(m, e335, x[15]+3*b[287] == 0.0)
@constraint(m, e336, x[16]+5*b[288] == 0.0)
@constraint(m, e337, x[17]+6*b[289] == 0.0)
@constraint(m, e338, x[18]+2*b[290] == 0.0)
@constraint(m, e339, x[19]+5*b[291] == 0.0)
@constraint(m, e340, x[20]+4*b[292] == 0.0)
@constraint(m, e341, x[21]+7*b[293] == 0.0)
@constraint(m, e342, x[22]+3*b[294] == 0.0)
@constraint(m, e343, x[23]+9*b[295] == 0.0)
@constraint(m, e344, x[24]+7*b[296] == 0.0)
@constraint(m, e345, x[25]+2*b[297] == 0.0)
@constraint(m, e346, x[26]+3*b[298] == 0.0)
@constraint(m, e347, x[27]+b[299] == 0.0)
@constraint(m, e348, x[28]+2*b[300] == 0.0)
@constraint(m, e349, x[29]+6*b[301] == 0.0)
@constraint(m, e350, x[30]+4*b[302] == 0.0)
@constraint(m, e351, x[31]+8*b[303] == 0.0)
@constraint(m, e352, b[244]-b[245] <= 0.0)
@constraint(m, e353, b[246]-b[247] <= 0.0)
@constraint(m, e354, b[248]-b[249] <= 0.0)
@constraint(m, e355, b[250]-b[251] <= 0.0)
@constraint(m, e356, b[252]-b[253] <= 0.0)
@constraint(m, e357, b[254]-b[255] <= 0.0)
@constraint(m, e358, b[256]-b[257] <= 0.0)
@constraint(m, e359, b[258]-b[259] <= 0.0)
@constraint(m, e360, b[260]-b[261] <= 0.0)
@constraint(m, e361, b[262]-b[263] <= 0.0)
@constraint(m, e362, b[264]-b[265] <= 0.0)
@constraint(m, e363, b[266]-b[267] <= 0.0)
@constraint(m, e364, b[268]-b[269] <= 0.0)
@constraint(m, e365, b[270]-b[271] <= 0.0)
@constraint(m, e366, b[272]-b[273] <= 0.0)
@constraint(m, e367, b[274]+b[275] <= 1.0)
@constraint(m, e368, b[274]+b[275] <= 1.0)
@constraint(m, e369, b[276]+b[277] <= 1.0)
@constraint(m, e370, b[276]+b[277] <= 1.0)
@constraint(m, e371, b[278]+b[279] <= 1.0)
@constraint(m, e372, b[278]+b[279] <= 1.0)
@constraint(m, e373, b[280]+b[281] <= 1.0)
@constraint(m, e374, b[280]+b[281] <= 1.0)
@constraint(m, e375, b[282]+b[283] <= 1.0)
@constraint(m, e376, b[282]+b[283] <= 1.0)
@constraint(m, e377, b[284]+b[285] <= 1.0)
@constraint(m, e378, b[284]+b[285] <= 1.0)
@constraint(m, e379, b[286]+b[287] <= 1.0)
@constraint(m, e380, b[286]+b[287] <= 1.0)
@constraint(m, e381, b[288]+b[289] <= 1.0)
@constraint(m, e382, b[288]+b[289] <= 1.0)
@constraint(m, e383, b[290]+b[291] <= 1.0)
@constraint(m, e384, b[290]+b[291] <= 1.0)
@constraint(m, e385, b[292]+b[293] <= 1.0)
@constraint(m, e386, b[292]+b[293] <= 1.0)
@constraint(m, e387, b[294]+b[295] <= 1.0)
@constraint(m, e388, b[294]+b[295] <= 1.0)
@constraint(m, e389, b[296]+b[297] <= 1.0)
@constraint(m, e390, b[296]+b[297] <= 1.0)
@constraint(m, e391, b[298]+b[299] <= 1.0)
@constraint(m, e392, b[298]+b[299] <= 1.0)
@constraint(m, e393, b[300]+b[301] <= 1.0)
@constraint(m, e394, b[300]+b[301] <= 1.0)
@constraint(m, e395, b[302]+b[303] <= 1.0)
@constraint(m, e396, b[302]+b[303] <= 1.0)
@constraint(m, e397, b[244]-b[274] <= 0.0)
@constraint(m, e398, -b[244]+b[245]-b[275] <= 0.0)
@constraint(m, e399, b[246]-b[276] <= 0.0)
@constraint(m, e400, -b[246]+b[247]-b[277] <= 0.0)
@constraint(m, e401, b[248]-b[278] <= 0.0)
@constraint(m, e402, -b[248]+b[249]-b[279] <= 0.0)
@constraint(m, e403, b[250]-b[280] <= 0.0)
@constraint(m, e404, -b[250]+b[251]-b[281] <= 0.0)
@constraint(m, e405, b[252]-b[282] <= 0.0)
@constraint(m, e406, -b[252]+b[253]-b[283] <= 0.0)
@constraint(m, e407, b[254]-b[284] <= 0.0)
@constraint(m, e408, -b[254]+b[255]-b[285] <= 0.0)
@constraint(m, e409, b[256]-b[286] <= 0.0)
@constraint(m, e410, -b[256]+b[257]-b[287] <= 0.0)
@constraint(m, e411, b[258]-b[288] <= 0.0)
@constraint(m, e412, -b[258]+b[259]-b[289] <= 0.0)
@constraint(m, e413, b[260]-b[290] <= 0.0)
@constraint(m, e414, -b[260]+b[261]-b[291] <= 0.0)
@constraint(m, e415, b[262]-b[292] <= 0.0)
@constraint(m, e416, -b[262]+b[263]-b[293] <= 0.0)
@constraint(m, e417, b[264]-b[294] <= 0.0)
@constraint(m, e418, -b[264]+b[265]-b[295] <= 0.0)
@constraint(m, e419, b[266]-b[296] <= 0.0)
@constraint(m, e420, -b[266]+b[267]-b[297] <= 0.0)
@constraint(m, e421, b[268]-b[298] <= 0.0)
@constraint(m, e422, -b[268]+b[269]-b[299] <= 0.0)
@constraint(m, e423, b[270]-b[300] <= 0.0)
@constraint(m, e424, -b[270]+b[271]-b[301] <= 0.0)
@constraint(m, e425, b[272]-b[302] <= 0.0)
@constraint(m, e426, -b[272]+b[273]-b[303] <= 0.0)
@constraint(m, e427, b[244]+b[246] == 1.0)
@constraint(m, e428, b[245]+b[247] == 1.0)
@constraint(m, e429, -b[248]+b[254]+b[256] >= 0.0)
@constraint(m, e430, -b[249]+b[255]+b[257] >= 0.0)
@constraint(m, e431, -b[254]+b[266] >= 0.0)
@constraint(m, e432, -b[255]+b[267] >= 0.0)
@constraint(m, e433, -b[256]+b[268] >= 0.0)
@constraint(m, e434, -b[257]+b[269] >= 0.0)
@constraint(m, e435, -b[250]+b[258] >= 0.0)
@constraint(m, e436, -b[251]+b[259] >= 0.0)
@constraint(m, e437, -b[258]+b[270]+b[272] >= 0.0)
@constraint(m, e438, -b[259]+b[271]+b[273] >= 0.0)
@constraint(m, e439, -b[252]+b[260]+b[262]+b[264] >= 0.0)
@constraint(m, e440, -b[253]+b[261]+b[263]+b[265] >= 0.0)
@constraint(m, e441, -b[260]+b[272] >= 0.0)
@constraint(m, e442, -b[261]+b[273] >= 0.0)
@constraint(m, e443, b[244]+b[246]-b[248] >= 0.0)
@constraint(m, e444, b[245]+b[247]-b[249] >= 0.0)
@constraint(m, e445, b[244]+b[246]-b[250] >= 0.0)
@constraint(m, e446, b[245]+b[247]-b[251] >= 0.0)
@constraint(m, e447, b[244]+b[246]-b[252] >= 0.0)
@constraint(m, e448, b[245]+b[247]-b[253] >= 0.0)
@constraint(m, e449, b[248]-b[254] >= 0.0)
@constraint(m, e450, b[249]-b[255] >= 0.0)
@constraint(m, e451, b[248]-b[256] >= 0.0)
@constraint(m, e452, b[249]-b[257] >= 0.0)
@constraint(m, e453, b[250]-b[258] >= 0.0)
@constraint(m, e454, b[251]-b[259] >= 0.0)
@constraint(m, e455, b[252]-b[260] >= 0.0)
@constraint(m, e456, b[253]-b[261] >= 0.0)
@constraint(m, e457, b[252]-b[262] >= 0.0)
@constraint(m, e458, b[253]-b[263] >= 0.0)
@constraint(m, e459, b[252]-b[264] >= 0.0)
@constraint(m, e460, b[253]-b[265] >= 0.0)
@constraint(m, e461, b[254]-b[266] >= 0.0)
@constraint(m, e462, b[255]-b[267] >= 0.0)
@constraint(m, e463, b[256]-b[268] >= 0.0)
@constraint(m, e464, b[257]-b[269] >= 0.0)
@constraint(m, e465, b[258]-b[270] >= 0.0)
@constraint(m, e466, b[259]-b[271] >= 0.0)
@constraint(m, e467, b[258]-b[272] >= 0.0)
@constraint(m, e468, b[259]-b[273] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script.