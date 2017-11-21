using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]
@variable(m, x[x_Idx])
setlowerbound(x[16], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[43], 0.0)
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
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[61], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
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
setupperbound(x[37], 1.0)
setupperbound(x[38], 1.0)
setupperbound(x[39], 1.0)
setupperbound(x[40], 1.0)
setupperbound(x[41], 1.0)
setupperbound(x[42], 1.0)
setupperbound(x[43], 1.0)
setupperbound(x[44], 1.0)
setupperbound(x[45], 1.0)
setupperbound(x[46], 1.0)
setupperbound(x[47], 1.0)
setupperbound(x[48], 1.0)
setupperbound(x[49], 1.0)
setupperbound(x[50], 1.0)
setupperbound(x[51], 1.0)
setupperbound(x[52], 1.0)
setupperbound(x[53], 1.0)
setupperbound(x[54], 1.0)
setupperbound(x[55], 1.0)
setupperbound(x[56], 1.0)
setupperbound(x[57], 1.0)
setupperbound(x[58], 1.0)
setupperbound(x[59], 1.0)
setupperbound(x[60], 1.0)
setupperbound(x[61], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.28*x[2]*x[3]-0.1*x[2]*x[4]-0.32*x[2]*x[7]-1.34*x[2]*x[8]-1.74*x[2]*x[14]+0.8*x[2]*x[26]+0.66*x[2]*x[29]-1.42*x[2]*x[30]-0.72*x[2]*x[40]-0.78*x[2]*x[49]+1.68*x[2]*x[53]-1.18*x[2]*x[57]+1.64*x[2]*x[59]+1.82*x[2]*x[60]+0.52*x[3]*x[20]-0.24*x[3]*x[4]-0.06*x[3]*x[22]+0.38*x[3]*x[31]-1.24*x[3]*x[33]+1.28*x[3]*x[34]+1.1*x[3]*x[37]+1.5*x[3]*x[38]-0.48*x[3]*x[40]-0.58*x[3]*x[41]+0.34*x[3]*x[45]+1.7*x[4]*x[5]-0.36*x[4]*x[6]+1.32*x[4]*x[8]+1.4*x[4]*x[10]-1.3*x[4]*x[11]-1.82*x[4]*x[15]-1.24*x[4]*x[16]-0.52*x[4]*x[17]-1.04*x[4]*x[21]+0.12*x[4]*x[31]-1.78*x[4]*x[32]-0.76*x[4]*x[36]+1.88*x[4]*x[47]+0.26*x[5]*x[11]-1.34*x[5]*x[8]-0.1*x[5]*x[16]-1.38*x[5]*x[18]+0.4*x[5]*x[26]-1.38*x[5]*x[27]-0.74*x[5]*x[30]+1.16*x[5]*x[34]-0.94*x[5]*x[38]+1.82*x[5]*x[52]+(-1.92*x[6]*x[9])-0.2*x[6]*x[10]-0.1*x[6]*x[11]+0.84*x[6]*x[15]-1.48*x[6]*x[16]-1.58*x[6]*x[18]-1.8*x[6]*x[22]+1.62*x[6]*x[23]-0.32*x[6]*x[24]+0.28*x[6]*x[25]+0.56*x[6]*x[26]+0.76*x[6]*x[28]-1.14*x[6]*x[30]-0.5*x[6]*x[37]-0.3*x[6]*x[38]+0.12*x[6]*x[44]+1.38*x[6]*x[46]+1.58*x[6]*x[52]+1.64*x[6]*x[53]+1.28*x[6]*x[54]+0.14*x[6]*x[56]+(-0.5*x[7]*x[9])-0.86*x[7]*x[19]-1.74*x[7]*x[20]+1.62*x[7]*x[24]+1.32*x[7]*x[28]-1.42*x[7]*x[40]+1.1*x[7]*x[41]-0.86*x[7]*x[46]+2*x[7]*x[52]+1.86*x[8]*x[14]+0.08*x[8]*x[22]+0.24*x[8]*x[25]+0.1*x[8]*x[26]-1.44*x[8]*x[32]+1.28*x[8]*x[33]-0.46*x[8]*x[37]+1.56*x[8]*x[39]+2*x[8]*x[40]-1.48*x[8]*x[44]-0.38*x[8]*x[47]-1.58*x[8]*x[53]-0.56*x[8]*x[59]+0.14*x[9]*x[16]-0.44*x[9]*x[20]-0.8*x[9]*x[22]+0.86*x[9]*x[24]+0.48*x[9]*x[42]+0.94*x[9]*x[55]-0.9*x[9]*x[59]+1.54*x[10]*x[15]-0.92*x[10]*x[21]+0.24*x[10]*x[22]+1.2*x[10]*x[28]-1.44*x[10]*x[29]+1.96*x[10]*x[39]-0.42*x[10]*x[43]-0.2*x[10]*x[47]+1.62*x[10]*x[57]-1.64*x[10]*x[59]+1.16*x[10]*x[60]+1.96*x[11]*x[12]-1.18*x[11]*x[13]+1.56*x[11]*x[14]-0.34*x[11]*x[19]-0.18*x[11]*x[23]-0.18*x[11]*x[25]+1.28*x[11]*x[30]-1.66*x[11]*x[39]-1.36*x[11]*x[47]+1.16*x[11]*x[48]-1.02*x[11]*x[49]-1.82*x[11]*x[51]-0.46*x[11]*x[52]-0.66*x[11]*x[53]-0.82*x[11]*x[58]-1.46*x[11]*x[60]+1.1*x[12]*x[16]+1.9*x[12]*x[19]+1.1*x[12]*x[21]+0.62*x[12]*x[23]-0.1*x[12]*x[24]+1.1*x[12]*x[25]+0.48*x[12]*x[27]-1.46*x[12]*x[29]-0.36*x[12]*x[33]-0.86*x[12]*x[36]-0.46*x[12]*x[40]-0.1*x[12]*x[41]+2*x[12]*x[42]+1.06*x[12]*x[46]+1.08*x[12]*x[47]+0.76*x[12]*x[49]+1.22*x[12]*x[52]-1.12*x[12]*x[53]+1.52*x[12]*x[57]-0.94*x[12]*x[61]+(-1.28*x[13]*x[14])-1.6*x[13]*x[22]+1.06*x[13]*x[29]-1.22*x[13]*x[30]+1.7*x[13]*x[44]-1.68*x[13]*x[45]+0.86*x[13]*x[46]+1.7*x[13]*x[48]+0.34*x[13]*x[51]-0.72*x[13]*x[52]-1.3*x[13]*x[54]-0.22*x[13]*x[61]+1.5*x[14]*x[17]+0.24*x[14]*x[26]+0.92*x[14]*x[28]-0.44*x[14]*x[35]-1.86*x[14]*x[36]+1.44*x[14]*x[37]-0.3*x[14]*x[39]+1.76*x[14]*x[44]-1.46*x[14]*x[49]-1.44*x[14]*x[50]-0.58*x[14]*x[53]+1.42*x[14]*x[61]+(-1.74*x[15]*x[26])-1.98*x[15]*x[37]-0.08*x[15]*x[41]+0.7*x[15]*x[46]+0.4*x[15]*x[48]-0.08*x[15]*x[57]-1.58*x[15]*x[58]+(-1.26*x[16]*x[20])-1.08*x[16]*x[25]+1.76*x[16]*x[27]-0.56*x[16]*x[34]-2*x[16]*x[35]-1.34*x[16]*x[42]+0.2*x[16]*x[47]+0.5*x[16]*x[51]+1.5*x[17]*x[22]-1.68*x[17]*x[20]-0.3*x[17]*x[25]-1.9*x[17]*x[26]-0.42*x[17]*x[27]-0.06*x[17]*x[35]+0.34*x[17]*x[43]-0.6*x[17]*x[44]-1.5*x[17]*x[55]-0.42*x[17]*x[56]+1.5*x[17]*x[57]+1.9*x[18]*x[22]-1.78*x[18]*x[29]-0.28*x[18]*x[31]+1.44*x[18]*x[52]-0.72*x[18]*x[54]+(-1.08*x[19]*x[22])-0.92*x[19]*x[26]-1.54*x[19]*x[31]+1.52*x[19]*x[34]-1.08*x[19]*x[35]-1.12*x[19]*x[37]-1.42*x[19]*x[41]-0.8*x[19]*x[42]+1.24*x[19]*x[45]+1.94*x[19]*x[47]+0.84*x[19]*x[48]-1.1*x[19]*x[49]-1.44*x[19]*x[53]+0.44*x[19]*x[54]+0.58*x[19]*x[56]+1.5*x[20]*x[28]-2*x[20]*x[30]-1.08*x[20]*x[34]-1.96*x[20]*x[35]-0.92*x[20]*x[38]-1.04*x[20]*x[40]-1.28*x[20]*x[42]+0.64*x[20]*x[44]-0.84*x[20]*x[47]-0.82*x[20]*x[49]+0.38*x[20]*x[58]-0.88*x[20]*x[59]+1.28*x[21]*x[34]-1.6*x[21]*x[24]+0.64*x[21]*x[37]+1.18*x[21]*x[47]-1.68*x[21]*x[48]+1.22*x[21]*x[50]-0.48*x[21]*x[51]+1.26*x[21]*x[52]-0.48*x[21]*x[53]-1.18*x[21]*x[54]+0.64*x[21]*x[57]+1.26*x[22]*x[28]-1.7*x[22]*x[29]-0.4*x[22]*x[31]-0.38*x[22]*x[35]-1.8*x[22]*x[36]+0.62*x[22]*x[37]+1.94*x[22]*x[43]+1.98*x[22]*x[44]-1.04*x[22]*x[50]-0.12*x[22]*x[51]+1.24*x[22]*x[58]+1.84*x[22]*x[61]+(-0.46*x[23]*x[25])-0.6*x[23]*x[39]+x[23]*x[50]+1.98*x[23]*x[60]+0.72*x[24]*x[26]+1.66*x[24]*x[28]-1.8*x[24]*x[29]-0.74*x[24]*x[30]-0.22*x[24]*x[38]+1.02*x[24]*x[40]-0.74*x[24]*x[42]-1.6*x[24]*x[46]-0.28*x[24]*x[48]+0.04*x[24]*x[49]-1.14*x[24]*x[50]+1.22*x[24]*x[51]+1.9*x[24]*x[56]-0.8*x[24]*x[58]+0.64*x[25]*x[28]+1.18*x[25]*x[30]+1.94*x[25]*x[37]-1.9*x[25]*x[39]-0.12*x[25]*x[43]-0.5*x[25]*x[44]-0.1*x[25]*x[51]+0.1*x[25]*x[53]+0.4*x[25]*x[54]+1.64*x[25]*x[57]+1.34*x[26]*x[33]+1.74*x[26]*x[39]-1.72*x[26]*x[41]-1.18*x[26]*x[47]+1.46*x[26]*x[48]-1.72*x[26]*x[55]+1.24*x[27]*x[30]+0.68*x[27]*x[31]-0.5*x[27]*x[46]-0.02*x[27]*x[51]+0.78*x[27]*x[52]+0.9*x[27]*x[53]+1.08*x[27]*x[58]-0.46*x[27]*x[59]+(-1.24*x[28]*x[39])-1.36*x[28]*x[44]+0.24*x[28]*x[52]-0.32*x[28]*x[54]+1.18*x[29]*x[38]-0.02*x[29]*x[31]-1.92*x[29]*x[39]+0.5*x[29]*x[40]-1.72*x[29]*x[41]+0.88*x[29]*x[42]+0.74*x[29]*x[46]-1.38*x[29]*x[47]-1.66*x[29]*x[49]+0.62*x[29]*x[52]-1.34*x[29]*x[58]+0.26*x[30]*x[37]-1.92*x[30]*x[46]-1.02*x[30]*x[50]+1.42*x[30]*x[53]-1.52*x[30]*x[55]+1.6*x[30]*x[58]+0.84*x[31]*x[34]-1.26*x[31]*x[32]-1.26*x[31]*x[42]+0.88*x[31]*x[45]+1.48*x[31]*x[47]-0.16*x[31]*x[48]+0.06*x[31]*x[54]-1.48*x[31]*x[55]+0.18*x[31]*x[56]+1.22*x[31]*x[57]-1.7*x[31]*x[59]-0.76*x[31]*x[61]+0.18*x[32]*x[38]-0.6*x[32]*x[33]-1.08*x[32]*x[40]+0.28*x[32]*x[44]-0.18*x[32]*x[50]-1.2*x[32]*x[51]-1.4*x[32]*x[53]+0.32*x[32]*x[56]+0.06*x[33]*x[34]+2*x[33]*x[36]+0.46*x[33]*x[37]+0.82*x[33]*x[38]+0.76*x[33]*x[39]-1.02*x[33]*x[41]-0.84*x[33]*x[45]+1.16*x[33]*x[47]-1.76*x[33]*x[55]+1.76*x[33]*x[60]+1.76*x[34]*x[42]-0.18*x[34]*x[46]+1.28*x[34]*x[49]-1.56*x[34]*x[51]+1.68*x[35]*x[48]-0.82*x[35]*x[38]-0.4*x[35]*x[51]-0.72*x[35]*x[57]+1.58*x[36]*x[39]-0.08*x[36]*x[40]+1.92*x[36]*x[45]-1.94*x[36]*x[47]-0.98*x[36]*x[49]+1.36*x[37]*x[44]-0.74*x[37]*x[41]+1.3*x[37]*x[49]+0.82*x[37]*x[50]+0.66*x[37]*x[52]-1.02*x[37]*x[55]-0.74*x[37]*x[57]+(-1.92*x[38]*x[41])-1.88*x[38]*x[44]-1.1*x[38]*x[46]+0.96*x[38]*x[56]-0.08*x[38]*x[57]-0.38*x[38]*x[58]-0.8*x[38]*x[59]+0.8*x[39]*x[41]-0.94*x[39]*x[43]+1.5*x[39]*x[46]+0.78*x[39]*x[51]-0.2*x[39]*x[53]-0.14*x[39]*x[56]+1.76*x[39]*x[58]+0.48*x[40]*x[45]-1.22*x[40]*x[43]+1.96*x[40]*x[49]-0.36*x[40]*x[54]-0.12*x[40]*x[55]-0.48*x[40]*x[59]-0.66*x[40]*x[60]+1.28*x[41]*x[51]-1.3*x[41]*x[55]-0.02*x[41]*x[58]+1.18*x[41]*x[61]+(-0.74*x[42]*x[43])-0.84*x[42]*x[45]-1.5*x[42]*x[52]+1.24*x[42]*x[53]+0.46*x[42]*x[58]+1.82*x[43]*x[46]+0.14*x[43]*x[47]-1.2*x[43]*x[49]-1.34*x[43]*x[53]-1.84*x[43]*x[59]+0.02*x[44]*x[48]+0.14*x[44]*x[51]-0.38*x[44]*x[60]+x[44]*x[61]+(-1.14*x[45]*x[46])-1.4*x[45]*x[47]+1.72*x[45]*x[52]-0.32*x[45]*x[53]+1.6*x[45]*x[55]+0.8*x[45]*x[57]+0.5*x[45]*x[58]-1.18*x[45]*x[60]+0.74*x[46]*x[51]+0.48*x[46]*x[56]+1.82*x[46]*x[59]+1.52*x[47]*x[50]-1.64*x[47]*x[53]-1.06*x[47]*x[55]-0.54*x[47]*x[61]+(-1.92*x[48]*x[56])-1.12*x[48]*x[59]+1.38*x[49]*x[56]-1.18*x[49]*x[55]+0.18*x[50]*x[61]+0.38*x[52]*x[53]-1.9*x[53]*x[55]+0.98*x[54]*x[61]-1.62*x[54]*x[57]+0.14*x[55]*x[56]-0.72*x[56]*x[59]-1.52*x[57]*x[59]-1.3*x[58]*x[60]+0.76*x[59]*x[60]-0.44*x[60]*x[61]+0.11*x[6]*x[6]-0.58*x[8]*x[8]+x[12]*x[12]+0.06*x[16]*x[16]+0.6*x[19]*x[19]-0.07*x[26]*x[26]-0.59*x[30]*x[30]+0.66*x[32]*x[32]+0.78*x[37]*x[37]-0.98*x[38]*x[38]-0.16*x[41]*x[41]-0.03*x[44]*x[44]+0.43*x[48]*x[48]+0.61*x[49]*x[49]+0.75*x[51]*x[51]-0.3*x[54]*x[54]+0.93*x[56]*x[56]+0.29*x[57]*x[57]+0.47*x[2]-0.38*x[3]+0.22*x[4]+0.88*x[5]-0.97*x[6]-0.63*x[7]-0.84*x[8]-0.13*x[9]-0.6*x[10]+0.39*x[11]-0.03*x[12]+0.09*x[13]+0.47*x[14]-0.7*x[15]+0.38*x[16]+0.77*x[17]-0.65*x[18]+0.97*x[20]-0.08*x[21]-0.3*x[22]+0.63*x[23]+0.49*x[24]-0.66*x[25]+0.21*x[26]+0.94*x[27]+0.16*x[28]+0.32*x[29]+0.43*x[30]-0.64*x[31]+0.72*x[32]-0.44*x[33]-0.23*x[34]+0.22*x[35]-0.29*x[36]+0.66*x[37]+0.07*x[38]-0.65*x[39]-0.84*x[40]-0.88*x[41]+0.94*x[42]-0.12*x[43]-0.97*x[44]-0.65*x[45]-0.4*x[46]-0.88*x[47]-0.93*x[48]-0.28*x[49]-0.4*x[50]-0.12*x[51]+0.23*x[52]-0.21*x[53]-0.8*x[54]+0.61*x[55]-0.75*x[56]-0.39*x[57]-0.27*x[58]-0.68*x[59]+0.58*x[60]-0.53*x[61])+x[1] == 0.0)
@NLconstraint(m, e2, 0.54*x[2]*x[3]+1.14*x[2]*x[9]-1.92*x[2]*x[12]+0.1*x[2]*x[15]-0.4*x[2]*x[23]-1.94*x[2]*x[25]+1.26*x[2]*x[30]-1.94*x[2]*x[31]-1.42*x[2]*x[40]-0.18*x[2]*x[49]+x[2]*x[55]-1.96*x[2]*x[56]-1.32*x[2]*x[58]+1.36*x[2]*x[59]+0.14*x[2]*x[60]-0.1*x[2]*x[61]+0.5*x[3]*x[11]+1.88*x[3]*x[14]-0.52*x[3]*x[17]-0.54*x[3]*x[19]+0.54*x[3]*x[28]+1.74*x[3]*x[36]+1.38*x[3]*x[37]-0.7*x[3]*x[39]-1.76*x[3]*x[44]-1.74*x[3]*x[45]-1.14*x[3]*x[48]+1.26*x[3]*x[52]-0.08*x[3]*x[54]-0.16*x[3]*x[60]+0.84*x[4]*x[7]-1.86*x[4]*x[24]-1.5*x[4]*x[27]+1.6*x[4]*x[30]-1.6*x[4]*x[38]+0.54*x[4]*x[42]+0.4*x[4]*x[55]+0.08*x[4]*x[57]+1.98*x[5]*x[12]-1.44*x[5]*x[6]+0.4*x[5]*x[16]-1.28*x[5]*x[21]+1.62*x[5]*x[35]-0.44*x[5]*x[39]-1.9*x[5]*x[45]-0.24*x[5]*x[47]+1.64*x[5]*x[49]+1.34*x[5]*x[52]+1.94*x[5]*x[56]+0.5*x[5]*x[58]+1.44*x[6]*x[11]-1.3*x[6]*x[7]+1.92*x[6]*x[19]-1.56*x[6]*x[21]+0.48*x[6]*x[30]-0.7*x[6]*x[32]-0.62*x[6]*x[42]+0.5*x[6]*x[43]+1.48*x[6]*x[44]+0.58*x[6]*x[46]-1.4*x[6]*x[49]+0.4*x[6]*x[51]-0.2*x[6]*x[54]+1.36*x[6]*x[56]+(-0.42*x[7]*x[8])-0.02*x[7]*x[9]-x[7]*x[11]-1.8*x[7]*x[14]-0.9*x[7]*x[17]+0.46*x[7]*x[25]-1.1*x[7]*x[26]+1.88*x[7]*x[30]+1.7*x[7]*x[33]-1.56*x[7]*x[36]-0.1*x[7]*x[39]-0.04*x[7]*x[42]-1.06*x[7]*x[53]+1.38*x[7]*x[57]-0.92*x[7]*x[60]+0.34*x[8]*x[11]+1.32*x[8]*x[21]-2*x[8]*x[22]+1.46*x[8]*x[24]-1.04*x[8]*x[38]+0.48*x[8]*x[40]-1.32*x[8]*x[45]-0.82*x[8]*x[52]-0.1*x[8]*x[55]+(-1.66*x[9]*x[19])-0.02*x[9]*x[21]-1.5*x[9]*x[28]+0.4*x[9]*x[29]-0.04*x[9]*x[34]+1.34*x[9]*x[36]+1.98*x[9]*x[37]-x[9]*x[39]+1.56*x[9]*x[42]-0.8*x[9]*x[43]-1.22*x[9]*x[51]+0.88*x[10]*x[11]-0.82*x[10]*x[13]+x[10]*x[15]-1.14*x[10]*x[18]-1.56*x[10]*x[25]+1.56*x[10]*x[29]-0.86*x[10]*x[35]-0.4*x[10]*x[36]-0.94*x[10]*x[42]+1.5*x[10]*x[49]-0.08*x[10]*x[52]-1.24*x[10]*x[53]-1.5*x[10]*x[56]+0.5*x[10]*x[58]+0.78*x[11]*x[15]+0.84*x[11]*x[16]+1.02*x[11]*x[23]+1.04*x[11]*x[24]-1.78*x[11]*x[32]-0.68*x[11]*x[35]-1.14*x[11]*x[44]-0.72*x[11]*x[46]+1.96*x[11]*x[48]-1.56*x[11]*x[49]-0.44*x[11]*x[52]-1.54*x[11]*x[53]-0.92*x[11]*x[54]-0.28*x[11]*x[60]+1.36*x[11]*x[61]+1.78*x[12]*x[25]-0.76*x[12]*x[21]-1.24*x[12]*x[28]+1.06*x[12]*x[29]-0.12*x[12]*x[32]-1.1*x[12]*x[40]-0.16*x[12]*x[48]-0.9*x[12]*x[50]+1.02*x[12]*x[52]+0.32*x[12]*x[57]+1.52*x[12]*x[60]+1.52*x[12]*x[61]+1.08*x[13]*x[15]+0.48*x[13]*x[19]-1.76*x[13]*x[21]+1.1*x[13]*x[24]-1.84*x[13]*x[25]-1.26*x[13]*x[26]-1.2*x[13]*x[34]-1.02*x[13]*x[38]+1.06*x[13]*x[43]-1.06*x[13]*x[50]-1.62*x[13]*x[54]-1.4*x[13]*x[60]+0.42*x[14]*x[20]-1.46*x[14]*x[21]+0.78*x[14]*x[25]-0.16*x[14]*x[29]-1.84*x[14]*x[30]-0.64*x[14]*x[33]+1.6*x[14]*x[38]+1.42*x[14]*x[39]-0.74*x[14]*x[41]+1.36*x[14]*x[54]+0.56*x[14]*x[60]+(-0.3*x[15]*x[18])-0.86*x[15]*x[26]-0.68*x[15]*x[35]+1.68*x[15]*x[36]-1.82*x[15]*x[40]+1.78*x[15]*x[42]-1.9*x[15]*x[58]+(-0.86*x[16]*x[24])-0.32*x[16]*x[33]-1.02*x[16]*x[42]-0.24*x[16]*x[48]-0.42*x[16]*x[52]-0.84*x[16]*x[53]-0.62*x[16]*x[57]+0.9*x[17]*x[20]-1.56*x[17]*x[19]-1.86*x[17]*x[23]+1.5*x[17]*x[24]+1.48*x[17]*x[38]-1.78*x[17]*x[39]-1.22*x[17]*x[40]-1.06*x[17]*x[45]-0.46*x[17]*x[50]-1.24*x[17]*x[54]-1.7*x[17]*x[60]+0.02*x[18]*x[20]-0.86*x[18]*x[25]+1.08*x[18]*x[26]-1.06*x[18]*x[27]-1.04*x[18]*x[43]-1.9*x[18]*x[44]+1.08*x[18]*x[59]+1.36*x[18]*x[61]+1.94*x[19]*x[24]-1.86*x[19]*x[25]+1.96*x[19]*x[26]+1.76*x[19]*x[28]-1.52*x[19]*x[29]+0.78*x[19]*x[30]+0.92*x[19]*x[33]+1.08*x[19]*x[34]-0.1*x[19]*x[41]-0.88*x[19]*x[46]+1.98*x[19]*x[55]+0.5*x[19]*x[56]-0.12*x[19]*x[60]+0.92*x[20]*x[23]+1.16*x[20]*x[24]+0.26*x[20]*x[26]-1.64*x[20]*x[33]+1.72*x[20]*x[37]+1.98*x[20]*x[39]+0.46*x[20]*x[46]+1.88*x[21]*x[23]-1.14*x[21]*x[22]-0.64*x[21]*x[37]+1.2*x[21]*x[40]-0.86*x[21]*x[41]-0.94*x[21]*x[44]+0.9*x[22]*x[39]+0.54*x[22]*x[45]+1.4*x[22]*x[46]+(-0.7*x[23]*x[25])-0.62*x[23]*x[34]+1.66*x[23]*x[38]-0.32*x[23]*x[43]-x[23]*x[60]-1.22*x[23]*x[61]+0.52*x[24]*x[31]-0.02*x[24]*x[35]+0.88*x[24]*x[37]+1.2*x[24]*x[39]+0.68*x[24]*x[42]-1.34*x[24]*x[44]+0.56*x[24]*x[48]+1.34*x[24]*x[55]-0.86*x[24]*x[56]+1.7*x[24]*x[57]+0.04*x[25]*x[28]-1.54*x[25]*x[30]+1.82*x[25]*x[31]-1.6*x[25]*x[32]-0.28*x[25]*x[39]-1.52*x[25]*x[40]+0.72*x[25]*x[48]+0.32*x[25]*x[50]-1.36*x[25]*x[55]-0.56*x[25]*x[56]-0.96*x[25]*x[58]+0.68*x[26]*x[29]-0.22*x[26]*x[27]-0.6*x[26]*x[31]-1.1*x[26]*x[34]+1.38*x[26]*x[35]-0.08*x[26]*x[36]+0.68*x[26]*x[40]-1.38*x[26]*x[41]-0.96*x[26]*x[43]+0.32*x[26]*x[45]-1.42*x[26]*x[47]-0.04*x[26]*x[48]+1.72*x[26]*x[51]+0.08*x[26]*x[53]-1.92*x[26]*x[54]+0.22*x[26]*x[59]+0.9*x[26]*x[61]+1.22*x[27]*x[47]-1.68*x[27]*x[28]+0.42*x[27]*x[50]-1.26*x[27]*x[57]+0.72*x[28]*x[32]+1.3*x[28]*x[39]-0.82*x[28]*x[44]-0.64*x[28]*x[59]+1.96*x[29]*x[34]+0.06*x[29]*x[35]-0.98*x[29]*x[38]+0.56*x[29]*x[43]-1.82*x[29]*x[47]+0.56*x[29]*x[49]-0.42*x[29]*x[52]+1.74*x[29]*x[55]+1.56*x[29]*x[59]+0.86*x[29]*x[60]-1.76*x[29]*x[61]+0.32*x[30]*x[37]-0.48*x[30]*x[33]-1.12*x[30]*x[38]+1.56*x[30]*x[41]-0.18*x[30]*x[44]+1.5*x[30]*x[45]+1.5*x[30]*x[49]-0.44*x[30]*x[50]-1.66*x[30]*x[53]+0.3*x[30]*x[56]-0.98*x[30]*x[57]+1.04*x[30]*x[61]+1.52*x[31]*x[42]-1.66*x[31]*x[39]+1.78*x[31]*x[46]-1.94*x[31]*x[47]-0.86*x[31]*x[53]-0.48*x[31]*x[54]-1.72*x[31]*x[55]+0.94*x[31]*x[56]-0.9*x[31]*x[57]-0.14*x[31]*x[60]+1.68*x[32]*x[33]-0.82*x[32]*x[35]-0.24*x[32]*x[37]+1.06*x[32]*x[39]+0.78*x[32]*x[40]+0.88*x[32]*x[41]-1.06*x[32]*x[43]-1.44*x[32]*x[50]+1.58*x[32]*x[52]-1.94*x[32]*x[61]+1.92*x[33]*x[41]+1.1*x[33]*x[44]-0.5*x[33]*x[49]+1.1*x[33]*x[60]-1.64*x[33]*x[61]+1.14*x[34]*x[35]-1.44*x[34]*x[44]-0.92*x[34]*x[47]+1.88*x[34]*x[49]-0.98*x[34]*x[54]-1.9*x[34]*x[58]+0.76*x[34]*x[60]+1.44*x[34]*x[61]+0.34*x[35]*x[40]-0.26*x[35]*x[37]+0.7*x[35]*x[47]+0.82*x[35]*x[53]-0.54*x[35]*x[59]+0.56*x[36]*x[37]+1.4*x[36]*x[41]-1.68*x[36]*x[45]-1.38*x[36]*x[47]+1.3*x[36]*x[48]+1.86*x[36]*x[58]+0.5*x[36]*x[61]+1.08*x[37]*x[52]-0.6*x[37]*x[46]+0.14*x[38]*x[44]-1.48*x[38]*x[42]+0.76*x[38]*x[46]-1.4*x[38]*x[52]+0.7*x[38]*x[54]-0.22*x[38]*x[56]+0.62*x[38]*x[57]+1.52*x[38]*x[60]+0.06*x[39]*x[48]-1.34*x[39]*x[40]-0.94*x[39]*x[49]-0.52*x[39]*x[51]-1.02*x[39]*x[53]-0.3*x[39]*x[61]+1.88*x[40]*x[41]-0.36*x[40]*x[43]-0.1*x[40]*x[44]+0.94*x[40]*x[46]-0.5*x[40]*x[47]+1.92*x[40]*x[48]-0.88*x[40]*x[50]-1.34*x[40]*x[52]+1.9*x[40]*x[58]+1.78*x[40]*x[59]+(-0.28*x[41]*x[42])-0.92*x[41]*x[46]-1.46*x[41]*x[48]+0.36*x[41]*x[50]-0.38*x[41]*x[54]+0.6*x[41]*x[57]+0.8*x[41]*x[60]+1.24*x[42]*x[48]-1.06*x[42]*x[43]-1.14*x[42]*x[51]-0.46*x[42]*x[52]-1.68*x[42]*x[59]+1.4*x[43]*x[47]-0.12*x[43]*x[50]-1.44*x[43]*x[52]-1.42*x[43]*x[53]-1.3*x[43]*x[54]+0.32*x[43]*x[56]+0.5*x[43]*x[57]-0.5*x[43]*x[58]+1.46*x[44]*x[51]-0.22*x[44]*x[46]-0.22*x[44]*x[60]+(-0.66*x[45]*x[49])-1.44*x[45]*x[54]-0.8*x[45]*x[59]-0.88*x[45]*x[60]-1.14*x[45]*x[61]+0.94*x[46]*x[50]+0.62*x[46]*x[55]+1.14*x[46]*x[57]-1.52*x[46]*x[59]+1.46*x[46]*x[61]+0.24*x[47]*x[53]-1.56*x[47]*x[52]+1.32*x[47]*x[58]-0.48*x[47]*x[60]+1.78*x[47]*x[61]+0.08*x[48]*x[54]+0.1*x[48]*x[56]-1.32*x[48]*x[59]+1.8*x[48]*x[60]+(-1.92*x[49]*x[52])-0.78*x[49]*x[59]+1.72*x[50]*x[56]+1.82*x[50]*x[57]+x[50]*x[60]+1.2*x[51]*x[55]+0.14*x[51]*x[58]-0.02*x[51]*x[60]+0.1*x[53]*x[55]-0.94*x[53]*x[54]+1.76*x[55]*x[56]-0.02*x[55]*x[57]-0.18*x[55]*x[58]-1.56*x[55]*x[60]-1.14*x[56]*x[57]-1.56*x[57]*x[60]+(-1.08*x[59]*x[60])-0.58*x[59]*x[61]+(-0.58*x[4]*x[4])-0.98*x[6]*x[6]+0.09*x[9]*x[9]-0.83*x[10]*x[10]-0.93*x[13]*x[13]-0.35*x[15]*x[15]-0.24*x[26]*x[26]-0.58*x[30]*x[30]+0.12*x[31]*x[31]-0.26*x[34]*x[34]-0.25*x[35]*x[35]+0.47*x[36]*x[36]-0.01*x[37]*x[37]+0.28*x[38]*x[38]+0.31*x[46]*x[46]+0.4*x[52]*x[52]-0.9*x[57]*x[57]-0.97*x[60]*x[60]-0.73*x[61]*x[61]+0.55*x[2]+0.89*x[3]-0.97*x[4]+0.12*x[5]+0.42*x[6]+0.69*x[7]-0.92*x[8]+0.79*x[9]+0.22*x[10]-0.52*x[11]-0.01*x[12]+0.38*x[13]+0.06*x[14]+0.82*x[15]+0.18*x[16]-0.43*x[17]+0.96*x[18]+0.98*x[19]+0.84*x[20]+0.23*x[21]+x[22]-0.85*x[23]+0.46*x[24]-0.38*x[25]-0.06*x[26]-0.32*x[27]-0.28*x[28]+0.09*x[29]+0.58*x[30]+0.89*x[31]+0.85*x[32]+0.49*x[33]-0.63*x[34]-0.9*x[35]-0.58*x[36]+0.22*x[37]-0.54*x[38]+0.25*x[39]+0.83*x[40]-0.89*x[41]+0.52*x[42]-0.19*x[43]+0.14*x[44]-0.67*x[45]-0.06*x[46]-0.28*x[47]+0.83*x[48]+0.76*x[49]-0.74*x[50]+0.74*x[51]-0.35*x[52]+0.91*x[53]-0.27*x[54]+0.08*x[55]+0.03*x[56]+0.31*x[57]+0.58*x[58]+0.03*x[59]+0.27*x[60]-0.11*x[61] <= 6.32)
@constraint(m, e3, -0.99*x[2]+0.07*x[3]+0.82*x[4]-0.59*x[5]+0.56*x[6]+0.5*x[7]-0.7*x[8]-0.79*x[9]-0.91*x[10]+0.1*x[11]-0.43*x[12]+0.42*x[13]+0.29*x[14]+0.27*x[15]-0.34*x[16]+0.71*x[17]-0.46*x[18]-0.9*x[19]+0.87*x[20]+0.98*x[21]+0.28*x[22]+0.11*x[23]-0.74*x[24]+0.34*x[25]-0.07*x[26]-0.36*x[27]-0.78*x[28]+0.07*x[29]+0.42*x[30]-0.36*x[31]+x[32]-0.84*x[33]+0.64*x[34]-0.43*x[35]-0.8*x[36]+0.21*x[37]-0.12*x[38]-0.85*x[39]-0.46*x[40]+0.61*x[41]+0.22*x[42]+0.44*x[43]+0.32*x[44]+0.56*x[45]+0.86*x[46]+0.42*x[47]-0.32*x[48]-0.31*x[49]+0.91*x[50]+0.45*x[51]-0.26*x[52]-0.28*x[53]-0.71*x[54]+0.57*x[55]-0.2*x[56]-0.74*x[57]+0.98*x[59]-0.65*x[60]+0.67*x[61] == 0.5)
@constraint(m, e4, 0.22*x[2]+0.37*x[3]+0.65*x[4]+0.52*x[5]-0.74*x[6]-0.49*x[7]+0.46*x[8]+0.66*x[9]-0.1*x[10]-0.92*x[11]+0.47*x[12]+0.08*x[13]-0.79*x[14]-0.06*x[15]-0.72*x[16]+0.86*x[17]-0.71*x[18]-0.88*x[19]-0.8*x[20]-0.31*x[21]+0.91*x[22]+0.96*x[23]-0.22*x[24]+0.69*x[25]-0.81*x[26]-0.52*x[27]+0.82*x[28]-0.14*x[29]-0.14*x[30]-0.31*x[31]-0.72*x[32]-0.55*x[33]-0.77*x[34]-0.39*x[35]+0.92*x[36]-0.79*x[37]-0.92*x[38]+0.61*x[39]+0.01*x[40]-0.66*x[41]+0.63*x[42]-0.21*x[43]-0.23*x[44]+0.65*x[45]-0.93*x[46]-0.75*x[47]-0.09*x[48]+0.73*x[49]-0.72*x[50]-0.4*x[51]-0.65*x[52]-0.72*x[53]+0.21*x[54]+0.53*x[55]+0.68*x[56]+0.41*x[57]+0.18*x[58]+0.34*x[59]-0.54*x[60]-0.04*x[61] == -0.46)
@constraint(m, e5, 0.56*x[2]-0.09*x[3]-0.8*x[4]-0.75*x[5]-0.98*x[6]+0.08*x[7]+0.02*x[8]+0.91*x[9]-0.05*x[10]+0.18*x[11]-0.46*x[12]-0.49*x[13]+0.1*x[14]+0.48*x[15]+0.37*x[16]+0.14*x[17]+0.64*x[18]+0.9*x[19]+0.9*x[20]+0.41*x[21]+0.29*x[22]+0.28*x[23]+0.14*x[24]+0.65*x[25]+0.09*x[26]+0.1*x[27]-0.63*x[28]+0.48*x[29]-0.47*x[30]+0.36*x[31]-0.32*x[32]+0.39*x[33]+0.21*x[34]-0.83*x[35]-0.78*x[36]+0.91*x[37]-0.9*x[38]-0.29*x[39]+0.05*x[40]-0.72*x[41]-0.23*x[42]-0.55*x[43]+0.25*x[44]-0.69*x[45]-0.95*x[46]+0.24*x[47]-0.63*x[48]+0.56*x[49]-0.24*x[50]+0.51*x[51]+0.04*x[52]-0.36*x[53]+0.82*x[54]-x[55]+0.15*x[56]+0.56*x[57]-0.14*x[58]-0.9*x[59]-0.28*x[60]-0.78*x[61] == 0.59)
@constraint(m, e6, -0.68*x[2]+0.16*x[3]-0.07*x[4]-0.24*x[5]-0.83*x[6]-0.4*x[7]+0.01*x[8]+0.61*x[9]-0.71*x[10]-0.13*x[11]-0.65*x[12]-0.93*x[13]+0.3*x[14]-0.48*x[15]+0.55*x[16]-0.97*x[17]-0.42*x[18]-0.37*x[19]-0.61*x[20]+0.37*x[21]-0.57*x[22]+0.4*x[23]-0.23*x[24]+0.97*x[25]+0.08*x[26]-0.69*x[27]-0.07*x[28]+0.25*x[29]+0.33*x[31]+0.94*x[32]+0.31*x[33]+0.43*x[34]-0.57*x[35]+0.61*x[36]-0.32*x[37]-0.67*x[38]-0.88*x[39]-0.47*x[40]-0.57*x[41]-0.7*x[42]-0.2*x[43]+0.31*x[44]-0.34*x[45]+0.97*x[46]+0.82*x[47]+0.65*x[48]-0.13*x[49]-0.24*x[50]+0.68*x[51]+0.38*x[52]+0.94*x[53]-0.99*x[54]+0.47*x[55]-0.81*x[56]+0.46*x[57]+0.86*x[58]-0.98*x[59]+0.11*x[60]-0.4*x[61] == -0.21)
@constraint(m, e7, -0.33*x[2]-0.93*x[3]-0.59*x[4]-0.09*x[5]+0.3*x[6]-0.2*x[7]+0.84*x[8]+0.31*x[9]-0.38*x[10]-0.86*x[11]-0.14*x[12]+0.71*x[13]-0.38*x[14]-0.69*x[15]+0.12*x[16]+0.77*x[17]-0.67*x[18]+0.51*x[19]-0.22*x[20]+0.45*x[21]-0.1*x[22]-0.95*x[23]+0.38*x[24]+0.3*x[25]-0.22*x[26]-0.51*x[27]+0.8*x[28]+0.97*x[29]-0.86*x[30]+0.12*x[31]+0.19*x[32]+0.38*x[33]-0.95*x[34]-0.86*x[35]-0.9*x[36]+0.51*x[37]-0.25*x[38]+0.91*x[39]-0.93*x[40]-0.17*x[41]+0.87*x[42]+0.19*x[43]-0.88*x[44]+0.77*x[45]-0.18*x[46]+0.62*x[47]-0.16*x[48]-0.88*x[49]-0.6*x[50]-0.8*x[51]-0.64*x[52]+0.62*x[53]+0.73*x[54]+0.18*x[55]-0.37*x[56]-0.18*x[57]+0.67*x[58]+0.62*x[59]+0.15*x[60]-0.95*x[61] == -0.33)
@constraint(m, e8, -0.86*x[2]-0.92*x[3]+0.6*x[4]+0.65*x[5]+0.11*x[6]+0.21*x[7]-0.7*x[8]+0.14*x[9]-0.69*x[10]+0.24*x[11]-0.53*x[12]+0.07*x[13]-0.14*x[14]+0.11*x[15]+0.56*x[16]-0.31*x[17]+0.54*x[18]+0.29*x[19]-0.7*x[20]+0.46*x[21]-0.48*x[22]-0.01*x[23]+0.28*x[24]+0.28*x[25]+0.52*x[26]+0.66*x[27]+0.71*x[28]-0.12*x[29]+0.1*x[30]-0.79*x[31]+x[32]+0.9*x[33]+0.84*x[34]-0.68*x[35]-0.62*x[36]+0.73*x[37]+0.44*x[38]+0.02*x[39]+0.99*x[40]+0.16*x[41]-0.54*x[42]+0.79*x[43]-0.57*x[44]-0.72*x[45]+0.66*x[46]+0.1*x[47]-0.05*x[48]-0.45*x[49]+0.16*x[50]-0.94*x[51]+0.5*x[52]-0.08*x[53]-0.53*x[54]-0.97*x[55]+0.24*x[56]-0.17*x[57]+0.71*x[58]-0.23*x[59]-0.13*x[60]+0.18*x[61] == -0.23)
@constraint(m, e9, -0.03*x[2]+0.14*x[3]-0.85*x[4]+0.05*x[5]-0.15*x[6]-0.51*x[7]+0.55*x[8]-0.71*x[9]-0.01*x[10]-0.59*x[11]-0.68*x[12]+0.42*x[13]-0.09*x[14]-0.32*x[15]+0.75*x[16]-0.84*x[17]-0.46*x[18]-0.45*x[19]-0.31*x[20]-0.91*x[21]-0.33*x[22]-0.06*x[23]+0.32*x[24]+0.85*x[25]-0.76*x[26]-0.55*x[27]-x[28]+0.09*x[29]+0.08*x[30]-0.04*x[31]+0.65*x[32]+0.8*x[33]-0.81*x[34]+0.92*x[35]+0.67*x[36]+0.46*x[37]+0.4*x[38]+0.16*x[39]-0.54*x[40]-0.24*x[41]-0.83*x[42]+0.45*x[43]+0.67*x[44]-0.67*x[45]+0.15*x[46]-0.56*x[47]+0.56*x[48]-0.09*x[49]-0.01*x[50]-0.64*x[51]-0.72*x[52]-0.72*x[53]+0.98*x[54]+0.07*x[55]+0.36*x[56]+0.23*x[57]-0.26*x[58]-0.47*x[59]+0.71*x[60]-0.39*x[61] == -0.36)
@constraint(m, e10, 0.03*x[2]+0.27*x[3]+0.78*x[4]-0.35*x[5]+0.53*x[6]-0.44*x[7]+0.27*x[8]+0.93*x[9]+0.82*x[10]+0.37*x[11]+0.06*x[12]+0.07*x[13]+0.18*x[14]-0.85*x[15]-0.61*x[16]+0.89*x[17]+0.56*x[18]-0.75*x[19]-0.04*x[20]+0.27*x[21]-0.72*x[22]+0.25*x[23]+0.37*x[24]-0.11*x[25]-0.58*x[26]-0.64*x[27]+0.78*x[28]-0.81*x[29]-0.53*x[30]+0.98*x[31]-0.69*x[32]+0.1*x[33]+0.94*x[34]-0.93*x[35]-0.41*x[36]+0.12*x[37]-0.27*x[38]+0.9*x[39]-0.54*x[40]-0.15*x[41]-0.55*x[42]+0.28*x[43]-0.68*x[44]+0.1*x[45]+0.89*x[46]+0.09*x[47]+0.6*x[48]-0.38*x[49]+0.11*x[50]+0.73*x[51]+0.93*x[52]-0.06*x[53]+0.14*x[54]+0.21*x[55]-0.72*x[56]+0.97*x[57]+0.06*x[58]-0.18*x[59]-0.99*x[60]+0.9*x[61] == -0.62)
@constraint(m, e11, 0.97*x[2]-0.83*x[3]-0.58*x[4]+0.61*x[5]-0.24*x[6]+0.61*x[7]+0.49*x[8]-0.51*x[10]-0.51*x[11]-0.77*x[12]-0.63*x[13]-0.71*x[14]-0.21*x[15]+0.16*x[16]-0.84*x[17]+0.01*x[18]+0.95*x[19]-0.08*x[20]+0.06*x[21]-0.45*x[22]+0.6*x[23]-0.12*x[24]-0.11*x[25]+0.99*x[26]-0.18*x[27]+0.31*x[28]-0.26*x[29]+0.57*x[30]+0.34*x[31]+0.93*x[32]-0.54*x[33]+0.12*x[34]-0.68*x[35]+0.89*x[36]-0.39*x[37]+0.85*x[38]-0.43*x[39]+0.03*x[40]-0.72*x[41]-0.38*x[42]-0.97*x[43]+0.26*x[44]-0.57*x[45]+0.91*x[46]+0.38*x[47]-0.86*x[48]+0.8*x[49]+0.56*x[50]+0.22*x[51]-0.59*x[52]+0.76*x[53]-0.89*x[54]-0.77*x[55]-0.54*x[56]-0.32*x[57]-0.6*x[58]-0.86*x[59]+0.96*x[60]-0.77*x[61] == 0.99)
@constraint(m, e12, -0.05*x[2]-0.74*x[3]+0.33*x[4]+0.41*x[5]+0.43*x[6]-0.12*x[7]+0.89*x[8]+0.05*x[9]-0.51*x[10]-0.33*x[11]+0.11*x[12]-0.53*x[13]+x[14]-0.78*x[15]-0.77*x[16]-0.4*x[17]+0.17*x[18]-0.72*x[19]-0.39*x[20]+0.85*x[21]-0.8*x[22]-0.47*x[23]-0.12*x[24]+0.15*x[25]+0.72*x[26]-0.63*x[27]+0.8*x[28]+0.25*x[29]+0.82*x[30]-0.13*x[31]+0.19*x[32]-0.71*x[33]+0.06*x[34]-0.29*x[35]-0.13*x[36]+0.87*x[37]-0.9*x[38]-0.07*x[39]+0.22*x[40]-0.5*x[41]-0.37*x[42]-0.67*x[43]-0.65*x[44]-0.45*x[45]-0.19*x[46]+0.78*x[47]-0.44*x[48]+0.78*x[49]+0.08*x[50]-0.77*x[51]+0.8*x[52]+0.23*x[53]-0.2*x[54]-0.65*x[55]-0.03*x[56]+0.26*x[57]-0.85*x[58]-0.16*x[59]-0.61*x[60]-x[61] == 0.34)
@constraint(m, e13, 0.91*x[2]+0.24*x[3]-0.7*x[4]+0.14*x[5]+0.22*x[6]-0.26*x[7]+0.36*x[8]-0.22*x[9]+0.64*x[10]-0.88*x[11]+0.89*x[12]+0.79*x[13]+0.03*x[14]-0.02*x[15]-0.26*x[16]-0.96*x[17]+0.72*x[18]+0.08*x[19]-0.9*x[20]-0.97*x[21]+0.85*x[22]+0.02*x[23]-0.88*x[24]-0.05*x[25]-0.22*x[26]-0.75*x[27]-0.47*x[28]+0.25*x[29]-0.98*x[30]-0.16*x[31]-0.61*x[32]-0.87*x[33]-0.42*x[34]+0.15*x[35]+0.58*x[36]+0.98*x[37]-0.21*x[38]-0.16*x[39]+0.48*x[40]+0.75*x[41]+0.37*x[42]+0.99*x[43]-0.65*x[44]-0.4*x[45]+0.4*x[46]+0.55*x[47]+0.15*x[48]+0.64*x[49]+0.32*x[50]-0.71*x[51]-0.31*x[52]-0.49*x[53]+0.33*x[54]-0.4*x[55]+0.06*x[56]-0.14*x[57]-0.01*x[58]+0.67*x[59]+0.48*x[60]+0.86*x[61] == 0.35)
@constraint(m, e14, 0.38*x[2]-0.07*x[3]+0.94*x[4]-0.81*x[5]-0.15*x[6]-0.44*x[7]+0.46*x[8]+0.48*x[9]-0.14*x[10]-0.26*x[11]-0.26*x[12]+0.56*x[13]+0.85*x[14]+0.7*x[15]+0.73*x[16]+0.1*x[17]-0.88*x[18]-0.87*x[19]-0.39*x[20]-0.62*x[21]-0.95*x[22]+0.26*x[23]+0.69*x[24]+0.51*x[25]-0.56*x[26]-0.72*x[27]-0.29*x[28]+0.21*x[29]+0.27*x[30]-0.53*x[31]-0.05*x[32]+0.47*x[33]+0.95*x[34]+0.14*x[35]-0.13*x[36]-0.74*x[37]+0.57*x[38]+0.71*x[39]-0.5*x[40]-0.93*x[41]+0.89*x[42]-0.17*x[43]+0.54*x[44]+0.85*x[45]-0.17*x[46]-0.38*x[47]-0.52*x[48]-0.59*x[49]-0.6*x[50]+0.22*x[51]+0.08*x[52]+0.75*x[53]+0.56*x[54]-0.94*x[55]+0.32*x[56]-0.21*x[57]-0.63*x[58]-0.92*x[59]-0.46*x[60]+0.87*x[61] == -0.75)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
