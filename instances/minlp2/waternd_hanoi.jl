using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100]
@variable(m, x[x_Idx])
b_Idx = Any[101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304]
@variable(m, b[b_Idx], Bin)
setlowerbound(x[1], 100.0)
setupperbound(x[1], 100.0)
setlowerbound(x[2], 30.0)
setupperbound(x[2], 100.0)
setlowerbound(x[3], 30.0)
setupperbound(x[3], 100.0)
setlowerbound(x[4], 30.0)
setupperbound(x[4], 100.0)
setlowerbound(x[5], 30.0)
setupperbound(x[5], 100.0)
setlowerbound(x[6], 30.0)
setupperbound(x[6], 100.0)
setlowerbound(x[7], 30.0)
setupperbound(x[7], 100.0)
setlowerbound(x[8], 30.0)
setupperbound(x[8], 100.0)
setlowerbound(x[9], 30.0)
setupperbound(x[9], 100.0)
setlowerbound(x[10], 30.0)
setupperbound(x[10], 100.0)
setlowerbound(x[11], 30.0)
setupperbound(x[11], 100.0)
setlowerbound(x[12], 30.0)
setupperbound(x[12], 100.0)
setlowerbound(x[13], 30.0)
setupperbound(x[13], 100.0)
setlowerbound(x[14], 30.0)
setupperbound(x[14], 100.0)
setlowerbound(x[15], 30.0)
setupperbound(x[15], 100.0)
setlowerbound(x[16], 30.0)
setupperbound(x[16], 100.0)
setlowerbound(x[17], 30.0)
setupperbound(x[17], 100.0)
setlowerbound(x[18], 30.0)
setupperbound(x[18], 100.0)
setlowerbound(x[19], 30.0)
setupperbound(x[19], 100.0)
setlowerbound(x[20], 30.0)
setupperbound(x[20], 100.0)
setlowerbound(x[21], 30.0)
setupperbound(x[21], 100.0)
setlowerbound(x[22], 30.0)
setupperbound(x[22], 100.0)
setlowerbound(x[23], 30.0)
setupperbound(x[23], 100.0)
setlowerbound(x[24], 30.0)
setupperbound(x[24], 100.0)
setlowerbound(x[25], 30.0)
setupperbound(x[25], 100.0)
setlowerbound(x[26], 30.0)
setupperbound(x[26], 100.0)
setlowerbound(x[27], 30.0)
setupperbound(x[27], 100.0)
setlowerbound(x[28], 30.0)
setupperbound(x[28], 100.0)
setlowerbound(x[29], 30.0)
setupperbound(x[29], 100.0)
setlowerbound(x[30], 30.0)
setupperbound(x[30], 100.0)
setlowerbound(x[31], 30.0)
setupperbound(x[31], 100.0)
setlowerbound(x[32], 30.0)
setupperbound(x[32], 100.0)
setlowerbound(x[67], 0.0729658769900397)
setupperbound(x[67], 0.810731966555996)
setlowerbound(x[68], 0.0729658769900397)
setupperbound(x[68], 0.810731966555996)
setlowerbound(x[69], 0.0729658769900397)
setupperbound(x[69], 0.810731966555996)
setlowerbound(x[70], 0.0729658769900397)
setupperbound(x[70], 0.810731966555996)
setlowerbound(x[71], 0.0729658769900397)
setupperbound(x[71], 0.810731966555996)
setlowerbound(x[72], 0.0729658769900397)
setupperbound(x[72], 0.810731966555996)
setlowerbound(x[73], 0.0729658769900397)
setupperbound(x[73], 0.810731966555996)
setlowerbound(x[74], 0.0729658769900397)
setupperbound(x[74], 0.810731966555996)
setlowerbound(x[75], 0.0729658769900397)
setupperbound(x[75], 0.810731966555996)
setlowerbound(x[76], 0.0729658769900397)
setupperbound(x[76], 0.810731966555996)
setlowerbound(x[77], 0.0729658769900397)
setupperbound(x[77], 0.810731966555996)
setlowerbound(x[78], 0.0729658769900397)
setupperbound(x[78], 0.810731966555996)
setlowerbound(x[79], 0.0729658769900397)
setupperbound(x[79], 0.810731966555996)
setlowerbound(x[80], 0.0729658769900397)
setupperbound(x[80], 0.810731966555996)
setlowerbound(x[81], 0.0729658769900397)
setupperbound(x[81], 0.810731966555996)
setlowerbound(x[82], 0.0729658769900397)
setupperbound(x[82], 0.810731966555996)
setlowerbound(x[83], 0.0729658769900397)
setupperbound(x[83], 0.810731966555996)
setlowerbound(x[84], 0.0729658769900397)
setupperbound(x[84], 0.810731966555996)
setlowerbound(x[85], 0.0729658769900397)
setupperbound(x[85], 0.810731966555996)
setlowerbound(x[86], 0.0729658769900397)
setupperbound(x[86], 0.810731966555996)
setlowerbound(x[87], 0.0729658769900397)
setupperbound(x[87], 0.810731966555996)
setlowerbound(x[88], 0.0729658769900397)
setupperbound(x[88], 0.810731966555996)
setlowerbound(x[89], 0.0729658769900397)
setupperbound(x[89], 0.810731966555996)
setlowerbound(x[90], 0.0729658769900397)
setupperbound(x[90], 0.810731966555996)
setlowerbound(x[91], 0.0729658769900397)
setupperbound(x[91], 0.810731966555996)
setlowerbound(x[92], 0.0729658769900397)
setupperbound(x[92], 0.810731966555996)
setlowerbound(x[93], 0.0729658769900397)
setupperbound(x[93], 0.810731966555996)
setlowerbound(x[94], 0.0729658769900397)
setupperbound(x[94], 0.810731966555996)
setlowerbound(x[95], 0.0729658769900397)
setupperbound(x[95], 0.810731966555996)
setlowerbound(x[96], 0.0729658769900397)
setupperbound(x[96], 0.810731966555996)
setlowerbound(x[97], 0.0729658769900397)
setupperbound(x[97], 0.810731966555996)
setlowerbound(x[98], 0.0729658769900397)
setupperbound(x[98], 0.810731966555996)
setlowerbound(x[99], 0.0729658769900397)
setupperbound(x[99], 0.810731966555996)
setlowerbound(x[100], 0.0729658769900397)
setupperbound(x[100], 0.810731966555996)


