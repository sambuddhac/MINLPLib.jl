using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257]
@variable(m, x[x_Idx])
b_Idx = Any[60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71]
@variable(m, b[b_Idx])
setlowerbound(x[146], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[132], 0.0)
setlowerbound(x[154], 0.0)
setlowerbound(x[164], 0.0)
setlowerbound(x[143], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[241], 0.0)
setlowerbound(x[251], 0.0)
setcategory(b[64], :Bin)
setlowerbound(x[165], 0.0)
setlowerbound(x[186], 0.0)
setlowerbound(x[243], 0.0)
setlowerbound(x[202], 0.0)
setlowerbound(x[220], 0.0)
setlowerbound(x[250], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[248], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[141], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[144], 0.0)
setlowerbound(x[145], 0.0)
setlowerbound(x[172], 0.0)
setlowerbound(x[226], 0.0)
setlowerbound(x[120], 0.0)
setlowerbound(x[160], 0.0)
setlowerbound(x[188], 0.0)
setcategory(b[60], :Bin)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[238], 0.0)
setlowerbound(x[103], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[162], 0.0)
setlowerbound(x[116], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[200], 0.0)
setlowerbound(x[206], 0.0)
setlowerbound(x[244], 0.0)
setlowerbound(x[215], 0.0)
setlowerbound(x[253], 0.0)
setlowerbound(x[174], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[169], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[197], 0.0)
setlowerbound(x[198], 0.0)
setlowerbound(x[148], 0.0)
setlowerbound(x[150], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[218], 0.0)
setlowerbound(x[225], 0.0)
setlowerbound(x[34], 0.0)
setcategory(b[62], :Bin)
setlowerbound(x[73], 0.0)
setlowerbound(x[231], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[136], 0.0)
setlowerbound(x[190], 0.0)
setlowerbound(x[196], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[232], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[151], 0.0)
setlowerbound(x[171], 0.0)
setlowerbound(x[147], 0.0)
setcategory(b[70], :Bin)
setlowerbound(x[138], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[234], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[111], 0.0)
setlowerbound(x[219], 0.0)
setlowerbound(x[185], 0.0)
setlowerbound(x[137], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[224], 0.0)
setlowerbound(x[179], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[175], 0.0)
setlowerbound(x[142], 0.0)
setlowerbound(x[209], 0.0)
setlowerbound(x[128], 0.0)
setcategory(b[61], :Bin)
setlowerbound(x[24], 0.0)
setlowerbound(x[161], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[156], 0.0)
setcategory(b[69], :Bin)
setcategory(b[68], :Bin)
setlowerbound(x[199], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[213], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[173], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[252], 0.0)
setlowerbound(x[176], 0.0)
setlowerbound(x[240], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[123], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setlowerbound(x[227], 0.0)
setlowerbound(x[189], 0.0)
setlowerbound(x[187], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[166], 0.0)
setlowerbound(x[157], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[163], 0.0)
setlowerbound(x[230], 0.0)
setlowerbound(x[216], 0.0)
setlowerbound(x[133], 0.0)
setlowerbound(x[192], 0.0)
setlowerbound(x[205], 0.0)
setlowerbound(x[207], 0.0)
setlowerbound(x[76], 0.0)
setlowerbound(x[195], 0.0)
setlowerbound(x[117], 0.0)
setlowerbound(x[85], 0.0)
setcategory(b[71], :Bin)
setlowerbound(x[16], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[140], 0.0)
setlowerbound(x[181], 0.0)
setlowerbound(x[153], 0.0)
setlowerbound(x[257], 0.0)
setcategory(b[66], :Bin)
setlowerbound(x[201], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[223], 0.0)
setlowerbound(x[113], 0.0)
setlowerbound(x[130], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[208], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[131], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[210], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[182], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[191], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[249], 0.0)
setlowerbound(x[177], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[121], 0.0)
setlowerbound(x[152], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[233], 0.0)
setlowerbound(x[184], 0.0)
setlowerbound(x[236], 0.0)
setlowerbound(x[98], 0.0)
setlowerbound(x[158], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[203], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[254], 0.0)
setcategory(b[67], :Bin)
setlowerbound(x[170], 0.0)
setlowerbound(x[149], 0.0)
setlowerbound(x[221], 0.0)
setlowerbound(x[217], 0.0)
setlowerbound(x[212], 0.0)
setlowerbound(x[125], 0.0)
setlowerbound(x[183], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[167], 0.0)
setlowerbound(x[102], 0.0)
setlowerbound(x[239], 0.0)
setlowerbound(x[228], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[222], 0.0)
setlowerbound(x[110], 0.0)
setlowerbound(x[256], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[245], 0.0)
setlowerbound(x[155], 0.0)
setlowerbound(x[204], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[193], 0.0)
setlowerbound(x[134], 0.0)
setlowerbound(x[180], 0.0)
setlowerbound(x[122], 0.0)
setlowerbound(x[237], 0.0)
setlowerbound(x[129], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[194], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[214], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[247], 0.0)
setlowerbound(x[178], 0.0)
setlowerbound(x[139], 0.0)
setlowerbound(x[126], 0.0)
setlowerbound(x[107], 0.0)
setlowerbound(x[235], 0.0)
setlowerbound(x[168], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[246], 0.0)
setcategory(b[65], :Bin)
setlowerbound(x[31], 0.0)
setlowerbound(x[242], 0.0)
setlowerbound(x[97], 0.0)
setlowerbound(x[127], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[255], 0.0)
setlowerbound(x[159], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[135], 0.0)
setlowerbound(x[229], 0.0)
setlowerbound(x[211], 0.0)
setlowerbound(x[108], 0.0)
setcategory(b[63], :Bin)
setupperbound(x[2], 10.0)
setlowerbound(x[3], 0.0)
setupperbound(x[3], 0.0)
setlowerbound(x[4], 0.0)
setupperbound(x[4], 0.0)
setlowerbound(x[5], -0.5)
setupperbound(x[5], 2.0)
setupperbound(x[6], 0.5)
setlowerbound(x[7], 0.0)
setupperbound(x[7], 0.0)
setlowerbound(x[8], 1.0)
setupperbound(x[8], 1.0)
setlowerbound(x[9], 0.9)
setupperbound(x[9], 1.1)
setlowerbound(x[10], 0.9)
setupperbound(x[10], 1.1)
setlowerbound(x[11], 0.9)
setupperbound(x[11], 1.1)
setlowerbound(x[12], 0.0)
setupperbound(x[12], 0.0)
setlowerbound(x[13], 0.0)
setupperbound(x[13], 0.0)
setlowerbound(x[14], 0.0)
setupperbound(x[14], 0.0)
setlowerbound(x[15], 0.0)
setupperbound(x[15], 0.0)
setlowerbound(x[16], 0.0)
setupperbound(x[16], 0.0)
setlowerbound(x[17], 0.0)
setupperbound(x[17], 0.0)
setlowerbound(x[18], -0.523598776)
setupperbound(x[18], 0.523598776)
setlowerbound(x[19], -0.523598776)
setupperbound(x[19], 0.523598776)
setlowerbound(x[20], -0.523598776)
setupperbound(x[20], 0.523598776)
setupperbound(x[21], 5.0)
setupperbound(x[22], 5.0)
setupperbound(x[23], 5.0)
setupperbound(x[24], 5.0)
setupperbound(x[25], 5.0)
setupperbound(x[26], 5.0)
setupperbound(x[27], 5.0)
setupperbound(x[28], 5.0)
setupperbound(x[29], 5.0)
setupperbound(x[30], 5.0)
setupperbound(x[31], 5.0)
setupperbound(x[32], 5.0)
setupperbound(x[33], 5.0)
setupperbound(x[34], 5.0)
setupperbound(x[35], 5.0)
setupperbound(x[36], 5.0)
setupperbound(x[37], 5.0)
setupperbound(x[38], 5.0)
setupperbound(x[39], 5.0)
setupperbound(x[40], 5.0)
setupperbound(x[41], 5.0)
setupperbound(x[42], 5.0)
setupperbound(x[43], 5.0)
setupperbound(x[44], 5.0)
setlowerbound(x[45], 0.78239991906)
setupperbound(x[45], 1.21)
setlowerbound(x[46], 0.78239991906)
setupperbound(x[46], 1.21)
setlowerbound(x[47], 0.78239991906)
setupperbound(x[47], 1.21)
setlowerbound(x[48], -0.209643426690187)
setupperbound(x[48], 0.313171044808798)
setlowerbound(x[49], -0.209643426690187)
setupperbound(x[49], 0.313171044808798)
setlowerbound(x[50], -0.209643426690187)
setupperbound(x[50], 0.313171044808798)
setlowerbound(x[51], 0.81)
setupperbound(x[51], 1.21)
setlowerbound(x[52], 0.81)
setupperbound(x[52], 1.21)
setlowerbound(x[53], 0.81)
setupperbound(x[53], 1.21)
setlowerbound(x[54], 0.965925826)
setupperbound(x[54], 1.0)
setlowerbound(x[55], 0.965925826)
setupperbound(x[55], 1.0)
setlowerbound(x[56], 0.965925826)
setupperbound(x[56], 1.0)
setlowerbound(x[57], -0.261799388)
setupperbound(x[57], 0.261799388)
setlowerbound(x[58], -0.261799388)
setupperbound(x[58], 0.261799388)
setlowerbound(x[59], -0.261799388)
setupperbound(x[59], 0.261799388)
setupperbound(x[72], 12.54)
setupperbound(x[73], 12.54)
setupperbound(x[74], 12.54)
setupperbound(x[75], 12.5)
setupperbound(x[76], 12.5)
setupperbound(x[77], 12.5)
setupperbound(x[78], 12.5)
setupperbound(x[79], 12.5)
setupperbound(x[80], 12.5)
setupperbound(x[81], 12.5)
setupperbound(x[82], 12.5)
setupperbound(x[83], 12.5)
setupperbound(x[84], 12.5412297502531)
setupperbound(x[85], 12.5412297502531)
setupperbound(x[86], 12.5412297502531)
setupperbound(x[87], 12.5412297502531)
setupperbound(x[88], 12.5412297502531)
setupperbound(x[89], 12.5412297502531)
setupperbound(x[90], 12.527600080748)
setupperbound(x[91], 12.527600080748)
setupperbound(x[92], 12.527600080748)
setupperbound(x[93], 12.527600080748)
setupperbound(x[94], 12.527600080748)
setupperbound(x[95], 12.527600080748)
setupperbound(x[96], 12.52760008094)
setupperbound(x[97], 12.52760008094)
setupperbound(x[98], 12.52760008094)
setupperbound(x[99], 12.52760008094)
setupperbound(x[100], 12.52760008094)
setupperbound(x[101], 12.52760008094)
setupperbound(x[102], 12.52760008094)
setupperbound(x[103], 12.52760008094)
setupperbound(x[104], 12.52760008094)
setupperbound(x[105], 12.52760008094)
setupperbound(x[106], 12.52760008094)
setupperbound(x[107], 12.52760008094)
setupperbound(x[108], 3.4809436396088)
setupperbound(x[109], 3.5856633948088)
setupperbound(x[110], 3.4809436396088)
setupperbound(x[111], 3.5856633948088)
setupperbound(x[112], 3.4809436396088)
setupperbound(x[113], 3.5856633948088)
setupperbound(x[114], 3.5856633948088)
setupperbound(x[115], 3.4809436396088)
setupperbound(x[116], 3.5856633948088)
setupperbound(x[117], 3.4809436396088)
setupperbound(x[118], 3.5856633948088)
setupperbound(x[119], 3.4809436396088)
setupperbound(x[120], 10000.0)
setupperbound(x[121], 10000.0)
setupperbound(x[122], 10000.0)
setupperbound(x[123], 10000.0)
setupperbound(x[124], 10000.0)
setupperbound(x[125], 10000.0)
setupperbound(x[126], 3.16535851721019)
setupperbound(x[127], 3.69419328097019)
setupperbound(x[128], 3.16535851721019)
setupperbound(x[129], 3.69419328097019)
setupperbound(x[130], 3.16535851721019)
setupperbound(x[131], 3.69419328097019)
setupperbound(x[132], 25.0)
setupperbound(x[133], 25.0)
setupperbound(x[134], 25.0)
setupperbound(x[135], 25.0)
setupperbound(x[136], 25.0)
setupperbound(x[137], 25.0)
setupperbound(x[138], 25.0)
setupperbound(x[139], 25.0)
setupperbound(x[140], 25.0)
setupperbound(x[141], 25.0)
setupperbound(x[142], 25.0)
setupperbound(x[143], 25.0)
setupperbound(x[144], 25.0)
setupperbound(x[145], 25.0)
setupperbound(x[146], 25.0)
setupperbound(x[147], 25.0)
setupperbound(x[148], 25.0)
setupperbound(x[149], 25.0)
setupperbound(x[150], 25.0)
setupperbound(x[151], 25.0)
setupperbound(x[152], 25.0)
setupperbound(x[153], 25.0)
setupperbound(x[154], 25.0)
setupperbound(x[155], 25.0)
setupperbound(x[156], 25.0)
setupperbound(x[157], 25.0)
setupperbound(x[158], 25.0)
setupperbound(x[159], 25.0)
setupperbound(x[160], 25.0)
setupperbound(x[161], 25.0)
setupperbound(x[162], 1.0)
setupperbound(x[163], 1.0)
setupperbound(x[164], 1.0)
setupperbound(x[165], 1.0)
setupperbound(x[166], 1.0)
setupperbound(x[167], 1.0)
setupperbound(x[168], 1.0)
setupperbound(x[169], 1.0)
setupperbound(x[170], 1.0)
setupperbound(x[171], 1.0)
setupperbound(x[172], 1.0)
setupperbound(x[173], 1.0)
setupperbound(x[174], 1.0)
setupperbound(x[175], 1.0)
setupperbound(x[176], 1.0)
setupperbound(x[177], 1.0)
setupperbound(x[178], 1.0)
setupperbound(x[179], 1.0)
setupperbound(x[180], 1.0)
setupperbound(x[181], 1.0)
setupperbound(x[182], 1.0)
setupperbound(x[183], 1.0)
setupperbound(x[184], 1.0)
setupperbound(x[185], 1.0)
setupperbound(x[186], 1.0)
setupperbound(x[187], 1.0)
setupperbound(x[188], 1.0)
setupperbound(x[189], 1.0)
setupperbound(x[190], 1.0)
setupperbound(x[191], 1.0)
setupperbound(x[192], 1.0)
setupperbound(x[193], 1.0)
setupperbound(x[194], 1.0)
setupperbound(x[195], 1.0)
setupperbound(x[196], 1.0)
setupperbound(x[197], 1.0)
setupperbound(x[198], 1.0)
setupperbound(x[199], 1.0)
setupperbound(x[200], 1.0)
setupperbound(x[201], 1.0)
setupperbound(x[202], 1.0)
setupperbound(x[203], 1.0)
setupperbound(x[204], 1.0)
setupperbound(x[205], 1.0)
setupperbound(x[206], 1.0)
setupperbound(x[207], 1.0)
setupperbound(x[208], 1.0)
setupperbound(x[209], 1.0)
setupperbound(x[210], 1.0)
setupperbound(x[211], 1.0)
setupperbound(x[212], 1.0)
setupperbound(x[213], 1.0)
setupperbound(x[214], 1.0)
setupperbound(x[215], 1.0)
setupperbound(x[216], 1.0)
setupperbound(x[217], 1.0)
setupperbound(x[218], 1.0)
setupperbound(x[219], 1.0)
setupperbound(x[220], 1.0)
setupperbound(x[221], 1.0)
setupperbound(x[222], 1.0)
setupperbound(x[223], 1.0)
setupperbound(x[224], 1.0)
setupperbound(x[225], 1.0)
setupperbound(x[226], 1.0)
setupperbound(x[227], 1.0)
setupperbound(x[228], 1.0)
setupperbound(x[229], 1.0)
setupperbound(x[230], 1.0)
setupperbound(x[231], 1.0)
setupperbound(x[232], 1.0)
setupperbound(x[233], 1.0)
setupperbound(x[234], 1.0)
setupperbound(x[235], 1.0)
setupperbound(x[236], 1.0)
setupperbound(x[237], 1.0)
setupperbound(x[238], 1.0)
setupperbound(x[239], 1.0)
setupperbound(x[240], 1.0)
setupperbound(x[241], 1.0)
setupperbound(x[242], 1.0)
setupperbound(x[243], 1.0)
setupperbound(x[244], 1.0)
setupperbound(x[245], 1.0)
setupperbound(x[246], 1.0)
setupperbound(x[247], 1.0)
setupperbound(x[248], 1.0)
setupperbound(x[249], 1.0)
setupperbound(x[250], 1.0)
setupperbound(x[251], 1.0)
setupperbound(x[252], 1.0)
setupperbound(x[253], 1.0)
setupperbound(x[254], 1.0)
setupperbound(x[255], 1.0)
setupperbound(x[256], 1.0)
setupperbound(x[257], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[2]-x[3]-x[4]+15*x[8]-x[13]-x[14]-x[16]-x[17] == 15.0)
@constraint(m, e2, x[2]-x[21]-x[22]+x[27]+x[28] == 0.0)
@constraint(m, e3, x[3]-x[23]-x[24]+x[29]+x[30] == 0.0)
@constraint(m, e4, x[4]-3*x[8]-x[25]-x[26]+x[31]+x[32] == 0.0)
@constraint(m, e5, x[5]+x[12]-x[15]-x[33]-x[34]+x[39]+x[40] == 0.0)
@constraint(m, e6, x[6]+x[13]-x[16]-x[35]-x[36]+x[41]+x[42] == 0.0)
@constraint(m, e7, x[7]+x[14]-x[17]-x[37]-x[38]+x[43]+x[44] == 0.0)
@constraint(m, e8, -1.98019801980198*x[9]+x[21]-x[27]+0.99009900990099*x[45]-9.9009900990099*x[48] == -0.99009900990099)
@constraint(m, e9, -1.98019801980198*x[9]+x[22]-x[28]+0.99009900990099*x[46]-9.9009900990099*x[49] == -0.99009900990099)
@constraint(m, e10, -1.98019801980198*x[10]+x[23]-x[29]+0.99009900990099*x[47]-9.9009900990099*x[50] == -0.99009900990099)
@constraint(m, e11, -1.98019801980198*x[10]+x[24]-x[30]+0.99009900990099*x[45]+9.9009900990099*x[48] == -0.99009900990099)
@constraint(m, e12, -1.98019801980198*x[11]+x[25]-x[31]+0.99009900990099*x[46]+9.9009900990099*x[49] == -0.99009900990099)
@constraint(m, e13, -1.98019801980198*x[11]+x[26]-x[32]+0.99009900990099*x[47]+9.9009900990099*x[50] == -0.99009900990099)
@constraint(m, e14, -1.1*x[9]-1.1*x[10]+x[51]-12.1*b[66]-x[72] == -13.31)
@constraint(m, e15, -1.1*x[9]-1.1*x[11]+x[52]-12.1*b[67]-x[73] == -13.31)
@constraint(m, e16, -1.1*x[10]-1.1*x[11]+x[53]-12.1*b[68]-x[74] == -13.31)
@constraint(m, e17, -0.9*x[9]-0.9*x[10]+x[51]-12.1*b[66]-x[75] == -12.91)
@constraint(m, e18, -0.9*x[9]-0.9*x[11]+x[52]-12.1*b[67]-x[76] == -12.91)
@constraint(m, e19, -0.9*x[10]-0.9*x[11]+x[53]-12.1*b[68]-x[77] == -12.91)
@constraint(m, e20, -1.1*x[9]-0.9*x[10]+x[51]-12.1*b[66]+x[78] == -13.09)
@constraint(m, e21, -1.1*x[9]-0.9*x[11]+x[52]-12.1*b[67]+x[79] == -13.09)
@constraint(m, e22, -1.1*x[10]-0.9*x[11]+x[53]-12.1*b[68]+x[80] == -13.09)
@constraint(m, e23, -0.9*x[9]-1.1*x[10]+x[51]-12.1*b[66]+x[81] == -13.09)
@constraint(m, e24, -0.9*x[9]-1.1*x[11]+x[52]-12.1*b[67]+x[82] == -13.09)
@constraint(m, e25, -0.9*x[10]-1.1*x[11]+x[53]-12.1*b[68]+x[83] == -13.09)
@constraint(m, e26, x[45]-x[51]-1.21*x[54]-12.1*b[60]-x[84] == -13.31)
@constraint(m, e27, x[45]-x[51]-1.21*x[54]-12.1*b[61]-x[85] == -13.31)
@constraint(m, e28, x[46]-x[52]-1.21*x[55]-12.1*b[62]-x[86] == -13.31)
@constraint(m, e29, x[46]-x[52]-1.21*x[55]-12.1*b[63]-x[87] == -13.31)
@constraint(m, e30, x[47]-x[53]-1.21*x[56]-12.1*b[64]-x[88] == -13.31)
@constraint(m, e31, x[47]-x[53]-1.21*x[56]-12.1*b[65]-x[89] == -13.31)
@constraint(m, e32, x[45]-0.965925826237084*x[51]-0.81*x[54]-12.1*b[60]-x[90] == -12.882399919252)
@constraint(m, e33, x[45]-0.965925826237084*x[51]-0.81*x[54]-12.1*b[61]-x[91] == -12.882399919252)
@constraint(m, e34, x[46]-0.965925826237084*x[52]-0.81*x[55]-12.1*b[62]-x[92] == -12.882399919252)
@constraint(m, e35, x[46]-0.965925826237084*x[52]-0.81*x[55]-12.1*b[63]-x[93] == -12.882399919252)
@constraint(m, e36, x[47]-0.965925826237084*x[53]-0.81*x[56]-12.1*b[64]-x[94] == -12.882399919252)
@constraint(m, e37, x[47]-0.965925826237084*x[53]-0.81*x[56]-12.1*b[65]-x[95] == -12.882399919252)
@constraint(m, e38, x[45]-x[51]-0.81*x[54]+12.1*b[60]+x[96] == 11.29)
@constraint(m, e39, x[45]-x[51]-0.81*x[54]+12.1*b[61]+x[97] == 11.29)
@constraint(m, e40, x[46]-x[52]-0.81*x[55]+12.1*b[62]+x[98] == 11.29)
@constraint(m, e41, x[46]-x[52]-0.81*x[55]+12.1*b[63]+x[99] == 11.29)
@constraint(m, e42, x[47]-x[53]-0.81*x[56]+12.1*b[64]+x[100] == 11.29)
@constraint(m, e43, x[47]-x[53]-0.81*x[56]+12.1*b[65]+x[101] == 11.29)
@constraint(m, e44, x[45]-0.965925826237084*x[51]-1.21*x[54]+12.1*b[60]+x[102] == 10.9312297502531)
@constraint(m, e45, x[45]-0.965925826237084*x[51]-1.21*x[54]+12.1*b[61]+x[103] == 10.9312297502531)
@constraint(m, e46, x[46]-0.965925826237084*x[52]-1.21*x[55]+12.1*b[62]+x[104] == 10.9312297502531)
@constraint(m, e47, x[46]-0.965925826237084*x[52]-1.21*x[55]+12.1*b[63]+x[105] == 10.9312297502531)
@constraint(m, e48, x[47]-0.965925826237084*x[53]-1.21*x[56]+12.1*b[64]+x[106] == 10.9312297502531)
@constraint(m, e49, x[47]-0.965925826237084*x[53]-1.21*x[56]+12.1*b[65]+x[107] == 10.9312297502531)
@constraint(m, e50, x[48]-1.21*x[57]-3.1677725948*b[60]-x[108] == -3.1677725948)
@constraint(m, e51, x[48]-0.261799388*x[51]-1.21*x[57]-3.1677725948*b[61]-x[109] == -3.48454985428)
@constraint(m, e52, x[49]-1.21*x[58]-3.1677725948*b[62]-x[110] == -3.1677725948)
@constraint(m, e53, x[49]-0.261799388*x[52]-1.21*x[58]-3.1677725948*b[63]-x[111] == -3.48454985428)
@constraint(m, e54, x[50]-1.21*x[59]-3.1677725948*b[64]-x[112] == -3.1677725948)
@constraint(m, e55, x[50]-0.261799388*x[53]-1.21*x[59]-3.1677725948*b[65]-x[113] == -3.48454985428)
@constraint(m, e56, x[48]+0.261799388*x[51]-0.81*x[57]-3.1677725948*b[60]-x[114] == -2.95571509052)
@constraint(m, e57, x[48]-0.81*x[57]-3.1677725948*b[61]-x[115] == -3.1677725948)
@constraint(m, e58, x[49]+0.261799388*x[52]-0.81*x[58]-3.1677725948*b[62]-x[116] == -2.95571509052)
@constraint(m, e59, x[49]-0.81*x[58]-3.1677725948*b[63]-x[117] == -3.1677725948)
@constraint(m, e60, x[50]+0.261799388*x[53]-0.81*x[59]-3.1677725948*b[64]-x[118] == -2.95571509052)
@constraint(m, e61, x[50]-0.81*x[59]-3.1677725948*b[65]-x[119] == -3.1677725948)
@constraint(m, e62, x[48]-0.81*x[57]+3.1677725948*b[60]+x[120] == 3.1677725948)
@constraint(m, e63, x[48]-0.261799388*x[51]-0.81*x[57]+3.1677725948*b[61]+x[121] == 2.95571509052)
@constraint(m, e64, x[49]-0.81*x[58]+3.1677725948*b[62]+x[122] == 3.1677725948)
@constraint(m, e65, x[49]-0.261799388*x[52]-0.81*x[58]+3.1677725948*b[63]+x[123] == 2.95571509052)
@constraint(m, e66, x[50]-0.81*x[59]+3.1677725948*b[64]+x[124] == 3.1677725948)
@constraint(m, e67, x[50]-0.261799388*x[53]-0.81*x[59]+3.1677725948*b[65]+x[125] == 2.95571509052)
@constraint(m, e68, x[48]+0.261799388*x[51]-1.21*x[57]+3.1677725948*b[60]+x[126] == 3.48454985428)
@constraint(m, e69, x[48]-1.21*x[57]+3.1677725948*b[61]+x[127] == 3.1677725948)
@constraint(m, e70, x[49]+0.261799388*x[52]-1.21*x[58]+3.1677725948*b[62]+x[128] == 3.48454985428)
@constraint(m, e71, x[49]-1.21*x[58]+3.1677725948*b[63]+x[129] == 3.1677725948)
@constraint(m, e72, x[50]+0.261799388*x[53]-1.21*x[59]+3.1677725948*b[64]+x[130] == 3.48454985428)
@constraint(m, e73, x[50]-1.21*x[59]+3.1677725948*b[65]+x[131] == 3.1677725948)
@constraint(m, e74, b[60]+b[61] == 1.0)
@constraint(m, e75, b[62]+b[63] == 1.0)
@constraint(m, e76, b[64]+b[65] == 1.0)
@constraint(m, e77, b[66] == 1.0)
@constraint(m, e78, b[67] == 1.0)
@constraint(m, e79, b[68] == 1.0)
@constraint(m, e80, -x[54]+0.25037682000755*x[57]-x[162] == -1.03147432424736)
@constraint(m, e81, -x[54]+0.233442435959931*x[57]-x[163] == -1.0273364736341)
@constraint(m, e82, -x[54]+0.216436863805585*x[57]-x[164] == -1.02347803170138)
@constraint(m, e83, -x[54]+0.199365369008894*x[57]-x[165] == -1.01990258619619)
@constraint(m, e84, -x[54]+0.182233232433562*x[57]-x[166] == -1.01661345208883)
@constraint(m, e85, -x[54]+0.16504553983283*x[57]-x[167] == -1.01361363382523)
@constraint(m, e86, -x[54]+0.147807522626243*x[57]-x[168] == -1.01090589240877)
@constraint(m, e87, -x[54]+0.130524545168899*x[57]-x[169] == -1.0084927335221)
@constraint(m, e88, -x[54]+0.113201732188879*x[57]-x[170] == -1.0063763526604)
@constraint(m, e89, -x[54]+0.0958445547120885*x[57]-x[171] == -1.00455871328753)
@constraint(m, e90, -x[54]+0.0784580881097905*x[57]-x[172] == -1.00304145784308)
@constraint(m, e91, -x[54]+0.0610477954531398*x[57]-x[173] == -1.00182599012209)
@constraint(m, e92, -x[54]+0.0436188173773327*x[57]-x[174] == -1.00091341095638)
@constraint(m, e93, -x[54]+0.0261766089743986*x[57]-x[175] == -1.00030456302618)
@constraint(m, e94, -x[54]+0.0137261476236033*x[57]-x[176] == -1.00008726147624)
@constraint(m, e95, -x[54]+0.00499999999999945*x[57]-x[177] == -1.0)
@constraint(m, e96, -x[54]-0.00499999999999945*x[57]-x[178] == -1.0)
@constraint(m, e97, -x[54]-0.0137261476236033*x[57]-x[179] == -1.00008726147624)
@constraint(m, e98, -x[54]-0.0261766089743986*x[57]-x[180] == -1.00030456302618)
@constraint(m, e99, -x[54]-0.0436188173773327*x[57]-x[181] == -1.00091341095638)
@constraint(m, e100, -x[54]-0.0610477954531398*x[57]-x[182] == -1.00182599012209)
@constraint(m, e101, -x[54]-0.0784580881097905*x[57]-x[183] == -1.00304145784308)
@constraint(m, e102, -x[54]-0.0958445547120885*x[57]-x[184] == -1.00455871328753)
@constraint(m, e103, -x[54]-0.113201732188879*x[57]-x[185] == -1.0063763526604)
@constraint(m, e104, -x[54]-0.130524545168899*x[57]-x[186] == -1.0084927335221)
@constraint(m, e105, -x[54]-0.147807522626243*x[57]-x[187] == -1.01090589240877)
@constraint(m, e106, -x[54]-0.16504553983283*x[57]-x[188] == -1.01361363382523)
@constraint(m, e107, -x[54]-0.182233232433562*x[57]-x[189] == -1.01661345208883)
@constraint(m, e108, -x[54]-0.199365369008894*x[57]-x[190] == -1.01990258619619)
@constraint(m, e109, -x[54]-0.216436863805585*x[57]-x[191] == -1.02347803170138)
@constraint(m, e110, -x[54]-0.233442435959931*x[57]-x[192] == -1.0273364736341)
@constraint(m, e111, -x[54]-0.25037682000755*x[57]-x[193] == -1.03147432424736)
@constraint(m, e112, -x[55]+0.25037682000755*x[58]-x[194] == -1.03147432424736)
@constraint(m, e113, -x[55]+0.233442435959931*x[58]-x[195] == -1.0273364736341)
@constraint(m, e114, -x[55]+0.216436863805585*x[58]-x[196] == -1.02347803170138)
@constraint(m, e115, -x[55]+0.199365369008894*x[58]-x[197] == -1.01990258619619)
@constraint(m, e116, -x[55]+0.182233232433562*x[58]-x[198] == -1.01661345208883)
@constraint(m, e117, -x[55]+0.16504553983283*x[58]-x[199] == -1.01361363382523)
@constraint(m, e118, -x[55]+0.147807522626243*x[58]-x[200] == -1.01090589240877)
@constraint(m, e119, -x[55]+0.130524545168899*x[58]-x[201] == -1.0084927335221)
@constraint(m, e120, -x[55]+0.113201732188879*x[58]-x[202] == -1.0063763526604)
@constraint(m, e121, -x[55]+0.0958445547120885*x[58]-x[203] == -1.00455871328753)
@constraint(m, e122, -x[55]+0.0784580881097905*x[58]-x[204] == -1.00304145784308)
@constraint(m, e123, -x[55]+0.0610477954531398*x[58]-x[205] == -1.00182599012209)
@constraint(m, e124, -x[55]+0.0436188173773327*x[58]-x[206] == -1.00091341095638)
@constraint(m, e125, -x[55]+0.0261766089743986*x[58]-x[207] == -1.00030456302618)
@constraint(m, e126, -x[55]+0.0137261476236033*x[58]-x[208] == -1.00008726147624)
@constraint(m, e127, -x[55]+0.00499999999999945*x[58]-x[209] == -1.0)
@constraint(m, e128, -x[55]-0.00499999999999945*x[58]-x[210] == -1.0)
@constraint(m, e129, -x[55]-0.0137261476236033*x[58]-x[211] == -1.00008726147624)
@constraint(m, e130, -x[55]-0.0261766089743986*x[58]-x[212] == -1.00030456302618)
@constraint(m, e131, -x[55]-0.0436188173773327*x[58]-x[213] == -1.00091341095638)
@constraint(m, e132, -x[55]-0.0610477954531398*x[58]-x[214] == -1.00182599012209)
@constraint(m, e133, -x[55]-0.0784580881097905*x[58]-x[215] == -1.00304145784308)
@constraint(m, e134, -x[55]-0.0958445547120885*x[58]-x[216] == -1.00455871328753)
@constraint(m, e135, -x[55]-0.113201732188879*x[58]-x[217] == -1.0063763526604)
@constraint(m, e136, -x[55]-0.130524545168899*x[58]-x[218] == -1.0084927335221)
@constraint(m, e137, -x[55]-0.147807522626243*x[58]-x[219] == -1.01090589240877)
@constraint(m, e138, -x[55]-0.16504553983283*x[58]-x[220] == -1.01361363382523)
@constraint(m, e139, -x[55]-0.182233232433562*x[58]-x[221] == -1.01661345208883)
@constraint(m, e140, -x[55]-0.199365369008894*x[58]-x[222] == -1.01990258619619)
@constraint(m, e141, -x[55]-0.216436863805585*x[58]-x[223] == -1.02347803170138)
@constraint(m, e142, -x[55]-0.233442435959931*x[58]-x[224] == -1.0273364736341)
@constraint(m, e143, -x[55]-0.25037682000755*x[58]-x[225] == -1.03147432424736)
@constraint(m, e144, -x[56]+0.25037682000755*x[59]-x[226] == -1.03147432424736)
@constraint(m, e145, -x[56]+0.233442435959931*x[59]-x[227] == -1.0273364736341)
@constraint(m, e146, -x[56]+0.216436863805585*x[59]-x[228] == -1.02347803170138)
@constraint(m, e147, -x[56]+0.199365369008894*x[59]-x[229] == -1.01990258619619)
@constraint(m, e148, -x[56]+0.182233232433562*x[59]-x[230] == -1.01661345208883)
@constraint(m, e149, -x[56]+0.16504553983283*x[59]-x[231] == -1.01361363382523)
@constraint(m, e150, -x[56]+0.147807522626243*x[59]-x[232] == -1.01090589240877)
@constraint(m, e151, -x[56]+0.130524545168899*x[59]-x[233] == -1.0084927335221)
@constraint(m, e152, -x[56]+0.113201732188879*x[59]-x[234] == -1.0063763526604)
@constraint(m, e153, -x[56]+0.0958445547120885*x[59]-x[235] == -1.00455871328753)
@constraint(m, e154, -x[56]+0.0784580881097905*x[59]-x[236] == -1.00304145784308)
@constraint(m, e155, -x[56]+0.0610477954531398*x[59]-x[237] == -1.00182599012209)
@constraint(m, e156, -x[56]+0.0436188173773327*x[59]-x[238] == -1.00091341095638)
@constraint(m, e157, -x[56]+0.0261766089743986*x[59]-x[239] == -1.00030456302618)
@constraint(m, e158, -x[56]+0.0137261476236033*x[59]-x[240] == -1.00008726147624)
@constraint(m, e159, -x[56]+0.00499999999999945*x[59]-x[241] == -1.0)
@constraint(m, e160, -x[56]-0.00499999999999945*x[59]-x[242] == -1.0)
@constraint(m, e161, -x[56]-0.0137261476236033*x[59]-x[243] == -1.00008726147624)
@constraint(m, e162, -x[56]-0.0261766089743986*x[59]-x[244] == -1.00030456302618)
@constraint(m, e163, -x[56]-0.0436188173773327*x[59]-x[245] == -1.00091341095638)
@constraint(m, e164, -x[56]-0.0610477954531398*x[59]-x[246] == -1.00182599012209)
@constraint(m, e165, -x[56]-0.0784580881097905*x[59]-x[247] == -1.00304145784308)
@constraint(m, e166, -x[56]-0.0958445547120885*x[59]-x[248] == -1.00455871328753)
@constraint(m, e167, -x[56]-0.113201732188879*x[59]-x[249] == -1.0063763526604)
@constraint(m, e168, -x[56]-0.130524545168899*x[59]-x[250] == -1.0084927335221)
@constraint(m, e169, -x[56]-0.147807522626243*x[59]-x[251] == -1.01090589240877)
@constraint(m, e170, -x[56]-0.16504553983283*x[59]-x[252] == -1.01361363382523)
@constraint(m, e171, -x[56]-0.182233232433562*x[59]-x[253] == -1.01661345208883)
@constraint(m, e172, -x[56]-0.199365369008894*x[59]-x[254] == -1.01990258619619)
@constraint(m, e173, -x[56]-0.216436863805585*x[59]-x[255] == -1.02347803170138)
@constraint(m, e174, -x[56]-0.233442435959931*x[59]-x[256] == -1.0273364736341)
@constraint(m, e175, -x[56]-0.25037682000755*x[59]-x[257] == -1.03147432424736)
@constraint(m, e176, -18.3919801980198*x[9]+x[33]-x[39]+9.9009900990099*x[45]+0.99009900990099*x[48] == -9.1959900990099)
@constraint(m, e177, -19.8019801980198*x[9]+x[34]-x[40]+9.9009900990099*x[46]+0.99009900990099*x[49] == -9.9009900990099)
@constraint(m, e178, -19.8019801980198*x[10]+x[35]-x[41]+9.9009900990099*x[47]+0.99009900990099*x[50] == -9.9009900990099)
@constraint(m, e179, -18.3919801980198*x[10]+x[36]-x[42]+9.9009900990099*x[45]-0.99009900990099*x[48] == -9.1959900990099)
@constraint(m, e180, -19.8019801980198*x[11]+x[37]-x[43]+9.9009900990099*x[46]-0.99009900990099*x[49] == -9.9009900990099)
@constraint(m, e181, -19.8019801980198*x[11]+x[38]-x[44]+9.9009900990099*x[47]-0.99009900990099*x[50] == -9.9009900990099)
@constraint(m, e182, x[21]-x[27] >= -5.0)
@constraint(m, e183, x[22]-x[28] >= -5.0)
@constraint(m, e184, x[23]-x[29] >= -5.0)
@constraint(m, e185, x[24]-x[30] >= -5.0)
@constraint(m, e186, x[25]-x[31] >= -5.0)
@constraint(m, e187, x[26]-x[32] >= -5.0)
@constraint(m, e188, x[21]-x[27] <= 5.0)
@constraint(m, e189, x[22]-x[28] <= 5.0)
@constraint(m, e190, x[23]-x[29] <= 5.0)
@constraint(m, e191, x[24]-x[30] <= 5.0)
@constraint(m, e192, x[25]-x[31] <= 5.0)
@constraint(m, e193, x[26]-x[32] <= 5.0)
@constraint(m, e194, -x[18]+x[19]+x[57] == 0.0)
@constraint(m, e195, -x[18]+x[20]+x[58] == 0.0)
@constraint(m, e196, -x[19]+x[20]+x[59] == 0.0)
@constraint(m, e197, x[18] == 0.0)
@constraint(m, e198, 0.9875*x[21]+x[24]-0.9875*x[27]-x[30]-x[132] == 0.0)
@constraint(m, e199, 0.975*x[21]+x[24]-0.975*x[27]-x[30]-x[133] == -0.015625)
@constraint(m, e200, 0.95*x[21]+x[24]-0.95*x[27]-x[30]-x[134] == -0.0625)
@constraint(m, e201, 0.925*x[21]+x[24]-0.925*x[27]-x[30]-x[135] == -0.140625)
@constraint(m, e202, 0.9*x[21]+x[24]-0.9*x[27]-x[30]-x[136] == -0.25)
@constraint(m, e203, 0.9875*x[22]+x[25]-0.9875*x[28]-x[31]-x[137] == 0.0)
@constraint(m, e204, 0.975*x[22]+x[25]-0.975*x[28]-x[31]-x[138] == -0.015625)
@constraint(m, e205, 0.95*x[22]+x[25]-0.95*x[28]-x[31]-x[139] == -0.0625)
@constraint(m, e206, 0.925*x[22]+x[25]-0.925*x[28]-x[31]-x[140] == -0.140625)
@constraint(m, e207, 0.9*x[22]+x[25]-0.9*x[28]-x[31]-x[141] == -0.25)
@constraint(m, e208, 0.9875*x[23]+x[26]-0.9875*x[29]-x[32]-x[142] == 0.0)
@constraint(m, e209, 0.975*x[23]+x[26]-0.975*x[29]-x[32]-x[143] == -0.015625)
@constraint(m, e210, 0.95*x[23]+x[26]-0.95*x[29]-x[32]-x[144] == -0.0625)
@constraint(m, e211, 0.925*x[23]+x[26]-0.925*x[29]-x[32]-x[145] == -0.140625)
@constraint(m, e212, 0.9*x[23]+x[26]-0.9*x[29]-x[32]-x[146] == -0.25)
@constraint(m, e213, x[21]+0.9875*x[24]-x[27]-0.9875*x[30]-x[147] == 0.0)
@constraint(m, e214, x[21]+0.975*x[24]-x[27]-0.975*x[30]-x[148] == -0.015625)
@constraint(m, e215, x[21]+0.95*x[24]-x[27]-0.95*x[30]-x[149] == -0.0625)
@constraint(m, e216, x[21]+0.925*x[24]-x[27]-0.925*x[30]-x[150] == -0.140625)
@constraint(m, e217, x[21]+0.9*x[24]-x[27]-0.9*x[30]-x[151] == -0.25)
@constraint(m, e218, x[22]+0.9875*x[25]-x[28]-0.9875*x[31]-x[152] == 0.0)
@constraint(m, e219, x[22]+0.975*x[25]-x[28]-0.975*x[31]-x[153] == -0.015625)
@constraint(m, e220, x[22]+0.95*x[25]-x[28]-0.95*x[31]-x[154] == -0.0625)
@constraint(m, e221, x[22]+0.925*x[25]-x[28]-0.925*x[31]-x[155] == -0.140625)
@constraint(m, e222, x[22]+0.9*x[25]-x[28]-0.9*x[31]-x[156] == -0.25)
@constraint(m, e223, x[23]+0.9875*x[26]-x[29]-0.9875*x[32]-x[157] == 0.0)
@constraint(m, e224, x[23]+0.975*x[26]-x[29]-0.975*x[32]-x[158] == -0.015625)
@constraint(m, e225, x[23]+0.95*x[26]-x[29]-0.95*x[32]-x[159] == -0.0625)
@constraint(m, e226, x[23]+0.925*x[26]-x[29]-0.925*x[32]-x[160] == -0.140625)
@constraint(m, e227, x[23]+0.9*x[26]-x[29]-0.9*x[32]-x[161] == -0.25)
@constraint(m, e228, x[9]-1.1*b[69] <= 0.0)
@constraint(m, e229, x[10]-1.1*b[70] <= 0.0)
@constraint(m, e230, x[11]-1.1*b[71] <= 0.0)
@constraint(m, e231, x[9]-0.9*b[69] >= 0.0)
@constraint(m, e232, x[10]-0.9*b[70] >= 0.0)
@constraint(m, e233, x[11]-0.9*b[71] >= 0.0)
@constraint(m, e234, b[69] == 1.0)
@constraint(m, e235, b[70] == 1.0)
@constraint(m, e236, b[71] == 1.0)
@constraint(m, e237, -0.9*x[9]+x[51] >= 0.0)
@constraint(m, e238, -0.9*x[9]+x[52] >= 0.0)
@constraint(m, e239, -0.9*x[10]+x[53] >= 0.0)
@constraint(m, e240, -1.1*x[9]+x[51] <= 0.0)
@constraint(m, e241, -1.1*x[9]+x[52] <= 0.0)
@constraint(m, e242, -1.1*x[10]+x[53] <= 0.0)
@constraint(m, e243, -0.9*x[10]+x[51] >= 0.0)
@constraint(m, e244, -0.9*x[11]+x[52] >= 0.0)
@constraint(m, e245, -0.9*x[11]+x[53] >= 0.0)
@constraint(m, e246, -1.1*x[10]+x[51] <= 0.0)
@constraint(m, e247, -1.1*x[11]+x[52] <= 0.0)
@constraint(m, e248, -1.1*x[11]+x[53] <= 0.0)
@constraint(m, e249, x[45]-0.965925826*x[51] >= 0.0)
@constraint(m, e250, x[46]-0.965925826*x[52] >= 0.0)
@constraint(m, e251, x[47]-0.965925826*x[53] >= 0.0)
@constraint(m, e252, x[45]-x[51] <= 0.0)
@constraint(m, e253, x[46]-x[52] <= 0.0)
@constraint(m, e254, x[47]-x[53] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
