using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90]
@variable(m, x[x_Idx])
b_Idx = Any[91, 92, 93, 94, 95, 96, 97]
@variable(m, b[b_Idx])
setlowerbound(x[85], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setcategory(b[95], :Bin)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[63], 0.0)
setcategory(b[96], :Bin)
setlowerbound(x[82], 0.0)
setlowerbound(x[24], 0.0)
setcategory(b[92], :Bin)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[6], 0.0)
setcategory(b[97], :Bin)
setlowerbound(x[17], 0.0)
setcategory(b[93], :Bin)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setcategory(b[94], :Bin)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setcategory(b[91], :Bin)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[65], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)
setupperbound(x[11], 1.0)
setupperbound(x[12], 1.0)
setupperbound(x[13], 1.0)
setupperbound(x[14], 1.0)
setupperbound(x[15], 1.0)
setupperbound(x[16], 1.0)
setupperbound(x[17], 1.0)
setupperbound(x[18], 1.0)
setupperbound(x[19], 1.0)
setupperbound(x[20], 1.0)
setupperbound(x[21], 1.0)
setupperbound(x[22], 1.0)
setupperbound(x[23], 1.0)
setupperbound(x[24], 1.0)
setupperbound(x[25], 1.0)
setupperbound(x[26], 1.0)
setupperbound(x[27], 1.0)
setupperbound(x[28], 1.0)
setupperbound(x[29], 1.0)
setupperbound(x[30], 1.0)
setupperbound(x[31], 1.0)
setupperbound(x[32], 1.0)
setupperbound(x[33], 1.0)
setupperbound(x[34], 1.0)
setupperbound(x[35], 1.0)
setupperbound(x[36], 1.0)
setlowerbound(x[54], 345.0)
setupperbound(x[54], 390.0)
setlowerbound(x[55], 345.0)
setupperbound(x[55], 390.0)
setlowerbound(x[56], 345.0)
setupperbound(x[56], 390.0)
setlowerbound(x[57], 345.0)
setupperbound(x[57], 390.0)
setlowerbound(x[58], 345.0)
setupperbound(x[58], 390.0)
setlowerbound(x[59], 345.0)
setupperbound(x[59], 390.0)
setlowerbound(x[60], 345.0)
setupperbound(x[60], 390.0)
setlowerbound(x[61], 345.0)
setupperbound(x[61], 390.0)
setlowerbound(x[62], 345.0)
setupperbound(x[62], 390.0)
setupperbound(x[63], 100.0)
setupperbound(x[64], 100.0)
setupperbound(x[65], 100.0)
setupperbound(x[66], 100.0)
setupperbound(x[67], 100.0)
setupperbound(x[68], 100.0)
setupperbound(x[69], 100.0)
setlowerbound(x[70], 0.1)
setupperbound(x[70], 0.95)
setlowerbound(x[71], 50.0)
setupperbound(x[71], 80.0)
setlowerbound(x[72], 20.0)
setupperbound(x[72], 50.0)
setlowerbound(x[73], -1.5)
setupperbound(x[73], -0.496714536653818)
setlowerbound(x[74], -1.5)
setupperbound(x[74], -0.496714536653818)
setlowerbound(x[75], -1.5)
setupperbound(x[75], -0.496714536653818)
setlowerbound(x[76], -1.5)
setupperbound(x[76], -0.496714536653818)
setlowerbound(x[77], -1.5)
setupperbound(x[77], -0.496714536653818)
setlowerbound(x[78], -1.5)
setupperbound(x[78], -0.496714536653818)
setlowerbound(x[79], -1.5)
setupperbound(x[79], -0.496714536653818)
setlowerbound(x[80], -1.5)
setupperbound(x[80], -0.496714536653818)
setlowerbound(x[81], -1.5)
setupperbound(x[81], -0.496714536653818)
setupperbound(x[82], 0.151822697193183)
setupperbound(x[83], 0.151822697193183)
setupperbound(x[84], 0.151822697193183)
setupperbound(x[85], 0.151822697193183)
setupperbound(x[86], 0.151822697193183)
setupperbound(x[87], 0.151822697193183)
setupperbound(x[88], 0.151822697193183)
setupperbound(x[89], 0.151822697193183)
setupperbound(x[90], 0.151822697193183)
setlowerbound(objvar, -100.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -48.9*x[1]*exp((562.2*(1.33213*(1-0.00177872643187478*x[54])^1.5+0.012420366417645*x[54]-2.62863*(1-0.00177872643187478*x[54])^3-3.33399*(1-0.00177872643187478*x[54])^6)-3925.690806)/x[54])+1.2*x[19] == 0.0)
@NLconstraint(m, e2, -41*x[2]*exp((591.8*(1.38091*(1-0.00168976005407232*x[54])^1.5+0.0123117100371747*x[54]-2.83433*(1-0.00168976005407232*x[54])^3-2.79168*(1-0.00168976005407232*x[54])^6)-4311.896226)/x[54])+1.2*x[20] == 0.0)
@NLconstraint(m, e3, -48.9*x[3]*exp((562.2*(1.33213*(1-0.00177872643187478*x[55])^1.5+0.012420366417645*x[55]-2.62863*(1-0.00177872643187478*x[55])^3-3.33399*(1-0.00177872643187478*x[55])^6)-3925.690806)/x[55])+1.12*x[21] == 0.0)
@NLconstraint(m, e4, -41*x[4]*exp((591.8*(1.38091*(1-0.00168976005407232*x[55])^1.5+0.0123117100371747*x[55]-2.83433*(1-0.00168976005407232*x[55])^3-2.79168*(1-0.00168976005407232*x[55])^6)-4311.896226)/x[55])+1.12*x[22] == 0.0)
@NLconstraint(m, e5, -48.9*x[5]*exp((562.2*(1.33213*(1-0.00177872643187478*x[56])^1.5+0.012420366417645*x[56]-2.62863*(1-0.00177872643187478*x[56])^3-3.33399*(1-0.00177872643187478*x[56])^6)-3925.690806)/x[56])+1.11333333333333*x[23] == 0.0)
@NLconstraint(m, e6, -41*x[6]*exp((591.8*(1.38091*(1-0.00168976005407232*x[56])^1.5+0.0123117100371747*x[56]-2.83433*(1-0.00168976005407232*x[56])^3-2.79168*(1-0.00168976005407232*x[56])^6)-4311.896226)/x[56])+1.11333333333333*x[24] == 0.0)
@NLconstraint(m, e7, -48.9*x[7]*exp((562.2*(1.33213*(1-0.00177872643187478*x[57])^1.5+0.012420366417645*x[57]-2.62863*(1-0.00177872643187478*x[57])^3-3.33399*(1-0.00177872643187478*x[57])^6)-3925.690806)/x[57])+1.10666666666667*x[25] == 0.0)
@NLconstraint(m, e8, -41*x[8]*exp((591.8*(1.38091*(1-0.00168976005407232*x[57])^1.5+0.0123117100371747*x[57]-2.83433*(1-0.00168976005407232*x[57])^3-2.79168*(1-0.00168976005407232*x[57])^6)-4311.896226)/x[57])+1.10666666666667*x[26] == 0.0)
@NLconstraint(m, e9, -48.9*x[9]*exp((562.2*(1.33213*(1-0.00177872643187478*x[58])^1.5+0.012420366417645*x[58]-2.62863*(1-0.00177872643187478*x[58])^3-3.33399*(1-0.00177872643187478*x[58])^6)-3925.690806)/x[58])+1.1*x[27] == 0.0)
@NLconstraint(m, e10, -41*x[10]*exp((591.8*(1.38091*(1-0.00168976005407232*x[58])^1.5+0.0123117100371747*x[58]-2.83433*(1-0.00168976005407232*x[58])^3-2.79168*(1-0.00168976005407232*x[58])^6)-4311.896226)/x[58])+1.1*x[28] == 0.0)
@NLconstraint(m, e11, -48.9*x[11]*exp((562.2*(1.33213*(1-0.00177872643187478*x[59])^1.5+0.012420366417645*x[59]-2.62863*(1-0.00177872643187478*x[59])^3-3.33399*(1-0.00177872643187478*x[59])^6)-3925.690806)/x[59])+1.09333333333333*x[29] == 0.0)
@NLconstraint(m, e12, -41*x[12]*exp((591.8*(1.38091*(1-0.00168976005407232*x[59])^1.5+0.0123117100371747*x[59]-2.83433*(1-0.00168976005407232*x[59])^3-2.79168*(1-0.00168976005407232*x[59])^6)-4311.896226)/x[59])+1.09333333333333*x[30] == 0.0)
@NLconstraint(m, e13, -48.9*x[13]*exp((562.2*(1.33213*(1-0.00177872643187478*x[60])^1.5+0.012420366417645*x[60]-2.62863*(1-0.00177872643187478*x[60])^3-3.33399*(1-0.00177872643187478*x[60])^6)-3925.690806)/x[60])+1.08666666666667*x[31] == 0.0)
@NLconstraint(m, e14, -41*x[14]*exp((591.8*(1.38091*(1-0.00168976005407232*x[60])^1.5+0.0123117100371747*x[60]-2.83433*(1-0.00168976005407232*x[60])^3-2.79168*(1-0.00168976005407232*x[60])^6)-4311.896226)/x[60])+1.08666666666667*x[32] == 0.0)
@NLconstraint(m, e15, -48.9*x[15]*exp((562.2*(1.33213*(1-0.00177872643187478*x[61])^1.5+0.012420366417645*x[61]-2.62863*(1-0.00177872643187478*x[61])^3-3.33399*(1-0.00177872643187478*x[61])^6)-3925.690806)/x[61])+1.08*x[33] == 0.0)
@NLconstraint(m, e16, -41*x[16]*exp((591.8*(1.38091*(1-0.00168976005407232*x[61])^1.5+0.0123117100371747*x[61]-2.83433*(1-0.00168976005407232*x[61])^3-2.79168*(1-0.00168976005407232*x[61])^6)-4311.896226)/x[61])+1.08*x[34] == 0.0)
@NLconstraint(m, e17, -48.9*x[17]*exp((562.2*(1.33213*(1-0.00177872643187478*x[62])^1.5+0.012420366417645*x[62]-2.62863*(1-0.00177872643187478*x[62])^3-3.33399*(1-0.00177872643187478*x[62])^6)-3925.690806)/x[62])+1.05*x[35] == 0.0)
@NLconstraint(m, e18, -41*x[18]*exp((591.8*(1.38091*(1-0.00168976005407232*x[62])^1.5+0.0123117100371747*x[62]-2.83433*(1-0.00168976005407232*x[62])^3-2.79168*(1-0.00168976005407232*x[62])^6)-4311.896226)/x[62])+1.05*x[36] == 0.0)
@constraint(m, e19, -x[1]-x[2]+x[19]+x[20] == 0.0)
@constraint(m, e20, -x[3]-x[4]+x[21]+x[22] == 0.0)
@constraint(m, e21, -x[5]-x[6]+x[23]+x[24] == 0.0)
@constraint(m, e22, -x[7]-x[8]+x[25]+x[26] == 0.0)
@constraint(m, e23, -x[9]-x[10]+x[27]+x[28] == 0.0)
@constraint(m, e24, -x[11]-x[12]+x[29]+x[30] == 0.0)
@constraint(m, e25, -x[13]-x[14]+x[31]+x[32] == 0.0)
@constraint(m, e26, -x[15]-x[16]+x[33]+x[34] == 0.0)
@constraint(m, e27, -x[17]-x[18]+x[35]+x[36] == 0.0)
@NLconstraint(m, e28, x[38]*x[3]+x[47]*x[21]-x[39]*x[5]-x[46]*x[19]-0.7*x[63] == 0.0)
@NLconstraint(m, e29, x[38]*x[4]+x[47]*x[22]-x[39]*x[6]-x[46]*x[20]-0.3*x[63] == 0.0)
@NLconstraint(m, e30, x[39]*x[5]+x[48]*x[23]-x[40]*x[7]-x[47]*x[21]-0.7*x[64] == 0.0)
@NLconstraint(m, e31, x[39]*x[6]+x[48]*x[24]-x[40]*x[8]-x[47]*x[22]-0.3*x[64] == 0.0)
@NLconstraint(m, e32, x[40]*x[7]+x[49]*x[25]-x[41]*x[9]-x[48]*x[23]-0.7*x[65] == 0.0)
@NLconstraint(m, e33, x[40]*x[8]+x[49]*x[26]-x[41]*x[10]-x[48]*x[24]-0.3*x[65] == 0.0)
@NLconstraint(m, e34, x[41]*x[9]+x[50]*x[27]-x[42]*x[11]-x[49]*x[25]-0.7*x[66] == 0.0)
@NLconstraint(m, e35, x[41]*x[10]+x[50]*x[28]-x[42]*x[12]-x[49]*x[26]-0.3*x[66] == 0.0)
@NLconstraint(m, e36, x[42]*x[11]+x[51]*x[29]-x[43]*x[13]-x[50]*x[27]-0.7*x[67] == 0.0)
@NLconstraint(m, e37, x[42]*x[12]+x[51]*x[30]-x[43]*x[14]-x[50]*x[28]-0.3*x[67] == 0.0)
@NLconstraint(m, e38, x[43]*x[13]+x[52]*x[31]-x[44]*x[15]-x[51]*x[29]-0.7*x[68] == 0.0)
@NLconstraint(m, e39, x[43]*x[14]+x[52]*x[32]-x[44]*x[16]-x[51]*x[30]-0.3*x[68] == 0.0)
@NLconstraint(m, e40, x[44]*x[15]+x[53]*x[33]-x[45]*x[17]-x[52]*x[31]-0.7*x[69] == 0.0)
@NLconstraint(m, e41, x[44]*x[16]+x[53]*x[34]-x[45]*x[18]-x[52]*x[32]-0.3*x[69] == 0.0)
@NLconstraint(m, e42, x[37]*x[1]+x[46]*x[19]-x[38]*x[3] == 0.0)
@NLconstraint(m, e43, x[37]*x[2]+x[46]*x[20]-x[38]*x[4] == 0.0)
@NLconstraint(m, e44, (x[45]+x[71])*x[17]-x[53]*x[33] == 0.0)
@NLconstraint(m, e45, (x[45]+x[71])*x[18]-x[53]*x[34] == 0.0)
@constraint(m, e46, x[38]-x[39]-x[46]+x[47]-x[63] == 0.0)
@constraint(m, e47, x[39]-x[40]-x[47]+x[48]-x[64] == 0.0)
@constraint(m, e48, x[40]-x[41]-x[48]+x[49]-x[65] == 0.0)
@constraint(m, e49, x[41]-x[42]-x[49]+x[50]-x[66] == 0.0)
@constraint(m, e50, x[42]-x[43]-x[50]+x[51]-x[67] == 0.0)
@constraint(m, e51, x[43]-x[44]-x[51]+x[52]-x[68] == 0.0)
@constraint(m, e52, x[44]-x[45]-x[52]+x[53]-x[69] == 0.0)
@constraint(m, e53, x[37]-x[38]+x[46] == 0.0)
@constraint(m, e54, x[45]-x[53]+x[71] == 0.0)
@NLconstraint(m, e55, -x[70]*x[71]+x[45] == 0.0)
@constraint(m, e56, x[37]-x[72] == 0.0)
@NLconstraint(m, e57, -3.13659116407937e-5*(x[1]*(x[54]*(x[54]*(0.23695+x[54]*(1.7825e-8*x[54]-0.000100566666666667))-33.92)+4674.1308*(1.33213*(1-0.00177872643187478*x[54])^1.5+0.012420366417645*x[54]-2.62863*(1-0.00177872643187478*x[54])^3-3.33399*(1-0.00177872643187478*x[54])^6)+8.314*x[54]*(1.998195*(1-0.00177872643187478*x[54])^0.5-7.88589* (1-0.00177872643187478*x[54])^2-20.00394*(1-0.00177872643187478*x[54])^5-6.98273)-46242.079590558)+x[2]*(x[54]*(x[54]*(0.25625+x[54]*(1.22775e-8*x[54]-9.21666666666667e-5))-24.35)+4920.2252*(1.38091*(1-0.00168976005407232*x[54])^1.5+0.0123117100371747*x[54]-2.83433*(1-0.00168976005407232*x[54])^3-2.79168*(1-0.00168976005407232*x[54])^6)+8.314*x[54]*(2.071365*(1-0.00168976005407232*x[54])^0.5-8.50299* (1-0.00168976005407232*x[54])^2-16.75008*(1-0.00168976005407232*x[54])^5-7.28607)-55570.3234397208))+x[73] == 0.0)
@NLconstraint(m, e58, -3.13659116407937e-5*(x[3]*(x[55]*(x[55]*(0.23695+x[55]*(1.7825e-8*x[55]-0.000100566666666667))-33.92)+4674.1308*(1.33213*(1-0.00177872643187478*x[55])^1.5+0.012420366417645*x[55]-2.62863*(1-0.00177872643187478*x[55])^3-3.33399*(1-0.00177872643187478*x[55])^6)+8.314*x[55]*(1.998195*(1-0.00177872643187478*x[55])^0.5-7.88589* (1-0.00177872643187478*x[55])^2-20.00394*(1-0.00177872643187478*x[55])^5-6.98273)-46242.079590558)+x[4]*(x[55]*(x[55]*(0.25625+x[55]*(1.22775e-8*x[55]-9.21666666666667e-5))-24.35)+4920.2252*(1.38091*(1-0.00168976005407232*x[55])^1.5+0.0123117100371747*x[55]-2.83433*(1-0.00168976005407232*x[55])^3-2.79168*(1-0.00168976005407232*x[55])^6)+8.314*x[55]*(2.071365*(1-0.00168976005407232*x[55])^0.5-8.50299* (1-0.00168976005407232*x[55])^2-16.75008*(1-0.00168976005407232*x[55])^5-7.28607)-55570.3234397208))+x[74] == 0.0)
@NLconstraint(m, e59, -3.13659116407937e-5*(x[5]*(x[56]*(x[56]*(0.23695+x[56]*(1.7825e-8*x[56]-0.000100566666666667))-33.92)+4674.1308*(1.33213*(1-0.00177872643187478*x[56])^1.5+0.012420366417645*x[56]-2.62863*(1-0.00177872643187478*x[56])^3-3.33399*(1-0.00177872643187478*x[56])^6)+8.314*x[56]*(1.998195*(1-0.00177872643187478*x[56])^0.5-7.88589* (1-0.00177872643187478*x[56])^2-20.00394*(1-0.00177872643187478*x[56])^5-6.98273)-46242.079590558)+x[6]*(x[56]*(x[56]*(0.25625+x[56]*(1.22775e-8*x[56]-9.21666666666667e-5))-24.35)+4920.2252*(1.38091*(1-0.00168976005407232*x[56])^1.5+0.0123117100371747*x[56]-2.83433*(1-0.00168976005407232*x[56])^3-2.79168*(1-0.00168976005407232*x[56])^6)+8.314*x[56]*(2.071365*(1-0.00168976005407232*x[56])^0.5-8.50299* (1-0.00168976005407232*x[56])^2-16.75008*(1-0.00168976005407232*x[56])^5-7.28607)-55570.3234397208))+x[75] == 0.0)
@NLconstraint(m, e60, -3.13659116407937e-5*(x[7]*(x[57]*(x[57]*(0.23695+x[57]*(1.7825e-8*x[57]-0.000100566666666667))-33.92)+4674.1308*(1.33213*(1-0.00177872643187478*x[57])^1.5+0.012420366417645*x[57]-2.62863*(1-0.00177872643187478*x[57])^3-3.33399*(1-0.00177872643187478*x[57])^6)+8.314*x[57]*(1.998195*(1-0.00177872643187478*x[57])^0.5-7.88589* (1-0.00177872643187478*x[57])^2-20.00394*(1-0.00177872643187478*x[57])^5-6.98273)-46242.079590558)+x[8]*(x[57]*(x[57]*(0.25625+x[57]*(1.22775e-8*x[57]-9.21666666666667e-5))-24.35)+4920.2252*(1.38091*(1-0.00168976005407232*x[57])^1.5+0.0123117100371747*x[57]-2.83433*(1-0.00168976005407232*x[57])^3-2.79168*(1-0.00168976005407232*x[57])^6)+8.314*x[57]*(2.071365*(1-0.00168976005407232*x[57])^0.5-8.50299* (1-0.00168976005407232*x[57])^2-16.75008*(1-0.00168976005407232*x[57])^5-7.28607)-55570.3234397208))+x[76] == 0.0)
@NLconstraint(m, e61, -3.13659116407937e-5*(x[9]*(x[58]*(x[58]*(0.23695+x[58]*(1.7825e-8*x[58]-0.000100566666666667))-33.92)+4674.1308*(1.33213*(1-0.00177872643187478*x[58])^1.5+0.012420366417645*x[58]-2.62863*(1-0.00177872643187478*x[58])^3-3.33399*(1-0.00177872643187478*x[58])^6)+8.314*x[58]*(1.998195*(1-0.00177872643187478*x[58])^0.5-7.88589* (1-0.00177872643187478*x[58])^2-20.00394*(1-0.00177872643187478*x[58])^5-6.98273)-46242.079590558)+x[10]*(x[58]*(x[58]*(0.25625+x[58]*(1.22775e-8*x[58]-9.21666666666667e-5))-24.35)+4920.2252*(1.38091*(1-0.00168976005407232*x[58])^1.5+0.0123117100371747*x[58]-2.83433*(1-0.00168976005407232*x[58])^3-2.79168*(1-0.00168976005407232*x[58])^6)+8.314*x[58]*(2.071365*(1-0.00168976005407232*x[58])^0.5-8.50299* (1-0.00168976005407232*x[58])^2-16.75008*(1-0.00168976005407232*x[58])^5-7.28607)-55570.3234397208))+x[77] == 0.0)
@NLconstraint(m, e62, -3.13659116407937e-5*(x[11]*(x[59]*(x[59]*(0.23695+x[59]*(1.7825e-8*x[59]-0.000100566666666667))-33.92)+4674.1308*(1.33213*(1-0.00177872643187478*x[59])^1.5+0.012420366417645*x[59]-2.62863*(1-0.00177872643187478*x[59])^3-3.33399*(1-0.00177872643187478*x[59])^6)+8.314*x[59]*(1.998195*(1-0.00177872643187478*x[59])^0.5-7.88589* (1-0.00177872643187478*x[59])^2-20.00394*(1-0.00177872643187478*x[59])^5-6.98273)-46242.079590558)+x[12]*(x[59]*(x[59]*(0.25625+x[59]*(1.22775e-8*x[59]-9.21666666666667e-5))-24.35)+4920.2252*(1.38091*(1-0.00168976005407232*x[59])^1.5+0.0123117100371747*x[59]-2.83433*(1-0.00168976005407232*x[59])^3-2.79168*(1-0.00168976005407232*x[59])^6)+8.314*x[59]*(2.071365*(1-0.00168976005407232*x[59])^0.5-8.50299* (1-0.00168976005407232*x[59])^2-16.75008*(1-0.00168976005407232*x[59])^5-7.28607)-55570.3234397208))+x[78] == 0.0)
@NLconstraint(m, e63, -3.13659116407937e-5*(x[13]*(x[60]*(x[60]*(0.23695+x[60]*(1.7825e-8*x[60]-0.000100566666666667))-33.92)+4674.1308*(1.33213*(1-0.00177872643187478*x[60])^1.5+0.012420366417645*x[60]-2.62863*(1-0.00177872643187478*x[60])^3-3.33399*(1-0.00177872643187478*x[60])^6)+8.314*x[60]*(1.998195*(1-0.00177872643187478*x[60])^0.5-7.88589* (1-0.00177872643187478*x[60])^2-20.00394*(1-0.00177872643187478*x[60])^5-6.98273)-46242.079590558)+x[14]*(x[60]*(x[60]*(0.25625+x[60]*(1.22775e-8*x[60]-9.21666666666667e-5))-24.35)+4920.2252*(1.38091*(1-0.00168976005407232*x[60])^1.5+0.0123117100371747*x[60]-2.83433*(1-0.00168976005407232*x[60])^3-2.79168*(1-0.00168976005407232*x[60])^6)+8.314*x[60]*(2.071365*(1-0.00168976005407232*x[60])^0.5-8.50299* (1-0.00168976005407232*x[60])^2-16.75008*(1-0.00168976005407232*x[60])^5-7.28607)-55570.3234397208))+x[79] == 0.0)
@NLconstraint(m, e64, -3.13659116407937e-5*(x[15]*(x[61]*(x[61]*(0.23695+x[61]*(1.7825e-8*x[61]-0.000100566666666667))-33.92)+4674.1308*(1.33213*(1-0.00177872643187478*x[61])^1.5+0.012420366417645*x[61]-2.62863*(1-0.00177872643187478*x[61])^3-3.33399*(1-0.00177872643187478*x[61])^6)+8.314*x[61]*(1.998195*(1-0.00177872643187478*x[61])^0.5-7.88589* (1-0.00177872643187478*x[61])^2-20.00394*(1-0.00177872643187478*x[61])^5-6.98273)-46242.079590558)+x[16]*(x[61]*(x[61]*(0.25625+x[61]*(1.22775e-8*x[61]-9.21666666666667e-5))-24.35)+4920.2252*(1.38091*(1-0.00168976005407232*x[61])^1.5+0.0123117100371747*x[61]-2.83433*(1-0.00168976005407232*x[61])^3-2.79168*(1-0.00168976005407232*x[61])^6)+8.314*x[61]*(2.071365*(1-0.00168976005407232*x[61])^0.5-8.50299* (1-0.00168976005407232*x[61])^2-16.75008*(1-0.00168976005407232*x[61])^5-7.28607)-55570.3234397208))+x[80] == 0.0)
@NLconstraint(m, e65, -3.13659116407937e-5*(x[17]*(x[62]*(x[62]*(0.23695+x[62]*(1.7825e-8*x[62]-0.000100566666666667))-33.92)+4674.1308*(1.33213*(1-0.00177872643187478*x[62])^1.5+0.012420366417645*x[62]-2.62863*(1-0.00177872643187478*x[62])^3-3.33399*(1-0.00177872643187478*x[62])^6)+8.314*x[62]*(1.998195*(1-0.00177872643187478*x[62])^0.5-7.88589* (1-0.00177872643187478*x[62])^2-20.00394*(1-0.00177872643187478*x[62])^5-6.98273)-46242.079590558)+x[18]*(x[62]*(x[62]*(0.25625+x[62]*(1.22775e-8*x[62]-9.21666666666667e-5))-24.35)+4920.2252*(1.38091*(1-0.00168976005407232*x[62])^1.5+0.0123117100371747*x[62]-2.83433*(1-0.00168976005407232*x[62])^3-2.79168*(1-0.00168976005407232*x[62])^6)+8.314*x[62]*(2.071365*(1-0.00168976005407232*x[62])^0.5-8.50299* (1-0.00168976005407232*x[62])^2-16.75008*(1-0.00168976005407232*x[62])^5-7.28607)-55570.3234397208))+x[81] == 0.0)
@NLconstraint(m, e66, -3.13659116407937e-5*(x[19]*(x[54]*(x[54]*(0.23695+x[54]*(1.7825e-8*x[54]-0.000100566666666667))-33.92)-13603.886229474)+x[20]*(x[54]*(x[54]*(0.25625+x[54]*(1.22775e-8*x[54]-9.21666666666667e-5))-24.35)-19721.2182167568))+x[82] == 0.0)
@NLconstraint(m, e67, -3.13659116407937e-5*(x[21]*(x[55]*(x[55]*(0.23695+x[55]*(1.7825e-8*x[55]-0.000100566666666667))-33.92)-13603.886229474)+x[22]*(x[55]*(x[55]*(0.25625+x[55]*(1.22775e-8*x[55]-9.21666666666667e-5))-24.35)-19721.2182167568))+x[83] == 0.0)
@NLconstraint(m, e68, -3.13659116407937e-5*(x[23]*(x[56]*(x[56]*(0.23695+x[56]*(1.7825e-8*x[56]-0.000100566666666667))-33.92)-13603.886229474)+x[24]*(x[56]*(x[56]*(0.25625+x[56]*(1.22775e-8*x[56]-9.21666666666667e-5))-24.35)-19721.2182167568))+x[84] == 0.0)
@NLconstraint(m, e69, -3.13659116407937e-5*(x[25]*(x[57]*(x[57]*(0.23695+x[57]*(1.7825e-8*x[57]-0.000100566666666667))-33.92)-13603.886229474)+x[26]*(x[57]*(x[57]*(0.25625+x[57]*(1.22775e-8*x[57]-9.21666666666667e-5))-24.35)-19721.2182167568))+x[85] == 0.0)
@NLconstraint(m, e70, -3.13659116407937e-5*(x[27]*(x[58]*(x[58]*(0.23695+x[58]*(1.7825e-8*x[58]-0.000100566666666667))-33.92)-13603.886229474)+x[28]*(x[58]*(x[58]*(0.25625+x[58]*(1.22775e-8*x[58]-9.21666666666667e-5))-24.35)-19721.2182167568))+x[86] == 0.0)
@NLconstraint(m, e71, -3.13659116407937e-5*(x[29]*(x[59]*(x[59]*(0.23695+x[59]*(1.7825e-8*x[59]-0.000100566666666667))-33.92)-13603.886229474)+x[30]*(x[59]*(x[59]*(0.25625+x[59]*(1.22775e-8*x[59]-9.21666666666667e-5))-24.35)-19721.2182167568))+x[87] == 0.0)
@NLconstraint(m, e72, -3.13659116407937e-5*(x[31]*(x[60]*(x[60]*(0.23695+x[60]*(1.7825e-8*x[60]-0.000100566666666667))-33.92)-13603.886229474)+x[32]*(x[60]*(x[60]*(0.25625+x[60]*(1.22775e-8*x[60]-9.21666666666667e-5))-24.35)-19721.2182167568))+x[88] == 0.0)
@NLconstraint(m, e73, -3.13659116407937e-5*(x[33]*(x[61]*(x[61]*(0.23695+x[61]*(1.7825e-8*x[61]-0.000100566666666667))-33.92)-13603.886229474)+x[34]*(x[61]*(x[61]*(0.25625+x[61]*(1.22775e-8*x[61]-9.21666666666667e-5))-24.35)-19721.2182167568))+x[89] == 0.0)
@NLconstraint(m, e74, -3.13659116407937e-5*(x[35]*(x[62]*(x[62]*(0.23695+x[62]*(1.7825e-8*x[62]-0.000100566666666667))-33.92)-13603.886229474)+x[36]*(x[62]*(x[62]*(0.25625+x[62]*(1.22775e-8*x[62]-9.21666666666667e-5))-24.35)-19721.2182167568))+x[90] == 0.0)
@NLconstraint(m, e75, x[38]*x[74]+x[47]*x[83]-x[39]*x[75]-x[46]*x[82]+0.999444137682208*x[63] == 0.0)
@NLconstraint(m, e76, x[39]*x[75]+x[48]*x[84]-x[40]*x[76]-x[47]*x[83]+0.999444137682208*x[64] == 0.0)
@NLconstraint(m, e77, x[40]*x[76]+x[49]*x[85]-x[41]*x[77]-x[48]*x[84]+0.999444137682208*x[65] == 0.0)
@NLconstraint(m, e78, x[41]*x[77]+x[50]*x[86]-x[42]*x[78]-x[49]*x[85]+0.999444137682208*x[66] == 0.0)
@NLconstraint(m, e79, x[42]*x[78]+x[51]*x[87]-x[43]*x[79]-x[50]*x[86]+0.999444137682208*x[67] == 0.0)
@NLconstraint(m, e80, x[43]*x[79]+x[52]*x[88]-x[44]*x[80]-x[51]*x[87]+0.999444137682208*x[68] == 0.0)
@NLconstraint(m, e81, x[44]*x[80]+x[53]*x[89]-x[45]*x[81]-x[52]*x[88]+0.999444137682208*x[69] == 0.0)
@constraint(m, e82, x[17] >= 0.95)
@constraint(m, e83, x[63]+x[64]+x[65]+x[66]+x[67]+x[68]+x[69] == 100.0)
@constraint(m, e84, b[91]+b[92]+b[93]+b[94]+b[95]+b[96]+b[97] == 1.0)
@constraint(m, e85, x[63]-100*b[91] <= 0.0)
@constraint(m, e86, x[64]-100*b[92] <= 0.0)
@constraint(m, e87, x[65]-100*b[93] <= 0.0)
@constraint(m, e88, x[66]-100*b[94] <= 0.0)
@constraint(m, e89, x[67]-100*b[95] <= 0.0)
@constraint(m, e90, x[68]-100*b[96] <= 0.0)
@constraint(m, e91, x[69]-100*b[97] <= 0.0)
@constraint(m, e92, 50*x[70]-x[71]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
