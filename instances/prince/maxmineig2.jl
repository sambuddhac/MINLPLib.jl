using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200]
@variable(m, x[x_Idx])
setlowerbound(x[101], 1.0e-8)
setlowerbound(x[102], 1.0e-8)
setlowerbound(x[103], 1.0e-8)
setlowerbound(x[104], 1.0e-8)
setlowerbound(x[105], 1.0e-8)
setlowerbound(x[106], 1.0e-8)
setlowerbound(x[107], 1.0e-8)
setlowerbound(x[108], 1.0e-8)
setlowerbound(x[109], 1.0e-8)
setlowerbound(x[110], 1.0e-8)
setlowerbound(x[111], 1.0e-8)
setlowerbound(x[112], 1.0e-8)
setlowerbound(x[113], 1.0e-8)
setlowerbound(x[114], 1.0e-8)
setlowerbound(x[115], 1.0e-8)
setlowerbound(x[116], 1.0e-8)
setlowerbound(x[117], 1.0e-8)
setlowerbound(x[118], 1.0e-8)
setlowerbound(x[119], 1.0e-8)
setlowerbound(x[120], 1.0e-8)
setlowerbound(x[121], 1.0e-8)
setlowerbound(x[122], 1.0e-8)
setlowerbound(x[123], 1.0e-8)
setlowerbound(x[124], 1.0e-8)
setlowerbound(x[125], 1.0e-8)
setlowerbound(x[126], 1.0e-8)
setlowerbound(x[127], 1.0e-8)
setlowerbound(x[128], 1.0e-8)
setlowerbound(x[129], 1.0e-8)
setlowerbound(x[130], 1.0e-8)
setlowerbound(x[131], 1.0e-8)
setlowerbound(x[132], 1.0e-8)
setlowerbound(x[133], 1.0e-8)
setlowerbound(x[134], 1.0e-8)
setlowerbound(x[135], 1.0e-8)
setlowerbound(x[136], 1.0e-8)
setlowerbound(x[137], 1.0e-8)
setlowerbound(x[138], 1.0e-8)
setlowerbound(x[139], 1.0e-8)
setlowerbound(x[140], 1.0e-8)
setlowerbound(x[141], 1.0e-8)
setlowerbound(x[142], 1.0e-8)
setlowerbound(x[143], 1.0e-8)
setlowerbound(x[144], 1.0e-8)
setlowerbound(x[145], 1.0e-8)
setlowerbound(x[146], 1.0e-8)
setlowerbound(x[147], 1.0e-8)
setlowerbound(x[148], 1.0e-8)
setlowerbound(x[149], 1.0e-8)
setlowerbound(x[150], 1.0e-8)
setlowerbound(x[151], 1.0e-8)
setlowerbound(x[152], 1.0e-8)
setlowerbound(x[153], 1.0e-8)
setlowerbound(x[154], 1.0e-8)
setlowerbound(x[155], 1.0e-8)
setlowerbound(x[156], 0.01)
setlowerbound(x[157], 0.01)
setlowerbound(x[158], 0.01)
setlowerbound(x[159], 0.01)
setlowerbound(x[160], 0.01)
setlowerbound(x[161], 0.01)
setlowerbound(x[162], 0.01)
setlowerbound(x[163], 0.01)
setlowerbound(x[164], 0.01)
setlowerbound(x[165], 0.01)
setlowerbound(x[166], 0.01)
setlowerbound(x[167], 0.01)
setlowerbound(x[168], 0.01)
setlowerbound(x[169], 0.01)
setlowerbound(x[170], 0.01)
setlowerbound(x[171], 0.01)
setlowerbound(x[172], 0.01)
setlowerbound(x[173], 0.01)
setlowerbound(x[174], 0.01)
setlowerbound(x[175], 0.01)
setlowerbound(x[176], 0.01)
setlowerbound(x[177], 0.01)
setlowerbound(x[178], 0.01)
setlowerbound(x[179], 0.01)
setlowerbound(x[180], 0.01)
setlowerbound(x[181], 0.01)
setlowerbound(x[182], 0.01)
setlowerbound(x[183], 0.01)
setlowerbound(x[184], 0.01)
setlowerbound(x[185], 0.01)
setlowerbound(x[186], 0.01)
setlowerbound(x[187], 0.01)
setlowerbound(x[188], 0.01)
setlowerbound(x[189], 0.01)
setlowerbound(x[190], 0.01)
setlowerbound(x[191], 0.01)
setlowerbound(x[192], 0.01)
setlowerbound(x[193], 0.01)
setlowerbound(x[194], 0.01)
setlowerbound(x[195], 0.01)
setlowerbound(x[196], 0.01)
setlowerbound(x[197], 0.01)
setlowerbound(x[198], 0.01)
setlowerbound(x[199], 0.01)
setlowerbound(x[200], 0.01)


