using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]
@variable(m, x[x_Idx])
b_Idx = Any[30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204]
@variable(m, b[b_Idx])
set_binary(b[35])
set_binary(b[176])
set_binary(b[133])
set_binary(b[45])
set_binary(b[169])
set_binary(b[196])
set_binary(b[180])
set_binary(b[178])
set_binary(b[64])
set_binary(b[112])
set_binary(b[36])
set_binary(b[130])
set_binary(b[87])
set_binary(b[132])
set_lower_bound(x[3], 0.0)
set_binary(b[119])
set_binary(b[79])
set_binary(b[60])
set_binary(b[159])
set_binary(b[197])
set_binary(b[193])
set_binary(b[39])
set_binary(b[37])
set_binary(b[88])
set_binary(b[50])
set_lower_bound(x[6], 0.0)
set_binary(b[192])
set_binary(b[97])
set_binary(b[200])
set_lower_bound(x[23], 0.0)
set_binary(b[188])
set_binary(b[62])
set_binary(b[113])
set_binary(b[162])
set_binary(b[161])
set_binary(b[199])
set_binary(b[75])
set_binary(b[128])
set_binary(b[167])
set_binary(b[177])
set_binary(b[70])
set_binary(b[163])
set_binary(b[41])
set_binary(b[48])
set_lower_bound(x[9], 0.0)
set_binary(b[143])
set_binary(b[90])
set_lower_bound(x[27], 0.0)
set_binary(b[84])
set_binary(b[53])
set_binary(b[116])
set_lower_bound(x[5], 0.0)
set_binary(b[61])
set_binary(b[89])
set_binary(b[34])
set_binary(b[145])
set_lower_bound(x[24], 0.0)
set_binary(b[86])
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_binary(b[114])
set_binary(b[153])
set_binary(b[69])
set_binary(b[144])
set_binary(b[68])
set_lower_bound(x[26], 0.0)
set_binary(b[166])
set_binary(b[47])
set_lower_bound(x[12], 0.0)
set_binary(b[138])
set_binary(b[151])
set_binary(b[135])
set_binary(b[108])
set_binary(b[154])
set_binary(b[76])
set_binary(b[109])
set_binary(b[174])
set_lower_bound(x[28], 0.0)
set_binary(b[155])
set_binary(b[94])
set_binary(b[149])
set_binary(b[107])
set_lower_bound(x[19], 0.0)
set_binary(b[181])
set_binary(b[52])
set_binary(b[139])
set_lower_bound(x[15], 0.0)
set_binary(b[131])
set_binary(b[38])
set_binary(b[71])
set_lower_bound(x[16], 0.0)
set_binary(b[78])
set_lower_bound(x[14], 0.0)
set_binary(b[66])
set_binary(b[80])
set_binary(b[160])
set_binary(b[49])
set_lower_bound(x[22], 0.0)
set_binary(b[137])
set_binary(b[185])
set_binary(b[105])
set_binary(b[164])
set_binary(b[124])
set_lower_bound(x[8], 0.0)
set_binary(b[54])
set_binary(b[111])
set_binary(b[170])
set_binary(b[98])
set_lower_bound(x[4], 0.0)
set_binary(b[186])
set_binary(b[77])
set_lower_bound(x[25], 0.0)
set_binary(b[172])
set_binary(b[46])
set_binary(b[127])
set_binary(b[56])
set_binary(b[104])
set_binary(b[171])
set_binary(b[74])
set_binary(b[32])
set_binary(b[92])
set_binary(b[72])
set_binary(b[126])
set_lower_bound(x[18], 0.0)
set_binary(b[129])
set_lower_bound(x[1], 0.0)
set_binary(b[190])
set_binary(b[125])
set_binary(b[184])
set_binary(b[43])
set_binary(b[110])
set_binary(b[183])
set_binary(b[117])
set_binary(b[195])
set_binary(b[83])
set_binary(b[59])
set_binary(b[204])
set_binary(b[67])
set_binary(b[175])
set_binary(b[93])
set_binary(b[99])
set_binary(b[198])
set_binary(b[146])
set_binary(b[123])
set_binary(b[187])
set_binary(b[202])
set_binary(b[122])
set_lower_bound(x[20], 0.0)
set_binary(b[121])
set_binary(b[157])
set_binary(b[147])
set_binary(b[201])
set_binary(b[156])
set_binary(b[73])
set_binary(b[118])
set_binary(b[44])
set_binary(b[158])
set_binary(b[120])
set_binary(b[85])
set_binary(b[82])
set_binary(b[42])
set_binary(b[168])
set_binary(b[106])
set_binary(b[81])
set_lower_bound(x[2], 0.0)
set_binary(b[141])
set_binary(b[136])
set_binary(b[150])
set_binary(b[203])
set_binary(b[95])
set_binary(b[115])
set_binary(b[189])
set_binary(b[33])
set_lower_bound(x[11], 0.0)
set_binary(b[30])
set_binary(b[173])
set_binary(b[40])
set_binary(b[58])
set_binary(b[96])
set_binary(b[57])
set_binary(b[102])
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_binary(b[51])
set_binary(b[100])
set_binary(b[142])
set_binary(b[65])
set_binary(b[165])
set_binary(b[101])
set_binary(b[182])
set_binary(b[194])
set_binary(b[179])
set_binary(b[191])
set_binary(b[134])
set_lower_bound(x[17], 0.0)
set_binary(b[140])
set_binary(b[31])
set_binary(b[91])
set_binary(b[152])
set_binary(b[103])
set_binary(b[55])
set_binary(b[148])
set_binary(b[63])


