using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]
@variable(m, x[x_Idx])
b_Idx = Any[62, 63, 64, 65]
@variable(m, b[b_Idx])
i_Idx = Any[66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245]
@variable(m, i[i_Idx])
setcategory(i[192], :Int)
setcategory(i[173], :Int)
setcategory(i[68], :Int)
setcategory(i[137], :Int)
setcategory(i[91], :Int)
setcategory(i[159], :Int)
setcategory(i[190], :Int)
setcategory(i[200], :Int)
setcategory(i[223], :Int)
setlowerbound(x[59], 0.0)
setcategory(i[196], :Int)
setcategory(i[76], :Int)
setcategory(b[64], :Bin)
setcategory(i[77], :Int)
setcategory(i[202], :Int)
setlowerbound(x[3], 0.0)
setcategory(i[195], :Int)
setcategory(i[148], :Int)
setcategory(i[235], :Int)
setcategory(i[94], :Int)
setcategory(i[155], :Int)
setcategory(i[176], :Int)
setcategory(i[233], :Int)
setcategory(i[82], :Int)
setlowerbound(x[55], 0.0)
setcategory(i[143], :Int)
setcategory(i[92], :Int)
setcategory(i[218], :Int)
setcategory(i[97], :Int)
setcategory(i[136], :Int)
setcategory(i[193], :Int)
setcategory(i[153], :Int)
setcategory(i[187], :Int)
setcategory(i[81], :Int)
setcategory(i[140], :Int)
setcategory(i[201], :Int)
setlowerbound(x[50], 0.0)
setcategory(i[111], :Int)
setcategory(i[114], :Int)
setcategory(i[213], :Int)
setcategory(i[146], :Int)
setcategory(i[122], :Int)
setlowerbound(x[6], 0.0)
setlowerbound(x[60], 0.0)
setcategory(i[238], :Int)
setlowerbound(x[23], 0.0)
setcategory(i[244], :Int)
setcategory(i[156], :Int)
setlowerbound(x[34], 0.0)
setcategory(i[170], :Int)
setcategory(i[215], :Int)
setcategory(i[112], :Int)
setcategory(b[62], :Bin)
setcategory(i[239], :Int)
setcategory(i[87], :Int)
setcategory(i[240], :Int)
setcategory(i[206], :Int)
setlowerbound(x[38], 0.0)
setcategory(i[100], :Int)
setlowerbound(x[42], 0.0)
setcategory(i[84], :Int)
setcategory(i[191], :Int)
setcategory(i[127], :Int)
setcategory(i[163], :Int)
setcategory(i[130], :Int)
setcategory(i[109], :Int)
setcategory(i[228], :Int)
setcategory(i[93], :Int)
setlowerbound(x[9], 0.0)
setcategory(i[150], :Int)
setcategory(i[178], :Int)
setcategory(i[104], :Int)
setcategory(i[203], :Int)
setlowerbound(x[54], 0.0)
setcategory(i[124], :Int)
setcategory(i[138], :Int)
setlowerbound(x[27], 0.0)
setcategory(i[73], :Int)
setcategory(i[185], :Int)
setlowerbound(x[30], 0.0)
setcategory(i[169], :Int)
setlowerbound(x[58], 0.0)
setcategory(i[219], :Int)
setcategory(i[165], :Int)
setlowerbound(x[53], 0.0)
setlowerbound(x[5], 0.0)
setcategory(i[78], :Int)
setcategory(i[189], :Int)
setlowerbound(x[24], 0.0)
setcategory(i[243], :Int)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setcategory(i[184], :Int)
setcategory(i[208], :Int)
setcategory(i[234], :Int)
setcategory(i[171], :Int)
setcategory(i[90], :Int)
setlowerbound(x[26], 0.0)
setcategory(i[101], :Int)
setcategory(i[167], :Int)
setcategory(i[197], :Int)
setcategory(i[79], :Int)
setlowerbound(x[12], 0.0)
setlowerbound(x[44], 0.0)
setcategory(i[121], :Int)
setcategory(i[126], :Int)
setcategory(i[168], :Int)
setlowerbound(x[47], 0.0)
setcategory(i[132], :Int)
setcategory(i[217], :Int)
setcategory(i[113], :Int)
setcategory(i[186], :Int)
setlowerbound(x[28], 0.0)
setcategory(i[172], :Int)
setlowerbound(x[46], 0.0)
setcategory(i[67], :Int)
setlowerbound(x[19], 0.0)
setcategory(i[231], :Int)
setcategory(i[102], :Int)
setcategory(i[70], :Int)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setcategory(i[117], :Int)
setcategory(i[103], :Int)
setcategory(i[162], :Int)
setcategory(i[207], :Int)
setlowerbound(x[16], 0.0)
setlowerbound(x[14], 0.0)
setcategory(i[216], :Int)
setcategory(i[242], :Int)
setcategory(i[119], :Int)
setcategory(i[74], :Int)
setcategory(i[158], :Int)
setlowerbound(x[22], 0.0)
setcategory(i[142], :Int)
setcategory(i[106], :Int)
setcategory(i[211], :Int)
setcategory(i[110], :Int)
setlowerbound(x[8], 0.0)
setlowerbound(x[36], 0.0)
setcategory(i[236], :Int)
setlowerbound(x[4], 0.0)
setcategory(i[141], :Int)
setcategory(i[175], :Int)
setlowerbound(x[25], 0.0)
setcategory(i[198], :Int)
setcategory(i[224], :Int)
setlowerbound(x[29], 0.0)
setcategory(i[95], :Int)
setlowerbound(x[37], 0.0)
setcategory(i[80], :Int)
setcategory(i[160], :Int)
setcategory(i[161], :Int)
setcategory(i[66], :Int)
setcategory(i[123], :Int)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[49], 0.0)
setcategory(i[177], :Int)
setcategory(i[232], :Int)
setcategory(i[85], :Int)
setcategory(i[209], :Int)
setlowerbound(x[45], 0.0)
setcategory(i[83], :Int)
setlowerbound(x[33], 0.0)
setcategory(i[115], :Int)
setcategory(i[118], :Int)
setlowerbound(x[35], 0.0)
setcategory(i[205], :Int)
setcategory(i[88], :Int)
setcategory(i[179], :Int)
setcategory(i[204], :Int)
setcategory(i[71], :Int)
setcategory(i[214], :Int)
setlowerbound(x[51], 0.0)
setcategory(i[222], :Int)
setcategory(i[99], :Int)
setcategory(i[135], :Int)
setcategory(i[210], :Int)
setcategory(i[131], :Int)
setcategory(i[183], :Int)
setlowerbound(x[20], 0.0)
setcategory(i[107], :Int)
setcategory(i[237], :Int)
setcategory(i[194], :Int)
setcategory(i[98], :Int)
setcategory(i[164], :Int)
setcategory(i[133], :Int)
setcategory(i[139], :Int)
setcategory(i[245], :Int)
setcategory(i[174], :Int)
setcategory(i[108], :Int)
setcategory(i[199], :Int)
setcategory(i[86], :Int)
setlowerbound(x[56], 0.0)
setcategory(i[157], :Int)
setcategory(i[221], :Int)
setlowerbound(x[2], 0.0)
setcategory(i[149], :Int)
setcategory(i[75], :Int)
setcategory(i[220], :Int)
setcategory(i[182], :Int)
setlowerbound(x[43], 0.0)
setlowerbound(x[32], 0.0)
setcategory(i[226], :Int)
setcategory(i[128], :Int)
setcategory(i[152], :Int)
setcategory(i[72], :Int)
setlowerbound(x[11], 0.0)
setcategory(i[225], :Int)
setcategory(i[212], :Int)
setcategory(i[166], :Int)
setlowerbound(x[57], 0.0)
setcategory(i[89], :Int)
setcategory(i[229], :Int)
setlowerbound(x[41], 0.0)
setcategory(i[116], :Int)
setcategory(i[181], :Int)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setcategory(i[230], :Int)
setcategory(i[154], :Int)
setcategory(i[227], :Int)
setcategory(i[125], :Int)
setlowerbound(x[40], 0.0)
setcategory(b[65], :Bin)
setcategory(i[96], :Int)
setlowerbound(x[31], 0.0)
setcategory(i[180], :Int)
setcategory(i[105], :Int)
setlowerbound(x[17], 0.0)
setcategory(i[120], :Int)
setcategory(i[188], :Int)
setcategory(i[129], :Int)
setcategory(i[69], :Int)
setcategory(i[145], :Int)
setcategory(i[147], :Int)
setcategory(i[241], :Int)
setlowerbound(x[48], 0.0)
setcategory(i[134], :Int)
setcategory(i[144], :Int)
setcategory(b[63], :Bin)
setcategory(i[151], :Int)
setupperbound(i[66], 100.0)
setupperbound(i[67], 100.0)
setupperbound(i[68], 100.0)
setupperbound(i[69], 100.0)
setupperbound(i[70], 100.0)
setupperbound(i[71], 100.0)
setupperbound(i[72], 100.0)
setupperbound(i[73], 100.0)
setupperbound(i[74], 100.0)
setupperbound(i[75], 100.0)
setupperbound(i[76], 100.0)
setupperbound(i[77], 100.0)
setupperbound(i[78], 100.0)
setupperbound(i[79], 100.0)
setupperbound(i[80], 100.0)
setupperbound(i[81], 100.0)
setupperbound(i[82], 100.0)
setupperbound(i[83], 100.0)
setupperbound(i[84], 100.0)
setupperbound(i[85], 100.0)
setupperbound(i[86], 100.0)
setupperbound(i[87], 100.0)
setupperbound(i[88], 100.0)
setupperbound(i[89], 100.0)
setupperbound(i[90], 100.0)
setupperbound(i[91], 100.0)
setupperbound(i[92], 100.0)
setupperbound(i[93], 100.0)
setupperbound(i[94], 100.0)
setupperbound(i[95], 100.0)
setupperbound(i[96], 100.0)
setupperbound(i[97], 100.0)
setupperbound(i[98], 100.0)
setupperbound(i[99], 100.0)
setupperbound(i[100], 100.0)
setupperbound(i[101], 100.0)
setupperbound(i[102], 100.0)
setupperbound(i[103], 100.0)
setupperbound(i[104], 100.0)
setupperbound(i[105], 100.0)
setupperbound(i[106], 100.0)
setupperbound(i[107], 100.0)
setupperbound(i[108], 100.0)
setupperbound(i[109], 100.0)
setupperbound(i[110], 100.0)
setupperbound(i[111], 100.0)
setupperbound(i[112], 100.0)
setupperbound(i[113], 100.0)
setupperbound(i[114], 100.0)
setupperbound(i[115], 100.0)
setupperbound(i[116], 100.0)
setupperbound(i[117], 100.0)
setupperbound(i[118], 100.0)
setupperbound(i[119], 100.0)
setupperbound(i[120], 100.0)
setupperbound(i[121], 100.0)
setupperbound(i[122], 100.0)
setupperbound(i[123], 100.0)
setupperbound(i[124], 100.0)
setupperbound(i[125], 100.0)
setupperbound(i[126], 100.0)
setupperbound(i[127], 100.0)
setupperbound(i[128], 100.0)
setupperbound(i[129], 100.0)
setupperbound(i[130], 100.0)
setupperbound(i[131], 100.0)
setupperbound(i[132], 100.0)
setupperbound(i[133], 100.0)
setupperbound(i[134], 100.0)
setupperbound(i[135], 100.0)
setupperbound(i[136], 100.0)
setupperbound(i[137], 100.0)
setupperbound(i[138], 100.0)
setupperbound(i[139], 100.0)
setupperbound(i[140], 100.0)
setupperbound(i[141], 100.0)
setupperbound(i[142], 100.0)
setupperbound(i[143], 100.0)
setupperbound(i[144], 100.0)
setupperbound(i[145], 100.0)
setupperbound(i[146], 100.0)
setupperbound(i[147], 100.0)
setupperbound(i[148], 100.0)
setupperbound(i[149], 100.0)
setupperbound(i[150], 100.0)
setupperbound(i[151], 100.0)
setupperbound(i[152], 100.0)
setupperbound(i[153], 100.0)
setupperbound(i[154], 100.0)
setupperbound(i[155], 100.0)
setupperbound(i[156], 100.0)
setupperbound(i[157], 100.0)
setupperbound(i[158], 100.0)
setupperbound(i[159], 100.0)
setupperbound(i[160], 100.0)
setupperbound(i[161], 100.0)
setupperbound(i[162], 100.0)
setupperbound(i[163], 100.0)
setupperbound(i[164], 100.0)
setupperbound(i[165], 100.0)
setupperbound(i[166], 100.0)
setupperbound(i[167], 100.0)
setupperbound(i[168], 100.0)
setupperbound(i[169], 100.0)
setupperbound(i[170], 100.0)
setupperbound(i[171], 100.0)
setupperbound(i[172], 100.0)
setupperbound(i[173], 100.0)
setupperbound(i[174], 100.0)
setupperbound(i[175], 100.0)
setupperbound(i[176], 100.0)
setupperbound(i[177], 100.0)
setupperbound(i[178], 100.0)
setupperbound(i[179], 100.0)
setupperbound(i[180], 100.0)
setupperbound(i[181], 100.0)
setupperbound(i[182], 100.0)
setupperbound(i[183], 100.0)
setupperbound(i[184], 100.0)
setupperbound(i[185], 100.0)
setupperbound(i[186], 100.0)
setupperbound(i[187], 100.0)
setupperbound(i[188], 100.0)
setupperbound(i[189], 100.0)
setupperbound(i[190], 100.0)
setupperbound(i[191], 100.0)
setupperbound(i[192], 100.0)
setupperbound(i[193], 100.0)
setupperbound(i[194], 100.0)
setupperbound(i[195], 100.0)
setupperbound(i[196], 100.0)
setupperbound(i[197], 100.0)
setupperbound(i[198], 100.0)
setupperbound(i[199], 100.0)
setupperbound(i[200], 100.0)
setupperbound(i[201], 100.0)
setupperbound(i[202], 100.0)
setupperbound(i[203], 100.0)
setupperbound(i[204], 100.0)
setupperbound(i[205], 100.0)
setupperbound(i[206], 100.0)
setupperbound(i[207], 100.0)
setupperbound(i[208], 100.0)
setupperbound(i[209], 100.0)
setupperbound(i[210], 100.0)
setupperbound(i[211], 100.0)
setupperbound(i[212], 100.0)
setupperbound(i[213], 100.0)
setupperbound(i[214], 100.0)
setupperbound(i[215], 100.0)
setupperbound(i[216], 100.0)
setupperbound(i[217], 100.0)
setupperbound(i[218], 100.0)
setupperbound(i[219], 100.0)
setupperbound(i[220], 100.0)
setupperbound(i[221], 100.0)
setupperbound(i[222], 100.0)
setupperbound(i[223], 100.0)
setupperbound(i[224], 100.0)
setupperbound(i[225], 100.0)
setupperbound(i[226], 100.0)
setupperbound(i[227], 100.0)
setupperbound(i[228], 100.0)
setupperbound(i[229], 100.0)
setupperbound(i[230], 100.0)
setupperbound(i[231], 100.0)
setupperbound(i[232], 100.0)
setupperbound(i[233], 100.0)
setupperbound(i[234], 100.0)
setupperbound(i[235], 100.0)
setupperbound(i[236], 100.0)
setupperbound(i[237], 100.0)
setupperbound(i[238], 100.0)
setupperbound(i[239], 100.0)
setupperbound(i[240], 100.0)
setupperbound(i[241], 100.0)
setupperbound(i[242], 100.0)
setupperbound(i[243], 100.0)
setupperbound(i[244], 100.0)
setupperbound(i[245], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, -40*x[51]-40*x[52]-40*x[53]-20*x[54]-20*x[55]-20*x[56]+x[61]-999*b[62]-999*b[63]-300*i[116]-300*i[117]-300*i[118]-200*i[119]-200*i[120]-200*i[121]-20*i[194]-25*i[195]-22*i[198]-18*i[199]-29*i[202]-24*i[203]-13*i[206]-19*i[207]-30*i[210]-18*i[211]-35*i[214]-28*i[215] == 0.0)
@constraint(m, e2, -x[1]-x[2]-x[3]+x[16]+x[21]+x[51] == 365.0)
@constraint(m, e3, -x[6]-x[7]-x[8]+x[17]+x[22]+x[52] == 243.0)
@constraint(m, e4, -x[11]-x[12]-x[13]+x[18]+x[23]+x[53] == 345.0)
@constraint(m, e5, -x[26]-x[27]-x[28]+x[41]+x[46]+x[54] == 132.0)
@constraint(m, e6, -x[31]-x[32]-x[33]+x[42]+x[47]+x[55] == 260.0)
@constraint(m, e7, -x[36]-x[37]-x[38]+x[43]+x[48]+x[56] == 252.0)
@constraint(m, e8, -i[66]+i[69]+i[70]-i[71]-i[76]+i[116] == 265.0)
@constraint(m, e9, -i[67]-i[72]+i[74]+i[75]-i[77]+i[117] == 413.0)
@constraint(m, e10, -i[68]-i[73]-i[78]+i[79]+i[80]+i[118] == 145.0)
@constraint(m, e11, -i[91]+i[94]+i[95]-i[96]-i[101]+i[119] == 312.0)
@constraint(m, e12, -i[92]-i[97]+i[99]+i[100]-i[102]+i[120] == 160.0)
@constraint(m, e13, -i[93]-i[98]-i[103]+i[104]+i[105]+i[121] == 152.0)
@constraint(m, e14, x[16]+x[17]+x[18]-x[19]-x[20]-x[57] <= 0.0)
@constraint(m, e15, x[21]+x[22]+x[23]-x[24]-x[25]-x[58] <= 0.0)
@constraint(m, e16, x[41]+x[42]+x[43]-x[44]-x[45]-x[59] <= 0.0)
@constraint(m, e17, x[46]+x[47]+x[48]-x[49]-x[50]-x[60] <= 0.0)
@constraint(m, e18, i[69]+i[74]+i[79]-i[87]-i[88] <= 400.0)
@constraint(m, e19, i[70]+i[75]+i[80]-i[89]-i[90] <= 450.0)
@constraint(m, e20, i[94]+i[99]+i[104]-i[112]-i[113] <= 400.0)
@constraint(m, e21, i[95]+i[100]+i[105]-i[114]-i[115] <= 400.0)
@constraint(m, e22, x[57]+x[58] <= 300.0)
@constraint(m, e23, x[59]+x[60] <= 400.0)
@constraint(m, e24, i[122]+i[126]+i[130]+i[134]+i[138]+i[142]-i[146]-i[170]-i[194]-i[206]-i[218]-i[230] == 0.0)
@constraint(m, e25, i[123]+i[127]+i[131]+i[135]+i[139]+i[143]-i[147]-i[171]-i[195]-i[207]-i[219]-i[231] == 0.0)
@constraint(m, e26, i[124]+i[128]+i[132]+i[136]+i[140]+i[144]-i[148]-i[172]-i[196]-i[208]-i[220]-i[232] == 0.0)
@constraint(m, e27, i[125]+i[129]+i[133]+i[137]+i[141]+i[145]-i[149]-i[173]-i[197]-i[209]-i[221]-i[233] == 0.0)
@constraint(m, e28, -i[122]+i[146]+i[150]+i[154]+i[158]+i[162]+i[166]-i[174]-i[198]-i[210]-i[222]-i[234] == 0.0)
@constraint(m, e29, -i[123]+i[147]+i[151]+i[155]+i[159]+i[163]+i[167]-i[175]-i[199]-i[211]-i[223]-i[235] == 0.0)
@constraint(m, e30, -i[124]+i[148]+i[152]+i[156]+i[160]+i[164]+i[168]-i[176]-i[200]-i[212]-i[224]-i[236] == 0.0)
@constraint(m, e31, -i[125]+i[149]+i[153]+i[157]+i[161]+i[165]+i[169]-i[177]-i[201]-i[213]-i[225]-i[237] == 0.0)
@constraint(m, e32, -i[126]-i[150]+i[170]+i[174]+i[178]+i[182]+i[186]+i[190]-i[202]-i[214]-i[226]-i[238] == 0.0)
@constraint(m, e33, -i[127]-i[151]+i[171]+i[175]+i[179]+i[183]+i[187]+i[191]-i[203]-i[215]-i[227]-i[239] == 0.0)
@constraint(m, e34, -i[128]-i[152]+i[172]+i[176]+i[180]+i[184]+i[188]+i[192]-i[204]-i[216]-i[228]-i[240] == 0.0)
@constraint(m, e35, -i[129]-i[153]+i[173]+i[177]+i[181]+i[185]+i[189]+i[193]-i[205]-i[217]-i[229]-i[241] == 0.0)
@constraint(m, e36, i[194]+i[198]+i[202]+i[206]+i[210]+i[214]+i[218]+i[222]+i[226]+i[230]+i[234]+i[238] <= 3.0)
@constraint(m, e37, i[195]+i[199]+i[203]+i[207]+i[211]+i[215]+i[219]+i[223]+i[227]+i[231]+i[235]+i[239] <= 5.0)
@constraint(m, e38, i[196]+i[200]+i[204]+i[208]+i[212]+i[216]+i[220]+i[224]+i[228]+i[232]+i[236]+i[240] <= 2.0)
@constraint(m, e39, i[197]+i[201]+i[205]+i[209]+i[213]+i[217]+i[221]+i[225]+i[229]+i[233]+i[237]+i[241] <= 2.0)
@constraint(m, e40, i[242]-i[243] == 897.0)
@constraint(m, e41, -9999999999999*b[64]+i[242] <= 0.0)
@constraint(m, e42, 9999999999999*b[64]+i[243] <= 9.999999999999e12)
@constraint(m, e43, x[51]+x[52]+x[53]+x[54]+x[55]+x[56]-i[242] == 0.0)
@constraint(m, e44, -i[116]-i[117]-i[118]-i[119]-i[120]-i[121]+i[244]-i[245] == -1650.0)
@constraint(m, e45, -9999999999999*b[65]+i[244] <= 0.0)
@constraint(m, e46, 9999999999999*b[65]+i[245] <= 9.999999999999e12)
@constraint(m, e47, i[116]+i[117]+i[118]+i[119]+i[120]+i[121]-i[244] == 0.0)
@constraint(m, e48, x[16]-9999999999999*b[62] <= 0.0)
@constraint(m, e49, x[17]-9999999999999*b[62] <= 0.0)
@constraint(m, e50, x[18]-9999999999999*b[62] <= 0.0)
@constraint(m, e51, x[21]-9999999999999*b[63] <= 0.0)
@constraint(m, e52, x[22]-9999999999999*b[63] <= 0.0)
@constraint(m, e53, x[23]-9999999999999*b[63] <= 0.0)
@constraint(m, e54, x[41]-9999999999999*b[62] <= 0.0)
@constraint(m, e55, x[42]-9999999999999*b[62] <= 0.0)
@constraint(m, e56, x[43]-9999999999999*b[62] <= 0.0)
@constraint(m, e57, x[46]-9999999999999*b[63] <= 0.0)
@constraint(m, e58, x[47]-9999999999999*b[63] <= 0.0)
@constraint(m, e59, x[48]-9999999999999*b[63] <= 0.0)
@constraint(m, e60, x[4]+x[29]-100*i[138]-80*i[139] <= 0.0)
@constraint(m, e61, x[5]+x[30]-100*i[142]-80*i[143] <= 0.0)
@constraint(m, e62, x[9]+x[34]-100*i[162]-80*i[163] <= 0.0)
@constraint(m, e63, x[10]+x[35]-100*i[166]-80*i[167] <= 0.0)
@constraint(m, e64, x[14]+x[39]-100*i[186]-80*i[187] <= 0.0)
@constraint(m, e65, x[15]+x[40]-100*i[190]-80*i[191] <= 0.0)
@constraint(m, e66, x[16]+x[41]-100*i[194]-80*i[195] <= 0.0)
@constraint(m, e67, x[17]+x[42]-100*i[198]-80*i[199] <= 0.0)
@constraint(m, e68, x[18]+x[43]-100*i[202]-80*i[203] <= 0.0)
@constraint(m, e69, x[21]+x[46]-100*i[206]-80*i[207] <= 0.0)
@constraint(m, e70, x[22]+x[47]-100*i[210]-80*i[211] <= 0.0)
@constraint(m, e71, x[23]+x[48]-100*i[214]-80*i[215] <= 0.0)
@constraint(m, e72, i[69]+i[94]-500*i[138]-600*i[139] <= 0.0)
@constraint(m, e73, i[70]+i[95]-500*i[142]-600*i[143] <= 0.0)
@constraint(m, e74, i[74]+i[99]-500*i[162]-600*i[163] <= 0.0)
@constraint(m, e75, i[75]+i[100]-500*i[166]-600*i[167] <= 0.0)
@constraint(m, e76, i[79]+i[104]-500*i[186]-600*i[187] <= 0.0)
@constraint(m, e77, i[80]+i[105]-500*i[190]-600*i[191] <= 0.0)
@constraint(m, e78, i[81]+i[106]-500*i[194]-600*i[195] <= 0.0)
@constraint(m, e79, i[82]+i[107]-500*i[198]-600*i[199] <= 0.0)
@constraint(m, e80, i[83]+i[108]-500*i[202]-600*i[203] <= 0.0)
@constraint(m, e81, i[84]+i[109]-500*i[206]-600*i[207] <= 0.0)
@constraint(m, e82, i[85]+i[110]-500*i[210]-600*i[211] <= 0.0)
@constraint(m, e83, i[86]+i[111]-500*i[214]-600*i[215] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, x[61])

m = m 		 # model get returned when including this script. 