# ----- Constraints ----- #
@constraint(m, e1, -0.1*x[1]+2*x[2]+2*x[3]+2*x[4]+2*x[5]+2*x[6]+2*x[7]+2*x[8]+2*x[9]+2*x[10]-0.1*x[12]+2*x[13]+2*x[14]+2*x[15]+2*x[16]+2*x[17]+2*x[18]+2*x[19]+2*x[20]-0.1*x[23]+2*x[24]+2*x[25]+2*x[26]+2*x[27]+2*x[28]+2*x[29]+2*x[30]-0.1*x[34]+2*x[35]+2*x[36]+2*x[37]+2*x[38]+2*x[39]+2*x[40]-0.1*x[45]+2*x[46]+2*x[47]+2*x[48]+2*x[49]+2*x[50]-0.1*x[56]+2*x[57]+2*x[58]+2*x[59]+2*x[60]-0.1*x[67]+2*x[68]+2*x[69]+2*x[70]-0.1*x[78]+2*x[79]+2*x[80]-0.1*x[89]+2*x[90]-0.1*x[100] == 0.0)
@constraint(m, e2, -0.1*x[1]+2*x[2]+2*x[3]+2*x[4]+2*x[5]+2*x[6]+2*x[7]+2*x[8]+2*x[9]+2*x[10]-0.1*x[12]+2*x[13]+2*x[14]+2*x[15]+2*x[16]+2*x[17]+2*x[18]+2*x[19]+2*x[20]-0.1*x[23]+2*x[24]+2*x[25]+2*x[26]+2*x[27]+2*x[28]+2*x[29]+2*x[30]-0.1*x[34]+2*x[35]+2*x[36]+2*x[37]+2*x[38]+2*x[39]+2*x[40]-0.1*x[45]+2*x[46]+2*x[47]+2*x[48]+2*x[49]+2*x[50]-0.1*x[56]+2*x[57]+2*x[58]+2*x[59]+2*x[60]-0.1*x[67]+2*x[68]+2*x[69]+2*x[70]-0.1*x[78]+2*x[79]+2*x[80]-0.1*x[89]+2*x[90]-0.1*x[100] == 0.0)
@constraint(m, e3, -0.1*x[1]+2*x[2]+2*x[3]+2*x[4]+2*x[5]+2*x[6]+2*x[7]+2*x[8]+2*x[9]+2*x[10]-0.1*x[12]+2*x[13]+2*x[14]+2*x[15]+2*x[16]+2*x[17]+2*x[18]+2*x[19]+2*x[20]-0.1*x[23]+2*x[24]+2*x[25]+2*x[26]+2*x[27]+2*x[28]+2*x[29]+2*x[30]-0.1*x[34]+2*x[35]+2*x[36]+2*x[37]+2*x[38]+2*x[39]+2*x[40]-0.1*x[45]+2*x[46]+2*x[47]+2*x[48]+2*x[49]+2*x[50]-0.1*x[56]+2*x[57]+2*x[58]+2*x[59]+2*x[60]-0.1*x[67]+2*x[68]+2*x[69]+2*x[70]-0.1*x[78]+2*x[79]+2*x[80]-0.1*x[89]+2*x[90]-0.1*x[100] == 0.0)
@constraint(m, e4, -0.1*x[1]+2*x[2]+2*x[3]+2*x[4]+2*x[5]+2*x[6]+2*x[7]+2*x[8]+2*x[9]+2*x[10]-0.1*x[12]+2*x[13]+2*x[14]+2*x[15]+2*x[16]+2*x[17]+2*x[18]+2*x[19]+2*x[20]-0.1*x[23]+2*x[24]+2*x[25]+2*x[26]+2*x[27]+2*x[28]+2*x[29]+2*x[30]-0.1*x[34]+2*x[35]+2*x[36]+2*x[37]+2*x[38]+2*x[39]+2*x[40]-0.1*x[45]+2*x[46]+2*x[47]+2*x[48]+2*x[49]+2*x[50]-0.1*x[56]+2*x[57]+2*x[58]+2*x[59]+2*x[60]-0.1*x[67]+2*x[68]+2*x[69]+2*x[70]-0.1*x[78]+2*x[79]+2*x[80]-0.1*x[89]+2*x[90]-0.1*x[100] == 0.0)
@constraint(m, e5, -0.1*x[1]+2*x[2]+2*x[3]+2*x[4]+2*x[5]+2*x[6]+2*x[7]+2*x[8]+2*x[9]+2*x[10]-0.1*x[12]+2*x[13]+2*x[14]+2*x[15]+2*x[16]+2*x[17]+2*x[18]+2*x[19]+2*x[20]-0.1*x[23]+2*x[24]+2*x[25]+2*x[26]+2*x[27]+2*x[28]+2*x[29]+2*x[30]-0.1*x[34]+2*x[35]+2*x[36]+2*x[37]+2*x[38]+2*x[39]+2*x[40]-0.1*x[45]+2*x[46]+2*x[47]+2*x[48]+2*x[49]+2*x[50]-0.1*x[56]+2*x[57]+2*x[58]+2*x[59]+2*x[60]-0.1*x[67]+2*x[68]+2*x[69]+2*x[70]-0.1*x[78]+2*x[79]+2*x[80]-0.1*x[89]+2*x[90]-0.1*x[100] == 0.0)
@constraint(m, e6, -0.1*x[1]+2*x[2]+2*x[3]+2*x[4]+2*x[5]+2*x[6]+2*x[7]+2*x[8]+2*x[9]+2*x[10]-0.1*x[12]+2*x[13]+2*x[14]+2*x[15]+2*x[16]+2*x[17]+2*x[18]+2*x[19]+2*x[20]-0.1*x[23]+2*x[24]+2*x[25]+2*x[26]+2*x[27]+2*x[28]+2*x[29]+2*x[30]-0.1*x[34]+2*x[35]+2*x[36]+2*x[37]+2*x[38]+2*x[39]+2*x[40]-0.1*x[45]+2*x[46]+2*x[47]+2*x[48]+2*x[49]+2*x[50]-0.1*x[56]+2*x[57]+2*x[58]+2*x[59]+2*x[60]-0.1*x[67]+2*x[68]+2*x[69]+2*x[70]-0.1*x[78]+2*x[79]+2*x[80]-0.1*x[89]+2*x[90]-0.1*x[100] == 0.0)
@constraint(m, e7, -0.1*x[1]+2*x[2]+2*x[3]+2*x[4]+2*x[5]+2*x[6]+2*x[7]+2*x[8]+2*x[9]+2*x[10]-0.1*x[12]+2*x[13]+2*x[14]+2*x[15]+2*x[16]+2*x[17]+2*x[18]+2*x[19]+2*x[20]-0.1*x[23]+2*x[24]+2*x[25]+2*x[26]+2*x[27]+2*x[28]+2*x[29]+2*x[30]-0.1*x[34]+2*x[35]+2*x[36]+2*x[37]+2*x[38]+2*x[39]+2*x[40]-0.1*x[45]+2*x[46]+2*x[47]+2*x[48]+2*x[49]+2*x[50]-0.1*x[56]+2*x[57]+2*x[58]+2*x[59]+2*x[60]-0.1*x[67]+2*x[68]+2*x[69]+2*x[70]-0.1*x[78]+2*x[79]+2*x[80]-0.1*x[89]+2*x[90]-0.1*x[100] == 0.0)
@constraint(m, e8, -0.1*x[1]+2*x[2]+2*x[3]+2*x[4]+2*x[5]+2*x[6]+2*x[7]+2*x[8]+2*x[9]+2*x[10]-0.1*x[12]+2*x[13]+2*x[14]+2*x[15]+2*x[16]+2*x[17]+2*x[18]+2*x[19]+2*x[20]-0.1*x[23]+2*x[24]+2*x[25]+2*x[26]+2*x[27]+2*x[28]+2*x[29]+2*x[30]-0.1*x[34]+2*x[35]+2*x[36]+2*x[37]+2*x[38]+2*x[39]+2*x[40]-0.1*x[45]+2*x[46]+2*x[47]+2*x[48]+2*x[49]+2*x[50]-0.1*x[56]+2*x[57]+2*x[58]+2*x[59]+2*x[60]-0.1*x[67]+2*x[68]+2*x[69]+2*x[70]-0.1*x[78]+2*x[79]+2*x[80]-0.1*x[89]+2*x[90]-0.1*x[100] == 0.0)
@constraint(m, e9, -0.1*x[1]+2*x[2]+2*x[3]+2*x[4]+2*x[5]+2*x[6]+2*x[7]+2*x[8]+2*x[9]+2*x[10]-0.1*x[12]+2*x[13]+2*x[14]+2*x[15]+2*x[16]+2*x[17]+2*x[18]+2*x[19]+2*x[20]-0.1*x[23]+2*x[24]+2*x[25]+2*x[26]+2*x[27]+2*x[28]+2*x[29]+2*x[30]-0.1*x[34]+2*x[35]+2*x[36]+2*x[37]+2*x[38]+2*x[39]+2*x[40]-0.1*x[45]+2*x[46]+2*x[47]+2*x[48]+2*x[49]+2*x[50]-0.1*x[56]+2*x[57]+2*x[58]+2*x[59]+2*x[60]-0.1*x[67]+2*x[68]+2*x[69]+2*x[70]-0.1*x[78]+2*x[79]+2*x[80]-0.1*x[89]+2*x[90]-0.1*x[100] == 0.0)
@constraint(m, e10, -0.1*x[1]+2*x[2]+2*x[3]+2*x[4]+2*x[5]+2*x[6]+2*x[7]+2*x[8]+2*x[9]+2*x[10]-0.1*x[12]+2*x[13]+2*x[14]+2*x[15]+2*x[16]+2*x[17]+2*x[18]+2*x[19]+2*x[20]-0.1*x[23]+2*x[24]+2*x[25]+2*x[26]+2*x[27]+2*x[28]+2*x[29]+2*x[30]-0.1*x[34]+2*x[35]+2*x[36]+2*x[37]+2*x[38]+2*x[39]+2*x[40]-0.1*x[45]+2*x[46]+2*x[47]+2*x[48]+2*x[49]+2*x[50]-0.1*x[56]+2*x[57]+2*x[58]+2*x[59]+2*x[60]-0.1*x[67]+2*x[68]+2*x[69]+2*x[70]-0.1*x[78]+2*x[79]+2*x[80]-0.1*x[89]+2*x[90]+0.9*x[100] == 0.0)
@constraint(m, e11, x[1]+2*x[2]+2*x[3]+2*x[4]+2*x[5]+2*x[6]+2*x[7]+2*x[8]+2*x[9]+2*x[10]+x[12]+2*x[13]+2*x[14]+2*x[15]+2*x[16]+2*x[17]+2*x[18]+2*x[19]+2*x[20]+x[23]+2*x[24]+2*x[25]+2*x[26]+2*x[27]+2*x[28]+2*x[29]+2*x[30]+x[34]+2*x[35]+2*x[36]+2*x[37]+2*x[38]+2*x[39]+2*x[40]+x[45]+2*x[46]+2*x[47]+2*x[48]+2*x[49]+2*x[50]+x[56]+2*x[57]+2*x[58]+2*x[59]+2*x[60]+x[67]+2*x[68]+2*x[69]+2*x[70]+x[78]+2*x[79]+2*x[80]+x[89]+2*x[90]+x[100] == 1.0)
@constraint(m, e12, -x[1]+x[101] == 0.0)
@constraint(m, e13, -x[11]+x[102] == 0.0)
@NLconstraint(m, e14, x[102]*x[156]-x[12]+x[103] == 0.0)
@constraint(m, e15, -x[21]+x[104] == 0.0)
@NLconstraint(m, e16, x[104]*x[156]-x[22]+x[105] == 0.0)
@NLconstraint(m, e17, x[104]*x[157]+x[105]*x[165]-x[23]+x[106] == 0.0)
@constraint(m, e18, -x[31]+x[107] == 0.0)
@NLconstraint(m, e19, x[107]*x[156]-x[32]+x[108] == 0.0)
@NLconstraint(m, e20, x[107]*x[157]+x[108]*x[165]-x[33]+x[109] == 0.0)
@NLconstraint(m, e21, x[107]*x[158]+x[108]*x[166]+x[109]*x[173]-x[34]+x[110] == 0.0)
@constraint(m, e22, -x[41]+x[111] == 0.0)
@NLconstraint(m, e23, x[111]*x[156]-x[42]+x[112] == 0.0)
@NLconstraint(m, e24, x[111]*x[157]+x[112]*x[165]-x[43]+x[113] == 0.0)
@NLconstraint(m, e25, x[111]*x[158]+x[112]*x[166]+x[113]*x[173]-x[44]+x[114] == 0.0)
@NLconstraint(m, e26, x[111]*x[159]+x[112]*x[167]+x[113]*x[174]+x[114]*x[180]-x[45]+x[115] == 0.0)
@constraint(m, e27, -x[51]+x[116] == 0.0)
@NLconstraint(m, e28, x[116]*x[156]-x[52]+x[117] == 0.0)
@NLconstraint(m, e29, x[116]*x[157]+x[117]*x[165]-x[53]+x[118] == 0.0)
@NLconstraint(m, e30, x[116]*x[158]+x[117]*x[166]+x[118]*x[173]-x[54]+x[119] == 0.0)
@NLconstraint(m, e31, x[116]*x[159]+x[117]*x[167]+x[118]*x[174]+x[119]*x[180]-x[55]+x[120] == 0.0)
@NLconstraint(m, e32, x[116]*x[160]+x[117]*x[168]+x[118]*x[175]+x[119]*x[181]+x[120]*x[186]-x[56]+x[121] == 0.0)
@constraint(m, e33, -x[61]+x[122] == 0.0)
@NLconstraint(m, e34, x[122]*x[156]-x[62]+x[123] == 0.0)
@NLconstraint(m, e35, x[122]*x[157]+x[123]*x[165]-x[63]+x[124] == 0.0)
@NLconstraint(m, e36, x[122]*x[158]+x[123]*x[166]+x[124]*x[173]-x[64]+x[125] == 0.0)
@NLconstraint(m, e37, x[122]*x[159]+x[123]*x[167]+x[124]*x[174]+x[125]*x[180]-x[65]+x[126] == 0.0)
@NLconstraint(m, e38, x[122]*x[160]+x[123]*x[168]+x[124]*x[175]+x[125]*x[181]+x[126]*x[186]-x[66]+x[127] == 0.0)
@NLconstraint(m, e39, x[122]*x[161]+x[123]*x[169]+x[124]*x[176]+x[125]*x[182]+x[126]*x[187]+x[127]*x[191]-x[67]+x[128] == 0.0)
@constraint(m, e40, -x[71]+x[129] == 0.0)
@NLconstraint(m, e41, x[129]*x[156]-x[72]+x[130] == 0.0)
@NLconstraint(m, e42, x[129]*x[157]+x[130]*x[165]-x[73]+x[131] == 0.0)
@NLconstraint(m, e43, x[129]*x[158]+x[130]*x[166]+x[131]*x[173]-x[74]+x[132] == 0.0)
@NLconstraint(m, e44, x[129]*x[159]+x[130]*x[167]+x[131]*x[174]+x[132]*x[180]-x[75]+x[133] == 0.0)
@NLconstraint(m, e45, x[129]*x[160]+x[130]*x[168]+x[131]*x[175]+x[132]*x[181]+x[133]*x[186]-x[76]+x[134] == 0.0)
@NLconstraint(m, e46, x[129]*x[161]+x[130]*x[169]+x[131]*x[176]+x[132]*x[182]+x[133]*x[187]+x[134]*x[191]-x[77]+x[135] == 0.0)
@NLconstraint(m, e47, x[129]*x[162]+x[130]*x[170]+x[131]*x[177]+x[132]*x[183]+x[133]*x[188]+x[134]*x[192]+x[135]*x[195]-x[78]+x[136] == 0.0)
@constraint(m, e48, -x[81]+x[137] == 0.0)
@NLconstraint(m, e49, x[137]*x[156]-x[82]+x[138] == 0.0)
@NLconstraint(m, e50, x[137]*x[157]+x[138]*x[165]-x[83]+x[139] == 0.0)
@NLconstraint(m, e51, x[137]*x[158]+x[138]*x[166]+x[139]*x[173]-x[84]+x[140] == 0.0)
@NLconstraint(m, e52, x[137]*x[159]+x[138]*x[167]+x[139]*x[174]+x[140]*x[180]-x[85]+x[141] == 0.0)
@NLconstraint(m, e53, x[137]*x[160]+x[138]*x[168]+x[139]*x[175]+x[140]*x[181]+x[141]*x[186]-x[86]+x[142] == 0.0)
@NLconstraint(m, e54, x[137]*x[161]+x[138]*x[169]+x[139]*x[176]+x[140]*x[182]+x[141]*x[187]+x[142]*x[191]-x[87]+x[143] == 0.0)
@NLconstraint(m, e55, x[137]*x[162]+x[138]*x[170]+x[139]*x[177]+x[140]*x[183]+x[141]*x[188]+x[142]*x[192]+x[143]*x[195]-x[88]+x[144] == 0.0)
@NLconstraint(m, e56, x[137]*x[163]+x[138]*x[171]+x[139]*x[178]+x[140]*x[184]+x[141]*x[189]+x[142]*x[193]+x[143]*x[196]+x[144]*x[198]-x[89]+x[145] == 0.0)
@constraint(m, e57, -x[91]+x[146] == 0.0)
@NLconstraint(m, e58, x[146]*x[156]-x[92]+x[147] == 0.0)
@NLconstraint(m, e59, x[146]*x[157]+x[147]*x[165]-x[93]+x[148] == 0.0)
@NLconstraint(m, e60, x[146]*x[158]+x[147]*x[166]+x[148]*x[173]-x[94]+x[149] == 0.0)
@NLconstraint(m, e61, x[146]*x[159]+x[147]*x[167]+x[148]*x[174]+x[149]*x[180]-x[95]+x[150] == 0.0)
@NLconstraint(m, e62, x[146]*x[160]+x[147]*x[168]+x[148]*x[175]+x[149]*x[181]+x[150]*x[186]-x[96]+x[151] == 0.0)
@NLconstraint(m, e63, x[146]*x[161]+x[147]*x[169]+x[148]*x[176]+x[149]*x[182]+x[150]*x[187]+x[151]*x[191]-x[97]+x[152] == 0.0)
@NLconstraint(m, e64, x[146]*x[162]+x[147]*x[170]+x[148]*x[177]+x[149]*x[183]+x[150]*x[188]+x[151]*x[192]+x[152]*x[195]-x[98]+x[153] == 0.0)
@NLconstraint(m, e65, x[146]*x[163]+x[147]*x[171]+x[148]*x[178]+x[149]*x[184]+x[150]*x[189]+x[151]*x[193]+x[152]*x[196]+x[153]*x[198]-x[99]+x[154] == 0.0)
@NLconstraint(m, e66, x[146]*x[164]+x[147]*x[172]+x[148]*x[179]+x[149]*x[185]+x[150]*x[190]+x[151]*x[194]+x[152]*x[197]+x[153]*x[199]+x[154]*x[200]-x[100]+x[155] == 0.0)
@NLconstraint(m, e67, x[101]*x[156]-x[2] == 0.0)
@NLconstraint(m, e68, x[101]*x[157]-x[3] == 0.0)
@NLconstraint(m, e69, x[101]*x[158]-x[4] == 0.0)
@NLconstraint(m, e70, x[101]*x[159]-x[5] == 0.0)
@NLconstraint(m, e71, x[101]*x[160]-x[6] == 0.0)
@NLconstraint(m, e72, x[101]*x[161]-x[7] == 0.0)
@NLconstraint(m, e73, x[101]*x[162]-x[8] == 0.0)
@NLconstraint(m, e74, x[101]*x[163]-x[9] == 0.0)
@NLconstraint(m, e75, x[101]*x[164]-x[10] == 0.0)
@NLconstraint(m, e76, x[103]*x[165]-x[13] == 0.0)
@NLconstraint(m, e77, x[103]*x[166]-x[14] == 0.0)
@NLconstraint(m, e78, x[103]*x[167]-x[15] == 0.0)
@NLconstraint(m, e79, x[103]*x[168]-x[16] == 0.0)
@NLconstraint(m, e80, x[103]*x[169]-x[17] == 0.0)
@NLconstraint(m, e81, x[103]*x[170]-x[18] == 0.0)
@NLconstraint(m, e82, x[103]*x[171]-x[19] == 0.0)
@NLconstraint(m, e83, x[103]*x[172]-x[20] == 0.0)
@NLconstraint(m, e84, x[106]*x[173]+x[104]*x[158]-x[24] == 0.0)
@NLconstraint(m, e85, x[106]*x[174]+x[104]*x[159]-x[25] == 0.0)
@NLconstraint(m, e86, x[106]*x[175]+x[104]*x[160]-x[26] == 0.0)
@NLconstraint(m, e87, x[106]*x[176]+x[104]*x[161]-x[27] == 0.0)
@NLconstraint(m, e88, x[106]*x[177]+x[104]*x[162]-x[28] == 0.0)
@NLconstraint(m, e89, x[106]*x[178]+x[104]*x[163]-x[29] == 0.0)
@NLconstraint(m, e90, x[106]*x[179]+x[104]*x[164]-x[30] == 0.0)
@NLconstraint(m, e91, x[110]*x[180]+x[107]*x[159]+x[108]*x[167]-x[35] == 0.0)
@NLconstraint(m, e92, x[110]*x[181]+x[107]*x[160]+x[108]*x[168]-x[36] == 0.0)
@NLconstraint(m, e93, x[110]*x[182]+x[107]*x[161]+x[108]*x[169]-x[37] == 0.0)
@NLconstraint(m, e94, x[110]*x[183]+x[107]*x[162]+x[108]*x[170]-x[38] == 0.0)
@NLconstraint(m, e95, x[110]*x[184]+x[107]*x[163]+x[108]*x[171]-x[39] == 0.0)
@NLconstraint(m, e96, x[110]*x[185]+x[107]*x[164]+x[108]*x[172]-x[40] == 0.0)
@NLconstraint(m, e97, x[115]*x[186]+x[111]*x[160]+x[112]*x[168]+x[113]*x[175]-x[46] == 0.0)
@NLconstraint(m, e98, x[115]*x[187]+x[111]*x[161]+x[112]*x[169]+x[113]*x[176]-x[47] == 0.0)
@NLconstraint(m, e99, x[115]*x[188]+x[111]*x[162]+x[112]*x[170]+x[113]*x[177]-x[48] == 0.0)
@NLconstraint(m, e100, x[115]*x[189]+x[111]*x[163]+x[112]*x[171]+x[113]*x[178]-x[49] == 0.0)
@NLconstraint(m, e101, x[115]*x[190]+x[111]*x[164]+x[112]*x[172]+x[113]*x[179]-x[50] == 0.0)
@NLconstraint(m, e102, x[121]*x[191]+x[116]*x[161]+x[117]*x[169]+x[118]*x[176]+x[119]*x[182]-x[57] == 0.0)
@NLconstraint(m, e103, x[121]*x[192]+x[116]*x[162]+x[117]*x[170]+x[118]*x[177]+x[119]*x[183]-x[58] == 0.0)
@NLconstraint(m, e104, x[121]*x[193]+x[116]*x[163]+x[117]*x[171]+x[118]*x[178]+x[119]*x[184]-x[59] == 0.0)
@NLconstraint(m, e105, x[121]*x[194]+x[116]*x[164]+x[117]*x[172]+x[118]*x[179]+x[119]*x[185]-x[60] == 0.0)
@NLconstraint(m, e106, x[128]*x[195]+x[122]*x[162]+x[123]*x[170]+x[124]*x[177]+x[125]*x[183]+x[126]*x[188]-x[68] == 0.0)
@NLconstraint(m, e107, x[128]*x[196]+x[122]*x[163]+x[123]*x[171]+x[124]*x[178]+x[125]*x[184]+x[126]*x[189]-x[69] == 0.0)
@NLconstraint(m, e108, x[128]*x[197]+x[122]*x[164]+x[123]*x[172]+x[124]*x[179]+x[125]*x[185]+x[126]*x[190]-x[70] == 0.0)
@NLconstraint(m, e109, x[136]*x[198]+x[129]*x[163]+x[130]*x[171]+x[131]*x[178]+x[132]*x[184]+x[133]*x[189]+x[134]*x[193]-x[79] == 0.0)
@NLconstraint(m, e110, x[136]*x[199]+x[129]*x[164]+x[130]*x[172]+x[131]*x[179]+x[132]*x[185]+x[133]*x[190]+x[134]*x[194]-x[80] == 0.0)
@NLconstraint(m, e111, x[145]*x[200]+x[137]*x[164]+x[138]*x[172]+x[139]*x[179]+x[140]*x[185]+x[141]*x[190]+x[142]*x[194]+x[143]*x[197]-x[90] == 0.0)
@constraint(m, e112, -1.08828*x[2]-1.05718*x[3]-0.228192*x[4]+1.30634*x[5]+0.65168*x[6]+1.260084*x[7]+0.469946*x[8]+0.34633*x[9]-2.809918*x[10]-3.586448*x[12]-0.972156*x[13]+1.285152*x[14]-3.645282*x[15]-0.38707*x[16]-1.048474*x[17]-0.627214*x[18]-3.746396*x[19]+4.027804*x[20]-3.29591*x[23]-4.485358*x[24]+1.217538*x[25]-0.095654*x[26]-0.943638*x[27]+0.621584*x[28]+1.716882*x[29]+2.250502*x[30]-1.323736*x[34]-2.264256*x[35]-0.875896*x[36]-1.144872*x[37]+0.163352*x[38]-0.966758*x[39]-3.761826*x[40]-1.477326*x[45]-1.132984*x[46]+1.461894*x[47]-5.21283*x[48]+3.950838*x[49]-1.46395*x[50]-4.341016*x[56]+1.031632*x[57]+1.94693*x[58]-1.343486*x[59]-1.343322*x[60]-4.430323*x[67]-0.825328*x[68]-0.150462*x[69]-0.956186*x[70]-0.964514*x[78]+0.61663*x[79]-4.296174*x[80]-2.642236*x[89]-3.406506*x[90]-0.266262*x[100]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