# ----- Constraints ----- #
@constraint(m, e1, -x[28]+x[29] == 0.0)
@constraint(m, e2, -x[2]+x[3]+5.25*b[32]+5.05*b[39]-5.05*b[46]+5.05*b[53]+190*b[71] <= 189.35)
@constraint(m, e3, 5.25*b[32]+5.05*b[39]-5.05*b[46]+5.05*b[53]+190*b[72] <= 189.35)
@constraint(m, e4, x[3]-x[4]+5.25*b[32]+5.05*b[39]-5.05*b[46]+5.05*b[53]+190*b[73] <= 189.35)
@constraint(m, e5, x[3]-x[5]+5.25*b[32]+5.05*b[39]-5.05*b[46]+5.05*b[53]+190*b[74] <= 189.35)
@constraint(m, e6, x[3]-x[6]+5.25*b[32]+5.05*b[39]-5.05*b[46]+5.05*b[53]+190*b[75] <= 189.35)
@constraint(m, e7, x[3]-x[7]+5.25*b[32]+5.05*b[39]-5.05*b[46]+5.05*b[53]+190*b[76] <= 189.35)
@constraint(m, e8, -x[1]+x[4]+7.1*b[33]+3.6*b[40]-3.6*b[47]+3.6*b[54]+190*b[77] <= 189.0)
@constraint(m, e9, -x[3]+x[4]+7.1*b[33]+3.6*b[40]-3.6*b[47]+3.6*b[54]+190*b[79] <= 189.0)
@constraint(m, e10, 7.1*b[33]+3.6*b[40]-3.6*b[47]+3.6*b[54]+190*b[80] <= 189.0)
@constraint(m, e11, x[4]-x[5]+7.1*b[33]+3.6*b[40]-3.6*b[47]+3.6*b[54]+190*b[81] <= 189.0)
@constraint(m, e12, x[4]-x[6]+7.1*b[33]+3.6*b[40]-3.6*b[47]+3.6*b[54]+190*b[82] <= 189.0)
@constraint(m, e13, x[4]-x[7]+7.1*b[33]+3.6*b[40]-3.6*b[47]+3.6*b[54]+190*b[83] <= 189.0)
@constraint(m, e14, -x[1]+x[5]+5.17*b[34]+3.67*b[41]-3.67*b[48]+3.67*b[55]+190*b[84] <= 189.17)
@constraint(m, e15, -x[2]+x[5]+5.17*b[34]+3.67*b[41]-3.67*b[48]+3.67*b[55]+190*b[85] <= 189.17)
@constraint(m, e16, -x[4]+x[5]+5.17*b[34]+3.67*b[41]-3.67*b[48]+3.67*b[55]+190*b[87] <= 189.17)
@constraint(m, e17, 5.17*b[34]+3.67*b[41]-3.67*b[48]+3.67*b[55]+190*b[88] <= 189.17)
@constraint(m, e18, x[5]-x[6]+5.17*b[34]+3.67*b[41]-3.67*b[48]+3.67*b[55]+190*b[89] <= 189.17)
@constraint(m, e19, x[5]-x[7]+5.17*b[34]+3.67*b[41]-3.67*b[48]+3.67*b[55]+190*b[90] <= 189.17)
@constraint(m, e20, -x[1]+x[6]+4.57*b[35]+4.47*b[42]-4.47*b[49]+4.47*b[56]+190*b[91] <= 188.77)
@constraint(m, e21, -x[2]+x[6]+4.57*b[35]+4.47*b[42]-4.47*b[49]+4.47*b[56]+190*b[92] <= 188.77)
@constraint(m, e22, -x[3]+x[6]+4.57*b[35]+4.47*b[42]-4.47*b[49]+4.47*b[56]+190*b[93] <= 188.77)
@constraint(m, e23, -x[5]+x[6]+4.57*b[35]+4.47*b[42]-4.47*b[49]+4.47*b[56]+190*b[95] <= 188.77)
@constraint(m, e24, 4.57*b[35]+4.47*b[42]-4.47*b[49]+4.47*b[56]+190*b[96] <= 188.77)
@constraint(m, e25, x[6]-x[7]+4.57*b[35]+4.47*b[42]-4.47*b[49]+4.47*b[56]+190*b[97] <= 188.77)
@constraint(m, e26, -x[1]+x[7]+7.3875*b[36]+4.02*b[43]-4.02*b[50]+4.02*b[57]+190*b[98] <= 189.2)
@constraint(m, e27, -x[2]+x[7]+7.3875*b[36]+4.02*b[43]-4.02*b[50]+4.02*b[57]+190*b[99] <= 189.2)
@constraint(m, e28, -x[3]+x[7]+7.3875*b[36]+4.02*b[43]-4.02*b[50]+4.02*b[57]+190*b[100] <= 189.2)
@constraint(m, e29, -x[4]+x[7]+7.3875*b[36]+4.02*b[43]-4.02*b[50]+4.02*b[57]+190*b[101] <= 189.2)
@constraint(m, e30, -x[6]+x[7]+7.3875*b[36]+4.02*b[43]-4.02*b[50]+4.02*b[57]+190*b[103] <= 189.2)
@constraint(m, e31, 7.3875*b[36]+4.02*b[43]-4.02*b[50]+4.02*b[57]+190*b[104] <= 189.2)
@NLconstraint(m, e32, x[22]*b[30]+x[24]*(b[37]-b[44]+b[51])+x[26]*(1-b[30]-b[37]+b[44]-b[51])+x[1]-x[2]+190*b[58] <= 190.0)
@NLconstraint(m, e33, x[22]*b[30]+x[24]*(b[37]-b[44]+b[51])+x[26]*(1-b[30]-b[37]+b[44]-b[51])+x[1]-x[3]+190*b[59] <= 190.0)
@NLconstraint(m, e34, x[22]*b[30]+x[24]*(b[37]-b[44]+b[51])+x[26]*(1-b[30]-b[37]+b[44]-b[51])+x[1]-x[4]+190*b[60] <= 190.0)
@NLconstraint(m, e35, x[22]*b[30]+x[24]*(b[37]-b[44]+b[51])+x[26]*(1-b[30]-b[37]+b[44]-b[51])+x[1]-x[5]+190*b[61] <= 190.0)
@NLconstraint(m, e36, x[22]*b[30]+x[24]*(b[37]-b[44]+b[51])+x[26]*(1-b[30]-b[37]+b[44]-b[51])+x[1]-x[6]+190*b[62] <= 190.0)
@NLconstraint(m, e37, x[22]*b[30]+x[24]*(b[37]-b[44]+b[51])+x[26]*(1-b[30]-b[37]+b[44]-b[51])+x[1]-x[7]+190*b[63] <= 190.0)
@NLconstraint(m, e38, x[23]*b[31]+x[25]*(b[38]-b[45]+b[52])+x[27]*(1-b[31]-b[38]+b[45]-b[52])-x[1]+x[2]+190*b[64] <= 190.0)
@NLconstraint(m, e39, x[23]*b[31]+x[25]*(b[38]-b[45]+b[52])+x[27]*(1-b[31]-b[38]+b[45]-b[52])+x[2]-x[3]+190*b[65] <= 190.0)
@NLconstraint(m, e40, x[23]*b[31]+x[25]*(b[38]-b[45]+b[52])+x[27]*(1-b[31]-b[38]+b[45]-b[52])+x[2]-x[4]+190*b[66] <= 190.0)
@NLconstraint(m, e41, x[23]*b[31]+x[25]*(b[38]-b[45]+b[52])+x[27]*(1-b[31]-b[38]+b[45]-b[52])+x[2]-x[5]+190*b[67] <= 190.0)
@NLconstraint(m, e42, x[23]*b[31]+x[25]*(b[38]-b[45]+b[52])+x[27]*(1-b[31]-b[38]+b[45]-b[52])+x[2]-x[6]+190*b[68] <= 190.0)
@NLconstraint(m, e43, x[23]*b[31]+x[25]*(b[38]-b[45]+b[52])+x[27]*(1-b[31]-b[38]+b[45]-b[52])+x[2]-x[7]+190*b[69] <= 190.0)
@constraint(m, e44, -x[9]+x[10]-5.25*b[32]-5.25*b[39]+5.05*b[46]+190*b[118] <= 184.1)
@constraint(m, e45, -5.25*b[32]-5.25*b[39]+5.05*b[46]+190*b[119] <= 184.1)
@constraint(m, e46, x[10]-x[11]-5.25*b[32]-5.25*b[39]+5.05*b[46]+190*b[120] <= 184.1)
@constraint(m, e47, x[10]-x[12]-5.25*b[32]-5.25*b[39]+5.05*b[46]+190*b[121] <= 184.1)
@constraint(m, e48, x[10]-x[13]-5.25*b[32]-5.25*b[39]+5.05*b[46]+190*b[122] <= 184.1)
@constraint(m, e49, x[10]-x[14]-5.25*b[32]-5.25*b[39]+5.05*b[46]+190*b[123] <= 184.1)
@constraint(m, e50, -x[8]+x[11]-7.1*b[33]-7.1*b[40]+3.6*b[47]+190*b[124] <= 181.9)
@constraint(m, e51, -x[10]+x[11]-7.1*b[33]-7.1*b[40]+3.6*b[47]+190*b[126] <= 181.9)
@constraint(m, e52, -7.1*b[33]-7.1*b[40]+3.6*b[47]+190*b[127] <= 181.9)
@constraint(m, e53, x[11]-x[12]-7.1*b[33]-7.1*b[40]+3.6*b[47]+190*b[128] <= 181.9)
@constraint(m, e54, x[11]-x[13]-7.1*b[33]-7.1*b[40]+3.6*b[47]+190*b[129] <= 181.9)
@constraint(m, e55, x[11]-x[14]-7.1*b[33]-7.1*b[40]+3.6*b[47]+190*b[130] <= 181.9)
@constraint(m, e56, -x[8]+x[12]-5.17*b[34]-5.17*b[41]+3.67*b[48]+190*b[131] <= 184.0)
@constraint(m, e57, -x[9]+x[12]-5.17*b[34]-5.17*b[41]+3.67*b[48]+190*b[132] <= 184.0)
@constraint(m, e58, -x[11]+x[12]-5.17*b[34]-5.17*b[41]+3.67*b[48]+190*b[134] <= 184.0)
@constraint(m, e59, -5.17*b[34]-5.17*b[41]+3.67*b[48]+190*b[135] <= 184.0)
@constraint(m, e60, x[12]-x[13]-5.17*b[34]-5.17*b[41]+3.67*b[48]+190*b[136] <= 184.0)
@constraint(m, e61, x[12]-x[14]-5.17*b[34]-5.17*b[41]+3.67*b[48]+190*b[137] <= 184.0)
@constraint(m, e62, -x[8]+x[13]-4.57*b[35]-4.57*b[42]+4.47*b[49]+190*b[138] <= 184.2)
@constraint(m, e63, -x[9]+x[13]-4.57*b[35]-4.57*b[42]+4.47*b[49]+190*b[139] <= 184.2)
@constraint(m, e64, -x[10]+x[13]-4.57*b[35]-4.57*b[42]+4.47*b[49]+190*b[140] <= 184.2)
@constraint(m, e65, -x[12]+x[13]-4.57*b[35]-4.57*b[42]+4.47*b[49]+190*b[142] <= 184.2)
@constraint(m, e66, -4.57*b[35]-4.57*b[42]+4.47*b[49]+190*b[143] <= 184.2)
@constraint(m, e67, x[13]-x[14]-4.57*b[35]-4.57*b[42]+4.47*b[49]+190*b[144] <= 184.2)
@constraint(m, e68, -x[8]+x[14]-7.3875*b[36]-7.3875*b[43]+4.02*b[50]+190*b[145] <= 181.8125)
@constraint(m, e69, -x[9]+x[14]-7.3875*b[36]-7.3875*b[43]+4.02*b[50]+190*b[146] <= 181.8125)
@constraint(m, e70, -x[10]+x[14]-7.3875*b[36]-7.3875*b[43]+4.02*b[50]+190*b[147] <= 181.8125)
@constraint(m, e71, -x[11]+x[14]-7.3875*b[36]-7.3875*b[43]+4.02*b[50]+190*b[148] <= 181.8125)
@constraint(m, e72, -x[13]+x[14]-7.3875*b[36]-7.3875*b[43]+4.02*b[50]+190*b[150] <= 181.8125)
@constraint(m, e73, -7.3875*b[36]-7.3875*b[43]+4.02*b[50]+190*b[151] <= 181.8125)
@NLconstraint(m, e74, x[24]*b[44]+x[22]*(1-b[30]-b[37])+x[26]*(b[30]+b[37]-b[44])+x[8]-x[9]+190*b[105] <= 190.0)
@NLconstraint(m, e75, x[24]*b[44]+x[22]*(1-b[30]-b[37])+x[26]*(b[30]+b[37]-b[44])+x[8]-x[10]+190*b[106] <= 190.0)
@NLconstraint(m, e76, x[24]*b[44]+x[22]*(1-b[30]-b[37])+x[26]*(b[30]+b[37]-b[44])+x[8]-x[11]+190*b[107] <= 190.0)
@NLconstraint(m, e77, x[24]*b[44]+x[22]*(1-b[30]-b[37])+x[26]*(b[30]+b[37]-b[44])+x[8]-x[12]+190*b[108] <= 190.0)
@NLconstraint(m, e78, x[24]*b[44]+x[22]*(1-b[30]-b[37])+x[26]*(b[30]+b[37]-b[44])+x[8]-x[13]+190*b[109] <= 190.0)
@NLconstraint(m, e79, x[24]*b[44]+x[22]*(1-b[30]-b[37])+x[26]*(b[30]+b[37]-b[44])+x[8]-x[14]+190*b[110] <= 190.0)
@NLconstraint(m, e80, x[25]*b[45]+x[23]*(1-b[31]-b[38])+x[27]*(b[31]+b[38]-b[45])-x[8]+x[9]+190*b[111] <= 190.0)
@NLconstraint(m, e81, x[25]*b[45]+x[23]*(1-b[31]-b[38])+x[27]*(b[31]+b[38]-b[45])+x[9]-x[10]+190*b[112] <= 190.0)
@NLconstraint(m, e82, x[25]*b[45]+x[23]*(1-b[31]-b[38])+x[27]*(b[31]+b[38]-b[45])+x[9]-x[11]+190*b[113] <= 190.0)
@NLconstraint(m, e83, x[25]*b[45]+x[23]*(1-b[31]-b[38])+x[27]*(b[31]+b[38]-b[45])+x[9]-x[12]+190*b[114] <= 190.0)
@NLconstraint(m, e84, x[25]*b[45]+x[23]*(1-b[31]-b[38])+x[27]*(b[31]+b[38]-b[45])+x[9]-x[13]+190*b[115] <= 190.0)
@NLconstraint(m, e85, x[25]*b[45]+x[23]*(1-b[31]-b[38])+x[27]*(b[31]+b[38]-b[45])+x[9]-x[14]+190*b[116] <= 190.0)
@constraint(m, e86, -x[16]+x[17]+0.2*b[39]-5.05*b[53]+190*b[165] <= 184.3)
@constraint(m, e87, 0.2*b[39]-5.05*b[53]+190*b[166] <= 184.3)
@constraint(m, e88, x[17]-x[18]+0.2*b[39]-5.05*b[53]+190*b[167] <= 184.3)
@constraint(m, e89, x[17]-x[19]+0.2*b[39]-5.05*b[53]+190*b[168] <= 184.3)
@constraint(m, e90, x[17]-x[20]+0.2*b[39]-5.05*b[53]+190*b[169] <= 184.3)
@constraint(m, e91, x[17]-x[21]+0.2*b[39]-5.05*b[53]+190*b[170] <= 184.3)
@constraint(m, e92, -x[15]+x[18]+3.5*b[40]-3.6*b[54]+190*b[171] <= 185.4)
@constraint(m, e93, -x[17]+x[18]+3.5*b[40]-3.6*b[54]+190*b[173] <= 185.4)
@constraint(m, e94, 3.5*b[40]-3.6*b[54]+190*b[174] <= 185.4)
@constraint(m, e95, x[18]-x[19]+3.5*b[40]-3.6*b[54]+190*b[175] <= 185.4)
@constraint(m, e96, x[18]-x[20]+3.5*b[40]-3.6*b[54]+190*b[176] <= 185.4)
@constraint(m, e97, x[18]-x[21]+3.5*b[40]-3.6*b[54]+190*b[177] <= 185.4)
@constraint(m, e98, -x[15]+x[19]+1.5*b[41]-3.67*b[55]+190*b[178] <= 185.5)
@constraint(m, e99, -x[16]+x[19]+1.5*b[41]-3.67*b[55]+190*b[179] <= 185.5)
@constraint(m, e100, -x[18]+x[19]+1.5*b[41]-3.67*b[55]+190*b[181] <= 185.5)
@constraint(m, e101, 1.5*b[41]-3.67*b[55]+190*b[182] <= 185.5)
@constraint(m, e102, x[19]-x[20]+1.5*b[41]-3.67*b[55]+190*b[183] <= 185.5)
@constraint(m, e103, x[19]-x[21]+1.5*b[41]-3.67*b[55]+190*b[184] <= 185.5)
@constraint(m, e104, -x[15]+x[20]+0.0999999999999996*b[42]-4.47*b[56]+190*b[185] <= 184.3)
@constraint(m, e105, -x[16]+x[20]+0.0999999999999996*b[42]-4.47*b[56]+190*b[186] <= 184.3)
@constraint(m, e106, -x[17]+x[20]+0.0999999999999996*b[42]-4.47*b[56]+190*b[187] <= 184.3)
@constraint(m, e107, -x[19]+x[20]+0.0999999999999996*b[42]-4.47*b[56]+190*b[189] <= 184.3)
@constraint(m, e108, 0.0999999999999996*b[42]-4.47*b[56]+190*b[190] <= 184.3)
@constraint(m, e109, x[20]-x[21]+0.0999999999999996*b[42]-4.47*b[56]+190*b[191] <= 184.3)
@constraint(m, e110, -x[15]+x[21]+3.3675*b[43]-4.02*b[57]+190*b[192] <= 185.18)
@constraint(m, e111, -x[16]+x[21]+3.3675*b[43]-4.02*b[57]+190*b[193] <= 185.18)
@constraint(m, e112, -x[17]+x[21]+3.3675*b[43]-4.02*b[57]+190*b[194] <= 185.18)
@constraint(m, e113, -x[18]+x[21]+3.3675*b[43]-4.02*b[57]+190*b[195] <= 185.18)
@constraint(m, e114, -x[20]+x[21]+3.3675*b[43]-4.02*b[57]+190*b[197] <= 185.18)
@constraint(m, e115, 3.3675*b[43]-4.02*b[57]+190*b[198] <= 185.18)
@NLconstraint(m, e116, x[26]*b[51]+x[24]*(1-b[37]-b[51])+x[22]*b[37]+x[15]-x[16]+190*b[152] <= 190.0)
@NLconstraint(m, e117, x[26]*b[51]+x[24]*(1-b[37]-b[51])+x[22]*b[37]+x[15]-x[17]+190*b[153] <= 190.0)
@NLconstraint(m, e118, x[26]*b[51]+x[24]*(1-b[37]-b[51])+x[22]*b[37]+x[15]-x[18]+190*b[154] <= 190.0)
@NLconstraint(m, e119, x[26]*b[51]+x[24]*(1-b[37]-b[51])+x[22]*b[37]+x[15]-x[19]+190*b[155] <= 190.0)
@NLconstraint(m, e120, x[26]*b[51]+x[24]*(1-b[37]-b[51])+x[22]*b[37]+x[15]-x[20]+190*b[156] <= 190.0)
@NLconstraint(m, e121, x[26]*b[51]+x[24]*(1-b[37]-b[51])+x[22]*b[37]+x[15]-x[21]+190*b[157] <= 190.0)
@NLconstraint(m, e122, x[27]*b[52]+x[25]*(1-b[38]-b[52])+x[23]*b[38]-x[15]+x[16]+190*b[158] <= 190.0)
@NLconstraint(m, e123, x[27]*b[52]+x[25]*(1-b[38]-b[52])+x[23]*b[38]+x[16]-x[17]+190*b[159] <= 190.0)
@NLconstraint(m, e124, x[27]*b[52]+x[25]*(1-b[38]-b[52])+x[23]*b[38]+x[16]-x[18]+190*b[160] <= 190.0)
@NLconstraint(m, e125, x[27]*b[52]+x[25]*(1-b[38]-b[52])+x[23]*b[38]+x[16]-x[19]+190*b[161] <= 190.0)
@NLconstraint(m, e126, x[27]*b[52]+x[25]*(1-b[38]-b[52])+x[23]*b[38]+x[16]-x[20]+190*b[162] <= 190.0)
@NLconstraint(m, e127, x[27]*b[52]+x[25]*(1-b[38]-b[52])+x[23]*b[38]+x[16]-x[21]+190*b[163] <= 190.0)
@constraint(m, e128, b[58]+b[64]+b[105]+b[111]+b[152]+b[158] >= 1.0)
@constraint(m, e129, b[59]+b[70]+b[106]+b[117]+b[153]+b[164] >= 1.0)
@constraint(m, e130, b[60]+b[77]+b[107]+b[124]+b[154]+b[171] >= 1.0)
@constraint(m, e131, b[61]+b[84]+b[108]+b[131]+b[155]+b[178] >= 1.0)
@constraint(m, e132, b[62]+b[91]+b[109]+b[138]+b[156]+b[185] >= 1.0)
@constraint(m, e133, b[63]+b[98]+b[110]+b[145]+b[157]+b[192] >= 1.0)
@constraint(m, e134, b[58]+b[64]+b[105]+b[111]+b[152]+b[158] >= 1.0)
@constraint(m, e135, b[65]+b[71]+b[112]+b[118]+b[159]+b[165] >= 1.0)
@constraint(m, e136, b[66]+b[78]+b[113]+b[125]+b[160]+b[172] >= 1.0)
@constraint(m, e137, b[67]+b[85]+b[114]+b[132]+b[161]+b[179] >= 1.0)
@constraint(m, e138, b[68]+b[92]+b[115]+b[139]+b[162]+b[186] >= 1.0)
@constraint(m, e139, b[69]+b[99]+b[116]+b[146]+b[163]+b[193] >= 1.0)
@constraint(m, e140, b[59]+b[70]+b[106]+b[117]+b[153]+b[164] >= 1.0)
@constraint(m, e141, b[65]+b[71]+b[112]+b[118]+b[159]+b[165] >= 1.0)
@constraint(m, e142, b[73]+b[79]+b[120]+b[126]+b[167]+b[173] >= 1.0)
@constraint(m, e143, b[74]+b[86]+b[121]+b[133]+b[168]+b[180] >= 1.0)
@constraint(m, e144, b[75]+b[93]+b[122]+b[140]+b[169]+b[187] >= 1.0)
@constraint(m, e145, b[76]+b[100]+b[123]+b[147]+b[170]+b[194] >= 1.0)
@constraint(m, e146, b[60]+b[77]+b[107]+b[124]+b[154]+b[171] >= 1.0)
@constraint(m, e147, b[66]+b[78]+b[113]+b[125]+b[160]+b[172] >= 1.0)
@constraint(m, e148, b[73]+b[79]+b[120]+b[126]+b[167]+b[173] >= 1.0)
@constraint(m, e149, b[81]+b[87]+b[128]+b[134]+b[175]+b[181] >= 1.0)
@constraint(m, e150, b[82]+b[94]+b[129]+b[141]+b[176]+b[188] >= 1.0)
@constraint(m, e151, b[83]+b[101]+b[130]+b[148]+b[177]+b[195] >= 1.0)
@constraint(m, e152, b[61]+b[84]+b[108]+b[131]+b[155]+b[178] >= 1.0)
@constraint(m, e153, b[67]+b[85]+b[114]+b[132]+b[161]+b[179] >= 1.0)
@constraint(m, e154, b[74]+b[86]+b[121]+b[133]+b[168]+b[180] >= 1.0)
@constraint(m, e155, b[81]+b[87]+b[128]+b[134]+b[175]+b[181] >= 1.0)
@constraint(m, e156, b[89]+b[95]+b[136]+b[142]+b[183]+b[189] >= 1.0)
@constraint(m, e157, b[90]+b[102]+b[137]+b[149]+b[184]+b[196] >= 1.0)
@constraint(m, e158, b[62]+b[91]+b[109]+b[138]+b[156]+b[185] >= 1.0)
@constraint(m, e159, b[68]+b[92]+b[115]+b[139]+b[162]+b[186] >= 1.0)
@constraint(m, e160, b[75]+b[93]+b[122]+b[140]+b[169]+b[187] >= 1.0)
@constraint(m, e161, b[82]+b[94]+b[129]+b[141]+b[176]+b[188] >= 1.0)
@constraint(m, e162, b[89]+b[95]+b[136]+b[142]+b[183]+b[189] >= 1.0)
@constraint(m, e163, b[97]+b[103]+b[144]+b[150]+b[191]+b[197] >= 1.0)
@constraint(m, e164, b[63]+b[98]+b[110]+b[145]+b[157]+b[192] >= 1.0)
@constraint(m, e165, b[69]+b[99]+b[116]+b[146]+b[163]+b[193] >= 1.0)
@constraint(m, e166, b[76]+b[100]+b[123]+b[147]+b[170]+b[194] >= 1.0)
@constraint(m, e167, b[83]+b[101]+b[130]+b[148]+b[177]+b[195] >= 1.0)
@constraint(m, e168, b[90]+b[102]+b[137]+b[149]+b[184]+b[196] >= 1.0)
@constraint(m, e169, b[97]+b[103]+b[144]+b[150]+b[191]+b[197] >= 1.0)
@constraint(m, e170, x[3]-x[28]+5.25*b[32]+5.05*b[39]-5.05*b[46]+5.05*b[53] <= -0.65)
@constraint(m, e171, x[4]-x[28]+7.1*b[33]+3.6*b[40]-3.6*b[47]+3.6*b[54] <= -1.0)
@constraint(m, e172, x[5]-x[28]+5.17*b[34]+3.67*b[41]-3.67*b[48]+3.67*b[55] <= -0.83)
@constraint(m, e173, x[6]-x[28]+4.57*b[35]+4.47*b[42]-4.47*b[49]+4.47*b[56] <= -1.23)
@constraint(m, e174, x[7]-x[28]+7.3875*b[36]+4.02*b[43]-4.02*b[50]+4.02*b[57] <= -0.8)
@constraint(m, e175, x[10]-5.25*b[32]-5.25*b[39]+5.05*b[46] <= -0.720000000000001)
@constraint(m, e176, x[11]-7.1*b[33]-7.1*b[40]+3.6*b[47] <= -2.92)
@constraint(m, e177, x[12]-5.17*b[34]-5.17*b[41]+3.67*b[48] <= -0.82)
@constraint(m, e178, x[13]-4.57*b[35]-4.57*b[42]+4.47*b[49] <= -0.62)
@constraint(m, e179, x[14]-7.3875*b[36]-7.3875*b[43]+4.02*b[50] <= -3.0075)
@constraint(m, e180, x[17]+0.2*b[39]-5.05*b[53] <= -2.66)
@constraint(m, e181, x[18]+3.5*b[40]-3.6*b[54] <= -1.56)
@constraint(m, e182, x[19]+1.5*b[41]-3.67*b[55] <= -1.46)
@constraint(m, e183, x[20]+0.0999999999999996*b[42]-4.47*b[56] <= -2.66)
@constraint(m, e184, x[21]+3.3675*b[43]-4.02*b[57] <= -1.78)
@NLconstraint(m, e185, x[22]*b[30]+x[24]*(b[37]-b[44]+b[51])+x[26]*(1-b[30]-b[37]+b[44]-b[51])+x[1]-x[28] <= 0.0)
@NLconstraint(m, e186, x[23]*b[31]+x[25]*(b[38]-b[45]+b[52])+x[27]*(1-b[31]-b[38]+b[45]-b[52])+x[2]-x[28] <= 0.0)
@NLconstraint(m, e187, x[24]*b[44]+x[22]*(1-b[30]-b[37])+x[26]*(b[30]+b[37]-b[44])+x[8] <= 5.18)
@NLconstraint(m, e188, x[25]*b[45]+x[23]*(1-b[31]-b[38])+x[27]*(b[31]+b[38]-b[45])+x[9] <= 5.18)
@NLconstraint(m, e189, x[26]*b[51]+x[24]*(1-b[37]-b[51])+x[22]*b[37]+x[15] <= 3.04)
@NLconstraint(m, e190, x[27]*b[52]+x[25]*(1-b[38]-b[52])+x[23]*b[38]+x[16] <= 3.04)
@constraint(m, e191, b[30]+b[37] <= 1.0)
@constraint(m, e192, b[31]+b[38] <= 1.0)
@constraint(m, e193, b[32]+b[39] <= 1.0)
@constraint(m, e194, b[33]+b[40] <= 1.0)
@constraint(m, e195, b[34]+b[41] <= 1.0)
@constraint(m, e196, b[35]+b[42] <= 1.0)
@constraint(m, e197, b[36]+b[43] <= 1.0)
@constraint(m, e198, b[37]+b[51] <= 1.0)
@constraint(m, e199, b[38]+b[52] <= 1.0)
@constraint(m, e200, b[39]+b[53] <= 1.0)
@constraint(m, e201, b[40]+b[54] <= 1.0)
@constraint(m, e202, b[41]+b[55] <= 1.0)
@constraint(m, e203, b[42]+b[56] <= 1.0)
@constraint(m, e204, b[43]+b[57] <= 1.0)
@constraint(m, e205, b[37]-b[44]+b[51] <= 1.0)
@constraint(m, e206, b[38]-b[45]+b[52] <= 1.0)
@constraint(m, e207, b[39]-b[46]+b[53] <= 1.0)
@constraint(m, e208, b[40]-b[47]+b[54] <= 1.0)
@constraint(m, e209, b[41]-b[48]+b[55] <= 1.0)
@constraint(m, e210, b[42]-b[49]+b[56] <= 1.0)
@constraint(m, e211, b[43]-b[50]+b[57] <= 1.0)
@constraint(m, e212, b[37]-b[44]+b[51] >= 0.0)
@constraint(m, e213, b[38]-b[45]+b[52] >= 0.0)
@constraint(m, e214, b[39]-b[46]+b[53] >= 0.0)
@constraint(m, e215, b[40]-b[47]+b[54] >= 0.0)
@constraint(m, e216, b[41]-b[48]+b[55] >= 0.0)
@constraint(m, e217, b[42]-b[49]+b[56] >= 0.0)
@constraint(m, e218, b[43]-b[50]+b[57] >= 0.0)
@constraint(m, e219, -b[30]-b[37]+b[44]-b[51] <= 0.0)
@constraint(m, e220, -b[31]-b[38]+b[45]-b[52] <= 0.0)
@constraint(m, e221, -b[32]-b[39]+b[46]-b[53] <= 0.0)
@constraint(m, e222, -b[33]-b[40]+b[47]-b[54] <= 0.0)
@constraint(m, e223, -b[34]-b[41]+b[48]-b[55] <= 0.0)
@constraint(m, e224, -b[35]-b[42]+b[49]-b[56] <= 0.0)
@constraint(m, e225, -b[36]-b[43]+b[50]-b[57] <= 0.0)
@constraint(m, e226, -b[30]-b[37]+b[44]-b[51] >= -1.0)
@constraint(m, e227, -b[31]-b[38]+b[45]-b[52] >= -1.0)
@constraint(m, e228, -b[32]-b[39]+b[46]-b[53] >= -1.0)
@constraint(m, e229, -b[33]-b[40]+b[47]-b[54] >= -1.0)
@constraint(m, e230, -b[34]-b[41]+b[48]-b[55] >= -1.0)
@constraint(m, e231, -b[35]-b[42]+b[49]-b[56] >= -1.0)
@constraint(m, e232, -b[36]-b[43]+b[50]-b[57] >= -1.0)
@constraint(m, e233, b[30]+b[37]-b[44] <= 1.0)
@constraint(m, e234, b[31]+b[38]-b[45] <= 1.0)
@constraint(m, e235, b[32]+b[39]-b[46] <= 1.0)
@constraint(m, e236, b[33]+b[40]-b[47] <= 1.0)
@constraint(m, e237, b[34]+b[41]-b[48] <= 1.0)
@constraint(m, e238, b[35]+b[42]-b[49] <= 1.0)
@constraint(m, e239, b[36]+b[43]-b[50] <= 1.0)
@constraint(m, e240, b[30]+b[37]-b[44] >= 0.0)
@constraint(m, e241, b[31]+b[38]-b[45] >= 0.0)
@constraint(m, e242, b[32]+b[39]-b[46] >= 0.0)
@constraint(m, e243, b[33]+b[40]-b[47] >= 0.0)
@constraint(m, e244, b[34]+b[41]-b[48] >= 0.0)
@constraint(m, e245, b[35]+b[42]-b[49] >= 0.0)
@constraint(m, e246, b[36]+b[43]-b[50] >= 0.0)
@constraint(m, e247, x[22]-190*b[199] >= -184.25)
@constraint(m, e248, x[22]-190*b[200] >= -185.75)
@constraint(m, e249, x[22]-190*b[201] >= -186.5)
@constraint(m, e250, x[23]-190*b[202] >= -185.0)
@constraint(m, e251, x[23]-190*b[203] >= -187.625)
@constraint(m, e252, x[23]-190*b[204] >= -181.5)
@constraint(m, e253, x[22]+190*b[199] <= 195.75)
@constraint(m, e254, x[22]+190*b[200] <= 194.25)
@constraint(m, e255, x[22]+190*b[201] <= 193.5)
@constraint(m, e256, x[23]+190*b[202] <= 195.0)
@constraint(m, e257, x[23]+190*b[203] <= 192.375)
@constraint(m, e258, x[23]+190*b[204] <= 198.5)
@constraint(m, e259, x[24]-190*b[199] >= -187.75)
@constraint(m, e260, x[24]-190*b[200] >= -187.875)
@constraint(m, e261, x[24]-190*b[201] >= -188.75)
@constraint(m, e262, x[25]-190*b[202] >= -185.875)
@constraint(m, e263, x[25]-190*b[203] >= -185.75)
@constraint(m, e264, x[25]-190*b[204] >= -184.4)
@constraint(m, e265, x[24]+190*b[199] <= 192.25)
@constraint(m, e266, x[24]+190*b[200] <= 192.125)
@constraint(m, e267, x[24]+190*b[201] <= 191.25)
@constraint(m, e268, x[25]+190*b[202] <= 194.125)
@constraint(m, e269, x[25]+190*b[203] <= 194.25)
@constraint(m, e270, x[25]+190*b[204] <= 195.6)
@constraint(m, e271, x[26]-190*b[199] >= -189.625)
@constraint(m, e272, x[26]-190*b[200] >= -189.125)
@constraint(m, e273, x[26]-190*b[201] >= -188.875)
@constraint(m, e274, x[27]-190*b[202] >= -189.75)
@constraint(m, e275, x[27]-190*b[203] >= -189.625)
@constraint(m, e276, x[27]-190*b[204] >= -188.4)
@constraint(m, e277, x[26]+190*b[199] <= 190.375)
@constraint(m, e278, x[26]+190*b[200] <= 190.875)
@constraint(m, e279, x[26]+190*b[201] <= 191.125)
@constraint(m, e280, x[27]+190*b[202] <= 190.25)
@constraint(m, e281, x[27]+190*b[203] <= 190.375)
@constraint(m, e282, x[27]+190*b[204] <= 191.6)
@constraint(m, e283, b[199]+b[200]+b[201] == 1.0)
@constraint(m, e284, b[202]+b[203]+b[204] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[29])

m = m 		 # model get returned when including this script.