using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]
@variable(m, x[x_Idx])
setlowerbound(x[16], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[61], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[65], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.01*(x[1]*x[1]+x[2]*x[2]+x[3]*x[3]+2*x[4]*x[4]+2*x[5]*x[5]+x[6]*x[6]+x[7]*x[7]+4*x[8]*x[8]+4*x[9]*x[9]+x[10]*x[10]+x[12]*x[12]+x[13]*x[13]+2*x[14]*x[14]+2*x[15]*x[15]+2*x[16]*x[16]+x[17]*x[17]+2*x[18]*x[18]+4*x[19]*x[19]+4*x[20]*x[20]+x[21]*x[21]+4*x[22]*x[22]+x[24]*x[24]+x[25]*x[25]+x[26]*x[26]+2*x[27]*x[27]+2*x[28]*x[28]+2*x[29]*x[29]+2*x[30]*x[30]+x[31]*x[31]+4*x[32]*x[32]+2*x[33]*x[33]+4*x[34]*x[34]+x[36]*x[36]+2*x[37]*x[37]+4*x[38]*x[38]+2*x[39]*x[39]+2*x[40]*x[40]+2*x[41]*x[41]+2*x[42]*x[42]+2*x[43]*x[43]+4*x[44]*x[44]+2*x[45]*x[45]+4*x[46]*x[46]+x[48]*x[48]+x[49]*x[49]+x[50]*x[50]+4*x[51]*x[51]+2*x[52]*x[52]+4*x[53]*x[53]+x[54]*x[54]+4*x[55]*x[55]+4*x[56]*x[56]+4*x[57]*x[57]+4*x[58]*x[58]+x[60]*x[60]+x[61]*x[61]+x[63]*x[63]+x[65]*x[65]+x[67]*x[67]+x[69]*x[69])+0.01*(sqrt(1+ (x[1])^2+ (x[1]-x[14])^2)+sqrt(1+ (x[2])^2+ (x[2]-6*x[14])^2)+sqrt(1+ (x[3])^2+ (x[3]-x[16])^2)+sqrt(1+ (x[4])^2+ (x[4]-6*x[16])^2)+sqrt(1+ (x[5])^2+ (x[5]-x[18])^2)+sqrt(1+ (x[6])^2+ (x[6]-6*x[18])^2)+sqrt(1+ (x[7])^2+ (x[7]-x[20])^2)+sqrt(1+ (x[8])^2+ (x[8]-6*x[20])^2)+sqrt(1+ (x[9])^2+ (x[9]-x[23])^2)+sqrt(1+ (x[10])^2+ (x[10]-6*x[22])^2)+sqrt(1+ (x[12])^2+ (x[12]-6*x[24])^2)+sqrt(1+ (x[13])^2+ (x[13]-x[26])^2)+sqrt(1+ (x[14])^2+ (x[14]-6*x[26])^2)+sqrt(1+ (x[15])^2+ (x[15]-x[28])^2)+sqrt(1+ (x[16])^2+ (x[16]-6*x[28])^2)+sqrt(1+ (x[17])^2+ (x[17]-x[30])^2)+sqrt(1+ (x[18])^2+ (x[18]-6*x[30])^2)+sqrt(1+ (x[19])^2+ (x[19]-x[32])^2)+sqrt(1+ (x[20])^2+ (x[20]-6*x[32])^2)+sqrt(1+ (x[21])^2+ (x[21]-x[35])^2)+sqrt(1+ (x[22])^2+ (x[22]-6*x[34])^2)+sqrt(1+ (x[24])^2+ (x[24]-6*x[36])^2)+sqrt(1+ (x[25])^2+ (x[25]-x[38])^2)+sqrt(1+ (x[26])^2+ (x[26]-6*x[38])^2)+sqrt(1+ (x[27])^2+ (x[27]-x[40])^2)+sqrt(1+ (x[28])^2+ (x[28]-6*x[40])^2)+sqrt(1+ (x[29])^2+ (x[29]-x[42])^2)+sqrt(1+ (x[30])^2+ (x[30]-6*x[42])^2)+sqrt(1+ (x[31])^2+ (x[31]-x[44])^2)+sqrt(1+ (x[32])^2+ (x[32]-6*x[44])^2)+sqrt(1+ (x[33])^2+ (x[33]-x[47])^2)+sqrt(1+ (x[34])^2+ (x[34]-6*x[46])^2)+sqrt(1+ (x[36])^2+ (x[36]-6*x[48])^2)+sqrt(1+ (x[37])^2+ (x[37]-x[50])^2)+sqrt(1+ (x[38])^2+ (x[38]-x[62])^2)+sqrt(1+ (x[39])^2+ (x[39]-x[52])^2)+sqrt(1+ (x[40])^2+ (x[40]-x[64])^2)+sqrt(1+ (x[41])^2+ (x[41]-x[54])^2)+sqrt(1+ (x[42])^2+ (x[42]-x[66])^2)+sqrt(1+ (x[43])^2+ (x[43]-x[56])^2)+sqrt(1+ (x[44])^2+ (x[44]-x[68])^2)+sqrt(1+ (x[45])^2+ (x[45]-x[59])^2)+sqrt(1+ (x[46])^2+ (x[46]-x[70])^2)+sqrt(1+ (x[48])^2+ (x[48]-x[72])^2)+sqrt(1+ (x[49])^2+ (x[49]-x[62])^2)+sqrt(1+ (x[50])^2+ (x[50]-x[3])^2)+sqrt(1+ (x[51])^2+ (x[51]-x[64])^2)+sqrt(1+ (x[52])^2+ (x[52]-x[5])^2)+sqrt(1+ (x[53])^2+ (x[53]-x[66])^2)+sqrt(1+ (x[54])^2+ (x[54]-x[7])^2)+sqrt(1+ (x[55])^2+ (x[55]-x[68])^2)+sqrt(1+ (x[56])^2+ (x[56]-x[9])^2)+sqrt(1+ (x[57])^2+ (x[57]-x[71])^2)+sqrt(1+ (x[58])^2+ (x[58]-x[11])^2)+sqrt(1+ (x[60])^2+ (x[60])^2)+sqrt(1+ (x[61])^2+ (x[61])^2)+sqrt(1+ (x[63])^2+ (x[63])^2)+sqrt(1+ (x[65])^2+ (x[65])^2)+sqrt(1+ (x[67])^2+ (x[67])^2)+sqrt(1+ (x[69])^2+ (x[69])^2))+0.000833333333333333* (10-x[1]+x[2]+x[3]-x[4]-x[5]+x[6]+x[7]-x[8]-x[9]+x[10]-x[13]+x[14]+x[15]-x[16]-x[17]+x[18]+x[19]-x[20]-x[21]+x[22]-x[25]+x[26]+x[27]-x[28]-x[29]+x[30]+x[31]-x[32]-x[33]+x[34]-x[37]+x[38]+x[39]-x[40]-x[41]+x[42]+x[43]-x[44]-x[45]+x[46]-x[49]+x[50]+x[51]-x[52]-x[53]+x[54]+x[55]-x[56]-x[57]+x[58])^4)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
