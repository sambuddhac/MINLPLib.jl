using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 10.0)
setupperbound(x[2], 10.0)
setupperbound(x[3], 10.0)
setupperbound(x[4], 10.0)
setupperbound(x[5], 10.0)
setupperbound(x[6], 10.0)
setupperbound(x[7], 10.0)
setupperbound(x[8], 10.0)
setupperbound(x[9], 10.0)
setupperbound(x[10], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.1* (x[1]*x[2])^4-10*x[1]+0.2* (x[2]*x[3])^4-20*x[2]+0.3* (x[3]*x[4])^4-30*x[3]+0.4* (x[4]*x[5])^4-40*x[4]+0.5* (x[5]*x[6])^4-50*x[5]+0.6* (x[6]*x[7])^4-60*x[6]+0.7* (x[7]*x[8])^4-70*x[7]+0.8* (x[8]*x[9])^4-80*x[8]+0.9* (x[9]*x[10])^4-90*x[9]+ (x[10]*x[11])^4-100*x[10]+4* (x[11])^2+2* (x[120])^2+x[11]*x[120]-110*x[11]+4* (x[12])^2+2* (x[120])^2+x[12]*x[120]-120*x[12]+4* (x[13])^2+2* (x[120])^2+x[13]*x[120]-130*x[13]+4* (x[14])^2+2* (x[120])^2+x[14]*x[120]-140*x[14]+4* (x[15])^2+2* (x[120])^2+x[15]*x[120]-150*x[15]+4* (x[16])^2+2* (x[120])^2+x[16]*x[120]-160*x[16]+4* (x[17])^2+2* (x[120])^2+x[17]*x[120]-170*x[17]+4* (x[18])^2+2* (x[120])^2+x[18]*x[120]-180*x[18]+4* (x[19])^2+2* (x[120])^2+x[19]*x[120]-190*x[19]+4* (x[20])^2+2* (x[120])^2+x[20]*x[120]-200*x[20]+4* (x[21])^2+2* (x[120])^2+x[21]*x[120]-210*x[21]+4* (x[22])^2+2* (x[120])^2+x[22]*x[120]-220*x[22]+4* (x[23])^2+2* (x[120])^2+x[23]*x[120]-230*x[23]+4* (x[24])^2+2* (x[120])^2+x[24]*x[120]-240*x[24]+4* (x[25])^2+2* (x[120])^2+x[25]*x[120]-250*x[25]+4* (x[26])^2+2* (x[120])^2+x[26]*x[120]-260*x[26]+4* (x[27])^2+2* (x[120])^2+x[27]*x[120]-270*x[27]+4* (x[28])^2+2* (x[120])^2+x[28]*x[120]-280*x[28]+4* (x[29])^2+2* (x[120])^2+x[29]*x[120]-290*x[29]+4* (x[30])^2+2* (x[120])^2+x[30]*x[120]-300*x[30]+4* (x[31])^2+2* (x[120])^2+x[31]*x[120]-310*x[31]+4* (x[32])^2+2* (x[120])^2+x[32]*x[120]-320*x[32]+4* (x[33])^2+2* (x[120])^2+x[33]*x[120]-330*x[33]+4* (x[34])^2+2* (x[120])^2+x[34]*x[120]-340*x[34]+4* (x[35])^2+2* (x[120])^2+x[35]*x[120]-350*x[35]+4* (x[36])^2+2* (x[120])^2+x[36]*x[120]-360*x[36]+4* (x[37])^2+2* (x[120])^2+x[37]*x[120]-370*x[37]+4* (x[38])^2+2* (x[120])^2+x[38]*x[120]-380*x[38]+4* (x[39])^2+2* (x[120])^2+x[39]*x[120]-390*x[39]+4* (x[40])^2+2* (x[120])^2+x[40]*x[120]-400*x[40]+4* (x[41])^2+2* (x[120])^2+x[41]*x[120]-410*x[41]+4* (x[42])^2+2* (x[120])^2+x[42]*x[120]-420*x[42]+4* (x[43])^2+2* (x[120])^2+x[43]*x[120]-430*x[43]+4* (x[44])^2+2* (x[120])^2+x[44]*x[120]-440*x[44]+4* (x[45])^2+2* (x[120])^2+x[45]*x[120]-450*x[45]+4* (x[46])^2+2* (x[120])^2+x[46]*x[120]-460*x[46]+4* (x[47])^2+2* (x[120])^2+x[47]*x[120]-470*x[47]+4* (x[48])^2+2* (x[120])^2+x[48]*x[120]-480*x[48]+4* (x[49])^2+2* (x[120])^2+x[49]*x[120]-490*x[49]+4* (x[50])^2+2* (x[120])^2+x[50]*x[120]-500*x[50]+4* (x[51])^2+2* (x[120])^2+x[51]*x[120]-510*x[51]+4* (x[52])^2+2* (x[120])^2+x[52]*x[120]-520*x[52]+4* (x[53])^2+2* (x[120])^2+x[53]*x[120]-530*x[53]+4* (x[54])^2+2* (x[120])^2+x[54]*x[120]-540*x[54]+4* (x[55])^2+2* (x[120])^2+x[55]*x[120]-550*x[55]+4* (x[56])^2+2* (x[120])^2+x[56]*x[120]-560*x[56]+4* (x[57])^2+2* (x[120])^2+x[57]*x[120]-570*x[57]+4* (x[58])^2+2* (x[120])^2+x[58]*x[120]-580*x[58]+4* (x[59])^2+2* (x[120])^2+x[59]*x[120]-590*x[59]+4* (x[60])^2+2* (x[120])^2+x[60]*x[120]-600*x[60]+4* (x[61])^2+2* (x[120])^2+x[61]*x[120]-610*x[61]+4* (x[62])^2+2* (x[120])^2+x[62]*x[120]-620*x[62]+4* (x[63])^2+2* (x[120])^2+x[63]*x[120]-630*x[63]+4* (x[64])^2+2* (x[120])^2+x[64]*x[120]-640*x[64]+4* (x[65])^2+2* (x[120])^2+x[65]*x[120]-650*x[65]+4* (x[66])^2+2* (x[120])^2+x[66]*x[120]-660*x[66]+4* (x[67])^2+2* (x[120])^2+x[67]*x[120]-670*x[67]+4* (x[68])^2+2* (x[120])^2+x[68]*x[120]-680*x[68]+4* (x[69])^2+2* (x[120])^2+x[69]*x[120]-690*x[69]+4* (x[70])^2+2* (x[120])^2+x[70]*x[120]-700*x[70]+4* (x[71])^2+2* (x[120])^2+x[71]*x[120]-710*x[71]+4* (x[72])^2+2* (x[120])^2+x[72]*x[120]-720*x[72]+4* (x[73])^2+2* (x[120])^2+x[73]*x[120]-730*x[73]+4* (x[74])^2+2* (x[120])^2+x[74]*x[120]-740*x[74]+4* (x[75])^2+2* (x[120])^2+x[75]*x[120]-750*x[75]+4* (x[76])^2+2* (x[120])^2+x[76]*x[120]-760*x[76]+4* (x[77])^2+2* (x[120])^2+x[77]*x[120]-770*x[77]+4* (x[78])^2+2* (x[120])^2+x[78]*x[120]-780*x[78]+4* (x[79])^2+2* (x[120])^2+x[79]*x[120]-790*x[79]+4* (x[80])^2+2* (x[120])^2+x[80]*x[120]-800*x[80]+4* (x[81])^2+2* (x[120])^2+x[81]*x[120]-810*x[81]+4* (x[82])^2+2* (x[120])^2+x[82]*x[120]-820*x[82]+4* (x[83])^2+2* (x[120])^2+x[83]*x[120]-830*x[83]+4* (x[84])^2+2* (x[120])^2+x[84]*x[120]-840*x[84]+4* (x[85])^2+2* (x[120])^2+x[85]*x[120]-850*x[85]+4* (x[86])^2+2* (x[120])^2+x[86]*x[120]-860*x[86]+4* (x[87])^2+2* (x[120])^2+x[87]*x[120]-870*x[87]+4* (x[88])^2+2* (x[120])^2+x[88]*x[120]-880*x[88]+4* (x[89])^2+2* (x[120])^2+x[89]*x[120]-890*x[89]+4* (x[90])^2+2* (x[120])^2+x[90]*x[120]-900*x[90]+4* (x[91])^2+2* (x[120])^2+x[91]*x[120]-910*x[91]+4* (x[92])^2+2* (x[120])^2+x[92]*x[120]-920*x[92]+4* (x[93])^2+2* (x[120])^2+x[93]*x[120]-930*x[93]+4* (x[94])^2+2* (x[120])^2+x[94]*x[120]-940*x[94]+4* (x[95])^2+2* (x[120])^2+x[95]*x[120]-950*x[95]+4* (x[96])^2+2* (x[120])^2+x[96]*x[120]-960*x[96]+4* (x[97])^2+2* (x[120])^2+x[97]*x[120]-970*x[97]+4* (x[98])^2+2* (x[120])^2+x[98]*x[120]-980*x[98]+4* (x[99])^2+2* (x[120])^2+x[99]*x[120]-990*x[99]+4* (x[100])^2+2* (x[120])^2+x[100]*x[120]-1000*x[100]+4* (x[101])^2+2* (x[120])^2+x[101]*x[120]-1010*x[101]+4* (x[102])^2+2* (x[120])^2+x[102]*x[120]-1020*x[102]+4* (x[103])^2+2* (x[120])^2+x[103]*x[120]-1030*x[103]+4* (x[104])^2+2* (x[120])^2+x[104]*x[120]-1040*x[104]+4* (x[105])^2+2* (x[120])^2+x[105]*x[120]-1050*x[105]+4* (x[106])^2+2* (x[120])^2+x[106]*x[120]-1060*x[106]+4* (x[107])^2+2* (x[120])^2+x[107]*x[120]-1070*x[107]+4* (x[108])^2+2* (x[120])^2+x[108]*x[120]-1080*x[108]+4* (x[109])^2+2* (x[120])^2+x[109]*x[120]-1090*x[109]+4* (x[110])^2+2* (x[120])^2+x[110]*x[120]-1100*x[110]+4* (x[111])^2+2* (x[120])^2+x[111]*x[120]-1110*x[111]+4* (x[112])^2+2* (x[120])^2+x[112]*x[120]-1120*x[112]+4* (x[113])^2+2* (x[120])^2+x[113]*x[120]-1130*x[113]+4* (x[114])^2+2* (x[120])^2+x[114]*x[120]-1140*x[114]+4* (x[115])^2+2* (x[120])^2+x[115]*x[120]-1150*x[115]+4* (x[116])^2+2* (x[120])^2+x[116]*x[120]-1160*x[116]+4* (x[117])^2+2* (x[120])^2+x[117]*x[120]-1170*x[117]+4* (x[118])^2+2* (x[120])^2+x[118]*x[120]-1180*x[118]+4* (x[119])^2+2* (x[120])^2+x[119]*x[120]-1190*x[119])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
