using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 277, 278]
@variable(m, x[x_Idx])
b_Idx = Any[231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276]
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
setcategory(b[232], :Bin)
setlowerbound(x[165], 0.0)
setlowerbound(x[186], 0.0)
setcategory(b[243], :Bin)
setlowerbound(x[202], 0.0)
setlowerbound(x[220], 0.0)
setlowerbound(x[3], 0.0)
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
setlowerbound(x[95], 0.0)
setlowerbound(x[200], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[206], 0.0)
setlowerbound(x[215], 0.0)
setlowerbound(x[174], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[169], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[197], 0.0)
setlowerbound(x[198], 0.0)
setlowerbound(x[148], 0.0)
setcategory(b[262], :Bin)
setlowerbound(x[150], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[218], 0.0)
setlowerbound(x[225], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[73], 0.0)
setcategory(b[236], :Bin)
setlowerbound(x[101], 0.0)
setlowerbound(x[136], 0.0)
setlowerbound(x[190], 0.0)
setlowerbound(x[196], 0.0)
setcategory(b[276], :Bin)
setcategory(b[252], :Bin)
setlowerbound(x[38], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[151], 0.0)
setlowerbound(x[171], 0.0)
setlowerbound(x[147], 0.0)
setlowerbound(x[138], 0.0)
setcategory(b[269], :Bin)
setlowerbound(x[77], 0.0)
setcategory(b[274], :Bin)
setlowerbound(x[9], 0.0)
setlowerbound(x[92], 0.0)
setcategory(b[242], :Bin)
setlowerbound(x[111], 0.0)
setlowerbound(x[219], 0.0)
setlowerbound(x[185], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[137], 0.0)
setcategory(b[233], :Bin)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[224], 0.0)
setlowerbound(x[179], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[175], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[142], 0.0)
setlowerbound(x[209], 0.0)
setlowerbound(x[53], 0.0)
setcategory(b[255], :Bin)
setlowerbound(x[128], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[161], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setcategory(b[256], :Bin)
setcategory(b[260], :Bin)
setlowerbound(x[67], 0.0)
setlowerbound(x[156], 0.0)
setlowerbound(x[199], 0.0)
setlowerbound(x[26], 0.0)
setcategory(b[240], :Bin)
setcategory(b[244], :Bin)
setlowerbound(x[213], 0.0)
setcategory(b[246], :Bin)
setlowerbound(x[12], 0.0)
setlowerbound(x[173], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[176], 0.0)
setlowerbound(x[28], 0.0)
setcategory(b[259], :Bin)
setlowerbound(x[123], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setlowerbound(x[227], 0.0)
setlowerbound(x[189], 0.0)
setlowerbound(x[187], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[166], 0.0)
setlowerbound(x[157], 0.0)
setcategory(b[237], :Bin)
setlowerbound(x[46], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[163], 0.0)
setlowerbound(x[230], 0.0)
setlowerbound(x[216], 0.0)
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
setlowerbound(x[16], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[140], 0.0)
setlowerbound(x[181], 0.0)
setlowerbound(x[153], 0.0)
setlowerbound(x[201], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[223], 0.0)
setlowerbound(x[113], 0.0)
setlowerbound(x[130], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[208], 0.0)
setcategory(b[239], :Bin)
setlowerbound(x[36], 0.0)
setlowerbound(x[131], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[210], 0.0)
setcategory(b[257], :Bin)
setcategory(b[254], :Bin)
setlowerbound(x[25], 0.0)
setcategory(b[273], :Bin)
setlowerbound(x[182], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[191], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[177], 0.0)
setlowerbound(x[82], 0.0)
setcategory(b[248], :Bin)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setcategory(b[238], :Bin)
setlowerbound(x[1], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[121], 0.0)
setcategory(b[234], :Bin)
setlowerbound(x[152], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[79], 0.0)
setcategory(b[268], :Bin)
setlowerbound(x[45], 0.0)
setcategory(b[231], :Bin)
setlowerbound(x[184], 0.0)
setlowerbound(x[98], 0.0)
setlowerbound(x[158], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[203], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[170], 0.0)
setcategory(b[272], :Bin)
setlowerbound(x[149], 0.0)
setlowerbound(x[221], 0.0)
setlowerbound(x[217], 0.0)
setlowerbound(x[212], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[125], 0.0)
setcategory(b[250], :Bin)
setlowerbound(x[20], 0.0)
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
setlowerbound(x[2], 0.0)
setlowerbound(x[155], 0.0)
setlowerbound(x[204], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[193], 0.0)
setlowerbound(x[134], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[180], 0.0)
setcategory(b[249], :Bin)
setlowerbound(x[57], 0.0)
setlowerbound(x[122], 0.0)
setlowerbound(x[129], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[194], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[214], 0.0)
setlowerbound(x[21], 0.0)
setcategory(b[245], :Bin)
setlowerbound(x[10], 0.0)
setcategory(b[247], :Bin)
setlowerbound(x[178], 0.0)
setlowerbound(x[139], 0.0)
setlowerbound(x[126], 0.0)
setlowerbound(x[107], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[168], 0.0)
setlowerbound(x[40], 0.0)
setcategory(b[265], :Bin)
setlowerbound(x[61], 0.0)
setcategory(b[253], :Bin)
setlowerbound(x[31], 0.0)
setlowerbound(x[64], 0.0)
setcategory(b[261], :Bin)
setlowerbound(x[97], 0.0)
setlowerbound(x[127], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[159], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[135], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[229], 0.0)
setlowerbound(x[211], 0.0)
setlowerbound(x[108], 0.0)
setcategory(b[263], :Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.0666666666666667*x[47]*b[231]*x[139]+0.013333333*x[139]+0.00039999999* (9.92063492063492e-6*x[139])^5)+x[185] == 0.0)
@NLconstraint(m, e2, -(0.0666666666666667*x[48]*b[232]*x[140]+0.033333333*x[140]+0.00099999999* (0.145833333333333+9.92063492063492e-6*x[140])^5)+x[186] == 0.0)
@NLconstraint(m, e3, -(0.0666666666666667*x[49]*b[233]*x[141]+0.051428571*x[141]+0.00154285713* (8.68055555555556e-6*x[141])^5)+x[187] == 0.0)
@NLconstraint(m, e4, -(0.0666666666666667*x[50]*b[234]*x[142]+0.013333333*x[142]+0.00039999999* (9.92063492063492e-6*x[142])^5)+x[188] == 0.0)
@NLconstraint(m, e5, -(0.0666666666666667*x[51]*b[235]*x[143]+0.065454545*x[143]+0.00196363635* (0.0632407407407407+9.25925925925926e-6*x[143])^5)+x[189] == 0.0)
@NLconstraint(m, e6, -(0.0666666666666667*x[52]*b[236]*x[144]+0.033333333*x[144]+0.00099999999* (0.145833333333333+9.92063492063492e-6*x[144])^5)+x[190] == 0.0)
@NLconstraint(m, e7, -(0.0666666666666667*x[53]*b[237]*x[145]+0.08*x[145]+0.0024* (0.06875+1.98412698412698e-5*x[145])^5)+x[191] == 0.0)
@NLconstraint(m, e8, -(0.0666666666666667*x[54]*b[238]*x[146]+0.051428571*x[146]+0.00154285713* (8.68055555555556e-6*x[146])^5)+x[192] == 0.0)
@NLconstraint(m, e9, -(0.0666666666666667*x[55]*b[239]*x[147]+0.022*x[147]+0.00066* (0.0625992063492063+9.92063492063492e-6*x[147])^5)+x[193] == 0.0)
@NLconstraint(m, e10, -(0.0666666666666667*x[56]*b[240]*x[148]+0.01*x[148]+0.0003* (0.0885416666666667+9.92063492063492e-6*x[148])^5)+x[194] == 0.0)
@NLconstraint(m, e11, -(0.0666666666666667*x[57]*b[241]*x[149]+0.08*x[149]+0.0024* (8.68055555555556e-6*x[149])^5)+x[195] == 0.0)
@NLconstraint(m, e12, -(0.0666666666666667*x[58]*b[242]*x[150]+0.08*x[150]+0.0024* (0.06875+1.98412698412698e-5*x[150])^5)+x[196] == 0.0)
@NLconstraint(m, e13, -(0.0666666666666667*x[59]*b[243]*x[151]+0.022*x[151]+0.00066* (0.0625992063492063+9.92063492063492e-6*x[151])^5)+x[197] == 0.0)
@NLconstraint(m, e14, -(0.0666666666666667*x[60]*b[244]*x[152]+0.114545455*x[152]+0.00343636365* (0.0640740740740741+1.85185185185185e-5*x[152])^5)+x[198] == 0.0)
@NLconstraint(m, e15, -(0.0666666666666667*x[61]*b[245]*x[153]+0.065454545*x[153]+0.00196363635* (0.0632407407407407+9.25925925925926e-6*x[153])^5)+x[199] == 0.0)
@NLconstraint(m, e16, -(0.0666666666666667*x[62]*b[246]*x[154]+0.01*x[154]+0.0003* (0.0885416666666667+9.92063492063492e-6*x[154])^5)+x[200] == 0.0)
@NLconstraint(m, e17, -(0.0666666666666667*x[63]*b[247]*x[155]+0.112727273*x[155]+0.00338181819* (0.0449074074074074+1.85185185185185e-5*x[155])^5)+x[201] == 0.0)
@NLconstraint(m, e18, -(0.0666666666666667*x[64]*b[248]*x[156]+0.08*x[156]+0.0024* (8.68055555555556e-6*x[156])^5)+x[202] == 0.0)
@NLconstraint(m, e19, -(0.0666666666666667*x[65]*b[249]*x[157]+0.114545455*x[157]+0.00343636365* (0.0499537037037037+9.25925925925926e-6*x[157])^5)+x[203] == 0.0)
@NLconstraint(m, e20, -(0.0666666666666667*x[66]*b[250]*x[158]+0.027272727*x[158]+0.00081818181* (0.0998611111111111+9.25925925925926e-6*x[158])^5)+x[204] == 0.0)
@NLconstraint(m, e21, -(0.0666666666666667*x[67]*b[251]*x[159]+0.134285714*x[159]+0.00402857142* (8.68055555555556e-6*x[159])^5)+x[205] == 0.0)
@NLconstraint(m, e22, -(0.0666666666666667*x[68]*b[252]*x[160]+0.114545455*x[160]+0.00343636365* (0.0787962962962963+1.85185185185185e-5*x[160])^5)+x[206] == 0.0)
@NLconstraint(m, e23, -(0.0666666666666667*x[69]*b[253]*x[161]+0.114545455*x[161]+0.00343636365* (0.0499537037037037+9.25925925925926e-6*x[161])^5)+x[207] == 0.0)
@NLconstraint(m, e24, -(0.0666666666666667*x[70]*b[254]*x[162]+0.112727273*x[162]+0.00338181819* (0.0449074074074074+1.85185185185185e-5*x[162])^5)+x[208] == 0.0)
@NLconstraint(m, e25, -(0.0666666666666667*x[71]*b[255]*x[163]+0.027272727*x[163]+0.00081818181* (0.0998611111111111+9.25925925925926e-6*x[163])^5)+x[209] == 0.0)
@NLconstraint(m, e26, -(0.0666666666666667*x[72]*b[256]*x[164]+0.1*x[164]+0.003* (0.108425925925926+9.25925925925926e-6*x[164])^5)+x[210] == 0.0)
@NLconstraint(m, e27, -(0.0666666666666667*x[73]*b[257]*x[165]+0.197777778*x[165]+0.00593333334* (0.016468253968254+1.98412698412698e-5*x[165])^5)+x[211] == 0.0)
@NLconstraint(m, e28, -(0.0666666666666667*x[74]*b[258]*x[166]+0.1*x[166]+0.003* (0.108425925925926+9.25925925925926e-6*x[166])^5)+x[212] == 0.0)
@NLconstraint(m, e29, -(0.0666666666666667*x[75]*b[259]*x[167]+0.258181818*x[167]+0.00774545454* (0.0542592592592593+1.85185185185185e-5*x[167])^5)+x[213] == 0.0)
@NLconstraint(m, e30, -(0.0666666666666667*x[76]*b[260]*x[168]+0.134285714*x[168]+0.00402857142* (8.68055555555556e-6*x[168])^5)+x[214] == 0.0)
@NLconstraint(m, e31, -(0.0666666666666667*x[77]*b[261]*x[169]+0.157777778*x[169]+0.00473333334* (0.0146825396825397+1.98412698412698e-5*x[169])^5)+x[215] == 0.0)
@NLconstraint(m, e32, -(0.0666666666666667*x[78]*b[262]*x[170]+0.004444444*x[170]+0.00013333332* (1.98412698412698e-5*x[170])^5)+x[216] == 0.0)
@NLconstraint(m, e33, -(0.0666666666666667*x[79]*b[263]*x[171]+0.287142857*x[171]+0.00861428571* (8.68055555555556e-6*x[171])^5)+x[217] == 0.0)
@NLconstraint(m, e34, -(0.0666666666666667*x[80]*b[264]*x[172]+0.157777778*x[172]+0.00473333334* (0.0146825396825397+1.98412698412698e-5*x[172])^5)+x[218] == 0.0)
@NLconstraint(m, e35, -(0.0666666666666667*x[81]*b[265]*x[173]+0.377777778*x[173]+0.01133333334* (0.012202380952381+1.98412698412698e-5*x[173])^5)+x[219] == 0.0)
@NLconstraint(m, e36, -(0.0666666666666667*x[82]*b[266]*x[174]+0.197777778*x[174]+0.00593333334* (0.0244047619047619+1.98412698412698e-5*x[174])^5)+x[220] == 0.0)
@NLconstraint(m, e37, -(0.0666666666666667*x[83]*b[267]*x[175]+0.004444444*x[175]+0.00013333332* (1.98412698412698e-5*x[175])^5)+x[221] == 0.0)
@NLconstraint(m, e38, -(0.0666666666666667*x[84]*b[268]*x[176]+0.162222222*x[176]+0.00486666666* (0.0169642857142857+1.98412698412698e-5*x[176])^5)+x[222] == 0.0)
@NLconstraint(m, e39, -(0.0666666666666667*x[85]*b[269]*x[177]+0.258181818*x[177]+0.00774545454* (0.0542592592592593+1.85185185185185e-5*x[177])^5)+x[223] == 0.0)
@NLconstraint(m, e40, -(0.0666666666666667*x[86]*b[270]*x[178]+0.162222222*x[178]+0.00486666666* (0.0169642857142857+1.98412698412698e-5*x[178])^5)+x[224] == 0.0)
@NLconstraint(m, e41, -(0.0666666666666667*x[87]*b[271]*x[179]+0.575555556*x[179]+0.01726666668* (0.0445436507936508+1.98412698412698e-5*x[179])^5)+x[225] == 0.0)
@NLconstraint(m, e42, -(0.0666666666666667*x[88]*b[272]*x[180]+0.287142857*x[180]+0.00861428571* (8.68055555555556e-6*x[180])^5)+x[226] == 0.0)
@NLconstraint(m, e43, -(0.0666666666666667*x[89]*b[273]*x[181]+0.575555556*x[181]+0.01726666668* (0.0445436507936508+1.98412698412698e-5*x[181])^5)+x[227] == 0.0)
@NLconstraint(m, e44, -(0.0666666666666667*x[90]*b[274]*x[182]+0.148888889*x[182]+0.00446666667* (1.98412698412698e-5*x[182])^5)+x[228] == 0.0)
@NLconstraint(m, e45, -(0.0666666666666667*x[91]*b[275]*x[183]+0.377777778*x[183]+0.01133333334* (0.012202380952381+1.98412698412698e-5*x[183])^5)+x[229] == 0.0)
@NLconstraint(m, e46, -(0.0666666666666667*x[92]*b[276]*x[184]+0.148888889*x[184]+0.00446666667* (1.98412698412698e-5*x[184])^5)+x[230] == 0.0)
@NLconstraint(m, e47, -(x[141]*b[233]*x[49]+x[149]*b[241]*x[57]+x[159]*b[251]*x[67]+x[171]*b[263]*x[79])+x[278] == 0.0)
@constraint(m, e48, -x[185]-x[186]-x[187]-x[188]-x[189]-x[190]-x[191]-x[192]-x[193]-x[194]-x[195]-x[196]-x[197]-x[198]-x[199]-x[200]-x[201]-x[202]-x[203]-x[204]-x[205]-x[206]-x[207]-x[208]-x[209]-x[210]-x[211]-x[212]-x[213]-x[214]-x[215]-x[216]-x[217]-x[218]-x[219]-x[220]-x[221]-x[222]-x[223]-x[224]-x[225]-x[226]-x[227]-x[228]-x[229]-x[230]+x[277] == 0.0)
@NLconstraint(m, e49, -(0.0666666666666667*x[47]*b[231]+0.00199999995* (9.92063492063492e-6*x[139])^4)+x[93] == 0.013333333)
@NLconstraint(m, e50, -(0.0666666666666667*x[48]*b[232]+0.00499999995* (0.145833333333333+9.92063492063492e-6*x[140])^4)+x[94] == 0.033333333)
@NLconstraint(m, e51, -(0.0666666666666667*x[49]*b[233]+0.00771428565* (8.68055555555556e-6*x[141])^4)+x[95] == 0.051428571)
@NLconstraint(m, e52, -(0.0666666666666667*x[50]*b[234]+0.00199999995* (9.92063492063492e-6*x[142])^4)+x[96] == 0.013333333)
@NLconstraint(m, e53, -(0.0666666666666667*x[51]*b[235]+0.00981818175* (0.0632407407407407+9.25925925925926e-6*x[143])^4)+x[97] == 0.065454545)
@NLconstraint(m, e54, -(0.0666666666666667*x[52]*b[236]+0.00499999995* (0.145833333333333+9.92063492063492e-6*x[144])^4)+x[98] == 0.033333333)
@NLconstraint(m, e55, -(0.0666666666666667*x[53]*b[237]+0.012* (0.06875+1.98412698412698e-5*x[145])^4)+x[99] == 0.08)
@NLconstraint(m, e56, -(0.0666666666666667*x[54]*b[238]+0.00771428565* (8.68055555555556e-6*x[146])^4)+x[100] == 0.051428571)
@NLconstraint(m, e57, -(0.0666666666666667*x[55]*b[239]+0.0033* (0.0625992063492063+9.92063492063492e-6*x[147])^4)+x[101] == 0.022)
@NLconstraint(m, e58, -(0.0666666666666667*x[56]*b[240]+0.0015* (0.0885416666666667+9.92063492063492e-6*x[148])^4)+x[102] == 0.01)
@NLconstraint(m, e59, -(0.0666666666666667*x[57]*b[241]+0.012* (8.68055555555556e-6*x[149])^4)+x[103] == 0.08)
@NLconstraint(m, e60, -(0.0666666666666667*x[58]*b[242]+0.012* (0.06875+1.98412698412698e-5*x[150])^4)+x[104] == 0.08)
@NLconstraint(m, e61, -(0.0666666666666667*x[59]*b[243]+0.0033* (0.0625992063492063+9.92063492063492e-6*x[151])^4)+x[105] == 0.022)
@NLconstraint(m, e62, -(0.0666666666666667*x[60]*b[244]+0.01718181825* (0.0640740740740741+1.85185185185185e-5*x[152])^4)+x[106] == 0.114545455)
@NLconstraint(m, e63, -(0.0666666666666667*x[61]*b[245]+0.00981818175* (0.0632407407407407+9.25925925925926e-6*x[153])^4)+x[107] == 0.065454545)
@NLconstraint(m, e64, -(0.0666666666666667*x[62]*b[246]+0.0015* (0.0885416666666667+9.92063492063492e-6*x[154])^4)+x[108] == 0.01)
@NLconstraint(m, e65, -(0.0666666666666667*x[63]*b[247]+0.01690909095* (0.0449074074074074+1.85185185185185e-5*x[155])^4)+x[109] == 0.112727273)
@NLconstraint(m, e66, -(0.0666666666666667*x[64]*b[248]+0.012* (8.68055555555556e-6*x[156])^4)+x[110] == 0.08)
@NLconstraint(m, e67, -(0.0666666666666667*x[65]*b[249]+0.01718181825* (0.0499537037037037+9.25925925925926e-6*x[157])^4)+x[111] == 0.114545455)
@NLconstraint(m, e68, -(0.0666666666666667*x[66]*b[250]+0.00409090905* (0.0998611111111111+9.25925925925926e-6*x[158])^4)+x[112] == 0.027272727)
@NLconstraint(m, e69, -(0.0666666666666667*x[67]*b[251]+0.0201428571* (8.68055555555556e-6*x[159])^4)+x[113] == 0.134285714)
@NLconstraint(m, e70, -(0.0666666666666667*x[68]*b[252]+0.01718181825* (0.0787962962962963+1.85185185185185e-5*x[160])^4)+x[114] == 0.114545455)
@NLconstraint(m, e71, -(0.0666666666666667*x[69]*b[253]+0.01718181825* (0.0499537037037037+9.25925925925926e-6*x[161])^4)+x[115] == 0.114545455)
@NLconstraint(m, e72, -(0.0666666666666667*x[70]*b[254]+0.01690909095* (0.0449074074074074+1.85185185185185e-5*x[162])^4)+x[116] == 0.112727273)
@NLconstraint(m, e73, -(0.0666666666666667*x[71]*b[255]+0.00409090905* (0.0998611111111111+9.25925925925926e-6*x[163])^4)+x[117] == 0.027272727)
@NLconstraint(m, e74, -(0.0666666666666667*x[72]*b[256]+0.015* (0.108425925925926+9.25925925925926e-6*x[164])^4)+x[118] == 0.1)
@NLconstraint(m, e75, -(0.0666666666666667*x[73]*b[257]+0.0296666667* (0.016468253968254+1.98412698412698e-5*x[165])^4)+x[119] == 0.197777778)
@NLconstraint(m, e76, -(0.0666666666666667*x[74]*b[258]+0.015* (0.108425925925926+9.25925925925926e-6*x[166])^4)+x[120] == 0.1)
@NLconstraint(m, e77, -(0.0666666666666667*x[75]*b[259]+0.0387272727* (0.0542592592592593+1.85185185185185e-5*x[167])^4)+x[121] == 0.258181818)
@NLconstraint(m, e78, -(0.0666666666666667*x[76]*b[260]+0.0201428571* (8.68055555555556e-6*x[168])^4)+x[122] == 0.134285714)
@NLconstraint(m, e79, -(0.0666666666666667*x[77]*b[261]+0.0236666667* (0.0146825396825397+1.98412698412698e-5*x[169])^4)+x[123] == 0.157777778)
@NLconstraint(m, e80, -(0.0666666666666667*x[78]*b[262]+0.0006666666* (1.98412698412698e-5*x[170])^4)+x[124] == 0.004444444)
@NLconstraint(m, e81, -(0.0666666666666667*x[79]*b[263]+0.04307142855* (8.68055555555556e-6*x[171])^4)+x[125] == 0.287142857)
@NLconstraint(m, e82, -(0.0666666666666667*x[80]*b[264]+0.0236666667* (0.0146825396825397+1.98412698412698e-5*x[172])^4)+x[126] == 0.157777778)
@NLconstraint(m, e83, -(0.0666666666666667*x[81]*b[265]+0.0566666667* (0.012202380952381+1.98412698412698e-5*x[173])^4)+x[127] == 0.377777778)
@NLconstraint(m, e84, -(0.0666666666666667*x[82]*b[266]+0.0296666667* (0.0244047619047619+1.98412698412698e-5*x[174])^4)+x[128] == 0.197777778)
@NLconstraint(m, e85, -(0.0666666666666667*x[83]*b[267]+0.0006666666* (1.98412698412698e-5*x[175])^4)+x[129] == 0.004444444)
@NLconstraint(m, e86, -(0.0666666666666667*x[84]*b[268]+0.0243333333* (0.0169642857142857+1.98412698412698e-5*x[176])^4)+x[130] == 0.162222222)
@NLconstraint(m, e87, -(0.0666666666666667*x[85]*b[269]+0.0387272727* (0.0542592592592593+1.85185185185185e-5*x[177])^4)+x[131] == 0.258181818)
@NLconstraint(m, e88, -(0.0666666666666667*x[86]*b[270]+0.0243333333* (0.0169642857142857+1.98412698412698e-5*x[178])^4)+x[132] == 0.162222222)
@NLconstraint(m, e89, -(0.0666666666666667*x[87]*b[271]+0.0863333334* (0.0445436507936508+1.98412698412698e-5*x[179])^4)+x[133] == 0.575555556)
@NLconstraint(m, e90, -(0.0666666666666667*x[88]*b[272]+0.04307142855* (8.68055555555556e-6*x[180])^4)+x[134] == 0.287142857)
@NLconstraint(m, e91, -(0.0666666666666667*x[89]*b[273]+0.0863333334* (0.0445436507936508+1.98412698412698e-5*x[181])^4)+x[135] == 0.575555556)
@NLconstraint(m, e92, -(0.0666666666666667*x[90]*b[274]+0.02233333335* (1.98412698412698e-5*x[182])^4)+x[136] == 0.148888889)
@NLconstraint(m, e93, -(0.0666666666666667*x[91]*b[275]+0.0566666667* (0.012202380952381+1.98412698412698e-5*x[183])^4)+x[137] == 0.377777778)
@NLconstraint(m, e94, -(0.0666666666666667*x[92]*b[276]+0.02233333335* (1.98412698412698e-5*x[184])^4)+x[138] == 0.148888889)
@constraint(m, e95, x[1]+x[2]+x[3]-x[4]-x[6]-x[8] == 234100.0)
@constraint(m, e96, -x[1]+x[4]+x[5]-x[15] == 0.0)
@constraint(m, e97, -x[2]+x[6]+x[7]-x[12] == 0.0)
@constraint(m, e98, -x[3]+x[8]+x[9]+x[10]+x[11]-x[13]-x[16]-x[18] == 0.0)
@constraint(m, e99, -x[7]-x[9]+x[12]+x[13]+x[14]-x[22] == 0.0)
@constraint(m, e100, -x[5]-x[10]+x[15]+x[16]+x[17]-x[24] == 0.0)
@constraint(m, e101, -x[11]+x[18]+x[19]+x[20]+x[21]-x[23]-x[25]-x[30] == 0.0)
@constraint(m, e102, -x[14]-x[19]+x[22]+x[23] == 0.0)
@constraint(m, e103, -x[17]-x[20]+x[24]+x[25]+x[26]+x[27]-x[28]-x[36] == 0.0)
@constraint(m, e104, -x[26]+x[28]+x[29]-x[39] == 0.0)
@constraint(m, e105, -x[21]+x[30]+x[31]+x[32]+x[33]-x[34]-x[37]-x[42] == 0.0)
@constraint(m, e106, -x[31]+x[34]+x[35]-x[45] == 0.0)
@constraint(m, e107, -x[27]-x[32]+x[36]+x[37]+x[38]-x[40] == 0.0)
@constraint(m, e108, -x[29]-x[38]+x[39]+x[40]+x[41]-x[43] == 0.0)
@constraint(m, e109, -x[33]-x[41]+x[42]+x[43]+x[44]-x[46] == -23410.0)
@constraint(m, e110, -x[35]-x[44]+x[45]+x[46] == 0.0)
@constraint(m, e111, x[1]-x[139] == 0.0)
@constraint(m, e112, x[2]-x[140] == 0.0)
@constraint(m, e113, x[3]-x[141] == 0.0)
@constraint(m, e114, x[4]-x[142] == 0.0)
@constraint(m, e115, x[5]-x[143] == 0.0)
@constraint(m, e116, x[6]-x[144] == 0.0)
@constraint(m, e117, x[7]-x[145] == 0.0)
@constraint(m, e118, x[8]-x[146] == 0.0)
@constraint(m, e119, x[9]-x[147] == 0.0)
@constraint(m, e120, x[10]-x[148] == 0.0)
@constraint(m, e121, x[11]-x[149] == 0.0)
@constraint(m, e122, x[12]-x[150] == 0.0)
@constraint(m, e123, x[13]-x[151] == 0.0)
@constraint(m, e124, x[14]-x[152] == 0.0)
@constraint(m, e125, x[15]-x[153] == 0.0)
@constraint(m, e126, x[16]-x[154] == 0.0)
@constraint(m, e127, x[17]-x[155] == 0.0)
@constraint(m, e128, x[18]-x[156] == 0.0)
@constraint(m, e129, x[19]-x[157] == 0.0)
@constraint(m, e130, x[20]-x[158] == 0.0)
@constraint(m, e131, x[21]-x[159] == 0.0)
@constraint(m, e132, x[22]-x[160] == 0.0)
@constraint(m, e133, x[23]-x[161] == 0.0)
@constraint(m, e134, x[24]-x[162] == 0.0)
@constraint(m, e135, x[25]-x[163] == 0.0)
@constraint(m, e136, x[26]-x[164] == 0.0)
@constraint(m, e137, x[27]-x[165] == 0.0)
@constraint(m, e138, x[28]-x[166] == 0.0)
@constraint(m, e139, x[29]-x[167] == 0.0)
@constraint(m, e140, x[30]-x[168] == 0.0)
@constraint(m, e141, x[31]-x[169] == 0.0)
@constraint(m, e142, x[32]-x[170] == 0.0)
@constraint(m, e143, x[33]-x[171] == 0.0)
@constraint(m, e144, x[34]-x[172] == 0.0)
@constraint(m, e145, x[35]-x[173] == 0.0)
@constraint(m, e146, x[36]-x[174] == 0.0)
@constraint(m, e147, x[37]-x[175] == 0.0)
@constraint(m, e148, x[38]-x[176] == 0.0)
@constraint(m, e149, x[39]-x[177] == 0.0)
@constraint(m, e150, x[40]-x[178] == 0.0)
@constraint(m, e151, x[41]-x[179] == 0.0)
@constraint(m, e152, x[42]-x[180] == 0.0)
@constraint(m, e153, x[43]-x[181] == 0.0)
@constraint(m, e154, x[44]-x[182] == 0.0)
@constraint(m, e155, x[45]-x[183] == 0.0)
@constraint(m, e156, x[46]-x[184] == 0.0)
@constraint(m, e157, b[233]+b[241]+b[251]+b[263] == 1.0)
@constraint(m, e158, x[49] <= 7.0)
@constraint(m, e159, x[57] <= 7.0)
@constraint(m, e160, x[67] <= 7.0)
@constraint(m, e161, x[79] <= 7.0)
@constraint(m, e162, x[49] >= 1.0)
@constraint(m, e163, x[57] >= 1.0)
@constraint(m, e164, x[67] >= 1.0)
@constraint(m, e165, x[79] >= 1.0)


# ----- Objective ----- #
@objective(m, Max, x[278])

m = m 		 # model get returned when including this script. 