# ----- Constraints ----- #
@constraint(m, e1, -4573*b[101]-7040*b[102]-9839*b[103]-12933*b[104]-18075*b[105]-27828*b[106]-61735.5*b[107]-95040*b[108]-132826.5*b[109]-174595.5*b[110]-244012.5*b[111]-375678*b[112]-41157*b[113]-63360*b[114]-88551*b[115]-116397*b[116]-162675*b[117]-250452*b[118]-100606*b[119]-154880*b[120]-216458*b[121]-284526*b[122]-397650*b[123]-612216*b[124]-52589.5*b[125]-80960*b[126]-113148.5*b[127]-148729.5*b[128]-207862.5*b[129]-320022*b[130]-66308.5*b[131]-102080*b[132]-142665.5*b[133]-187528.5*b[134]-262087.5*b[135]-403506*b[136]-20578.5*b[137]-31680*b[138]-44275.5*b[139]-58198.5*b[140]-81337.5*b[141]-125226*b[142]-38870.5*b[143]-59840*b[144]-83631.5*b[145]-109930.5*b[146]-153637.5*b[147]-236538*b[148]-38870.5*b[149]-59840*b[150]-83631.5*b[151]-109930.5*b[152]-153637.5*b[153]-236538*b[154]-36584*b[155]-56320*b[156]-78712*b[157]-103464*b[158]-144600*b[159]-222624*b[160]-43443.5*b[161]-66880*b[162]-93470.5*b[163]-122863.5*b[164]-171712.5*b[165]-264366*b[166]-36584*b[167]-56320*b[168]-78712*b[169]-103464*b[170]-144600*b[171]-222624*b[172]-54876*b[173]-84480*b[174]-118068*b[175]-155196*b[176]-216900*b[177]-333936*b[178]-160055*b[179]-246400*b[180]-344365*b[181]-452655*b[182]-632625*b[183]-973980*b[184]-22865*b[185]-35200*b[186]-49195*b[187]-64665*b[188]-90375*b[189]-139140*b[190]-25151.5*b[191]-38720*b[192]-54114.5*b[193]-71131.5*b[194]-99412.5*b[195]-153054*b[196]-124842.9*b[197]-192192*b[198]-268604.7*b[199]-353070.9*b[200]-493447.5*b[201]-759704.4*b[202]-80027.5*b[203]-123200*b[204]-172182.5*b[205]-226327.5*b[206]-316312.5*b[207]-486990*b[208]-36584*b[209]-56320*b[210]-78712*b[211]-103464*b[212]-144600*b[213]-222624*b[214]-18292*b[215]-28160*b[216]-39356*b[217]-51732*b[218]-72300*b[219]-111312*b[220]-68595*b[221]-105600*b[222]-147585*b[223]-193995*b[224]-271125*b[225]-417420*b[226]-121184.5*b[227]-186560*b[228]-260733.5*b[229]-342724.5*b[230]-478987.5*b[231]-737442*b[232]-22865*b[233]-35200*b[234]-49195*b[235]-64665*b[236]-90375*b[237]-139140*b[238]-56247.9*b[239]-86592*b[240]-121019.7*b[241]-159075.9*b[242]-222322.5*b[243]-342284.4*b[244]-68595*b[245]-105600*b[246]-147585*b[247]-193995*b[248]-271125*b[249]-417420*b[250]-59449*b[251]-91520*b[252]-127907*b[253]-168129*b[254]-234975*b[255]-361764*b[256]-38870.5*b[257]-59840*b[258]-83631.5*b[259]-109930.5*b[260]-153637.5*b[261]-236538*b[262]-13719*b[263]-21120*b[264]-29517*b[265]-38799*b[266]-54225*b[267]-83484*b[268]-34297.5*b[269]-52800*b[270]-73792.5*b[271]-96997.5*b[272]-135562.5*b[273]-208710*b[274]-91460*b[275]-140800*b[276]-196780*b[277]-258660*b[278]-361500*b[279]-556560*b[280]-73168*b[281]-112640*b[282]-157424*b[283]-206928*b[284]-289200*b[285]-445248*b[286]-6859.5*b[287]-10560*b[288]-14758.5*b[289]-19399.5*b[290]-27112.5*b[291]-41742*b[292]-39327.8*b[293]-60544*b[294]-84615.4*b[295]-111223.8*b[296]-155445*b[297]-239320.8*b[298]-43443.5*b[299]-66880*b[300]-93470.5*b[301]-122863.5*b[302]-171712.5*b[303]-264366*b[304]+objvar == 0.0)
@constraint(m, e2, -x[33]+x[34] == -0.24722)
@constraint(m, e3, -x[34]+x[35]+x[36]-x[52] == -0.23611)
@constraint(m, e4, -x[35]+x[37] == -0.03611)
@constraint(m, e5, -x[37]+x[38] == -0.20139)
@constraint(m, e6, -x[38]+x[39] == -0.27917)
@constraint(m, e7, -x[39]+x[40] == -0.375)
@constraint(m, e8, -x[40]+x[41] == -0.15278)
@constraint(m, e9, -x[41]+x[42] == -0.14583)
@constraint(m, e10, -x[42]+x[43]+x[44] == -0.14583)
@constraint(m, e11, -x[43]+x[45] == -0.13889)
@constraint(m, e12, -x[45]+x[46] == -0.15556)
@constraint(m, e13, -x[46] == -0.26111)
@constraint(m, e14, -x[44]+x[47] == -0.17083)
@constraint(m, e15, -x[47]+x[48] == -0.07778)
@constraint(m, e16, -x[48]+x[49]-x[61] == -0.08611)
@constraint(m, e17, -x[49]+x[50] == -0.24028)
@constraint(m, e18, -x[50]+x[51] == -0.37361)
@constraint(m, e19, -x[51]+x[52] == -0.01667)
@constraint(m, e20, -x[36]+x[53]+x[54] == -0.35417)
@constraint(m, e21, -x[53]+x[55] == -0.25833)
@constraint(m, e22, -x[55] == -0.13472)
@constraint(m, e23, -x[54]+x[56]+x[57] == -0.29028)
@constraint(m, e24, -x[56]+x[58] == -0.22778)
@constraint(m, e25, -x[58]+x[59]-x[66] == -0.04722)
@constraint(m, e26, -x[59]+x[60] == -0.25)
@constraint(m, e27, -x[60]+x[61] == -0.10278)
@constraint(m, e28, -x[57]+x[62] == -0.08056)
@constraint(m, e29, -x[62]+x[63] == -0.1)
@constraint(m, e30, -x[63]+x[64] == -0.1)
@constraint(m, e31, -x[64]+x[65] == -0.02917)
@constraint(m, e32, -x[65]+x[66] == -0.22361)
@NLconstraint(m, e33, SignPower(x[33],1.852)-7.6849192909955*(1.27323954473516*x[67])^2.435*(x[1]-x[2]) == 0.0)
@NLconstraint(m, e34, SignPower(x[34],1.852)-0.569253280814482*(1.27323954473516*x[68])^2.435*(x[2]-x[3]) == 0.0)
@NLconstraint(m, e35, SignPower(x[35],1.852)-0.853879921221723*(1.27323954473516*x[69])^2.435*(x[3]-x[4]) == 0.0)
@NLconstraint(m, e36, SignPower(x[36],1.852)-0.349314513227068*(1.27323954473516*x[70])^2.435*(x[3]-x[20]) == 0.0)
@NLconstraint(m, e37, SignPower(x[37],1.852)-0.668253851390913*(1.27323954473516*x[71])^2.435*(x[4]-x[5]) == 0.0)
@NLconstraint(m, e38, SignPower(x[38],1.852)-0.529994433861759*(1.27323954473516*x[72])^2.435*(x[5]-x[6]) == 0.0)
@NLconstraint(m, e39, SignPower(x[39],1.852)-1.70775984244345*(1.27323954473516*x[73])^2.435*(x[6]-x[7]) == 0.0)
@NLconstraint(m, e40, SignPower(x[40],1.852)-0.904108151881824*(1.27323954473516*x[74])^2.435*(x[7]-x[8]) == 0.0)
@NLconstraint(m, e41, SignPower(x[41],1.852)-0.904108151881824*(1.27323954473516*x[75])^2.435*(x[8]-x[9]) == 0.0)
@NLconstraint(m, e42, SignPower(x[42],1.852)-0.960614911374438*(1.27323954473516*x[76])^2.435*(x[9]-x[10]) == 0.0)
@NLconstraint(m, e43, SignPower(x[43],1.852)-0.808938872736369*(1.27323954473516*x[77])^2.435*(x[10]-x[11]) == 0.0)
@NLconstraint(m, e44, SignPower(x[44],1.852)-0.960614911374438*(1.27323954473516*x[78])^2.435*(x[10]-x[14]) == 0.0)
@NLconstraint(m, e45, SignPower(x[45],1.852)-0.640409940916292*(1.27323954473516*x[79])^2.435*(x[11]-x[12]) == 0.0)
@NLconstraint(m, e46, SignPower(x[46],1.852)-0.219569122599872*(1.27323954473516*x[80])^2.435*(x[12]-x[13]) == 0.0)
@NLconstraint(m, e47, SignPower(x[47],1.852)-1.5369838581991*(1.27323954473516*x[81])^2.435*(x[14]-x[15]) == 0.0)
@NLconstraint(m, e48, SignPower(x[48],1.852)-1.39725805290827*(1.27323954473516*x[82])^2.435*(x[15]-x[16]) == 0.0)
@NLconstraint(m, e49, SignPower(x[49],1.852)-0.28149887512804*(1.27323954473516*x[83])^2.435*(x[16]-x[17]) == 0.0)
@NLconstraint(m, e50, SignPower(x[50],1.852)-0.439138245199743*(1.27323954473516*x[84])^2.435*(x[17]-x[18]) == 0.0)
@NLconstraint(m, e51, SignPower(x[51],1.852)-0.960614911374438*(1.27323954473516*x[85])^2.435*(x[18]-x[19]) == 0.0)
@NLconstraint(m, e52, SignPower(x[52],1.852)-1.92122982274888*(1.27323954473516*x[86])^2.435*(x[19]-x[3]) == 0.0)
@NLconstraint(m, e53, SignPower(x[53],1.852)-0.512327952733034*(1.27323954473516*x[87])^2.435*(x[20]-x[21]) == 0.0)
@NLconstraint(m, e54, SignPower(x[54],1.852)-0.289996954377189*(1.27323954473516*x[88])^2.435*(x[20]-x[23]) == 0.0)
@NLconstraint(m, e55, SignPower(x[55],1.852)-1.5369838581991*(1.27323954473516*x[89])^2.435*(x[21]-x[22]) == 0.0)
@NLconstraint(m, e56, SignPower(x[56],1.852)-0.624790186259797*(1.27323954473516*x[90])^2.435*(x[23]-x[24]) == 0.0)
@NLconstraint(m, e57, SignPower(x[57],1.852)-0.512327952733034*(1.27323954473516*x[91])^2.435*(x[23]-x[28]) == 0.0)
@NLconstraint(m, e58, SignPower(x[58],1.852)-0.591147637768885*(1.27323954473516*x[92])^2.435*(x[24]-x[25]) == 0.0)
@NLconstraint(m, e59, SignPower(x[59],1.852)-0.904108151881824*(1.27323954473516*x[93])^2.435*(x[25]-x[26]) == 0.0)
@NLconstraint(m, e60, SignPower(x[60],1.852)-2.56163976366517*(1.27323954473516*x[94])^2.435*(x[26]-x[27]) == 0.0)
@NLconstraint(m, e61, SignPower(x[61],1.852)-1.02465590546607*(1.27323954473516*x[95])^2.435*(x[27]-x[16]) == 0.0)
@NLconstraint(m, e62, SignPower(x[62],1.852)-0.384245964549775*(1.27323954473516*x[96])^2.435*(x[28]-x[29]) == 0.0)
@NLconstraint(m, e63, SignPower(x[63],1.852)-0.480307455687219*(1.27323954473516*x[97])^2.435*(x[29]-x[30]) == 0.0)
@NLconstraint(m, e64, SignPower(x[64],1.852)-5.12327952733034*(1.27323954473516*x[98])^2.435*(x[30]-x[31]) == 0.0)
@NLconstraint(m, e65, SignPower(x[65],1.852)-0.893595266394826*(1.27323954473516*x[99])^2.435*(x[31]-x[32]) == 0.0)
@NLconstraint(m, e66, SignPower(x[66],1.852)-0.808938872736369*(1.27323954473516*x[100])^2.435*(x[32]-x[25]) == 0.0)
@constraint(m, e67, x[33]-7*x[67] <= 0.0)
@constraint(m, e68, x[34]-7*x[68] <= 0.0)
@constraint(m, e69, x[35]-3*x[69] <= 0.0)
@constraint(m, e70, x[36]-3*x[70] <= 0.0)
@constraint(m, e71, x[37]-3*x[71] <= 0.0)
@constraint(m, e72, x[38]-2.5*x[72] <= 0.0)
@constraint(m, e73, x[39]-2.5*x[73] <= 0.0)
@constraint(m, e74, x[40]-2*x[74] <= 0.0)
@constraint(m, e75, x[41]-2*x[75] <= 0.0)
@constraint(m, e76, x[42]-2*x[76] <= 0.0)
@constraint(m, e77, x[43]-2*x[77] <= 0.0)
@constraint(m, e78, x[44]-2*x[78] <= 0.0)
@constraint(m, e79, x[45]-2*x[79] <= 0.0)
@constraint(m, e80, x[46]-2*x[80] <= 0.0)
@constraint(m, e81, x[47]-2*x[81] <= 0.0)
@constraint(m, e82, x[48]-2*x[82] <= 0.0)
@constraint(m, e83, x[49]-2*x[83] <= 0.0)
@constraint(m, e84, x[50]-2*x[84] <= 0.0)
@constraint(m, e85, x[51]-3.5*x[85] <= 0.0)
@constraint(m, e86, x[52]-3.5*x[86] <= 0.0)
@constraint(m, e87, x[53]-2*x[87] <= 0.0)
@constraint(m, e88, x[54]-2*x[88] <= 0.0)
@constraint(m, e89, x[55]-2*x[89] <= 0.0)
@constraint(m, e90, x[56]-3*x[90] <= 0.0)
@constraint(m, e91, x[57]-2*x[91] <= 0.0)
@constraint(m, e92, x[58]-2*x[92] <= 0.0)
@constraint(m, e93, x[59]-2*x[93] <= 0.0)
@constraint(m, e94, x[60]-2*x[94] <= 0.0)
@constraint(m, e95, x[61]-2*x[95] <= 0.0)
@constraint(m, e96, x[62]-2*x[96] <= 0.0)
@constraint(m, e97, x[63]-2*x[97] <= 0.0)
@constraint(m, e98, x[64]-2*x[98] <= 0.0)
@constraint(m, e99, x[65]-2*x[99] <= 0.0)
@constraint(m, e100, x[66]-2*x[100] <= 0.0)
@constraint(m, e101, x[33]+7*x[67] >= 0.0)
@constraint(m, e102, x[34]+7*x[68] >= 0.0)
@constraint(m, e103, x[35]+3*x[69] >= 0.0)
@constraint(m, e104, x[36]+3*x[70] >= 0.0)
@constraint(m, e105, x[37]+3*x[71] >= 0.0)
@constraint(m, e106, x[38]+2.5*x[72] >= 0.0)
@constraint(m, e107, x[39]+2.5*x[73] >= 0.0)
@constraint(m, e108, x[40]+2*x[74] >= 0.0)
@constraint(m, e109, x[41]+2*x[75] >= 0.0)
@constraint(m, e110, x[42]+2*x[76] >= 0.0)
@constraint(m, e111, x[43]+2*x[77] >= 0.0)
@constraint(m, e112, x[44]+2*x[78] >= 0.0)
@constraint(m, e113, x[45]+2*x[79] >= 0.0)
@constraint(m, e114, x[46]+2*x[80] >= 0.0)
@constraint(m, e115, x[47]+2*x[81] >= 0.0)
@constraint(m, e116, x[48]+2*x[82] >= 0.0)
@constraint(m, e117, x[49]+2*x[83] >= 0.0)
@constraint(m, e118, x[50]+2*x[84] >= 0.0)
@constraint(m, e119, x[51]+3.5*x[85] >= 0.0)
@constraint(m, e120, x[52]+3.5*x[86] >= 0.0)
@constraint(m, e121, x[53]+2*x[87] >= 0.0)
@constraint(m, e122, x[54]+2*x[88] >= 0.0)
@constraint(m, e123, x[55]+2*x[89] >= 0.0)
@constraint(m, e124, x[56]+3*x[90] >= 0.0)
@constraint(m, e125, x[57]+2*x[91] >= 0.0)
@constraint(m, e126, x[58]+2*x[92] >= 0.0)
@constraint(m, e127, x[59]+2*x[93] >= 0.0)
@constraint(m, e128, x[60]+2*x[94] >= 0.0)
@constraint(m, e129, x[61]+2*x[95] >= 0.0)
@constraint(m, e130, x[62]+2*x[96] >= 0.0)
@constraint(m, e131, x[63]+2*x[97] >= 0.0)
@constraint(m, e132, x[64]+2*x[98] >= 0.0)
@constraint(m, e133, x[65]+2*x[99] >= 0.0)
@constraint(m, e134, x[66]+2*x[100] >= 0.0)
@constraint(m, e135, x[67]-0.0729658769900397*b[101]-0.129717114648959*b[102]-0.202682991638999*b[103]-0.291863507960159*b[104]-0.456036731187748*b[105]-0.810731966555996*b[106] == 0.0)
@constraint(m, e136, x[68]-0.0729658769900397*b[107]-0.129717114648959*b[108]-0.202682991638999*b[109]-0.291863507960159*b[110]-0.456036731187748*b[111]-0.810731966555996*b[112] == 0.0)
@constraint(m, e137, x[69]-0.0729658769900397*b[113]-0.129717114648959*b[114]-0.202682991638999*b[115]-0.291863507960159*b[116]-0.456036731187748*b[117]-0.810731966555996*b[118] == 0.0)
@constraint(m, e138, x[70]-0.0729658769900397*b[119]-0.129717114648959*b[120]-0.202682991638999*b[121]-0.291863507960159*b[122]-0.456036731187748*b[123]-0.810731966555996*b[124] == 0.0)
@constraint(m, e139, x[71]-0.0729658769900397*b[125]-0.129717114648959*b[126]-0.202682991638999*b[127]-0.291863507960159*b[128]-0.456036731187748*b[129]-0.810731966555996*b[130] == 0.0)
@constraint(m, e140, x[72]-0.0729658769900397*b[131]-0.129717114648959*b[132]-0.202682991638999*b[133]-0.291863507960159*b[134]-0.456036731187748*b[135]-0.810731966555996*b[136] == 0.0)
@constraint(m, e141, x[73]-0.0729658769900397*b[137]-0.129717114648959*b[138]-0.202682991638999*b[139]-0.291863507960159*b[140]-0.456036731187748*b[141]-0.810731966555996*b[142] == 0.0)
@constraint(m, e142, x[74]-0.0729658769900397*b[143]-0.129717114648959*b[144]-0.202682991638999*b[145]-0.291863507960159*b[146]-0.456036731187748*b[147]-0.810731966555996*b[148] == 0.0)
@constraint(m, e143, x[75]-0.0729658769900397*b[149]-0.129717114648959*b[150]-0.202682991638999*b[151]-0.291863507960159*b[152]-0.456036731187748*b[153]-0.810731966555996*b[154] == 0.0)
@constraint(m, e144, x[76]-0.0729658769900397*b[155]-0.129717114648959*b[156]-0.202682991638999*b[157]-0.291863507960159*b[158]-0.456036731187748*b[159]-0.810731966555996*b[160] == 0.0)
@constraint(m, e145, x[77]-0.0729658769900397*b[161]-0.129717114648959*b[162]-0.202682991638999*b[163]-0.291863507960159*b[164]-0.456036731187748*b[165]-0.810731966555996*b[166] == 0.0)
@constraint(m, e146, x[78]-0.0729658769900397*b[167]-0.129717114648959*b[168]-0.202682991638999*b[169]-0.291863507960159*b[170]-0.456036731187748*b[171]-0.810731966555996*b[172] == 0.0)
@constraint(m, e147, x[79]-0.0729658769900397*b[173]-0.129717114648959*b[174]-0.202682991638999*b[175]-0.291863507960159*b[176]-0.456036731187748*b[177]-0.810731966555996*b[178] == 0.0)
@constraint(m, e148, x[80]-0.0729658769900397*b[179]-0.129717114648959*b[180]-0.202682991638999*b[181]-0.291863507960159*b[182]-0.456036731187748*b[183]-0.810731966555996*b[184] == 0.0)
@constraint(m, e149, x[81]-0.0729658769900397*b[185]-0.129717114648959*b[186]-0.202682991638999*b[187]-0.291863507960159*b[188]-0.456036731187748*b[189]-0.810731966555996*b[190] == 0.0)
@constraint(m, e150, x[82]-0.0729658769900397*b[191]-0.129717114648959*b[192]-0.202682991638999*b[193]-0.291863507960159*b[194]-0.456036731187748*b[195]-0.810731966555996*b[196] == 0.0)
@constraint(m, e151, x[83]-0.0729658769900397*b[197]-0.129717114648959*b[198]-0.202682991638999*b[199]-0.291863507960159*b[200]-0.456036731187748*b[201]-0.810731966555996*b[202] == 0.0)
@constraint(m, e152, x[84]-0.0729658769900397*b[203]-0.129717114648959*b[204]-0.202682991638999*b[205]-0.291863507960159*b[206]-0.456036731187748*b[207]-0.810731966555996*b[208] == 0.0)
@constraint(m, e153, x[85]-0.0729658769900397*b[209]-0.129717114648959*b[210]-0.202682991638999*b[211]-0.291863507960159*b[212]-0.456036731187748*b[213]-0.810731966555996*b[214] == 0.0)
@constraint(m, e154, x[86]-0.0729658769900397*b[215]-0.129717114648959*b[216]-0.202682991638999*b[217]-0.291863507960159*b[218]-0.456036731187748*b[219]-0.810731966555996*b[220] == 0.0)
@constraint(m, e155, x[87]-0.0729658769900397*b[221]-0.129717114648959*b[222]-0.202682991638999*b[223]-0.291863507960159*b[224]-0.456036731187748*b[225]-0.810731966555996*b[226] == 0.0)
@constraint(m, e156, x[88]-0.0729658769900397*b[227]-0.129717114648959*b[228]-0.202682991638999*b[229]-0.291863507960159*b[230]-0.456036731187748*b[231]-0.810731966555996*b[232] == 0.0)
@constraint(m, e157, x[89]-0.0729658769900397*b[233]-0.129717114648959*b[234]-0.202682991638999*b[235]-0.291863507960159*b[236]-0.456036731187748*b[237]-0.810731966555996*b[238] == 0.0)
@constraint(m, e158, x[90]-0.0729658769900397*b[239]-0.129717114648959*b[240]-0.202682991638999*b[241]-0.291863507960159*b[242]-0.456036731187748*b[243]-0.810731966555996*b[244] == 0.0)
@constraint(m, e159, x[91]-0.0729658769900397*b[245]-0.129717114648959*b[246]-0.202682991638999*b[247]-0.291863507960159*b[248]-0.456036731187748*b[249]-0.810731966555996*b[250] == 0.0)
@constraint(m, e160, x[92]-0.0729658769900397*b[251]-0.129717114648959*b[252]-0.202682991638999*b[253]-0.291863507960159*b[254]-0.456036731187748*b[255]-0.810731966555996*b[256] == 0.0)
@constraint(m, e161, x[93]-0.0729658769900397*b[257]-0.129717114648959*b[258]-0.202682991638999*b[259]-0.291863507960159*b[260]-0.456036731187748*b[261]-0.810731966555996*b[262] == 0.0)
@constraint(m, e162, x[94]-0.0729658769900397*b[263]-0.129717114648959*b[264]-0.202682991638999*b[265]-0.291863507960159*b[266]-0.456036731187748*b[267]-0.810731966555996*b[268] == 0.0)
@constraint(m, e163, x[95]-0.0729658769900397*b[269]-0.129717114648959*b[270]-0.202682991638999*b[271]-0.291863507960159*b[272]-0.456036731187748*b[273]-0.810731966555996*b[274] == 0.0)
@constraint(m, e164, x[96]-0.0729658769900397*b[275]-0.129717114648959*b[276]-0.202682991638999*b[277]-0.291863507960159*b[278]-0.456036731187748*b[279]-0.810731966555996*b[280] == 0.0)
@constraint(m, e165, x[97]-0.0729658769900397*b[281]-0.129717114648959*b[282]-0.202682991638999*b[283]-0.291863507960159*b[284]-0.456036731187748*b[285]-0.810731966555996*b[286] == 0.0)
@constraint(m, e166, x[98]-0.0729658769900397*b[287]-0.129717114648959*b[288]-0.202682991638999*b[289]-0.291863507960159*b[290]-0.456036731187748*b[291]-0.810731966555996*b[292] == 0.0)
@constraint(m, e167, x[99]-0.0729658769900397*b[293]-0.129717114648959*b[294]-0.202682991638999*b[295]-0.291863507960159*b[296]-0.456036731187748*b[297]-0.810731966555996*b[298] == 0.0)
@constraint(m, e168, x[100]-0.0729658769900397*b[299]-0.129717114648959*b[300]-0.202682991638999*b[301]-0.291863507960159*b[302]-0.456036731187748*b[303]-0.810731966555996*b[304] == 0.0)
@constraint(m, e169, b[101]+b[102]+b[103]+b[104]+b[105]+b[106] == 1.0)
@constraint(m, e170, b[107]+b[108]+b[109]+b[110]+b[111]+b[112] == 1.0)
@constraint(m, e171, b[113]+b[114]+b[115]+b[116]+b[117]+b[118] == 1.0)
@constraint(m, e172, b[119]+b[120]+b[121]+b[122]+b[123]+b[124] == 1.0)
@constraint(m, e173, b[125]+b[126]+b[127]+b[128]+b[129]+b[130] == 1.0)
@constraint(m, e174, b[131]+b[132]+b[133]+b[134]+b[135]+b[136] == 1.0)
@constraint(m, e175, b[137]+b[138]+b[139]+b[140]+b[141]+b[142] == 1.0)
@constraint(m, e176, b[143]+b[144]+b[145]+b[146]+b[147]+b[148] == 1.0)
@constraint(m, e177, b[149]+b[150]+b[151]+b[152]+b[153]+b[154] == 1.0)
@constraint(m, e178, b[155]+b[156]+b[157]+b[158]+b[159]+b[160] == 1.0)
@constraint(m, e179, b[161]+b[162]+b[163]+b[164]+b[165]+b[166] == 1.0)
@constraint(m, e180, b[167]+b[168]+b[169]+b[170]+b[171]+b[172] == 1.0)
@constraint(m, e181, b[173]+b[174]+b[175]+b[176]+b[177]+b[178] == 1.0)
@constraint(m, e182, b[179]+b[180]+b[181]+b[182]+b[183]+b[184] == 1.0)
@constraint(m, e183, b[185]+b[186]+b[187]+b[188]+b[189]+b[190] == 1.0)
@constraint(m, e184, b[191]+b[192]+b[193]+b[194]+b[195]+b[196] == 1.0)
@constraint(m, e185, b[197]+b[198]+b[199]+b[200]+b[201]+b[202] == 1.0)
@constraint(m, e186, b[203]+b[204]+b[205]+b[206]+b[207]+b[208] == 1.0)
@constraint(m, e187, b[209]+b[210]+b[211]+b[212]+b[213]+b[214] == 1.0)
@constraint(m, e188, b[215]+b[216]+b[217]+b[218]+b[219]+b[220] == 1.0)
@constraint(m, e189, b[221]+b[222]+b[223]+b[224]+b[225]+b[226] == 1.0)
@constraint(m, e190, b[227]+b[228]+b[229]+b[230]+b[231]+b[232] == 1.0)
@constraint(m, e191, b[233]+b[234]+b[235]+b[236]+b[237]+b[238] == 1.0)
@constraint(m, e192, b[239]+b[240]+b[241]+b[242]+b[243]+b[244] == 1.0)
@constraint(m, e193, b[245]+b[246]+b[247]+b[248]+b[249]+b[250] == 1.0)
@constraint(m, e194, b[251]+b[252]+b[253]+b[254]+b[255]+b[256] == 1.0)
@constraint(m, e195, b[257]+b[258]+b[259]+b[260]+b[261]+b[262] == 1.0)
@constraint(m, e196, b[263]+b[264]+b[265]+b[266]+b[267]+b[268] == 1.0)
@constraint(m, e197, b[269]+b[270]+b[271]+b[272]+b[273]+b[274] == 1.0)
@constraint(m, e198, b[275]+b[276]+b[277]+b[278]+b[279]+b[280] == 1.0)
@constraint(m, e199, b[281]+b[282]+b[283]+b[284]+b[285]+b[286] == 1.0)
@constraint(m, e200, b[287]+b[288]+b[289]+b[290]+b[291]+b[292] == 1.0)
@constraint(m, e201, b[293]+b[294]+b[295]+b[296]+b[297]+b[298] == 1.0)
@constraint(m, e202, b[299]+b[300]+b[301]+b[302]+b[303]+b[304] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
