using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[289]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, 9999*b[1]+4*b[2]+2.83*b[3]+9999*b[4]+3.61*b[5]+9999*b[6]+9999*b[7]+9999*b[8]+9999*b[9]+9999*b[10]+9999*b[11]+9999*b[12]+4*b[13]+9999*b[14]+9999*b[15]+2.24*b[16]+9999*b[17]+9999*b[18]+3.61*b[19]+9999*b[20]+9999*b[21]+9999*b[22]+9999*b[23]+9999*b[24]+2.83*b[25]+9999*b[26]+9999*b[27]+b[28]+9999*b[29]+1.41*b[30]+9999*b[31]+9999*b[32]+9999*b[33]+9999*b[34]+9999*b[35]+9999*b[36]+9999*b[37]+2.24*b[38]+b[39]+9999*b[40]+9999*b[41]+9999*b[42]+3.16*b[43]+9999*b[44]+2*b[45]+9999*b[46]+9999*b[47]+9999*b[48]+3.61*b[49]+9999*b[50]+9999*b[51]+9999*b[52]+9999*b[53]+3*b[54]+9999*b[55]+2.24*b[56]+9999*b[57]+9999*b[58]+3*b[59]+9999*b[60]+9999*b[61]+9999*b[62]+1.41*b[63]+9999*b[64]+3*b[65]+9999*b[66]+9999*b[67]+1.41*b[68]+9999*b[69]+2.24*b[70]+9999*b[71]+9999*b[72]+9999*b[73]+3.61*b[74]+9999*b[75]+3.16*b[76]+9999*b[77]+9999*b[78]+9999*b[79]+9999*b[80]+3.16*b[81]+9999*b[82]+9999*b[83]+3.16*b[84]+9999*b[85]+9999*b[86]+9999*b[87]+9999*b[88]+2.24*b[89]+1.41*b[90]+9999*b[91]+9999*b[92]+9999*b[93]+9999*b[94]+2.83*b[95]+9999*b[96]+9999*b[97]+9999*b[98]+9999*b[99]+2*b[100]+9999*b[101]+9999*b[102]+3.16*b[103]+9999*b[104]+9999*b[105]+1.41*b[106]+9999*b[107]+2.83*b[108]+9999*b[109]+9999*b[110]+9999*b[111]+9999*b[112]+9999*b[113]+2.24*b[114]+9999*b[115]+9999*b[116]+1.41*b[117]+9999*b[118]+4.12*b[119]+9999*b[120]+9999*b[121]+9999*b[122]+9999*b[123]+9999*b[124]+3*b[125]+9999*b[126]+9999*b[127]+2.83*b[128]+9999*b[129]+4.12*b[130]+9999*b[131]+7*b[132]+9999*b[133]+9999*b[134]+9999*b[135]+9999*b[136]+9999*b[137]+9999*b[138]+3.16*b[139]+9999*b[140]+2.83*b[141]+9999*b[142]+7*b[143]+9999*b[144]+9999*b[145]+4*b[146]+2.83*b[147]+9999*b[148]+3.61*b[149]+9999*b[150]+9999*b[151]+9999*b[152]+9999*b[153]+9999*b[154]+9999*b[155]+9999*b[156]+4*b[157]+9999*b[158]+9999*b[159]+2.24*b[160]+9999*b[161]+9999*b[162]+3.61*b[163]+9999*b[164]+9999*b[165]+9999*b[166]+9999*b[167]+9999*b[168]+2.83*b[169]+9999*b[170]+9999*b[171]+b[172]+9999*b[173]+1.41*b[174]+9999*b[175]+9999*b[176]+9999*b[177]+9999*b[178]+9999*b[179]+9999*b[180]+9999*b[181]+2.24*b[182]+b[183]+9999*b[184]+9999*b[185]+9999*b[186]+3.16*b[187]+9999*b[188]+2*b[189]+9999*b[190]+9999*b[191]+9999*b[192]+3.61*b[193]+9999*b[194]+9999*b[195]+9999*b[196]+9999*b[197]+3*b[198]+9999*b[199]+2.24*b[200]+9999*b[201]+9999*b[202]+3*b[203]+9999*b[204]+9999*b[205]+9999*b[206]+1.41*b[207]+9999*b[208]+3*b[209]+9999*b[210]+9999*b[211]+1.41*b[212]+9999*b[213]+2.24*b[214]+9999*b[215]+9999*b[216]+9999*b[217]+3.61*b[218]+9999*b[219]+3.16*b[220]+9999*b[221]+9999*b[222]+9999*b[223]+9999*b[224]+3.16*b[225]+9999*b[226]+9999*b[227]+3.16*b[228]+9999*b[229]+9999*b[230]+9999*b[231]+9999*b[232]+2.24*b[233]+1.41*b[234]+9999*b[235]+9999*b[236]+9999*b[237]+9999*b[238]+2.83*b[239]+9999*b[240]+9999*b[241]+9999*b[242]+9999*b[243]+2*b[244]+9999*b[245]+9999*b[246]+3.16*b[247]+9999*b[248]+9999*b[249]+1.41*b[250]+9999*b[251]+2.83*b[252]+9999*b[253]+9999*b[254]+9999*b[255]+9999*b[256]+9999*b[257]+2.24*b[258]+9999*b[259]+9999*b[260]+1.41*b[261]+9999*b[262]+4.12*b[263]+9999*b[264]+9999*b[265]+9999*b[266]+9999*b[267]+9999*b[268]+3*b[269]+9999*b[270]+9999*b[271]+2.83*b[272]+9999*b[273]+4.12*b[274]+9999*b[275]+7*b[276]+9999*b[277]+9999*b[278]+9999*b[279]+9999*b[280]+9999*b[281]+9999*b[282]+3.16*b[283]+9999*b[284]+2.83*b[285]+9999*b[286]+7*b[287]+9999*b[288]-x[289] == 0.0)
@constraint(m, e2, b[49]+b[50]+b[51]+b[52]+b[53]+b[54]+b[55]+b[56]+b[57]+b[58]+b[59]+b[60] == 1.0)
@constraint(m, e3, b[7]+b[19]+b[31]+b[43]+b[55]+b[67]+b[79]+b[91]+b[103]+b[115]+b[127]+b[139] == 1.0)
@constraint(m, e4, b[193]+b[194]+b[195]+b[196]+b[197]+b[198]+b[199]+b[200]+b[201]+b[202]+b[203]+b[204] == 1.0)
@constraint(m, e5, b[151]+b[163]+b[175]+b[187]+b[199]+b[211]+b[223]+b[235]+b[247]+b[259]+b[271]+b[283] == 1.0)
@constraint(m, e6, b[2]+b[14]+b[26]+b[38]+b[50]+b[62]+b[74]+b[86]+b[98]+b[110]+b[122]+b[134]+b[146]+b[158]+b[170]+b[182]+b[194]+b[206]+b[218]+b[230]+b[242]+b[254]+b[266]+b[278] <= 1.0)
@constraint(m, e7, b[3]+b[15]+b[27]+b[39]+b[51]+b[63]+b[75]+b[87]+b[99]+b[111]+b[123]+b[135]+b[147]+b[159]+b[171]+b[183]+b[195]+b[207]+b[219]+b[231]+b[243]+b[255]+b[267]+b[279] <= 1.0)
@constraint(m, e8, b[4]+b[16]+b[28]+b[40]+b[52]+b[64]+b[76]+b[88]+b[100]+b[112]+b[124]+b[136]+b[148]+b[160]+b[172]+b[184]+b[196]+b[208]+b[220]+b[232]+b[244]+b[256]+b[268]+b[280] <= 1.0)
@constraint(m, e9, b[5]+b[17]+b[29]+b[41]+b[53]+b[65]+b[77]+b[89]+b[101]+b[113]+b[125]+b[137]+b[149]+b[161]+b[173]+b[185]+b[197]+b[209]+b[221]+b[233]+b[245]+b[257]+b[269]+b[281] <= 1.0)
@constraint(m, e10, b[6]+b[18]+b[30]+b[42]+b[54]+b[66]+b[78]+b[90]+b[102]+b[114]+b[126]+b[138]+b[150]+b[162]+b[174]+b[186]+b[198]+b[210]+b[222]+b[234]+b[246]+b[258]+b[270]+b[282] <= 1.0)
@constraint(m, e11, b[7]+b[19]+b[31]+b[43]+b[55]+b[67]+b[79]+b[91]+b[103]+b[115]+b[127]+b[139]+b[151]+b[163]+b[175]+b[187]+b[199]+b[211]+b[223]+b[235]+b[247]+b[259]+b[271]+b[283] <= 1.0)
@constraint(m, e12, b[8]+b[20]+b[32]+b[44]+b[56]+b[68]+b[80]+b[92]+b[104]+b[116]+b[128]+b[140]+b[152]+b[164]+b[176]+b[188]+b[200]+b[212]+b[224]+b[236]+b[248]+b[260]+b[272]+b[284] <= 1.0)
@constraint(m, e13, b[9]+b[21]+b[33]+b[45]+b[57]+b[69]+b[81]+b[93]+b[105]+b[117]+b[129]+b[141]+b[153]+b[165]+b[177]+b[189]+b[201]+b[213]+b[225]+b[237]+b[249]+b[261]+b[273]+b[285] <= 1.0)
@constraint(m, e14, b[10]+b[22]+b[34]+b[46]+b[58]+b[70]+b[82]+b[94]+b[106]+b[118]+b[130]+b[142]+b[154]+b[166]+b[178]+b[190]+b[202]+b[214]+b[226]+b[238]+b[250]+b[262]+b[274]+b[286] <= 1.0)
@constraint(m, e15, b[11]+b[23]+b[35]+b[47]+b[59]+b[71]+b[83]+b[95]+b[107]+b[119]+b[131]+b[143]+b[155]+b[167]+b[179]+b[191]+b[203]+b[215]+b[227]+b[239]+b[251]+b[263]+b[275]+b[287] <= 1.0)
@constraint(m, e16, b[2]-b[13]-b[15]-b[16]-b[17]-b[18]-b[19]-b[20]-b[21]-b[22]-b[23]-b[24]+b[26]+b[38]+b[50]+b[62]+b[74]+b[86]+b[98]+b[110]+b[122]+b[134] == 0.0)
@constraint(m, e17, b[3]+b[15]-b[25]-b[26]-b[28]-b[29]-b[30]-b[31]-b[32]-b[33]-b[34]-b[35]-b[36]+b[39]+b[51]+b[63]+b[75]+b[87]+b[99]+b[111]+b[123]+b[135] == 0.0)
@constraint(m, e18, b[4]+b[16]+b[28]-b[37]-b[38]-b[39]-b[41]-b[42]-b[43]-b[44]-b[45]-b[46]-b[47]-b[48]+b[52]+b[64]+b[76]+b[88]+b[100]+b[112]+b[124]+b[136] == 0.0)
@constraint(m, e19, b[5]+b[17]+b[29]+b[41]-b[49]-b[50]-b[51]-b[52]-b[54]-b[55]-b[56]-b[57]-b[58]-b[59]-b[60]+b[65]+b[77]+b[89]+b[101]+b[113]+b[125]+b[137] == 0.0)
@constraint(m, e20, b[6]+b[18]+b[30]+b[42]+b[54]-b[61]-b[62]-b[63]-b[64]-b[65]-b[67]-b[68]-b[69]-b[70]-b[71]-b[72]+b[78]+b[90]+b[102]+b[114]+b[126]+b[138] == 0.0)
@constraint(m, e21, b[7]+b[19]+b[31]+b[43]+b[55]+b[67]-b[73]-b[74]-b[75]-b[76]-b[77]-b[78]-b[80]-b[81]-b[82]-b[83]-b[84]+b[91]+b[103]+b[115]+b[127]+b[139] == 0.0)
@constraint(m, e22, b[8]+b[20]+b[32]+b[44]+b[56]+b[68]+b[80]-b[85]-b[86]-b[87]-b[88]-b[89]-b[90]-b[91]-b[93]-b[94]-b[95]-b[96]+b[104]+b[116]+b[128]+b[140] == 0.0)
@constraint(m, e23, b[9]+b[21]+b[33]+b[45]+b[57]+b[69]+b[81]+b[93]-b[97]-b[98]-b[99]-b[100]-b[101]-b[102]-b[103]-b[104]-b[106]-b[107]-b[108]+b[117]+b[129]+b[141] == 0.0)
@constraint(m, e24, b[10]+b[22]+b[34]+b[46]+b[58]+b[70]+b[82]+b[94]+b[106]-b[109]-b[110]-b[111]-b[112]-b[113]-b[114]-b[115]-b[116]-b[117]-b[119]-b[120]+b[130]+b[142] == 0.0)
@constraint(m, e25, b[11]+b[23]+b[35]+b[47]+b[59]+b[71]+b[83]+b[95]+b[107]+b[119]-b[121]-b[122]-b[123]-b[124]-b[125]-b[126]-b[127]-b[128]-b[129]-b[130]-b[132]+b[143] == 0.0)
@constraint(m, e26, b[146]-b[157]-b[159]-b[160]-b[161]-b[162]-b[163]-b[164]-b[165]-b[166]-b[167]-b[168]+b[170]+b[182]+b[194]+b[206]+b[218]+b[230]+b[242]+b[254]+b[266]+b[278] == 0.0)
@constraint(m, e27, b[147]+b[159]-b[169]-b[170]-b[172]-b[173]-b[174]-b[175]-b[176]-b[177]-b[178]-b[179]-b[180]+b[183]+b[195]+b[207]+b[219]+b[231]+b[243]+b[255]+b[267]+b[279] == 0.0)
@constraint(m, e28, b[148]+b[160]+b[172]-b[181]-b[182]-b[183]-b[185]-b[186]-b[187]-b[188]-b[189]-b[190]-b[191]-b[192]+b[196]+b[208]+b[220]+b[232]+b[244]+b[256]+b[268]+b[280] == 0.0)
@constraint(m, e29, b[149]+b[161]+b[173]+b[185]-b[193]-b[194]-b[195]-b[196]-b[198]-b[199]-b[200]-b[201]-b[202]-b[203]-b[204]+b[209]+b[221]+b[233]+b[245]+b[257]+b[269]+b[281] == 0.0)
@constraint(m, e30, b[150]+b[162]+b[174]+b[186]+b[198]-b[205]-b[206]-b[207]-b[208]-b[209]-b[211]-b[212]-b[213]-b[214]-b[215]-b[216]+b[222]+b[234]+b[246]+b[258]+b[270]+b[282] == 0.0)
@constraint(m, e31, b[151]+b[163]+b[175]+b[187]+b[199]+b[211]-b[217]-b[218]-b[219]-b[220]-b[221]-b[222]-b[224]-b[225]-b[226]-b[227]-b[228]+b[235]+b[247]+b[259]+b[271]+b[283] == 0.0)
@constraint(m, e32, b[152]+b[164]+b[176]+b[188]+b[200]+b[212]+b[224]-b[229]-b[230]-b[231]-b[232]-b[233]-b[234]-b[235]-b[237]-b[238]-b[239]-b[240]+b[248]+b[260]+b[272]+b[284] == 0.0)
@constraint(m, e33, b[153]+b[165]+b[177]+b[189]+b[201]+b[213]+b[225]+b[237]-b[241]-b[242]-b[243]-b[244]-b[245]-b[246]-b[247]-b[248]-b[250]-b[251]-b[252]+b[261]+b[273]+b[285] == 0.0)
@constraint(m, e34, b[154]+b[166]+b[178]+b[190]+b[202]+b[214]+b[226]+b[238]+b[250]-b[253]-b[254]-b[255]-b[256]-b[257]-b[258]-b[259]-b[260]-b[261]-b[263]-b[264]+b[274]+b[286] == 0.0)
@constraint(m, e35, b[155]+b[167]+b[179]+b[191]+b[203]+b[215]+b[227]+b[239]+b[251]+b[263]-b[265]-b[266]-b[267]-b[268]-b[269]-b[270]-b[271]-b[272]-b[273]-b[274]-b[276]+b[287] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[289])

m = m 		 # model get returned when including this script. 
