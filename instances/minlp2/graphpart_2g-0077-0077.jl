using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147]
@variable(m, b[b_Idx])
set_binary(b[35])
set_binary(b[38])
set_binary(b[44])
set_binary(b[71])
set_binary(b[118])
set_binary(b[78])
set_binary(b[75])
set_binary(b[120])
set_binary(b[128])
set_binary(b[66])
set_binary(b[85])
set_binary(b[15])
set_binary(b[80])
set_binary(b[82])
set_binary(b[70])
set_binary(b[42])
set_binary(b[49])
set_binary(b[106])
set_binary(b[45])
set_binary(b[133])
set_binary(b[81])
set_binary(b[137])
set_binary(b[41])
set_binary(b[48])
set_binary(b[105])
set_binary(b[124])
set_binary(b[141])
set_binary(b[23])
set_binary(b[64])
set_binary(b[112])
set_binary(b[54])
set_binary(b[111])
set_binary(b[21])
set_binary(b[28])
set_binary(b[36])
set_binary(b[136])
set_binary(b[143])
set_binary(b[22])
set_binary(b[90])
set_binary(b[130])
set_binary(b[87])
set_binary(b[98])
set_binary(b[132])
set_binary(b[95])
set_binary(b[77])
set_binary(b[115])
set_binary(b[84])
set_binary(b[46])
set_binary(b[53])
set_binary(b[8])
set_binary(b[33])
set_binary(b[56])
set_binary(b[116])
set_binary(b[30])
set_binary(b[79])
set_binary(b[104])
set_binary(b[119])
set_binary(b[29])
set_binary(b[127])
set_binary(b[40])
set_binary(b[61])
set_binary(b[58])
set_binary(b[74])
set_binary(b[32])
set_binary(b[34])
set_binary(b[57])
set_binary(b[89])
set_binary(b[92])
set_binary(b[72])
set_binary(b[96])
set_binary(b[126])
set_binary(b[5])
set_binary(b[16])
set_binary(b[129])
set_binary(b[145])
set_binary(b[86])
set_binary(b[114])
set_binary(b[60])
set_binary(b[102])
set_binary(b[13])
set_binary(b[51])
set_binary(b[69])
set_binary(b[144])
set_binary(b[12])
set_binary(b[2])
set_binary(b[68])
set_binary(b[100])
set_binary(b[125])
set_binary(b[142])
set_binary(b[14])
set_binary(b[20])
set_binary(b[43])
set_binary(b[11])
set_binary(b[19])
set_binary(b[47])
set_binary(b[25])
set_binary(b[7])
set_binary(b[9])
set_binary(b[110])
set_binary(b[65])
set_binary(b[138])
set_binary(b[117])
set_binary(b[3])
set_binary(b[83])
set_binary(b[135])
set_binary(b[59])
set_binary(b[101])
set_binary(b[108])
set_binary(b[17])
set_binary(b[39])
set_binary(b[76])
set_binary(b[109])
set_binary(b[4])
set_binary(b[6])
set_binary(b[67])
set_binary(b[1])
set_binary(b[37])
set_binary(b[88])
set_binary(b[134])
set_binary(b[50])
set_binary(b[27])
set_binary(b[18])
set_binary(b[97])
set_binary(b[93])
set_binary(b[99])
set_binary(b[140])
set_binary(b[94])
set_binary(b[31])
set_binary(b[123])
set_binary(b[107])
set_binary(b[146])
set_binary(b[62])
set_binary(b[91])
set_binary(b[113])
set_binary(b[52])
set_binary(b[103])
set_binary(b[122])
set_binary(b[24])
set_binary(b[121])
set_binary(b[139])
set_binary(b[55])
set_binary(b[10])
set_binary(b[147])
set_binary(b[63])
set_binary(b[26])
set_binary(b[73])
set_binary(b[131])


