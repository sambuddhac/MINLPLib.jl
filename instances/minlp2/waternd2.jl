using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233]
@variable(m, x[x_Idx])
setlowerbound(x[146], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[132], 0.0)
setlowerbound(x[154], 0.0)
setlowerbound(x[164], 0.0)
setlowerbound(x[143], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[165], 0.0)
setlowerbound(x[202], 0.0)
setlowerbound(x[220], 0.0)
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
setlowerbound(x[80], 0.0)
setlowerbound(x[103], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[162], 0.0)
setlowerbound(x[116], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[200], 0.0)
setlowerbound(x[206], 0.0)
setlowerbound(x[215], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[169], 0.0)
setlowerbound(x[197], 0.0)
setlowerbound(x[198], 0.0)
setlowerbound(x[148], 0.0)
setlowerbound(x[150], 0.0)
setlowerbound(x[225], 0.0)
setlowerbound(x[218], 0.0)
setlowerbound(x[231], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[136], 0.0)
setlowerbound(x[190], 0.0)
setlowerbound(x[196], 0.0)
setlowerbound(x[232], 0.0)
setlowerbound(x[151], 0.0)
setlowerbound(x[171], 0.0)
setlowerbound(x[147], 0.0)
setlowerbound(x[138], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[111], 0.0)
setlowerbound(x[219], 0.0)
setlowerbound(x[137], 0.0)
setlowerbound(x[224], 0.0)
setlowerbound(x[142], 0.0)
setlowerbound(x[209], 0.0)
setlowerbound(x[128], 0.0)
setlowerbound(x[161], 0.0)
setlowerbound(x[156], 0.0)
setlowerbound(x[199], 0.0)
setlowerbound(x[213], 0.0)
setlowerbound(x[173], 0.0)
setlowerbound(x[123], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setlowerbound(x[227], 0.0)
setlowerbound(x[189], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[166], 0.0)
setlowerbound(x[157], 0.0)
setlowerbound(x[230], 0.0)
setlowerbound(x[163], 0.0)
setlowerbound(x[216], 0.0)
setlowerbound(x[133], 0.0)
setlowerbound(x[192], 0.0)
setlowerbound(x[205], 0.0)
setlowerbound(x[207], 0.0)
setlowerbound(x[76], 0.0)
setlowerbound(x[195], 0.0)
setlowerbound(x[117], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[140], 0.0)
setlowerbound(x[153], 0.0)
setlowerbound(x[201], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[223], 0.0)
setlowerbound(x[113], 0.0)
setlowerbound(x[130], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[208], 0.0)
setlowerbound(x[131], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[210], 0.0)
setlowerbound(x[191], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[121], 0.0)
setlowerbound(x[152], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[233], 0.0)
setlowerbound(x[98], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[203], 0.0)
setlowerbound(x[170], 0.0)
setlowerbound(x[149], 0.0)
setlowerbound(x[221], 0.0)
setlowerbound(x[217], 0.0)
setlowerbound(x[212], 0.0)
setlowerbound(x[125], 0.0)
setlowerbound(x[167], 0.0)
setlowerbound(x[102], 0.0)
setlowerbound(x[228], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[222], 0.0)
setlowerbound(x[110], 0.0)
setlowerbound(x[155], 0.0)
setlowerbound(x[204], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[193], 0.0)
setlowerbound(x[134], 0.0)
setlowerbound(x[122], 0.0)
setlowerbound(x[129], 0.0)
setlowerbound(x[194], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[214], 0.0)
setlowerbound(x[139], 0.0)
setlowerbound(x[126], 0.0)
setlowerbound(x[107], 0.0)
setlowerbound(x[168], 0.0)
setlowerbound(x[97], 0.0)
setlowerbound(x[127], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[159], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[135], 0.0)
setlowerbound(x[229], 0.0)
setlowerbound(x[211], 0.0)
setlowerbound(x[108], 0.0)
setlowerbound(x[74], 40.0)
setupperbound(x[74], 300.0)
setupperbound(x[75], 40.0)
setupperbound(x[76], 50.0)
setupperbound(x[77], 60.0)
setupperbound(x[78], 70.0)
setupperbound(x[79], 80.0)
setupperbound(x[80], 300.0)
setupperbound(x[81], 300.0)
setupperbound(x[82], 300.0)
setlowerbound(x[83], 40.0)
setupperbound(x[83], 40.0)
setlowerbound(x[84], 50.0)
setupperbound(x[84], 50.0)
setlowerbound(x[85], 60.0)
setupperbound(x[85], 60.0)
setlowerbound(x[86], 70.0)
setupperbound(x[86], 70.0)
setlowerbound(x[87], 80.0)
setupperbound(x[87], 80.0)
setupperbound(x[88], 40.0)
setupperbound(x[89], 40.0)
setupperbound(x[90], 40.0)
setupperbound(x[91], 40.0)
setupperbound(x[92], 40.0)
setupperbound(x[93], 50.0)
setupperbound(x[94], 50.0)
setupperbound(x[95], 50.0)
setupperbound(x[96], 40.0)
setupperbound(x[97], 50.0)
setupperbound(x[98], 60.0)
setupperbound(x[99], 60.0)
setupperbound(x[100], 40.0)
setupperbound(x[101], 50.0)
setupperbound(x[102], 60.0)
setupperbound(x[103], 70.0)
setupperbound(x[104], 40.0)
setupperbound(x[105], 50.0)
setupperbound(x[106], 60.0)
setupperbound(x[107], 70.0)
setupperbound(x[108], 40.0)
setupperbound(x[109], 40.0)
setupperbound(x[110], 40.0)
setupperbound(x[111], 50.0)
setupperbound(x[112], 50.0)
setupperbound(x[113], 50.0)
setupperbound(x[114], 60.0)
setupperbound(x[115], 60.0)
setupperbound(x[116], 60.0)
setupperbound(x[117], 70.0)
setupperbound(x[118], 70.0)
setupperbound(x[119], 70.0)
setupperbound(x[120], 80.0)
setupperbound(x[121], 80.0)
setupperbound(x[122], 80.0)
setupperbound(x[123], 40.0)
setupperbound(x[124], 50.0)
setupperbound(x[125], 60.0)
setupperbound(x[126], 70.0)
setupperbound(x[127], 80.0)
setupperbound(x[128], 40.0)
setupperbound(x[129], 50.0)
setupperbound(x[130], 60.0)
setupperbound(x[131], 70.0)
setupperbound(x[132], 80.0)
setupperbound(x[133], 40.0)
setupperbound(x[134], 50.0)
setupperbound(x[135], 60.0)
setupperbound(x[136], 70.0)
setupperbound(x[137], 80.0)
setupperbound(x[138], 40.0)
setupperbound(x[139], 50.0)
setupperbound(x[140], 60.0)
setupperbound(x[141], 70.0)
setupperbound(x[142], 80.0)
setupperbound(x[143], 300.0)
setupperbound(x[144], 300.0)
setupperbound(x[145], 300.0)
setupperbound(x[146], 300.0)
setupperbound(x[147], 300.0)
setupperbound(x[148], 300.0)
setupperbound(x[149], 300.0)
setupperbound(x[150], 300.0)
setupperbound(x[151], 300.0)
setupperbound(x[152], 300.0)
setupperbound(x[153], 300.0)
setupperbound(x[154], 300.0)
setupperbound(x[155], 300.0)
setupperbound(x[156], 300.0)
setupperbound(x[157], 300.0)
setlowerbound(x[158], 40.0)
setupperbound(x[158], 300.0)
setlowerbound(x[159], 0.0)
setupperbound(x[159], 0.0)
setlowerbound(x[160], 0.0)
setupperbound(x[160], 0.0)
setlowerbound(x[161], 0.0)
setupperbound(x[161], 0.0)
setupperbound(x[162], 50.0)
setupperbound(x[163], 50.0)
setupperbound(x[164], 50.0)
setupperbound(x[165], 50.0)
setupperbound(x[166], 50.0)
setupperbound(x[167], 50.0)
setupperbound(x[168], 50.0)
setupperbound(x[169], 50.0)
setupperbound(x[170], 50.0)
setupperbound(x[171], 25.0)
setupperbound(x[172], 25.0)
setupperbound(x[173], 25.0)
setlowerbound(x[174], 25.0)
setupperbound(x[174], 25.0)
setlowerbound(x[175], 37.5)
setupperbound(x[175], 37.5)
setlowerbound(x[176], 25.0)
setupperbound(x[176], 25.0)
setlowerbound(x[177], 20.0)
setupperbound(x[177], 70.0)
setlowerbound(x[178], 20.0)
setupperbound(x[178], 70.0)
setlowerbound(x[179], 20.0)
setupperbound(x[179], 70.0)
setlowerbound(x[180], 16.6666666666667)
setupperbound(x[180], 66.6666666666667)
setlowerbound(x[181], 16.6666666666667)
setupperbound(x[181], 66.6666666666667)
setlowerbound(x[182], 16.6666666666667)
setupperbound(x[182], 66.6666666666667)
setlowerbound(x[183], 28.5714285714286)
setupperbound(x[183], 78.5714285714286)
setlowerbound(x[184], 28.5714285714286)
setupperbound(x[184], 78.5714285714286)
setlowerbound(x[185], 28.5714285714286)
setupperbound(x[185], 78.5714285714286)
setlowerbound(x[186], 12.5)
setupperbound(x[186], 37.5)
setlowerbound(x[187], 12.5)
setupperbound(x[187], 37.5)
setupperbound(x[188], 25.0)
setupperbound(x[189], 78.5714285714286)
setupperbound(x[190], 78.5714285714286)
setupperbound(x[191], 78.5714285714286)
setupperbound(x[192], 78.5714285714286)
setupperbound(x[193], 78.5714285714286)
setupperbound(x[194], 78.5714285714286)
setupperbound(x[195], 78.5714285714286)
setupperbound(x[196], 78.5714285714286)
setupperbound(x[197], 78.5714285714286)
setupperbound(x[198], 3.92857142857142)
setupperbound(x[199], 78.5714285714286)
setupperbound(x[200], 78.5714285714286)
setupperbound(x[201], 78.5714285714286)
setupperbound(x[202], 78.5714285714286)
setupperbound(x[203], 3.92857142857142)
setupperbound(x[204], 78.5714285714286)
setupperbound(x[205], 3.92857142857142)
setupperbound(x[206], 78.5714285714286)
setupperbound(x[207], 25.0)
setupperbound(x[208], 37.5)
setupperbound(x[209], 25.0)
setupperbound(x[210], 70.0)
setupperbound(x[211], 70.0)
setupperbound(x[212], 70.0)
setupperbound(x[213], 66.6666666666667)
setupperbound(x[214], 66.6666666666667)
setupperbound(x[215], 66.6666666666667)
setupperbound(x[216], 78.5714285714286)
setupperbound(x[217], 78.5714285714286)
setupperbound(x[218], 78.5714285714286)
setupperbound(x[219], 37.5)
setupperbound(x[220], 37.5)
setupperbound(x[221], 25.0)
setupperbound(x[222], 3.92857142857142)
setupperbound(x[223], 78.5714285714286)
setupperbound(x[224], 78.5714285714286)
setupperbound(x[225], 78.5714285714286)
setupperbound(x[226], 78.5714285714286)
setupperbound(x[227], 3.92857142857142)
setupperbound(x[228], 78.5714285714286)
setupperbound(x[229], 3.92857142857142)
setupperbound(x[230], 78.5714285714286)
setupperbound(x[231], 10.0)
setupperbound(x[232], 10.0)
setupperbound(x[233], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.1*(16800*(0.001+x[155])^0.7+9500*(0.001+x[156])^0.7+12600*(0.001+x[157])^0.7)+8000*x[155]+320*x[156]+53.6*x[157]+0.1*(100*(0.001+x[75])^0.6+100*(0.001+x[76])^0.6+100*(0.001+x[77])^0.6+100*(0.001+x[78])^0.6+100*(0.001+x[79])^0.6+100*(0.001+x[80])^0.6+100*(0.001+x[81])^0.6+100*(0.001+x[82])^0.6+100*(0.001+x[88])^0.6+100*(0.001+x[89])^0.6+100*(0.001+x[90])^0.6+100*(0.001+x[91])^0.6+100*(0.001+x[92])^0.6+100*(0.001+x[93])^0.6+100*(0.001+x[94])^0.6+100*(0.001+x[95])^0.6+100*(0.001+x[96])^0.6+100*(0.001+x[97])^0.6+100*(0.001+x[98])^0.6+100*(0.001+x[99])^0.6+100*(0.001+x[100])^0.6+100*(0.001+x[101])^0.6+100*(0.001+x[102])^0.6+100*(0.001+x[103])^0.6+100*(0.001+x[104])^0.6+100*(0.001+x[105])^0.6+100*(0.001+x[106])^0.6+100*(0.001+x[107])^0.6+100*(0.001+x[108])^0.6+100*(0.001+x[109])^0.6+100*(0.001+x[110])^0.6+100*(0.001+x[111])^0.6+100*(0.001+x[112])^0.6+100*(0.001+x[113])^0.6+100*(0.001+x[114])^0.6+100*(0.001+x[115])^0.6+100*(0.001+x[116])^0.6+100*(0.001+x[117])^0.6+100*(0.001+x[118])^0.6+100*(0.001+x[119])^0.6+100*(0.001+x[120])^0.6+100*(0.001+x[121])^0.6+100*(0.001+x[122])^0.6+100*(0.001+x[123])^0.6+100*(0.001+x[124])^0.6+100*(0.001+x[125])^0.6+100*(0.001+x[126])^0.6+100*(0.001+x[127])^0.6+100*(0.001+x[128])^0.6+100*(0.001+x[129])^0.6+100*(0.001+x[130])^0.6+100*(0.001+x[131])^0.6+100*(0.001+x[132])^0.6+100*(0.001+x[133])^0.6+100*(0.001+x[134])^0.6+100*(0.001+x[135])^0.6+100*(0.001+x[136])^0.6+100*(0.001+x[137])^0.6+100*(0.001+x[138])^0.6+100*(0.001+x[139])^0.6+100*(0.001+x[140])^0.6+100*(0.001+x[141])^0.6+100*(0.001+x[142])^0.6+100*(0.001+x[149])^0.6+100*(0.001+x[150])^0.6+100*(0.001+x[151])^0.6+100*(0.001+x[143])^0.6+100*(0.001+x[144])^0.6+100*(0.001+x[145])^0.6+100*(0.001+x[146])^0.6+100*(0.001+x[147])^0.6+100*(0.001+x[148])^0.6)+48*x[75]+48*x[76]+48*x[77]+48*x[78]+48*x[79]+48*x[80]+48*x[81]+48*x[82]+48*x[88]+48*x[89]+48*x[90]+48*x[91]+48*x[92]+48*x[93]+48*x[94]+48*x[95]+48*x[96]+48*x[97]+48*x[98]+48*x[99]+48*x[100]+48*x[101]+48*x[102]+48*x[103]+48*x[104]+48*x[105]+48*x[106]+48*x[107]+48*x[108]+48*x[109]+48*x[110]+48*x[111]+48*x[112]+48*x[113]+48*x[114]+48*x[115]+48*x[116]+48*x[117]+48*x[118]+48*x[119]+48*x[120]+48*x[121]+48*x[122]+48*x[123]+48*x[124]+48*x[125]+48*x[126]+48*x[127]+48*x[128]+48*x[129]+48*x[130]+48*x[131]+48*x[132]+48*x[133]+48*x[134]+48*x[135]+48*x[136]+48*x[137]+48*x[138]+48*x[139]+48*x[140]+48*x[141]+48*x[142]+48*x[143]+48*x[144]+48*x[145]+48*x[146]+48*x[147]+48*x[148]+48*x[149]+48*x[150]+48*x[151])-0.6*b[1]-0.6*b[2]-0.6*b[3]-0.6*b[4]-0.6*b[5]-0.6*b[6]-0.6*b[7]-0.6*b[8]-0.6*b[9]-0.6*b[10]-0.6*b[11]-0.6*b[12]-0.6*b[13]-0.6*b[14]-0.6*b[15]-0.6*b[16]-0.6*b[17]-0.6*b[18]-0.6*b[19]-0.6*b[20]-0.6*b[21]-0.6*b[22]-0.6*b[23]-0.6*b[24]-0.6*b[25]-0.6*b[26]-0.6*b[27]-0.6*b[28]-0.6*b[29]-0.6*b[30]-0.6*b[31]-0.6*b[32]-0.6*b[33]-0.6*b[34]-0.6*b[35]-0.6*b[36]-0.6*b[37]-0.6*b[38]-0.6*b[39]-0.6*b[40]-0.6*b[41]-0.6*b[42]-0.6*b[43]-0.6*b[44]-0.6*b[45]-0.6*b[46]-0.6*b[47]-0.6*b[48]-0.6*b[49]-0.6*b[50]-0.6*b[51]-0.6*b[52]-0.6*b[53]-0.6*b[54]-0.6*b[55]-0.6*b[56]-0.6*b[57]-0.6*b[58]-0.6*b[59]-0.6*b[60]-0.6*b[61]-0.6*b[62]-0.6*b[63]-0.6*b[64]-0.6*b[65]-0.6*b[66]-0.6*b[67]-0.6*b[68]-0.6*b[69]-0.6*b[70]-0.6*b[71]-0.6*b[72]+objvar-8000*x[74] == 0.0)
@constraint(m, e2, x[74]-x[75]-x[76]-x[77]-x[78]-x[79]-x[80]-x[81]-x[82] == 0.0)
@constraint(m, e3, -x[75]-x[92]-x[96]-x[100]-x[104]-x[128]-x[133]-x[138] == -40.0)
@constraint(m, e4, -x[76]-x[88]-x[97]-x[101]-x[105]-x[129]-x[134]-x[139] == -50.0)
@constraint(m, e5, -x[77]-x[89]-x[93]-x[102]-x[106]-x[130]-x[135]-x[140] == -60.0)
@constraint(m, e6, -x[78]-x[90]-x[94]-x[98]-x[107]-x[131]-x[136]-x[141] == -70.0)
@constraint(m, e7, -x[79]-x[91]-x[95]-x[99]-x[103]-x[132]-x[137]-x[142] == -80.0)
@NLconstraint(m, e8, -(x[92]*x[177]+x[96]*x[180]+x[100]*x[183]+x[104]*x[186]+x[128]*x[198]+x[133]*x[201]+x[138]*x[204])+40*x[159] == 0.0)
@NLconstraint(m, e9, -(x[92]*x[178]+x[96]*x[181]+x[100]*x[184]+x[104]*x[187]+x[128]*x[199]+x[133]*x[202]+x[138]*x[205])+40*x[160] == 0.0)
@NLconstraint(m, e10, -(x[92]*x[179]+x[96]*x[182]+x[100]*x[185]+x[104]*x[188]+x[128]*x[200]+x[133]*x[203]+x[138]*x[206])+40*x[161] == 0.0)
@NLconstraint(m, e11, -(x[88]*x[174]+x[97]*x[180]+x[101]*x[183]+x[105]*x[186]+x[129]*x[198]+x[134]*x[201]+x[139]*x[204])+50*x[162] == 0.0)
@NLconstraint(m, e12, -(x[88]*x[175]+x[97]*x[181]+x[101]*x[184]+x[105]*x[187]+x[129]*x[199]+x[134]*x[202]+x[139]*x[205])+50*x[163] == 0.0)
@NLconstraint(m, e13, -(x[88]*x[176]+x[97]*x[182]+x[101]*x[185]+x[105]*x[188]+x[129]*x[200]+x[134]*x[203]+x[139]*x[206])+50*x[164] == 0.0)
@NLconstraint(m, e14, -(x[89]*x[174]+x[93]*x[177]+x[102]*x[183]+x[106]*x[186]+x[130]*x[198]+x[135]*x[201]+x[140]*x[204])+60*x[165] == 0.0)
@NLconstraint(m, e15, -(x[89]*x[175]+x[93]*x[178]+x[102]*x[184]+x[106]*x[187]+x[130]*x[199]+x[135]*x[202]+x[140]*x[205])+60*x[166] == 0.0)
@NLconstraint(m, e16, -(x[89]*x[176]+x[93]*x[179]+x[102]*x[185]+x[106]*x[188]+x[130]*x[200]+x[135]*x[203]+x[140]*x[206])+60*x[167] == 0.0)
@NLconstraint(m, e17, -(x[90]*x[174]+x[94]*x[177]+x[98]*x[180]+x[107]*x[186]+x[131]*x[198]+x[136]*x[201]+x[141]*x[204])+70*x[168] == 0.0)
@NLconstraint(m, e18, -(x[90]*x[175]+x[94]*x[178]+x[98]*x[181]+x[107]*x[187]+x[131]*x[199]+x[136]*x[202]+x[141]*x[205])+70*x[169] == 0.0)
@NLconstraint(m, e19, -(x[90]*x[176]+x[94]*x[179]+x[98]*x[182]+x[107]*x[188]+x[131]*x[200]+x[136]*x[203]+x[141]*x[206])+70*x[170] == 0.0)
@NLconstraint(m, e20, -(x[91]*x[174]+x[95]*x[177]+x[99]*x[180]+x[103]*x[183]+x[132]*x[198]+x[137]*x[201]+x[142]*x[204])+80*x[171] == 0.0)
@NLconstraint(m, e21, -(x[91]*x[175]+x[95]*x[178]+x[99]*x[181]+x[103]*x[184]+x[132]*x[199]+x[137]*x[202]+x[142]*x[205])+80*x[172] == 0.0)
@NLconstraint(m, e22, -(x[91]*x[176]+x[95]*x[179]+x[99]*x[182]+x[103]*x[185]+x[132]*x[200]+x[137]*x[203]+x[142]*x[206])+80*x[173] == 0.0)
@constraint(m, e23, -x[83] == -40.0)
@constraint(m, e24, -x[84] == -50.0)
@constraint(m, e25, -x[85] == -60.0)
@constraint(m, e26, -x[86] == -70.0)
@constraint(m, e27, -x[87] == -80.0)
@NLconstraint(m, e28, -x[83]*x[174]+40*x[159] == -1000.0)
@NLconstraint(m, e29, -x[83]*x[175]+40*x[160] == -1500.0)
@NLconstraint(m, e30, -x[83]*x[176]+40*x[161] == -1000.0)
@NLconstraint(m, e31, -x[84]*x[177]+50*x[162] == -1000.0)
@NLconstraint(m, e32, -x[84]*x[178]+50*x[163] == -1000.0)
@NLconstraint(m, e33, -x[84]*x[179]+50*x[164] == -1000.0)
@NLconstraint(m, e34, -x[85]*x[180]+60*x[165] == -1000.0)
@NLconstraint(m, e35, -x[85]*x[181]+60*x[166] == -1000.0)
@NLconstraint(m, e36, -x[85]*x[182]+60*x[167] == -1000.0)
@NLconstraint(m, e37, -x[86]*x[183]+70*x[168] == -2000.0)
@NLconstraint(m, e38, -x[86]*x[184]+70*x[169] == -2000.0)
@NLconstraint(m, e39, -x[86]*x[185]+70*x[170] == -2000.0)
@NLconstraint(m, e40, -x[87]*x[186]+80*x[171] == -1000.0)
@NLconstraint(m, e41, -x[87]*x[187]+80*x[172] == -1000.0)
@NLconstraint(m, e42, -x[87]*x[188]+80*x[173] == 0.0)
@constraint(m, e43, x[83]-x[88]-x[89]-x[90]-x[91]-x[108]-x[109]-x[110]-x[123] == 0.0)
@constraint(m, e44, x[84]-x[92]-x[93]-x[94]-x[95]-x[111]-x[112]-x[113]-x[124] == 0.0)
@constraint(m, e45, x[85]-x[96]-x[97]-x[98]-x[99]-x[114]-x[115]-x[116]-x[125] == 0.0)
@constraint(m, e46, x[86]-x[100]-x[101]-x[102]-x[103]-x[117]-x[118]-x[119]-x[126] == 0.0)
@constraint(m, e47, x[87]-x[104]-x[105]-x[106]-x[107]-x[120]-x[121]-x[122]-x[127] == 0.0)
@constraint(m, e48, -x[174]+x[207] == 0.0)
@constraint(m, e49, -x[175]+x[208] == 0.0)
@constraint(m, e50, -x[176]+x[209] == 0.0)
@constraint(m, e51, -x[177]+x[210] == 0.0)
@constraint(m, e52, -x[178]+x[211] == 0.0)
@constraint(m, e53, -x[179]+x[212] == 0.0)
@constraint(m, e54, -x[180]+x[213] == 0.0)
@constraint(m, e55, -x[181]+x[214] == 0.0)
@constraint(m, e56, -x[182]+x[215] == 0.0)
@constraint(m, e57, -x[183]+x[216] == 0.0)
@constraint(m, e58, -x[184]+x[217] == 0.0)
@constraint(m, e59, -x[185]+x[218] == 0.0)
@constraint(m, e60, -x[186]+x[219] == 0.0)
@constraint(m, e61, -x[187]+x[220] == 0.0)
@constraint(m, e62, -x[188]+x[221] == 0.0)
@constraint(m, e63, -x[80]-x[108]-x[111]-x[114]-x[117]-x[120]-x[145]-x[147]+x[152] == 0.0)
@constraint(m, e64, -x[81]-x[109]-x[112]-x[115]-x[118]-x[121]-x[143]-x[148]+x[153] == 0.0)
@constraint(m, e65, -x[82]-x[110]-x[113]-x[116]-x[119]-x[122]-x[144]-x[146]+x[154] == 0.0)
@NLconstraint(m, e66, x[152]*x[189]-(x[145]*x[225]+x[147]*x[228]+x[108]*x[207]+x[111]*x[210]+x[114]*x[213]+x[117]*x[216]+x[120]*x[219]) == 0.0)
@NLconstraint(m, e67, x[152]*x[190]-(x[145]*x[226]+x[147]*x[229]+x[108]*x[208]+x[111]*x[211]+x[114]*x[214]+x[117]*x[217]+x[120]*x[220]) == 0.0)
@NLconstraint(m, e68, x[152]*x[191]-(x[145]*x[227]+x[147]*x[230]+x[108]*x[209]+x[111]*x[212]+x[114]*x[215]+x[117]*x[218]+x[120]*x[221]) == 0.0)
@NLconstraint(m, e69, x[153]*x[192]-(x[143]*x[222]+x[148]*x[228]+x[109]*x[207]+x[112]*x[210]+x[115]*x[213]+x[118]*x[216]+x[121]*x[219]) == 0.0)
@NLconstraint(m, e70, x[153]*x[193]-(x[143]*x[223]+x[148]*x[229]+x[109]*x[208]+x[112]*x[211]+x[115]*x[214]+x[118]*x[217]+x[121]*x[220]) == 0.0)
@NLconstraint(m, e71, x[153]*x[194]-(x[143]*x[224]+x[148]*x[230]+x[109]*x[209]+x[112]*x[212]+x[115]*x[215]+x[118]*x[218]+x[121]*x[221]) == 0.0)
@NLconstraint(m, e72, x[154]*x[195]-(x[144]*x[222]+x[146]*x[225]+x[110]*x[207]+x[113]*x[210]+x[116]*x[213]+x[119]*x[216]+x[122]*x[219]) == 0.0)
@NLconstraint(m, e73, x[154]*x[196]-(x[144]*x[223]+x[146]*x[226]+x[110]*x[208]+x[113]*x[211]+x[116]*x[214]+x[119]*x[217]+x[122]*x[220]) == 0.0)
@NLconstraint(m, e74, x[154]*x[197]-(x[144]*x[224]+x[146]*x[227]+x[110]*x[209]+x[113]*x[212]+x[116]*x[215]+x[119]*x[218]+x[122]*x[221]) == 0.0)
@constraint(m, e75, x[152]-x[155] == 0.0)
@constraint(m, e76, x[153]-x[156] == 0.0)
@constraint(m, e77, x[154]-x[157] == 0.0)
@constraint(m, e78, -0.0499999999999999*x[189]+x[198] == 0.0)
@constraint(m, e79, -x[190]+x[199] == 0.0)
@constraint(m, e80, -x[191]+x[200] == 0.0)
@constraint(m, e81, -x[192]+x[201] == 0.0)
@constraint(m, e82, -x[193]+x[202] == 0.0)
@constraint(m, e83, -0.0499999999999999*x[194]+x[203] == 0.0)
@constraint(m, e84, -x[195]+x[204] == 0.0)
@constraint(m, e85, -0.0499999999999999*x[196]+x[205] == 0.0)
@constraint(m, e86, -x[197]+x[206] == 0.0)
@constraint(m, e87, -x[128]-x[129]-x[130]-x[131]-x[132]-x[143]-x[144]-x[149]+x[155] == 0.0)
@constraint(m, e88, -x[133]-x[134]-x[135]-x[136]-x[137]-x[145]-x[146]-x[150]+x[156] == 0.0)
@constraint(m, e89, -x[138]-x[139]-x[140]-x[141]-x[142]-x[147]-x[148]-x[151]+x[157] == 0.0)
@constraint(m, e90, -x[198]+x[222] == 0.0)
@constraint(m, e91, -x[199]+x[223] == 0.0)
@constraint(m, e92, -x[200]+x[224] == 0.0)
@constraint(m, e93, -x[201]+x[225] == 0.0)
@constraint(m, e94, -x[202]+x[226] == 0.0)
@constraint(m, e95, -x[203]+x[227] == 0.0)
@constraint(m, e96, -x[204]+x[228] == 0.0)
@constraint(m, e97, -x[205]+x[229] == 0.0)
@constraint(m, e98, -x[206]+x[230] == 0.0)
@constraint(m, e99, -x[123]-x[124]-x[125]-x[126]-x[127]-x[149]-x[150]-x[151]+x[158] == 0.0)
@NLconstraint(m, e100, x[158]*x[231]-(x[123]*x[207]+x[124]*x[210]+x[125]*x[213]+x[126]*x[216]+x[127]*x[219]+x[149]*x[222]+x[150]*x[225]+x[151]*x[228]) == 0.0)
@NLconstraint(m, e101, x[158]*x[232]-(x[123]*x[208]+x[124]*x[211]+x[125]*x[214]+x[126]*x[217]+x[127]*x[220]+x[149]*x[223]+x[150]*x[226]+x[151]*x[229]) == 0.0)
@NLconstraint(m, e102, x[158]*x[233]-(x[123]*x[209]+x[124]*x[212]+x[125]*x[215]+x[126]*x[218]+x[127]*x[221]+x[149]*x[224]+x[150]*x[227]+x[151]*x[230]) == 0.0)
@NLconstraint(m, e103, -(0.95*x[152]*x[189]+x[158]*x[231]) == -6000.0)
@NLconstraint(m, e104, -(0.95*x[154]*x[196]+x[158]*x[232]) == -6500.0)
@NLconstraint(m, e105, -(0.95*x[153]*x[194]+x[158]*x[233]) == -5000.0)
@constraint(m, e106, -40*b[58]+x[128] <= 0.0)
@constraint(m, e107, -50*b[59]+x[129] <= 0.0)
@constraint(m, e108, -60*b[60]+x[130] <= 0.0)
@constraint(m, e109, -70*b[61]+x[131] <= 0.0)
@constraint(m, e110, -80*b[62]+x[132] <= 0.0)
@constraint(m, e111, -40*b[63]+x[133] <= 0.0)
@constraint(m, e112, -50*b[64]+x[134] <= 0.0)
@constraint(m, e113, -60*b[65]+x[135] <= 0.0)
@constraint(m, e114, -70*b[66]+x[136] <= 0.0)
@constraint(m, e115, -80*b[67]+x[137] <= 0.0)
@constraint(m, e116, -40*b[68]+x[138] <= 0.0)
@constraint(m, e117, -50*b[69]+x[139] <= 0.0)
@constraint(m, e118, -60*b[70]+x[140] <= 0.0)
@constraint(m, e119, -70*b[71]+x[141] <= 0.0)
@constraint(m, e120, -80*b[72]+x[142] <= 0.0)
@constraint(m, e121, -x[128] <= 0.0)
@constraint(m, e122, -x[129] <= 0.0)
@constraint(m, e123, -x[130] <= 0.0)
@constraint(m, e124, -x[131] <= 0.0)
@constraint(m, e125, -x[132] <= 0.0)
@constraint(m, e126, -x[133] <= 0.0)
@constraint(m, e127, -x[134] <= 0.0)
@constraint(m, e128, -x[135] <= 0.0)
@constraint(m, e129, -x[136] <= 0.0)
@constraint(m, e130, -x[137] <= 0.0)
@constraint(m, e131, -x[138] <= 0.0)
@constraint(m, e132, -x[139] <= 0.0)
@constraint(m, e133, -x[140] <= 0.0)
@constraint(m, e134, -x[141] <= 0.0)
@constraint(m, e135, -x[142] <= 0.0)
@constraint(m, e136, -40*b[9]+x[88] <= 0.0)
@constraint(m, e137, -40*b[10]+x[89] <= 0.0)
@constraint(m, e138, -40*b[11]+x[90] <= 0.0)
@constraint(m, e139, -40*b[12]+x[91] <= 0.0)
@constraint(m, e140, -40*b[13]+x[92] <= 0.0)
@constraint(m, e141, -50*b[14]+x[93] <= 0.0)
@constraint(m, e142, -50*b[15]+x[94] <= 0.0)
@constraint(m, e143, -50*b[16]+x[95] <= 0.0)
@constraint(m, e144, -40*b[17]+x[96] <= 0.0)
@constraint(m, e145, -50*b[18]+x[97] <= 0.0)
@constraint(m, e146, -60*b[19]+x[98] <= 0.0)
@constraint(m, e147, -60*b[20]+x[99] <= 0.0)
@constraint(m, e148, -40*b[21]+x[100] <= 0.0)
@constraint(m, e149, -50*b[22]+x[101] <= 0.0)
@constraint(m, e150, -60*b[23]+x[102] <= 0.0)
@constraint(m, e151, -70*b[24]+x[103] <= 0.0)
@constraint(m, e152, -40*b[25]+x[104] <= 0.0)
@constraint(m, e153, -50*b[26]+x[105] <= 0.0)
@constraint(m, e154, -60*b[27]+x[106] <= 0.0)
@constraint(m, e155, -70*b[28]+x[107] <= 0.0)
@constraint(m, e156, -x[88] <= 0.0)
@constraint(m, e157, -x[89] <= 0.0)
@constraint(m, e158, -x[90] <= 0.0)
@constraint(m, e159, -x[91] <= 0.0)
@constraint(m, e160, -x[92] <= 0.0)
@constraint(m, e161, -x[93] <= 0.0)
@constraint(m, e162, -x[94] <= 0.0)
@constraint(m, e163, -x[95] <= 0.0)
@constraint(m, e164, -x[96] <= 0.0)
@constraint(m, e165, -x[97] <= 0.0)
@constraint(m, e166, -x[98] <= 0.0)
@constraint(m, e167, -x[99] <= 0.0)
@constraint(m, e168, -x[100] <= 0.0)
@constraint(m, e169, -x[101] <= 0.0)
@constraint(m, e170, -x[102] <= 0.0)
@constraint(m, e171, -x[103] <= 0.0)
@constraint(m, e172, -x[104] <= 0.0)
@constraint(m, e173, -x[105] <= 0.0)
@constraint(m, e174, -x[106] <= 0.0)
@constraint(m, e175, -x[107] <= 0.0)
@constraint(m, e176, -40*b[29]+x[108] <= 0.0)
@constraint(m, e177, -40*b[30]+x[109] <= 0.0)
@constraint(m, e178, -40*b[31]+x[110] <= 0.0)
@constraint(m, e179, -50*b[32]+x[111] <= 0.0)
@constraint(m, e180, -50*b[33]+x[112] <= 0.0)
@constraint(m, e181, -50*b[34]+x[113] <= 0.0)
@constraint(m, e182, -60*b[35]+x[114] <= 0.0)
@constraint(m, e183, -60*b[36]+x[115] <= 0.0)
@constraint(m, e184, -60*b[37]+x[116] <= 0.0)
@constraint(m, e185, -70*b[38]+x[117] <= 0.0)
@constraint(m, e186, -70*b[39]+x[118] <= 0.0)
@constraint(m, e187, -70*b[40]+x[119] <= 0.0)
@constraint(m, e188, -80*b[41]+x[120] <= 0.0)
@constraint(m, e189, -80*b[42]+x[121] <= 0.0)
@constraint(m, e190, -80*b[43]+x[122] <= 0.0)
@constraint(m, e191, -x[108] <= 0.0)
@constraint(m, e192, -x[109] <= 0.0)
@constraint(m, e193, -x[110] <= 0.0)
@constraint(m, e194, -x[111] <= 0.0)
@constraint(m, e195, -x[112] <= 0.0)
@constraint(m, e196, -x[113] <= 0.0)
@constraint(m, e197, -x[114] <= 0.0)
@constraint(m, e198, -x[115] <= 0.0)
@constraint(m, e199, -x[116] <= 0.0)
@constraint(m, e200, -x[117] <= 0.0)
@constraint(m, e201, -x[118] <= 0.0)
@constraint(m, e202, -x[119] <= 0.0)
@constraint(m, e203, -x[120] <= 0.0)
@constraint(m, e204, -x[121] <= 0.0)
@constraint(m, e205, -x[122] <= 0.0)
@constraint(m, e206, -40*b[44]+x[123] <= 0.0)
@constraint(m, e207, -50*b[45]+x[124] <= 0.0)
@constraint(m, e208, -60*b[46]+x[125] <= 0.0)
@constraint(m, e209, -70*b[47]+x[126] <= 0.0)
@constraint(m, e210, -80*b[48]+x[127] <= 0.0)
@constraint(m, e211, -x[123] <= 0.0)
@constraint(m, e212, -x[124] <= 0.0)
@constraint(m, e213, -x[125] <= 0.0)
@constraint(m, e214, -x[126] <= 0.0)
@constraint(m, e215, -x[127] <= 0.0)
@constraint(m, e216, -300*b[49]+x[149] <= 0.0)
@constraint(m, e217, -300*b[50]+x[150] <= 0.0)
@constraint(m, e218, -300*b[51]+x[151] <= 0.0)
@constraint(m, e219, -x[149] <= 0.0)
@constraint(m, e220, -x[150] <= 0.0)
@constraint(m, e221, -x[151] <= 0.0)
@constraint(m, e222, -300*b[52]+x[143] <= 0.0)
@constraint(m, e223, -300*b[53]+x[144] <= 0.0)
@constraint(m, e224, -300*b[54]+x[145] <= 0.0)
@constraint(m, e225, -300*b[55]+x[146] <= 0.0)
@constraint(m, e226, -300*b[56]+x[147] <= 0.0)
@constraint(m, e227, -300*b[57]+x[148] <= 0.0)
@constraint(m, e228, -x[143] <= 0.0)
@constraint(m, e229, -x[144] <= 0.0)
@constraint(m, e230, -x[145] <= 0.0)
@constraint(m, e231, -x[146] <= 0.0)
@constraint(m, e232, -x[147] <= 0.0)
@constraint(m, e233, -x[148] <= 0.0)
@constraint(m, e234, -40*b[1]+x[75] <= 0.0)
@constraint(m, e235, -50*b[2]+x[76] <= 0.0)
@constraint(m, e236, -60*b[3]+x[77] <= 0.0)
@constraint(m, e237, -70*b[4]+x[78] <= 0.0)
@constraint(m, e238, -80*b[5]+x[79] <= 0.0)
@constraint(m, e239, -x[75] <= 0.0)
@constraint(m, e240, -x[76] <= 0.0)
@constraint(m, e241, -x[77] <= 0.0)
@constraint(m, e242, -x[78] <= 0.0)
@constraint(m, e243, -x[79] <= 0.0)
@constraint(m, e244, -300*b[6]+x[80] <= 0.0)
@constraint(m, e245, -300*b[7]+x[81] <= 0.0)
@constraint(m, e246, -300*b[8]+x[82] <= 0.0)
@constraint(m, e247, -x[80] <= 0.0)
@constraint(m, e248, -x[81] <= 0.0)
@constraint(m, e249, -x[82] <= 0.0)
@constraint(m, e250, b[1]+b[2]+b[3]+b[4]+b[5]+b[6]+b[7]+b[8]+b[9]+b[10]+b[11]+b[12]+b[13]+b[14]+b[15]+b[16]+b[17]+b[18]+b[19]+b[20]+b[21]+b[22]+b[23]+b[24]+b[25]+b[26]+b[27]+b[28]+b[29]+b[30]+b[31]+b[32]+b[33]+b[34]+b[35]+b[36]+b[37]+b[38]+b[39]+b[40]+b[41]+b[42]+b[43]+b[44]+b[45]+b[46]+b[47]+b[48]+b[49]+b[50]+b[51]+b[52]+b[53]+b[54]+b[55]+b[56]+b[57]+b[58]+b[59]+b[60]+b[61]+b[62]+b[63]+b[64]+b[65]+b[66]+b[67]+b[68]+b[69]+b[70]+b[71]+b[72] <= 72.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