# ----- Constraints ----- #
@constraint(m, e1, b[1]+b[2]+b[3] == 1.0)
@constraint(m, e2, b[4]+b[5]+b[6] == 1.0)
@constraint(m, e3, b[7]+b[8]+b[9] == 1.0)
@constraint(m, e4, b[10]+b[11]+b[12] == 1.0)
@constraint(m, e5, b[13]+b[14]+b[15] == 1.0)
@constraint(m, e6, b[16]+b[17]+b[18] == 1.0)
@constraint(m, e7, b[19]+b[20]+b[21] == 1.0)
@constraint(m, e8, b[22]+b[23]+b[24] == 1.0)
@constraint(m, e9, b[25]+b[26]+b[27] == 1.0)
@constraint(m, e10, b[28]+b[29]+b[30] == 1.0)
@constraint(m, e11, b[31]+b[32]+b[33] == 1.0)
@constraint(m, e12, b[34]+b[35]+b[36] == 1.0)
@constraint(m, e13, b[37]+b[38]+b[39] == 1.0)
@constraint(m, e14, b[40]+b[41]+b[42] == 1.0)
@constraint(m, e15, b[43]+b[44]+b[45] == 1.0)
@constraint(m, e16, b[46]+b[47]+b[48] == 1.0)
@constraint(m, e17, b[49]+b[50]+b[51] == 1.0)
@constraint(m, e18, b[52]+b[53]+b[54] == 1.0)
@constraint(m, e19, b[55]+b[56]+b[57] == 1.0)
@constraint(m, e20, b[58]+b[59]+b[60] == 1.0)
@constraint(m, e21, b[61]+b[62]+b[63] == 1.0)
@constraint(m, e22, b[64]+b[65]+b[66] == 1.0)
@constraint(m, e23, b[67]+b[68]+b[69] == 1.0)
@constraint(m, e24, b[70]+b[71]+b[72] == 1.0)
@constraint(m, e25, b[73]+b[74]+b[75] == 1.0)
@constraint(m, e26, b[76]+b[77]+b[78] == 1.0)
@constraint(m, e27, b[79]+b[80]+b[81] == 1.0)
@constraint(m, e28, b[82]+b[83]+b[84] == 1.0)
@constraint(m, e29, b[85]+b[86]+b[87] == 1.0)
@constraint(m, e30, b[88]+b[89]+b[90] == 1.0)
@constraint(m, e31, b[91]+b[92]+b[93] == 1.0)
@constraint(m, e32, b[94]+b[95]+b[96] == 1.0)
@constraint(m, e33, b[97]+b[98]+b[99] == 1.0)
@constraint(m, e34, b[100]+b[101]+b[102] == 1.0)
@constraint(m, e35, b[103]+b[104]+b[105] == 1.0)
@constraint(m, e36, b[106]+b[107]+b[108] == 1.0)
@constraint(m, e37, b[109]+b[110]+b[111] == 1.0)
@constraint(m, e38, b[112]+b[113]+b[114] == 1.0)
@constraint(m, e39, b[115]+b[116]+b[117] == 1.0)
@constraint(m, e40, b[118]+b[119]+b[120] == 1.0)
@constraint(m, e41, b[121]+b[122]+b[123] == 1.0)
@constraint(m, e42, b[124]+b[125]+b[126] == 1.0)
@constraint(m, e43, b[127]+b[128]+b[129] == 1.0)
@constraint(m, e44, b[130]+b[131]+b[132] == 1.0)
@constraint(m, e45, b[133]+b[134]+b[135] == 1.0)
@constraint(m, e46, b[136]+b[137]+b[138] == 1.0)
@constraint(m, e47, b[139]+b[140]+b[141] == 1.0)
@constraint(m, e48, b[142]+b[143]+b[144] == 1.0)
@constraint(m, e49, b[145]+b[146]+b[147] == 1.0)
@NLconstraint(m, e50, 99093*b[1]*b[4]-77684*b[1]*b[19]+66589*b[1]*b[22]+50891*b[1]*b[127]+99093*b[2]*b[5]-77684*b[2]*b[20]+66589*b[2]*b[23]+50891*b[2]*b[128]+99093*b[3]*b[6]-77684*b[3]*b[21]+66589*b[3]*b[24]+50891*b[3]*b[129]-76205*b[4]*b[7]+26829*b[4]*b[25]+29455*b[4]*b[130]-76205*b[5]*b[8]+26829*b[5]*b[26]+29455*b[5]*b[131]-76205*b[6]*b[9]+26829*b[6]*b[27]+29455*b[6]*b[132]+80693*b[7]*b[10]-45754*b[7]*b[28]+134708*b[7]*b[133]+80693*b[8]*b[11]-45754*b[8]*b[29]+134708*b[8]*b[134]+80693*b[9]*b[12]-45754*b[9]*b[30]+134708*b[9]*b[135]+50250*b[10]*b[13]+52323*b[10]*b[31]-191280*b[10]*b[136]+50250*b[11]*b[14]+52323*b[11]*b[32]-191280*b[11]*b[137]+50250*b[12]*b[15]+52323*b[12]*b[33]-191280*b[12]*b[138]-67886*b[13]*b[16]+38471*b[13]*b[34]+77261*b[13]*b[139]-67886*b[14]*b[17]+38471*b[14]*b[35]+77261*b[14]*b[140]-67886*b[15]*b[18]+38471*b[15]*b[36]+77261*b[15]*b[141]-180484*b[16]*b[19]-25662*b[16]*b[37]+52999*b[16]*b[142]-180484*b[17]*b[20]-25662*b[17]*b[38]+52999*b[17]*b[143]-180484*b[18]*b[21]-25662*b[18]*b[39]+52999*b[18]*b[144]+13495*b[19]*b[40]+30362*b[19]*b[145]+13495*b[20]*b[41]+30362*b[20]*b[146]+13495*b[21]*b[42]+30362*b[21]*b[147]+53624*b[22]*b[25]-177827*b[22]*b[40]+220239*b[22]*b[43]+53624*b[23]*b[26]-177827*b[23]*b[41]+220239*b[23]*b[44]+53624*b[24]*b[27]-177827*b[24]*b[42]+220239*b[24]*b[45]+188248*b[25]*b[28]-88647*b[25]*b[46]+188248*b[26]*b[29]-88647*b[26]*b[47]+188248*b[27]*b[30]-88647*b[27]*b[48]+83133*b[28]*b[31]+35225*b[28]*b[49]+83133*b[29]*b[32]+35225*b[29]*b[50]+83133*b[30]*b[33]+35225*b[30]*b[51]+167679*b[31]*b[34]+42769*b[31]*b[52]+167679*b[32]*b[35]+42769*b[32]*b[53]+167679*b[33]*b[36]+42769*b[33]*b[54]-27747*b[34]*b[37]+246522*b[34]*b[55]-27747*b[35]*b[38]+246522*b[35]*b[56]-27747*b[36]*b[39]+246522*b[36]*b[57]+37045*b[37]*b[40]+119254*b[37]*b[58]+37045*b[38]*b[41]+119254*b[38]*b[59]+37045*b[39]*b[42]+119254*b[39]*b[60]+140205*b[40]*b[61]+140205*b[41]*b[62]+140205*b[42]*b[63]-20395*b[43]*b[46]+53738*b[43]*b[61]-150009*b[43]*b[64]-20395*b[44]*b[47]+53738*b[44]*b[62]-150009*b[44]*b[65]-20395*b[45]*b[48]+53738*b[45]*b[63]-150009*b[45]*b[66]-111345*b[46]*b[49]-54432*b[46]*b[67]-111345*b[47]*b[50]-54432*b[47]*b[68]-111345*b[48]*b[51]-54432*b[48]*b[69]-29677*b[49]*b[52]-6944*b[49]*b[70]-29677*b[50]*b[53]-6944*b[50]*b[71]-29677*b[51]*b[54]-6944*b[51]*b[72]-21958*b[52]*b[55]+24962*b[52]*b[73]-21958*b[53]*b[56]+24962*b[53]*b[74]-21958*b[54]*b[57]+24962*b[54]*b[75]+138034*b[55]*b[58]-449347*b[55]*b[76]+138034*b[56]*b[59]-449347*b[56]*b[77]+138034*b[57]*b[60]-449347*b[57]*b[78]-25735*b[58]*b[61]-9378*b[58]*b[79]-25735*b[59]*b[62]-9378*b[59]*b[80]-25735*b[60]*b[63]-9378*b[60]*b[81]-21579*b[61]*b[82]-21579*b[62]*b[83]-21579*b[63]*b[84]-47083*b[64]*b[67]+189310*b[64]*b[82]+39678*b[64]*b[85]-47083*b[65]*b[68]+189310*b[65]*b[83]+39678*b[65]*b[86]-47083*b[66]*b[69]+189310*b[66]*b[84]+39678*b[66]*b[87]-88279*b[67]*b[70]-91790*b[67]*b[88]-88279*b[68]*b[71]-91790*b[68]*b[89]-88279*b[69]*b[72]-91790*b[69]*b[90]-126083*b[70]*b[73]+206726*b[70]*b[91]-126083*b[71]*b[74]+206726*b[71]*b[92]-126083*b[72]*b[75]+206726*b[72]*b[93]+31377*b[73]*b[76]-47085*b[73]*b[94]+31377*b[74]*b[77]-47085*b[74]*b[95]+31377*b[75]*b[78]-47085*b[75]*b[96]+59209*b[76]*b[79]-62335*b[76]*b[97]+59209*b[77]*b[80]-62335*b[77]*b[98]+59209*b[78]*b[81]-62335*b[78]*b[99]-41864*b[79]*b[82]+124532*b[79]*b[100]-41864*b[80]*b[83]+124532*b[80]*b[101]-41864*b[81]*b[84]+124532*b[81]*b[102]-35887*b[82]*b[103]-35887*b[83]*b[104]-35887*b[84]*b[105]+99820*b[85]*b[88]-34353*b[85]*b[103]-21734*b[85]*b[106]+99820*b[86]*b[89]-34353*b[86]*b[104]-21734*b[86]*b[107]+99820*b[87]*b[90]-34353*b[87]*b[105]-21734*b[87]*b[108]+6876*b[88]*b[91]+271707*b[88]*b[109]+6876*b[89]*b[92]+271707*b[89]*b[110]+6876*b[90]*b[93]+271707*b[90]*b[111]+2742*b[91]*b[94]-69992*b[91]*b[112]+2742*b[92]*b[95]-69992*b[92]*b[113]+2742*b[93]*b[96]-69992*b[93]*b[114]+49667*b[94]*b[97]-122559*b[94]*b[115]+49667*b[95]*b[98]-122559*b[95]*b[116]+49667*b[96]*b[99]-122559*b[96]*b[117]+43737*b[97]*b[100]-100320*b[97]*b[118]+43737*b[98]*b[101]-100320*b[98]*b[119]+43737*b[99]*b[102]-100320*b[99]*b[120]+245542*b[100]*b[103]+116052*b[100]*b[121]+245542*b[101]*b[104]+116052*b[101]*b[122]+245542*b[102]*b[105]+116052*b[102]*b[123]+195586*b[103]*b[124]+195586*b[104]*b[125]+195586*b[105]*b[126]+1319*b[106]*b[109]-33519*b[106]*b[124]-62792*b[106]*b[127]+1319*b[107]*b[110]-33519*b[107]*b[125]-62792*b[107]*b[128]+1319*b[108]*b[111]-33519*b[108]*b[126]-62792*b[108]*b[129]+353*b[109]*b[112]-12704*b[109]*b[130]+353*b[110]*b[113]-12704*b[110]*b[131]+353*b[111]*b[114]-12704*b[111]*b[132]-121534*b[112]*b[115]+75986*b[112]*b[133]-121534*b[113]*b[116]+75986*b[113]*b[134]-121534*b[114]*b[117]+75986*b[114]*b[135]-116713*b[115]*b[118]-36198*b[115]*b[136]-116713*b[116]*b[119]-36198*b[116]*b[137]-116713*b[117]*b[120]-36198*b[117]*b[138]+100127*b[118]*b[121]+113016*b[118]*b[139]+100127*b[119]*b[122]+113016*b[119]*b[140]+100127*b[120]*b[123]+113016*b[120]*b[141]+53451*b[121]*b[124]+49080*b[121]*b[142]+53451*b[122]*b[125]+49080*b[122]*b[143]+53451*b[123]*b[126]+49080*b[123]*b[144]+97829*b[124]*b[145]+97829*b[125]*b[146]+97829*b[126]*b[147]-5014*b[127]*b[130]+180361*b[127]*b[145]-5014*b[128]*b[131]+180361*b[128]*b[146]-5014*b[129]*b[132]+180361*b[129]*b[147]+23013*b[130]*b[133]+23013*b[131]*b[134]+23013*b[132]*b[135]-44376*b[133]*b[136]-44376*b[134]*b[137]-44376*b[135]*b[138]+32833*b[136]*b[139]+32833*b[137]*b[140]+32833*b[138]*b[141]-93485*b[139]*b[142]-93485*b[140]*b[143]-93485*b[141]*b[144]-257373*b[142]*b[145]-257373*b[143]*b[146]-257373*b[144]*b[147]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.