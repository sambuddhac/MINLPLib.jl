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
@NLconstraint(m, e1, -(1.88*x[2]*x[5]-0.9*x[2]*x[3]+1.98*x[2]*x[6]+0.3*x[2]*x[7]-1.86*x[2]*x[8]-1.36*x[2]*x[9]-1.88*x[2]*x[11]-1.36*x[2]*x[12]+0.18*x[2]*x[13]+1.02*x[2]*x[14]+0.54*x[2]*x[15]-0.5*x[2]*x[19]+1.1*x[2]*x[21]+1.86*x[2]*x[23]+0.78*x[2]*x[24]+0.42*x[2]*x[26]-1.2*x[2]*x[31]+1.02*x[2]*x[32]+0.92*x[2]*x[34]+0.72*x[2]*x[36]-1.72*x[2]*x[39]+1.84*x[2]*x[41]-0.84*x[2]*x[42]+1.22*x[2]*x[44]-0.06*x[2]*x[45]+0.62*x[2]*x[47]-0.7*x[2]*x[49]+0.46*x[2]*x[50]-0.88*x[2]*x[53]+0.2*x[2]*x[54]-0.78*x[2]*x[55]+x[2]*x[56]-1.64*x[2]*x[58]+1.4*x[3]*x[4]-0.68*x[3]*x[7]-1.5*x[3]*x[8]+1.94*x[3]*x[9]+1.18*x[3]*x[11]-1.9*x[3]*x[21]-1.26*x[3]*x[22]+0.98*x[3]*x[25]+1.22*x[3]*x[28]-1.26*x[3]*x[29]-1.04*x[3]*x[30]-0.48*x[3]*x[31]-0.56*x[3]*x[32]+0.74*x[3]*x[35]-1.12*x[3]*x[37]-1.28*x[3]*x[38]-0.16*x[3]*x[39]-1.82*x[3]*x[40]+1.66*x[3]*x[41]-1.68*x[3]*x[45]+0.76*x[3]*x[49]+1.76*x[3]*x[51]+1.8*x[3]*x[52]+0.44*x[3]*x[55]-0.36*x[3]*x[57]-0.18*x[3]*x[61]+(-0.12*x[4]*x[6])-1.14*x[4]*x[7]-0.34*x[4]*x[9]-0.48*x[4]*x[17]+1.88*x[4]*x[23]-1.12*x[4]*x[25]+1.2*x[4]*x[26]-0.1*x[4]*x[27]-0.24*x[4]*x[28]+1.42*x[4]*x[30]+1.24*x[4]*x[32]-1.7*x[4]*x[33]-0.34*x[4]*x[35]+0.26*x[4]*x[37]+0.6*x[4]*x[40]+1.04*x[4]*x[41]-0.2*x[4]*x[42]-1.28*x[4]*x[44]+1.84*x[4]*x[46]-0.46*x[4]*x[48]-0.82*x[4]*x[49]+0.92*x[4]*x[52]+1.62*x[4]*x[53]+0.48*x[4]*x[54]+0.8*x[4]*x[56]-1.02*x[4]*x[57]+1.16*x[4]*x[59]-1.04*x[4]*x[60]+0.96*x[4]*x[61]+0.66*x[5]*x[11]+0.7*x[5]*x[12]-1.3*x[5]*x[13]+1.14*x[5]*x[14]-0.58*x[5]*x[15]+1.34*x[5]*x[16]+1.1*x[5]*x[19]+1.44*x[5]*x[21]+1.74*x[5]*x[22]+0.38*x[5]*x[23]+1.74*x[5]*x[24]-0.72*x[5]*x[26]-0.94*x[5]*x[28]-0.24*x[5]*x[29]-1.24*x[5]*x[30]-1.04*x[5]*x[31]+0.1*x[5]*x[33]+1.54*x[5]*x[38]+0.6*x[5]*x[39]-1.12*x[5]*x[41]-1.08*x[5]*x[43]+1.82*x[5]*x[47]-1.66*x[5]*x[52]+1.72*x[5]*x[55]-1.68*x[5]*x[56]-0.24*x[5]*x[57]+1.5*x[5]*x[58]-0.62*x[5]*x[59]+0.16*x[5]*x[60]-1.26*x[5]*x[61]+1.14*x[6]*x[12]+1.14*x[6]*x[13]-0.04*x[6]*x[14]+1.16*x[6]*x[18]+1.76*x[6]*x[19]-0.36*x[6]*x[20]-0.36*x[6]*x[21]-1.38*x[6]*x[23]-0.22*x[6]*x[24]+0.12*x[6]*x[25]+1.04*x[6]*x[26]+1.74*x[6]*x[27]-0.88*x[6]*x[28]-1.14*x[6]*x[32]-0.56*x[6]*x[35]-1.52*x[6]*x[36]+0.1*x[6]*x[37]-0.94*x[6]*x[38]-1.62*x[6]*x[42]-1.74*x[6]*x[44]-0.82*x[6]*x[49]-1.98*x[6]*x[50]-1.3*x[6]*x[52]-1.52*x[6]*x[53]-1.54*x[6]*x[55]-1.12*x[6]*x[57]-1.74*x[6]*x[59]-1.8*x[6]*x[60]-0.98*x[6]*x[61]+0.72*x[7]*x[9]-0.2*x[7]*x[8]-0.2*x[7]*x[10]-1.16*x[7]*x[12]-0.32*x[7]*x[15]-0.6*x[7]*x[16]-1.78*x[7]*x[17]+1.62*x[7]*x[20]-1.06*x[7]*x[22]-1.78*x[7]*x[24]-1.94*x[7]*x[25]-1.38*x[7]*x[28]+1.28*x[7]*x[29]-1.8*x[7]*x[30]-1.38*x[7]*x[32]+1.34*x[7]*x[33]-0.96*x[7]*x[35]-1.84*x[7]*x[38]-1.9*x[7]*x[42]+0.24*x[7]*x[44]-0.7*x[7]*x[45]+0.14*x[7]*x[48]-1.42*x[7]*x[49]-0.96*x[7]*x[54]+0.86*x[7]*x[58]-0.94*x[7]*x[59]-1.96*x[7]*x[60]+0.52*x[8]*x[9]+0.7*x[8]*x[10]-0.84*x[8]*x[13]-0.3*x[8]*x[15]-1.62*x[8]*x[16]-0.7*x[8]*x[17]+1.26*x[8]*x[18]-0.98*x[8]*x[19]-0.4*x[8]*x[20]+0.1*x[8]*x[21]-0.98*x[8]*x[23]-1.58*x[8]*x[26]-1.96*x[8]*x[27]-0.16*x[8]*x[29]+0.22*x[8]*x[31]+1.92*x[8]*x[32]-1.16*x[8]*x[34]+1.1*x[8]*x[36]+1.22*x[8]*x[37]+1.64*x[8]*x[38]-0.98*x[8]*x[39]-1.62*x[8]*x[43]+0.1*x[8]*x[48]+1.18*x[8]*x[49]-1.16*x[8]*x[51]+1.52*x[8]*x[52]-1.96*x[8]*x[53]-1.04*x[8]*x[55]-0.58*x[8]*x[57]+(-1.96*x[9]*x[11])-0.46*x[9]*x[17]-1.94*x[9]*x[18]-0.24*x[9]*x[19]-1.74*x[9]*x[20]+0.58*x[9]*x[22]-1.8*x[9]*x[23]+1.54*x[9]*x[26]-1.68*x[9]*x[29]-1.52*x[9]*x[32]+0.4*x[9]*x[35]+0.68*x[9]*x[36]-1.74*x[9]*x[37]+1.1*x[9]*x[41]+1.62*x[9]*x[43]+1.6*x[9]*x[45]-1.4*x[9]*x[47]+0.24*x[9]*x[50]+0.36*x[9]*x[51]-0.98*x[9]*x[56]-1.3*x[9]*x[57]+0.18*x[9]*x[58]+0.3*x[9]*x[59]-0.3*x[9]*x[60]+0.2*x[9]*x[61]+x[10]*x[13]-1.58*x[10]*x[14]+0.92*x[10]*x[15]+0.48*x[10]*x[16]+0.02*x[10]*x[17]+0.46*x[10]*x[20]-0.76*x[10]*x[21]+1.94*x[10]*x[25]-0.94*x[10]*x[27]+1.22*x[10]*x[30]-0.38*x[10]*x[31]+1.78*x[10]*x[33]+0.44*x[10]*x[37]+1.26*x[10]*x[38]-0.18*x[10]*x[39]+1.88*x[10]*x[40]+1.58*x[10]*x[42]+1.82*x[10]*x[44]+1.1*x[10]*x[46]-0.14*x[10]*x[47]+1.32*x[10]*x[49]+1.28*x[10]*x[52]+0.44*x[10]*x[54]-1.68*x[10]*x[55]-0.78*x[10]*x[56]-1.6*x[10]*x[57]+0.96*x[10]*x[58]+1.72*x[10]*x[61]+0.16*x[11]*x[12]+0.5*x[11]*x[16]-1.16*x[11]*x[17]-0.9*x[11]*x[20]+0.3*x[11]*x[22]-0.24*x[11]*x[24]-1.46*x[11]*x[25]+1.7*x[11]*x[26]-0.34*x[11]*x[27]+1.4*x[11]*x[33]+1.12*x[11]*x[39]+0.58*x[11]*x[43]-2*x[11]*x[45]+0.04*x[11]*x[46]+1.58*x[11]*x[47]+1.78*x[11]*x[48]-1.08*x[11]*x[49]+0.12*x[11]*x[50]+0.02*x[11]*x[53]+1.16*x[11]*x[54]+1.06*x[11]*x[56]-0.36*x[11]*x[58]-1.96*x[11]*x[60]+0.94*x[12]*x[17]+0.32*x[12]*x[19]-1.28*x[12]*x[20]+0.54*x[12]*x[21]-0.64*x[12]*x[23]-0.18*x[12]*x[28]-1.84*x[12]*x[29]+0.14*x[12]*x[30]-0.8*x[12]*x[31]+1.08*x[12]*x[33]-0.14*x[12]*x[39]+1.88*x[12]*x[40]+1.86*x[12]*x[41]+0.52*x[12]*x[46]+0.38*x[12]*x[48]+0.28*x[12]*x[53]+1.86*x[12]*x[56]-1.3*x[12]*x[57]+1.48*x[13]*x[17]+0.46*x[13]*x[23]+0.7*x[13]*x[28]-1.02*x[13]*x[29]+1.54*x[13]*x[30]-0.02*x[13]*x[31]-1.58*x[13]*x[36]+0.78*x[13]*x[39]-0.5*x[13]*x[42]+1.46*x[13]*x[43]+0.02*x[13]*x[47]-1.44*x[13]*x[48]+1.72*x[13]*x[49]+0.46*x[13]*x[51]-0.06*x[13]*x[53]-0.28*x[13]*x[54]-0.58*x[13]*x[55]+0.48*x[13]*x[56]-1.22*x[13]*x[58]-1.72*x[13]*x[61]+(-0.44*x[14]*x[22])-0.12*x[14]*x[23]-0.1*x[14]*x[26]+1.06*x[14]*x[27]-1.62*x[14]*x[28]-1.34*x[14]*x[30]+0.62*x[14]*x[32]-1.8*x[14]*x[33]+1.98*x[14]*x[34]+1.86*x[14]*x[36]-x[14]*x[38]+0.7*x[14]*x[39]-0.1*x[14]*x[41]+1.5*x[14]*x[43]-0.38*x[14]*x[44]-0.6*x[14]*x[46]+1.86*x[14]*x[48]+0.9*x[14]*x[49]+0.44*x[14]*x[54]+1.72*x[14]*x[56]+1.88*x[14]*x[57]-0.36*x[14]*x[58]-1.2*x[14]*x[59]+0.28*x[15]*x[18]-1.02*x[15]*x[20]-1.7*x[15]*x[21]+1.7*x[15]*x[22]+0.48*x[15]*x[23]-0.86*x[15]*x[26]+0.18*x[15]*x[29]+1.62*x[15]*x[30]+1.42*x[15]*x[31]-1.56*x[15]*x[32]+1.8*x[15]*x[34]-0.36*x[15]*x[35]-1.16*x[15]*x[37]+0.04*x[15]*x[38]+0.56*x[15]*x[39]+0.94*x[15]*x[40]+0.12*x[15]*x[42]+1.22*x[15]*x[43]+1.32*x[15]*x[44]-0.88*x[15]*x[46]+1.38*x[15]*x[49]+1.52*x[15]*x[50]-1.32*x[15]*x[54]-1.58*x[15]*x[56]-0.74*x[15]*x[57]+1.62*x[15]*x[58]+1.46*x[16]*x[19]+0.96*x[16]*x[20]-1.06*x[16]*x[21]+0.88*x[16]*x[23]-1.02*x[16]*x[29]+1.02*x[16]*x[30]-1.9*x[16]*x[31]+1.44*x[16]*x[32]-0.46*x[16]*x[33]+1.24*x[16]*x[34]-1.84*x[16]*x[37]+1.08*x[16]*x[38]-0.52*x[16]*x[39]+1.82*x[16]*x[46]+1.5*x[16]*x[51]+1.56*x[16]*x[55]+1.42*x[16]*x[60]+0.96*x[17]*x[18]-0.36*x[17]*x[19]+1.56*x[17]*x[20]-1.38*x[17]*x[22]+1.12*x[17]*x[23]+1.3*x[17]*x[25]-0.02*x[17]*x[26]+1.16*x[17]*x[27]-0.46*x[17]*x[29]-1.26*x[17]*x[31]-1.34*x[17]*x[32]-1.28*x[17]*x[34]+0.12*x[17]*x[38]-0.04*x[17]*x[41]-0.46*x[17]*x[43]+0.44*x[17]*x[44]+0.8*x[17]*x[49]-1.94*x[17]*x[50]-1.78*x[17]*x[52]+1.88*x[17]*x[53]-0.38*x[17]*x[56]+0.94*x[17]*x[57]+1.04*x[17]*x[61]+(-1.42*x[18]*x[20])-1.06*x[18]*x[22]-0.66*x[18]*x[26]-1.58*x[18]*x[27]-1.36*x[18]*x[29]+1.6*x[18]*x[30]-2*x[18]*x[31]+1.46*x[18]*x[32]-0.7*x[18]*x[33]-0.68*x[18]*x[34]-1.96*x[18]*x[35]-1.84*x[18]*x[36]-1.66*x[18]*x[41]+0.2*x[18]*x[48]-1.04*x[18]*x[49]+0.92*x[18]*x[51]+0.24*x[18]*x[52]+0.76*x[18]*x[54]-1.84*x[18]*x[57]+1.24*x[18]*x[58]-1.92*x[18]*x[59]+1.2*x[18]*x[60]-0.1*x[18]*x[61]+0.72*x[19]*x[20]-0.1*x[19]*x[23]-0.16*x[19]*x[24]-0.46*x[19]*x[25]-0.82*x[19]*x[26]+1.56*x[19]*x[27]-0.12*x[19]*x[28]-1.1*x[19]*x[29]-0.14*x[19]*x[30]-1.48*x[19]*x[31]+0.12*x[19]*x[32]-0.72*x[19]*x[33]-1.54*x[19]*x[34]+1.36*x[19]*x[36]-0.4*x[19]*x[40]+0.36*x[19]*x[42]+0.12*x[19]*x[43]-0.86*x[19]*x[46]+1.92*x[19]*x[47]+1.7*x[19]*x[48]+1.88*x[19]*x[49]-1.24*x[19]*x[51]+1.46*x[19]*x[53]-0.34*x[19]*x[58]-0.34*x[19]*x[60]-0.4*x[19]*x[61]+1.14*x[20]*x[22]-0.92*x[20]*x[21]+1.54*x[20]*x[23]-1.88*x[20]*x[24]-1.98*x[20]*x[27]+0.34*x[20]*x[29]-1.16*x[20]*x[31]+0.38*x[20]*x[34]+1.66*x[20]*x[36]+1.74*x[20]*x[37]-1.72*x[20]*x[38]+0.28*x[20]*x[39]-1.64*x[20]*x[40]+0.28*x[20]*x[41]+0.42*x[20]*x[45]+1.48*x[20]*x[46]+1.16*x[20]*x[47]-0.94*x[20]*x[48]+1.12*x[20]*x[49]+1.06*x[20]*x[51]-0.78*x[20]*x[53]+0.34*x[20]*x[55]+1.26*x[20]*x[56]-0.96*x[20]*x[57]+0.82*x[20]*x[59]-1.26*x[20]*x[60]+0.7*x[21]*x[24]-0.94*x[21]*x[22]+1.54*x[21]*x[25]-0.8*x[21]*x[27]-0.26*x[21]*x[29]-0.12*x[21]*x[33]+1.62*x[21]*x[37]+0.22*x[21]*x[38]-0.24*x[21]*x[45]-0.48*x[21]*x[46]+1.4*x[21]*x[47]+0.54*x[21]*x[48]+1.8*x[21]*x[55]+1.6*x[21]*x[60]+0.84*x[22]*x[29]+1.88*x[22]*x[31]+1.86*x[22]*x[32]+1.56*x[22]*x[34]+1.68*x[22]*x[36]+0.26*x[22]*x[38]-1.16*x[22]*x[40]+1.56*x[22]*x[41]+0.06*x[22]*x[44]+1.06*x[22]*x[45]+1.38*x[22]*x[48]+0.62*x[22]*x[49]-1.34*x[22]*x[50]-0.18*x[22]*x[51]+0.76*x[22]*x[54]+0.54*x[22]*x[57]+1.52*x[22]*x[58]-1.34*x[22]*x[59]+1.96*x[22]*x[60]-0.9*x[22]*x[61]+1.88*x[23]*x[25]-1.42*x[23]*x[27]-1.66*x[23]*x[30]-0.9*x[23]*x[31]+0.98*x[23]*x[33]-1.16*x[23]*x[36]-0.08*x[23]*x[37]+1.72*x[23]*x[39]+1.08*x[23]*x[41]+0.48*x[23]*x[42]-0.68*x[23]*x[43]-0.88*x[23]*x[45]-1.84*x[23]*x[50]+1.62*x[23]*x[51]+1.66*x[23]*x[53]+1.36*x[23]*x[55]+0.06*x[23]*x[56]+0.12*x[24]*x[31]-0.86*x[24]*x[25]+1.62*x[24]*x[32]+1.8*x[24]*x[36]+1.94*x[24]*x[37]+0.56*x[24]*x[40]+1.08*x[24]*x[41]-0.48*x[24]*x[43]-0.68*x[24]*x[49]-0.92*x[24]*x[50]+1.1*x[24]*x[51]+0.56*x[24]*x[53]-1.48*x[24]*x[55]+1.74*x[24]*x[56]+0.36*x[24]*x[57]+0.14*x[24]*x[58]-0.82*x[24]*x[60]+(-0.34*x[25]*x[26])-0.26*x[25]*x[27]+1.14*x[25]*x[30]+0.46*x[25]*x[31]+0.4*x[25]*x[34]-0.84*x[25]*x[36]+0.06*x[25]*x[38]-1.18*x[25]*x[41]-0.68*x[25]*x[43]+1.58*x[25]*x[45]-0.36*x[25]*x[46]+0.26*x[25]*x[48]+1.56*x[25]*x[49]-0.62*x[25]*x[50]+1.84*x[25]*x[51]-1.78*x[25]*x[53]-0.84*x[25]*x[54]+0.4*x[25]*x[58]+1.94*x[25]*x[59]+0.18*x[26]*x[27]-1.08*x[26]*x[28]-0.62*x[26]*x[29]-1.26*x[26]*x[31]+1.3*x[26]*x[34]-1.84*x[26]*x[35]+1.1*x[26]*x[36]+0.7*x[26]*x[37]-1.7*x[26]*x[44]-1.48*x[26]*x[47]+1.94*x[26]*x[48]-0.96*x[26]*x[49]+1.34*x[26]*x[50]+0.62*x[26]*x[51]-1.68*x[26]*x[52]+0.28*x[26]*x[55]-1.4*x[26]*x[56]+0.04*x[26]*x[59]+(-1.28*x[27]*x[29])-0.68*x[27]*x[30]-0.04*x[27]*x[31]+0.38*x[27]*x[32]-0.18*x[27]*x[34]+1.12*x[27]*x[36]+1.42*x[27]*x[45]-0.52*x[27]*x[46]-0.58*x[27]*x[49]+1.02*x[27]*x[55]+1.18*x[27]*x[57]+0.4*x[27]*x[61]+0.86*x[28]*x[30]-1.14*x[28]*x[29]-2*x[28]*x[32]+1.46*x[28]*x[35]+0.78*x[28]*x[36]+1.32*x[28]*x[37]+1.38*x[28]*x[39]-1.32*x[28]*x[42]-1.3*x[28]*x[45]+0.32*x[28]*x[50]+0.36*x[28]*x[51]-1.76*x[28]*x[52]-1.48*x[28]*x[54]+1.4*x[28]*x[56]+1.6*x[28]*x[59]-0.92*x[28]*x[60]+0.8*x[28]*x[61]+0.24*x[29]*x[34]-0.28*x[29]*x[32]-0.44*x[29]*x[35]+1.34*x[29]*x[36]-0.5*x[29]*x[37]-0.5*x[29]*x[40]-1.4*x[29]*x[43]-0.22*x[29]*x[45]-0.66*x[29]*x[46]+1.76*x[29]*x[48]-0.48*x[29]*x[51]-1.82*x[29]*x[55]-1.36*x[29]*x[56]-0.56*x[29]*x[58]-0.24*x[29]*x[59]+1.68*x[29]*x[60]+1.52*x[29]*x[61]+1.06*x[30]*x[32]+1.5*x[30]*x[34]-1.94*x[30]*x[35]+1.14*x[30]*x[36]-0.62*x[30]*x[37]-1.36*x[30]*x[46]-1.92*x[30]*x[47]-0.92*x[30]*x[50]-0.86*x[30]*x[51]+0.48*x[30]*x[53]+0.72*x[30]*x[54]+1.66*x[30]*x[56]-1.96*x[30]*x[57]+1.32*x[30]*x[58]+1.84*x[30]*x[60]+1.42*x[30]*x[61]+1.38*x[31]*x[37]-1.86*x[31]*x[40]-0.68*x[31]*x[43]+0.64*x[31]*x[45]-1.28*x[31]*x[46]-1.9*x[31]*x[47]+1.9*x[31]*x[49]+0.08*x[31]*x[54]+1.96*x[31]*x[55]-1.68*x[31]*x[59]+1.38*x[31]*x[60]-1.12*x[31]*x[61]+0.6*x[32]*x[33]+1.54*x[32]*x[35]-1.86*x[32]*x[37]-0.7*x[32]*x[38]-0.84*x[32]*x[39]-1.22*x[32]*x[41]+0.42*x[32]*x[42]+0.04*x[32]*x[43]-1.64*x[32]*x[44]-1.12*x[32]*x[50]+2*x[32]*x[52]+1.06*x[32]*x[55]-1.56*x[32]*x[56]-1.5*x[32]*x[58]+1.4*x[32]*x[59]+0.78*x[33]*x[39]-1.58*x[33]*x[34]-0.64*x[33]*x[41]-0.58*x[33]*x[43]+0.44*x[33]*x[45]+0.16*x[33]*x[47]-1.12*x[33]*x[48]-1.08*x[33]*x[50]+0.7*x[33]*x[51]+1.12*x[33]*x[53]+0.48*x[33]*x[56]+1.58*x[33]*x[59]+0.1*x[33]*x[60]+(-0.06*x[34]*x[37])-1.08*x[34]*x[42]-1.92*x[34]*x[44]+1.38*x[34]*x[45]+0.32*x[34]*x[46]-1.32*x[34]*x[49]-0.08*x[34]*x[50]+0.38*x[34]*x[53]+0.36*x[34]*x[54]+0.12*x[34]*x[58]+1.12*x[34]*x[60]-0.02*x[34]*x[61]+0.32*x[35]*x[38]-0.26*x[35]*x[40]+0.52*x[35]*x[41]+1.18*x[35]*x[42]-0.42*x[35]*x[43]+1.82*x[35]*x[44]+1.96*x[35]*x[47]-0.42*x[35]*x[49]+0.92*x[35]*x[50]+0.62*x[35]*x[52]+0.52*x[35]*x[53]+1.54*x[35]*x[54]+0.16*x[35]*x[56]+1.18*x[35]*x[57]+0.7*x[35]*x[58]-1.04*x[35]*x[59]+1.84*x[35]*x[60]+0.14*x[35]*x[61]+(-0.48*x[36]*x[39])-1.94*x[36]*x[50]-1.5*x[36]*x[52]-1.96*x[36]*x[55]-0.5*x[36]*x[59]+0.46*x[36]*x[60]-0.8*x[36]*x[61]+0.86*x[37]*x[38]+0.66*x[37]*x[41]-1.28*x[37]*x[43]-1.34*x[37]*x[44]-0.42*x[37]*x[45]+1.72*x[37]*x[47]-0.44*x[37]*x[48]+1.2*x[37]*x[50]-1.78*x[37]*x[51]-0.98*x[37]*x[56]-1.6*x[37]*x[57]-1.98*x[37]*x[58]+1.74*x[37]*x[59]+1.14*x[37]*x[61]+0.26*x[38]*x[44]-0.06*x[38]*x[40]-1.42*x[38]*x[45]-1.64*x[38]*x[46]-x[38]*x[49]-0.06*x[38]*x[51]+0.48*x[38]*x[54]-0.9*x[38]*x[55]-1.76*x[38]*x[58]+0.82*x[38]*x[59]+0.16*x[38]*x[61]+0.98*x[39]*x[40]+0.9*x[39]*x[42]+1.18*x[39]*x[43]+0.04*x[39]*x[44]+1.02*x[39]*x[45]-0.26*x[39]*x[47]-1.76*x[39]*x[48]-0.92*x[39]*x[49]+0.82*x[39]*x[50]-0.64*x[39]*x[59]+0.54*x[39]*x[60]+0.36*x[40]*x[42]-0.68*x[40]*x[46]+1.64*x[40]*x[47]-1.7*x[40]*x[48]+0.96*x[40]*x[50]+0.62*x[40]*x[53]-1.82*x[40]*x[54]-0.94*x[40]*x[55]+1.94*x[40]*x[56]-1.8*x[40]*x[57]+(-0.02*x[41]*x[42])-0.24*x[41]*x[43]+0.3*x[41]*x[44]+1.48*x[41]*x[45]-0.7*x[41]*x[46]+1.74*x[41]*x[52]-0.2*x[41]*x[54]+x[41]*x[55]-0.46*x[41]*x[59]+0.2*x[41]*x[60]+0.04*x[42]*x[47]-0.72*x[42]*x[49]+1.9*x[42]*x[50]+0.56*x[42]*x[52]-0.94*x[42]*x[57]+0.04*x[42]*x[58]+1.74*x[42]*x[60]+1.54*x[42]*x[61]+(-0.88*x[43]*x[45])-0.68*x[43]*x[46]-1.6*x[43]*x[48]-1.4*x[43]*x[49]-1.08*x[43]*x[51]+0.7*x[43]*x[52]+0.34*x[43]*x[55]-0.82*x[43]*x[57]+0.66*x[43]*x[58]-0.18*x[43]*x[59]+1.22*x[44]*x[47]-0.82*x[44]*x[46]-0.7*x[44]*x[49]-1.16*x[44]*x[50]+0.52*x[44]*x[54]+0.74*x[44]*x[57]-1.72*x[44]*x[58]-1.74*x[44]*x[59]-0.2*x[44]*x[60]-0.12*x[44]*x[61]+1.36*x[45]*x[47]+1.18*x[45]*x[49]+1.24*x[45]*x[52]-1.1*x[45]*x[54]-0.06*x[45]*x[55]+0.14*x[45]*x[60]+1.4*x[45]*x[61]+1.7*x[46]*x[47]-0.36*x[46]*x[50]-0.58*x[46]*x[53]-0.7*x[46]*x[59]+1.96*x[47]*x[51]-0.86*x[47]*x[48]-0.2*x[47]*x[52]-0.86*x[47]*x[53]+0.36*x[47]*x[55]-1.5*x[47]*x[56]+1.12*x[47]*x[57]-0.14*x[47]*x[58]+1.2*x[48]*x[50]+1.44*x[48]*x[54]+1.64*x[48]*x[57]-1.28*x[48]*x[60]+1.2*x[49]*x[51]-0.18*x[49]*x[53]-1.48*x[49]*x[54]-1.64*x[49]*x[55]+0.36*x[49]*x[56]-1.18*x[49]*x[59]-0.32*x[49]*x[61]+1.86*x[50]*x[51]-0.34*x[50]*x[55]-0.24*x[50]*x[58]+0.94*x[50]*x[59]+(-1.1*x[51]*x[52])-0.62*x[51]*x[53]+0.7*x[51]*x[54]+1.52*x[51]*x[57]+1.58*x[51]*x[59]+(-1.76*x[52]*x[53])-1.18*x[52]*x[55]-0.52*x[52]*x[58]-1.58*x[52]*x[60]+1.96*x[53]*x[58]+0.8*x[53]*x[59]+0.5*x[53]*x[61]+0.58*x[54]*x[58]-0.74*x[54]*x[55]-1.06*x[54]*x[60]+1.8*x[55]*x[58]-0.4*x[55]*x[57]+0.04*x[56]*x[58]-0.52*x[56]*x[57]+(-1.1*x[57]*x[58])-0.9*x[57]*x[59]+0.1*x[58]*x[60]-0.28*x[58]*x[61]+0.08*x[59]*x[61]+0.63*x[6]*x[6]-0.58*x[8]*x[8]-0.03*x[9]*x[9]-0.06*x[10]*x[10]-0.76*x[12]*x[12]+0.02*x[14]*x[14]-0.2*x[15]*x[15]-0.14*x[20]*x[20]+0.44*x[22]*x[22]+0.16*x[23]*x[23]-0.21*x[26]*x[26]+0.92*x[28]*x[28]+0.74*x[29]*x[29]+0.99*x[30]*x[30]-0.23*x[34]*x[34]-0.15*x[35]*x[35]+x[38]*x[38]-0.93*x[39]*x[39]+0.98*x[42]*x[42]-0.93*x[46]*x[46]-0.91*x[47]*x[47]+0.86*x[52]*x[52]+0.68*x[53]*x[53]+0.82*x[54]*x[54]+0.65*x[58]*x[58]+0.27*x[61]*x[61]+0.61*x[2]-0.7*x[3]+0.08*x[4]+0.65*x[5]+0.33*x[6]-0.7*x[7]-0.09*x[8]+0.32*x[9]-0.62*x[10]-0.23*x[11]+0.5*x[12]-0.96*x[13]+0.5*x[14]-0.73*x[15]+0.15*x[16]+0.3*x[17]+0.11*x[18]+0.26*x[19]-0.94*x[20]+0.7*x[21]-0.29*x[22]+0.1*x[23]-0.94*x[24]+0.02*x[25]-0.83*x[26]-0.26*x[27]-0.84*x[28]-0.35*x[29]+0.79*x[30]-0.69*x[31]-0.61*x[32]-0.97*x[33]-0.79*x[34]-0.4*x[35]-0.37*x[36]+0.58*x[37]+0.54*x[38]+0.87*x[39]-0.86*x[40]-0.27*x[41]+0.27*x[42]-0.33*x[43]-0.15*x[44]-0.6*x[45]-0.19*x[46]-0.36*x[47]+0.26*x[48]-0.07*x[49]+0.4*x[50]+0.3*x[51]-0.68*x[52]-0.21*x[53]-0.95*x[54]-0.47*x[55]+0.65*x[56]-0.2*x[57]-0.78*x[58]-0.77*x[59]+0.23*x[60]-0.64*x[61])+x[1] == 0.0)
@NLconstraint(m, e2, (-0.48*x[2]*x[3])-1.78*x[2]*x[5]-0.82*x[2]*x[9]-0.32*x[2]*x[11]-1.4*x[2]*x[12]+1.52*x[2]*x[13]+0.36*x[2]*x[19]-1.54*x[2]*x[22]+1.28*x[2]*x[25]+1.76*x[2]*x[26]-1.04*x[2]*x[29]+1.64*x[2]*x[30]-0.5*x[2]*x[33]+1.14*x[2]*x[40]-0.36*x[2]*x[43]-0.06*x[2]*x[44]-1.38*x[2]*x[45]-1.46*x[2]*x[48]+0.72*x[2]*x[51]+0.68*x[2]*x[52]+0.9*x[2]*x[53]-0.46*x[2]*x[54]-1.18*x[2]*x[58]-0.62*x[2]*x[61]+0.12*x[3]*x[5]-1.88*x[3]*x[4]+x[3]*x[6]+0.22*x[3]*x[9]-0.56*x[3]*x[11]+1.56*x[3]*x[12]+0.42*x[3]*x[13]-1.54*x[3]*x[15]-1.64*x[3]*x[16]-1.26*x[3]*x[17]-1.32*x[3]*x[19]+0.4*x[3]*x[20]+1.42*x[3]*x[22]-1.4*x[3]*x[23]+1.58*x[3]*x[24]+0.18*x[3]*x[28]+0.24*x[3]*x[30]-0.5*x[3]*x[31]-1.82*x[3]*x[32]-1.02*x[3]*x[34]-1.4*x[3]*x[35]-1.14*x[3]*x[37]-0.32*x[3]*x[38]+1.94*x[3]*x[39]-1.96*x[3]*x[41]-0.06*x[3]*x[44]-0.3*x[3]*x[46]-1.26*x[3]*x[49]-1.1*x[3]*x[51]-1.56*x[3]*x[53]-1.74*x[3]*x[54]+0.06*x[3]*x[55]-0.12*x[3]*x[57]-0.88*x[3]*x[61]+0.5*x[4]*x[5]+1.88*x[4]*x[6]-1.72*x[4]*x[8]-0.94*x[4]*x[11]-1.64*x[4]*x[15]+0.18*x[4]*x[16]-1.92*x[4]*x[18]-0.88*x[4]*x[19]+0.98*x[4]*x[20]-1.9*x[4]*x[23]-0.1*x[4]*x[26]+0.48*x[4]*x[28]-1.22*x[4]*x[29]-1.58*x[4]*x[31]-0.82*x[4]*x[32]+0.36*x[4]*x[34]-1.48*x[4]*x[35]-1.24*x[4]*x[38]+0.06*x[4]*x[41]-0.96*x[4]*x[47]-1.6*x[4]*x[49]+1.12*x[4]*x[51]+0.44*x[4]*x[52]-1.6*x[4]*x[54]-0.48*x[4]*x[56]-1.54*x[4]*x[58]+1.84*x[4]*x[61]+0.06*x[5]*x[8]-0.42*x[5]*x[6]+0.42*x[5]*x[9]+0.48*x[5]*x[12]-1.94*x[5]*x[13]+0.94*x[5]*x[15]+1.48*x[5]*x[17]+0.9*x[5]*x[18]+1.38*x[5]*x[19]-1.98*x[5]*x[20]-0.54*x[5]*x[21]-1.32*x[5]*x[22]+1.64*x[5]*x[23]+1.64*x[5]*x[28]+0.14*x[5]*x[32]-0.28*x[5]*x[33]-0.96*x[5]*x[34]-0.7*x[5]*x[35]-0.3*x[5]*x[37]-1.32*x[5]*x[39]+0.84*x[5]*x[46]+0.7*x[5]*x[49]-0.54*x[5]*x[50]-1.36*x[5]*x[51]+1.04*x[5]*x[55]-1.18*x[5]*x[58]+1.98*x[5]*x[60]+0.06*x[6]*x[9]-0.64*x[6]*x[14]+1.62*x[6]*x[15]+1.64*x[6]*x[17]+1.74*x[6]*x[20]-1.82*x[6]*x[21]+1.48*x[6]*x[25]-0.28*x[6]*x[26]-0.1*x[6]*x[29]+0.4*x[6]*x[33]-1.32*x[6]*x[36]-0.52*x[6]*x[37]-1.94*x[6]*x[39]-0.34*x[6]*x[44]+0.28*x[6]*x[48]-0.56*x[6]*x[53]-1.98*x[6]*x[55]-0.6*x[6]*x[56]+1.1*x[6]*x[57]-0.2*x[6]*x[59]+(-1.8*x[7]*x[8])-0.2*x[7]*x[11]-1.58*x[7]*x[14]+1.74*x[7]*x[15]+0.72*x[7]*x[17]-1.88*x[7]*x[18]+0.28*x[7]*x[19]+1.5*x[7]*x[20]+0.2*x[7]*x[24]+0.9*x[7]*x[25]+0.38*x[7]*x[28]-1.24*x[7]*x[33]+1.88*x[7]*x[36]-1.82*x[7]*x[39]-0.42*x[7]*x[40]+1.04*x[7]*x[41]-0.32*x[7]*x[42]-0.74*x[7]*x[43]+0.7*x[7]*x[47]+0.2*x[7]*x[48]-1.68*x[7]*x[49]-1.86*x[7]*x[51]+1.34*x[7]*x[52]+0.06*x[7]*x[54]+1.76*x[7]*x[56]+0.16*x[7]*x[57]+1.04*x[7]*x[59]-1.86*x[7]*x[60]-1.84*x[7]*x[61]+0.14*x[8]*x[9]-0.74*x[8]*x[10]-0.46*x[8]*x[11]-0.14*x[8]*x[13]-1.22*x[8]*x[15]+1.82*x[8]*x[17]+1.7*x[8]*x[18]+0.24*x[8]*x[21]+0.9*x[8]*x[23]-0.66*x[8]*x[25]+0.16*x[8]*x[26]-1.58*x[8]*x[28]-1.56*x[8]*x[29]-0.46*x[8]*x[31]+1.02*x[8]*x[37]-0.28*x[8]*x[39]-1.32*x[8]*x[40]+0.96*x[8]*x[41]+1.6*x[8]*x[42]+0.74*x[8]*x[43]-0.86*x[8]*x[44]-0.8*x[8]*x[46]+1.56*x[8]*x[47]-0.74*x[8]*x[48]-0.06*x[8]*x[49]+0.96*x[8]*x[51]+1.58*x[8]*x[53]-0.72*x[8]*x[55]-0.48*x[8]*x[57]+0.84*x[8]*x[59]+1.68*x[8]*x[60]-1.58*x[8]*x[61]+0.34*x[9]*x[10]-1.24*x[9]*x[12]+1.1*x[9]*x[13]+1.6*x[9]*x[14]+1.04*x[9]*x[15]+1.78*x[9]*x[16]-0.64*x[9]*x[17]-1.38*x[9]*x[18]+0.84*x[9]*x[21]-1.72*x[9]*x[24]-0.84*x[9]*x[28]-0.54*x[9]*x[29]+1.04*x[9]*x[30]+0.86*x[9]*x[32]-0.26*x[9]*x[33]-1.74*x[9]*x[34]-0.88*x[9]*x[35]-1.96*x[9]*x[36]+1.1*x[9]*x[39]+0.92*x[9]*x[41]-1.26*x[9]*x[43]-1.04*x[9]*x[44]-1.22*x[9]*x[45]+0.48*x[9]*x[47]-1.5*x[9]*x[48]-0.08*x[9]*x[52]-0.6*x[9]*x[54]-0.92*x[9]*x[55]+1.9*x[9]*x[56]+0.36*x[9]*x[57]+0.52*x[9]*x[58]+(-1.54*x[10]*x[11])-0.66*x[10]*x[12]-0.9*x[10]*x[13]+0.7*x[10]*x[14]-1.66*x[10]*x[17]-1.22*x[10]*x[18]-1.62*x[10]*x[19]-0.9*x[10]*x[24]+1.54*x[10]*x[25]-0.26*x[10]*x[26]+1.9*x[10]*x[27]-0.6*x[10]*x[28]+0.42*x[10]*x[31]+1.68*x[10]*x[32]+0.38*x[10]*x[35]-0.44*x[10]*x[36]-0.1*x[10]*x[38]-0.8*x[10]*x[40]-1.74*x[10]*x[42]+1.14*x[10]*x[43]+1.58*x[10]*x[44]+1.56*x[10]*x[45]+1.48*x[10]*x[46]-0.66*x[10]*x[49]+0.04*x[10]*x[51]+1.14*x[10]*x[54]+1.62*x[10]*x[56]-0.14*x[10]*x[58]-1.74*x[10]*x[59]+0.06*x[10]*x[60]+0.3*x[10]*x[61]+0.3*x[11]*x[13]+0.24*x[11]*x[16]+1.26*x[11]*x[18]-2*x[11]*x[19]-0.9*x[11]*x[22]-1.82*x[11]*x[23]-0.34*x[11]*x[27]-0.94*x[11]*x[28]+1.98*x[11]*x[35]+1.5*x[11]*x[37]-0.22*x[11]*x[39]-0.56*x[11]*x[41]+1.24*x[11]*x[42]-1.54*x[11]*x[43]+0.56*x[11]*x[45]+1.82*x[11]*x[47]-0.2*x[11]*x[48]-0.16*x[11]*x[52]+0.68*x[11]*x[55]+x[11]*x[57]-0.12*x[11]*x[58]-1.86*x[11]*x[59]-2*x[11]*x[60]+(-1.54*x[12]*x[13])-0.14*x[12]*x[19]-1.44*x[12]*x[20]+1.66*x[12]*x[22]-1.38*x[12]*x[23]+0.12*x[12]*x[24]+0.4*x[12]*x[28]+0.22*x[12]*x[29]+0.28*x[12]*x[30]+1.86*x[12]*x[33]+1.66*x[12]*x[35]+1.48*x[12]*x[38]+1.68*x[12]*x[43]+1.22*x[12]*x[44]+0.66*x[12]*x[45]+0.52*x[12]*x[46]-0.62*x[12]*x[47]-1.92*x[12]*x[52]+0.34*x[12]*x[54]+1.68*x[12]*x[55]+1.92*x[12]*x[56]+0.56*x[12]*x[57]+0.3*x[12]*x[58]+0.58*x[12]*x[59]-1.96*x[12]*x[60]+0.44*x[13]*x[24]-0.14*x[13]*x[19]+1.66*x[13]*x[28]+1.7*x[13]*x[34]-0.6*x[13]*x[35]+0.6*x[13]*x[37]-0.3*x[13]*x[38]+1.12*x[13]*x[39]+1.76*x[13]*x[41]+0.88*x[13]*x[42]+0.76*x[13]*x[43]-1.62*x[13]*x[44]+0.62*x[13]*x[46]+0.4*x[13]*x[48]+1.28*x[13]*x[50]+1.64*x[13]*x[52]-1.52*x[13]*x[54]+0.1*x[13]*x[56]-1.7*x[13]*x[57]+0.58*x[13]*x[60]-0.78*x[13]*x[61]+1.84*x[14]*x[28]-1.22*x[14]*x[29]-1.04*x[14]*x[31]+1.88*x[14]*x[32]-0.32*x[14]*x[33]-0.52*x[14]*x[34]+0.24*x[14]*x[36]+0.96*x[14]*x[40]+1.26*x[14]*x[42]-0.6*x[14]*x[44]-1.66*x[14]*x[45]+0.06*x[14]*x[46]+1.6*x[14]*x[48]+1.02*x[14]*x[49]-1.06*x[14]*x[50]-0.98*x[14]*x[52]+0.22*x[14]*x[55]-0.52*x[14]*x[56]+0.22*x[14]*x[57]+1.8*x[14]*x[58]+(-0.32*x[15]*x[16])-0.7*x[15]*x[17]-0.68*x[15]*x[19]+1.9*x[15]*x[22]-0.58*x[15]*x[23]+0.14*x[15]*x[24]-0.26*x[15]*x[28]-0.26*x[15]*x[29]-0.98*x[15]*x[31]-1.58*x[15]*x[33]+0.74*x[15]*x[35]+1.06*x[15]*x[36]+0.54*x[15]*x[40]-0.14*x[15]*x[44]-1.04*x[15]*x[45]+0.04*x[15]*x[46]-0.22*x[15]*x[48]-1.52*x[15]*x[49]-1.98*x[15]*x[50]-0.7*x[15]*x[52]-1.36*x[15]*x[54]+0.94*x[15]*x[57]+0.38*x[15]*x[60]+1.72*x[16]*x[19]-1.24*x[16]*x[18]-0.36*x[16]*x[21]+0.96*x[16]*x[23]+1.58*x[16]*x[24]+0.18*x[16]*x[25]+1.66*x[16]*x[26]+0.34*x[16]*x[32]+1.02*x[16]*x[34]-0.52*x[16]*x[36]-0.5*x[16]*x[38]-1.02*x[16]*x[43]+1.78*x[16]*x[46]-1.2*x[16]*x[47]-0.62*x[16]*x[55]+1.5*x[16]*x[56]+0.62*x[16]*x[60]-1.4*x[16]*x[61]+1.8*x[17]*x[19]-1.4*x[17]*x[18]+1.26*x[17]*x[21]+0.32*x[17]*x[22]-0.22*x[17]*x[24]+1.18*x[17]*x[27]-0.78*x[17]*x[28]-0.52*x[17]*x[29]+0.22*x[17]*x[33]+1.8*x[17]*x[34]-1.8*x[17]*x[36]-1.16*x[17]*x[37]+0.3*x[17]*x[38]-1.92*x[17]*x[39]+1.5*x[17]*x[40]-1.04*x[17]*x[41]-1.04*x[17]*x[47]+1.72*x[17]*x[48]+1.86*x[17]*x[54]+0.68*x[17]*x[57]+1.06*x[17]*x[61]+(-0.22*x[18]*x[19])-1.42*x[18]*x[20]-0.72*x[18]*x[21]-0.82*x[18]*x[25]-0.58*x[18]*x[29]-1.1*x[18]*x[31]-0.14*x[18]*x[33]-0.74*x[18]*x[34]+1.14*x[18]*x[36]-1.38*x[18]*x[39]-0.28*x[18]*x[50]+0.3*x[18]*x[52]+0.02*x[18]*x[53]+1.76*x[18]*x[55]+0.26*x[18]*x[57]-0.06*x[18]*x[59]+0.36*x[18]*x[60]+(-1.8*x[19]*x[20])-1.42*x[19]*x[21]-0.58*x[19]*x[24]-0.94*x[19]*x[29]-1.5*x[19]*x[34]-0.2*x[19]*x[37]-0.12*x[19]*x[38]-1.04*x[19]*x[41]+1.66*x[19]*x[45]-0.72*x[19]*x[46]+1.7*x[19]*x[48]-1.22*x[19]*x[51]-1.58*x[19]*x[52]-1.54*x[19]*x[55]-1.74*x[19]*x[56]+1.18*x[19]*x[57]+1.56*x[19]*x[58]+1.3*x[19]*x[60]+(-0.4*x[20]*x[22])-1.86*x[20]*x[26]-1.56*x[20]*x[27]+1.02*x[20]*x[33]+0.86*x[20]*x[35]-1.78*x[20]*x[36]-0.86*x[20]*x[46]-1.9*x[20]*x[47]-0.36*x[20]*x[48]-1.48*x[20]*x[49]+1.4*x[20]*x[50]-1.6*x[20]*x[51]+x[20]*x[55]-1.64*x[20]*x[60]+1.18*x[21]*x[23]-0.98*x[21]*x[22]-1.22*x[21]*x[24]-0.56*x[21]*x[25]+0.82*x[21]*x[26]+0.28*x[21]*x[28]+2*x[21]*x[31]+1.82*x[21]*x[32]+1.62*x[21]*x[34]+0.24*x[21]*x[35]+1.26*x[21]*x[37]-1.68*x[21]*x[38]+1.32*x[21]*x[43]+1.16*x[21]*x[47]-1.02*x[21]*x[49]+1.82*x[21]*x[52]-1.22*x[21]*x[53]+1.2*x[21]*x[54]+0.72*x[21]*x[55]+0.44*x[21]*x[56]+2*x[21]*x[57]-1.42*x[21]*x[59]+1.68*x[21]*x[60]+1.2*x[22]*x[23]+0.48*x[22]*x[27]-1.08*x[22]*x[28]-0.22*x[22]*x[29]+0.24*x[22]*x[30]-0.18*x[22]*x[31]+0.64*x[22]*x[34]-0.54*x[22]*x[36]+1.8*x[22]*x[37]+0.36*x[22]*x[38]-0.44*x[22]*x[39]+0.14*x[22]*x[43]+0.42*x[22]*x[45]-0.18*x[22]*x[48]+1.52*x[22]*x[49]-0.82*x[22]*x[50]+1.06*x[22]*x[52]+1.9*x[22]*x[54]+1.16*x[22]*x[55]-1.64*x[22]*x[56]-1.9*x[22]*x[57]+1.98*x[23]*x[26]+0.1*x[23]*x[27]+0.96*x[23]*x[31]+0.18*x[23]*x[33]+1.62*x[23]*x[35]-0.26*x[23]*x[36]+1.54*x[23]*x[40]+0.92*x[23]*x[42]+0.44*x[23]*x[43]-1.8*x[23]*x[44]-1.94*x[23]*x[45]-0.14*x[23]*x[47]+0.2*x[23]*x[48]+1.56*x[23]*x[49]-1.88*x[23]*x[51]+0.84*x[23]*x[53]+0.9*x[23]*x[54]-1.84*x[23]*x[56]+0.86*x[23]*x[57]+1.74*x[23]*x[60]+1.26*x[24]*x[27]-0.22*x[24]*x[25]-1.08*x[24]*x[28]+1.04*x[24]*x[30]-0.66*x[24]*x[32]-0.48*x[24]*x[33]+0.76*x[24]*x[34]-1.58*x[24]*x[38]+0.6*x[24]*x[39]-0.06*x[24]*x[42]-0.16*x[24]*x[44]-1.28*x[24]*x[45]+1.96*x[24]*x[47]-0.92*x[24]*x[48]+1.6*x[24]*x[49]-1.86*x[24]*x[56]-0.74*x[24]*x[57]+0.5*x[24]*x[58]+(-0.32*x[25]*x[27])-1.98*x[25]*x[33]+0.68*x[25]*x[34]-0.84*x[25]*x[35]+0.26*x[25]*x[36]-1.36*x[25]*x[37]-0.54*x[25]*x[40]-0.2*x[25]*x[45]-2*x[25]*x[47]-1.94*x[25]*x[51]+1.74*x[25]*x[52]+1.66*x[25]*x[53]-1.32*x[25]*x[54]+0.34*x[25]*x[55]-1.56*x[25]*x[56]-1.82*x[25]*x[57]-0.5*x[25]*x[58]-1.84*x[25]*x[59]-1.16*x[25]*x[60]+1.22*x[26]*x[27]+1.14*x[26]*x[30]-1.76*x[26]*x[32]+0.9*x[26]*x[36]-1.32*x[26]*x[40]-0.52*x[26]*x[41]+1.94*x[26]*x[44]-0.2*x[26]*x[45]-0.2*x[26]*x[48]-0.5*x[26]*x[49]-1.38*x[26]*x[51]-1.08*x[26]*x[52]+1.1*x[26]*x[53]-1.56*x[26]*x[54]+1.1*x[26]*x[55]-0.1*x[26]*x[56]-1.1*x[26]*x[57]-0.44*x[26]*x[58]+1.94*x[26]*x[60]-1.88*x[26]*x[61]+0.98*x[27]*x[29]+0.3*x[27]*x[31]-0.72*x[27]*x[33]-0.9*x[27]*x[34]-1.58*x[27]*x[35]-1.2*x[27]*x[38]+0.52*x[27]*x[41]-0.1*x[27]*x[43]+1.98*x[27]*x[44]+0.42*x[27]*x[45]-1.8*x[27]*x[46]+0.86*x[27]*x[47]+0.56*x[27]*x[49]+0.96*x[27]*x[50]-0.1*x[27]*x[55]-0.78*x[27]*x[57]+0.74*x[27]*x[58]+0.28*x[28]*x[30]+1.78*x[28]*x[32]-1.2*x[28]*x[37]-0.76*x[28]*x[41]-1.68*x[28]*x[42]-1.94*x[28]*x[50]-1.98*x[28]*x[51]-1.38*x[28]*x[57]-0.6*x[28]*x[60]+1.54*x[28]*x[61]+(-0.08*x[29]*x[30])-1.36*x[29]*x[32]+0.64*x[29]*x[33]-0.52*x[29]*x[36]-0.24*x[29]*x[37]+0.68*x[29]*x[43]-1.18*x[29]*x[44]+1.66*x[29]*x[47]+0.3*x[29]*x[48]-0.66*x[29]*x[51]+0.06*x[29]*x[55]-0.2*x[29]*x[56]-1.68*x[29]*x[58]+0.46*x[30]*x[33]+1.4*x[30]*x[36]-1.5*x[30]*x[38]-1.52*x[30]*x[39]-0.2*x[30]*x[40]-1.74*x[30]*x[43]+0.56*x[30]*x[46]-1.12*x[30]*x[50]-1.36*x[30]*x[51]-0.8*x[30]*x[52]-0.96*x[30]*x[54]+1.78*x[30]*x[59]-1.9*x[30]*x[60]+1.94*x[30]*x[61]+1.52*x[31]*x[35]-1.92*x[31]*x[34]-0.78*x[31]*x[36]-1.56*x[31]*x[37]+0.78*x[31]*x[38]-1.94*x[31]*x[39]+1.12*x[31]*x[40]-1.9*x[31]*x[41]+1.86*x[31]*x[42]+1.34*x[31]*x[43]+0.08*x[31]*x[44]+1.18*x[31]*x[48]+0.42*x[31]*x[49]-0.54*x[31]*x[50]+1.82*x[31]*x[51]+1.76*x[31]*x[56]+1.4*x[31]*x[58]-1.08*x[31]*x[60]+0.9*x[32]*x[33]+1.2*x[32]*x[34]+1.7*x[32]*x[35]+1.96*x[32]*x[40]-0.6*x[32]*x[43]-1.08*x[32]*x[44]+1.74*x[32]*x[45]+1.9*x[32]*x[46]-0.84*x[32]*x[47]-0.14*x[32]*x[48]-0.42*x[32]*x[51]-1.4*x[32]*x[52]-1.58*x[32]*x[54]+0.66*x[32]*x[57]+0.88*x[32]*x[59]+1.24*x[33]*x[35]-0.48*x[33]*x[34]+0.56*x[33]*x[37]+1.32*x[33]*x[42]-0.96*x[33]*x[46]-1.98*x[33]*x[47]+1.94*x[33]*x[50]+0.84*x[33]*x[52]-0.88*x[33]*x[53]-1.5*x[33]*x[57]+0.46*x[33]*x[61]+(-1.5*x[34]*x[36])-0.22*x[34]*x[38]-1.12*x[34]*x[39]-1.42*x[34]*x[41]+0.5*x[34]*x[42]+0.14*x[34]*x[43]-1.62*x[34]*x[46]+1.5*x[34]*x[47]-1.3*x[34]*x[48]+1.82*x[34]*x[56]-1.48*x[34]*x[57]-0.32*x[34]*x[60]-1.3*x[34]*x[61]+0.22*x[35]*x[36]-0.26*x[35]*x[41]-1.08*x[35]*x[42]-0.42*x[35]*x[45]+1.54*x[35]*x[46]-0.7*x[35]*x[48]+0.86*x[35]*x[50]-0.62*x[35]*x[52]-1.6*x[35]*x[57]+0.68*x[35]*x[59]-0.66*x[35]*x[60]+(-1.54*x[36]*x[37])-0.28*x[36]*x[39]+1.08*x[36]*x[42]-0.22*x[36]*x[43]+1.26*x[36]*x[44]+0.46*x[36]*x[45]+1.72*x[36]*x[47]-0.44*x[36]*x[51]+0.84*x[36]*x[53]-1.1*x[36]*x[54]+1.64*x[36]*x[58]+0.72*x[36]*x[60]+1.9*x[37]*x[40]-0.62*x[37]*x[38]+0.92*x[37]*x[41]+1.92*x[37]*x[42]+1.72*x[37]*x[43]-1.92*x[37]*x[47]+1.86*x[37]*x[49]-0.78*x[37]*x[53]-0.4*x[37]*x[55]+0.1*x[37]*x[58]-0.16*x[37]*x[59]+1.74*x[38]*x[39]-1.42*x[38]*x[40]+1.3*x[38]*x[41]+1.18*x[38]*x[42]+0.76*x[38]*x[43]+0.84*x[38]*x[45]+0.28*x[38]*x[46]+1.56*x[38]*x[47]+0.46*x[38]*x[49]+1.98*x[38]*x[50]+1.64*x[38]*x[52]-0.3*x[38]*x[53]+0.82*x[38]*x[55]-0.62*x[38]*x[56]-1.64*x[38]*x[58]+1.38*x[38]*x[61]+0.04*x[39]*x[40]+1.58*x[39]*x[41]-1.58*x[39]*x[42]+0.16*x[39]*x[43]-x[39]*x[44]+0.56*x[39]*x[45]-0.32*x[39]*x[46]+0.62*x[39]*x[47]+1.04*x[39]*x[52]-1.58*x[39]*x[54]+1.78*x[39]*x[61]+1.78*x[40]*x[43]-0.14*x[40]*x[42]+0.04*x[40]*x[47]-1.68*x[40]*x[48]+0.38*x[40]*x[49]+1.64*x[40]*x[51]+0.4*x[40]*x[52]-0.24*x[40]*x[53]-0.64*x[40]*x[55]-1.82*x[40]*x[58]-0.9*x[40]*x[59]+1.62*x[40]*x[60]-1.12*x[40]*x[61]+0.36*x[41]*x[42]+1.32*x[41]*x[44]+1.52*x[41]*x[45]-0.64*x[41]*x[48]-1.44*x[41]*x[50]+1.96*x[41]*x[52]+1.92*x[41]*x[54]-1.08*x[41]*x[55]-1.12*x[41]*x[60]+1.12*x[42]*x[43]+1.92*x[42]*x[44]-0.46*x[42]*x[45]-0.56*x[42]*x[46]-1.68*x[42]*x[50]-1.82*x[42]*x[51]+0.26*x[42]*x[53]+0.44*x[42]*x[54]+1.5*x[42]*x[56]+0.78*x[42]*x[57]-1.26*x[42]*x[59]+1.86*x[42]*x[61]+(-1.38*x[43]*x[45])-0.58*x[43]*x[46]-0.06*x[43]*x[48]-1.42*x[43]*x[49]-0.28*x[43]*x[51]+0.5*x[43]*x[53]+1.52*x[43]*x[55]-0.7*x[43]*x[56]+1.08*x[43]*x[60]-0.96*x[43]*x[61]+0.76*x[44]*x[45]+1.32*x[44]*x[54]-1.54*x[44]*x[56]-0.78*x[44]*x[58]+1.02*x[44]*x[61]+1.1*x[45]*x[47]-0.9*x[45]*x[49]+0.22*x[45]*x[50]-0.04*x[45]*x[51]-0.78*x[45]*x[52]-1.3*x[45]*x[53]+0.04*x[45]*x[55]-0.22*x[45]*x[59]+(-1.88*x[46]*x[47])-1.12*x[46]*x[49]+0.66*x[46]*x[51]-0.94*x[46]*x[53]-0.8*x[46]*x[55]+1.82*x[46]*x[57]-1.56*x[46]*x[58]-1.84*x[46]*x[60]+(-1.58*x[47]*x[49])-0.94*x[47]*x[54]+(-1.2*x[48]*x[49])-0.32*x[48]*x[50]-1.36*x[48]*x[52]+1.84*x[48]*x[53]+1.96*x[48]*x[57]+0.64*x[48]*x[58]+0.28*x[48]*x[60]+0.74*x[49]*x[50]-1.8*x[49]*x[52]-1.18*x[49]*x[56]-1.9*x[49]*x[59]+0.22*x[49]*x[61]+0.88*x[50]*x[51]+1.86*x[50]*x[54]+0.2*x[50]*x[55]-0.06*x[50]*x[57]+1.72*x[50]*x[61]+1.08*x[51]*x[52]-0.28*x[51]*x[54]+0.6*x[51]*x[55]-0.64*x[51]*x[57]+1.52*x[51]*x[60]+0.66*x[51]*x[61]+0.32*x[52]*x[53]-0.86*x[52]*x[54]-1.44*x[52]*x[56]+1.72*x[52]*x[58]-0.26*x[52]*x[59]+1.46*x[52]*x[61]+(-0.54*x[53]*x[54])-0.94*x[53]*x[55]+0.88*x[53]*x[57]+1.48*x[53]*x[58]+1.76*x[54]*x[57]-0.4*x[54]*x[58]+0.94*x[54]*x[60]+1.72*x[54]*x[61]+0.4*x[55]*x[57]+0.12*x[56]*x[57]-1.14*x[56]*x[58]-1.7*x[56]*x[60]+(-0.36*x[57]*x[58])-1.78*x[57]*x[59]-0.62*x[57]*x[60]+(-1.98*x[58]*x[59])-0.66*x[58]*x[61]-0.24*x[60]*x[61]+0.25*x[3]*x[3]+0.98*x[5]*x[5]+0.57*x[7]*x[7]+0.19*x[8]*x[8]-0.16*x[9]*x[9]-0.76*x[10]*x[10]-0.37*x[17]*x[17]+0.8*x[18]*x[18]+0.82*x[19]*x[19]-0.85*x[21]*x[21]-0.3*x[22]*x[22]+0.28*x[24]*x[24]+0.37*x[25]*x[25]+0.7*x[27]*x[27]+0.97*x[30]*x[30]+0.96*x[31]*x[31]+0.12*x[33]*x[33]-0.18*x[35]*x[35]+0.9*x[37]*x[37]+0.03*x[39]*x[39]-0.05*x[40]*x[40]-0.64*x[41]*x[41]+0.86*x[42]*x[42]-0.96*x[45]*x[45]-0.98*x[48]*x[48]-0.8*x[52]*x[52]+0.99*x[53]*x[53]+0.77*x[54]*x[54]+0.21*x[60]*x[60]+0.37*x[61]*x[61]+0.36*x[2]-0.34*x[3]+0.08*x[4]+0.25*x[5]-0.19*x[6]-0.04*x[7]+0.65*x[8]+0.67*x[9]+0.17*x[10]+0.15*x[11]-0.04*x[12]+0.41*x[13]-0.64*x[14]+0.79*x[15]-0.18*x[16]+0.04*x[17]+0.72*x[18]-0.94*x[19]-0.19*x[20]+0.29*x[21]-0.36*x[22]+0.06*x[23]+0.45*x[24]+0.86*x[25]-0.87*x[26]-0.61*x[27]-0.5*x[28]-0.35*x[29]-0.44*x[30]-0.49*x[31]+0.61*x[32]+0.53*x[33]-0.85*x[34]-0.54*x[35]+0.35*x[36]-0.79*x[37]-0.09*x[38]+0.07*x[39]-0.07*x[40]-0.82*x[41]-0.15*x[42]-x[43]+0.58*x[44]+0.25*x[45]-0.86*x[46]+0.95*x[47]+0.14*x[48]+0.78*x[49]-0.16*x[50]+0.06*x[51]+0.12*x[52]+0.11*x[53]-0.39*x[54]+0.97*x[55]+0.04*x[56]+0.28*x[57]+0.99*x[58]-0.69*x[59]-0.49*x[60]+0.36*x[61] <= 77.68)
@constraint(m, e3, -0.88*x[2]+0.82*x[3]-0.16*x[4]+0.4*x[5]-0.09*x[6]-0.38*x[7]-0.44*x[8]+0.7*x[9]+0.93*x[10]-0.27*x[11]+0.7*x[12]+0.63*x[13]-0.72*x[14]+0.92*x[15]+0.25*x[16]-0.41*x[17]-0.36*x[18]+0.47*x[19]+0.82*x[20]-0.72*x[21]-0.79*x[22]-0.14*x[23]+0.41*x[24]-0.53*x[25]+0.85*x[26]+0.93*x[27]+0.05*x[28]-0.4*x[29]-0.42*x[30]-0.22*x[31]+0.26*x[32]+0.63*x[33]+0.91*x[34]-0.91*x[35]+0.78*x[36]-0.11*x[37]-0.46*x[38]+0.79*x[39]+0.68*x[40]-0.84*x[41]+0.58*x[42]+0.42*x[43]-0.5*x[44]+0.24*x[45]-0.87*x[46]-0.38*x[47]+0.33*x[48]-0.14*x[49]+0.24*x[50]+0.03*x[51]-0.23*x[52]-0.02*x[53]-0.77*x[54]-0.75*x[55]-0.55*x[56]-0.53*x[57]+0.03*x[58]+0.28*x[59]+0.12*x[60]+0.61*x[61] == 0.52)
@constraint(m, e4, 0.98*x[2]+0.94*x[3]+0.96*x[4]+0.01*x[5]-0.3*x[6]-0.14*x[7]-0.8*x[8]+0.2*x[9]-0.83*x[10]-0.58*x[11]-0.3*x[12]-0.07*x[13]+0.12*x[14]+0.11*x[15]+0.94*x[16]+0.75*x[17]+0.95*x[18]-x[19]+0.93*x[20]+0.5*x[21]+0.78*x[22]+0.08*x[23]-0.76*x[24]+0.56*x[25]+0.92*x[26]-0.86*x[27]-0.84*x[28]-0.93*x[29]+0.62*x[30]-0.98*x[31]+0.69*x[32]-0.62*x[33]+0.91*x[34]+0.36*x[35]-0.21*x[36]+0.64*x[37]+0.11*x[38]+0.91*x[39]+0.59*x[41]+0.5*x[42]-0.21*x[43]+0.53*x[44]+0.27*x[45]+0.32*x[46]-0.83*x[47]+0.57*x[48]+0.59*x[49]+0.31*x[50]+0.62*x[51]+0.74*x[52]+0.14*x[53]+0.1*x[54]-0.1*x[55]+0.28*x[56]+0.45*x[57]+0.15*x[58]-0.29*x[59]+0.36*x[60]-0.96*x[61] == 0.07)
@constraint(m, e5, 0.07*x[2]-0.68*x[3]-0.35*x[4]+0.78*x[5]-0.88*x[6]+0.65*x[7]-0.67*x[8]+0.34*x[9]-0.6*x[10]-0.12*x[11]-0.59*x[12]-0.13*x[13]+0.59*x[14]-0.32*x[15]+0.89*x[16]-0.79*x[17]-0.31*x[18]+0.62*x[19]+0.17*x[20]+0.68*x[21]+0.26*x[22]+0.81*x[23]+0.87*x[24]+0.71*x[25]+0.82*x[26]+0.82*x[27]+0.62*x[28]-0.62*x[29]-0.63*x[30]-0.56*x[31]+0.95*x[32]+0.82*x[33]-0.49*x[34]-0.15*x[35]+0.12*x[36]+0.02*x[37]-0.55*x[38]-0.12*x[39]-0.01*x[40]-0.4*x[41]+0.63*x[42]-0.31*x[43]+0.1*x[44]+0.59*x[45]+0.65*x[46]+0.4*x[47]+x[48]+0.08*x[49]-0.24*x[50]+0.04*x[51]-0.34*x[52]+0.4*x[53]-0.17*x[54]+0.71*x[55]+0.17*x[56]-0.23*x[57]-0.44*x[58]-0.84*x[59]+0.76*x[60]+0.07*x[61] == 0.18)
@constraint(m, e6, -0.91*x[2]+0.2*x[3]+0.52*x[4]+0.49*x[5]-0.68*x[6]-0.45*x[7]-0.6*x[8]-0.26*x[9]+0.78*x[10]-0.4*x[11]-0.27*x[12]+0.89*x[13]-0.68*x[14]-0.97*x[15]+0.22*x[16]-0.85*x[17]-0.21*x[18]+0.98*x[19]+0.35*x[20]+0.35*x[21]-0.03*x[22]+0.01*x[23]-0.55*x[24]+0.13*x[25]-0.82*x[26]-0.84*x[27]-0.81*x[28]-0.9*x[29]+0.77*x[30]-0.44*x[31]-0.94*x[32]+0.29*x[33]-0.96*x[34]+0.08*x[35]+0.3*x[36]+0.81*x[37]+0.23*x[38]+0.52*x[39]-0.66*x[40]+0.79*x[41]+0.64*x[42]+0.68*x[43]+0.67*x[44]-0.48*x[45]-0.81*x[46]-0.52*x[47]-0.98*x[48]-0.73*x[49]+0.38*x[50]-0.44*x[51]+0.86*x[52]+0.41*x[53]-0.22*x[54]+0.62*x[55]+0.32*x[56]+0.12*x[57]+0.56*x[58]-0.8*x[59]-0.32*x[60]-0.69*x[61] == -0.23)
@constraint(m, e7, 0.79*x[2]+x[3]-0.92*x[4]-0.68*x[5]+0.76*x[6]-0.16*x[7]-0.77*x[8]-0.59*x[9]-0.84*x[10]-0.74*x[11]-0.91*x[12]-0.58*x[13]+0.29*x[14]+0.05*x[15]+0.89*x[16]+0.06*x[17]-0.32*x[18]+0.73*x[19]-0.26*x[20]+0.44*x[21]+0.21*x[22]-0.72*x[23]-0.34*x[24]-0.41*x[25]+0.01*x[26]-0.03*x[27]+0.91*x[28]+0.94*x[29]+0.56*x[30]+0.74*x[31]-0.74*x[32]+0.73*x[33]-0.53*x[34]-0.8*x[35]-0.84*x[36]-0.08*x[37]+0.22*x[38]-0.31*x[39]-0.31*x[40]+0.99*x[41]-0.88*x[42]+0.88*x[43]+0.81*x[44]+0.68*x[45]-0.15*x[46]+x[47]-0.09*x[48]+0.97*x[49]-0.37*x[50]+0.44*x[51]-0.82*x[52]-0.55*x[53]+0.89*x[54]-0.47*x[55]-0.96*x[56]+0.7*x[57]+0.89*x[58]+0.04*x[59]-0.44*x[60]+0.51*x[61] == -0.61)
@constraint(m, e8, -0.47*x[2]+0.59*x[3]+0.03*x[4]+0.71*x[5]-0.25*x[6]+0.04*x[7]-0.73*x[8]+0.36*x[9]+0.57*x[10]+0.18*x[11]+0.67*x[12]-0.9*x[13]+0.17*x[15]+0.94*x[16]-0.03*x[17]+0.01*x[18]+0.63*x[19]+0.1*x[20]-0.7*x[21]+0.99*x[22]+0.04*x[23]+0.48*x[24]-0.01*x[25]-0.98*x[26]-0.71*x[27]-0.27*x[28]-0.87*x[29]+0.91*x[30]+0.98*x[31]-0.73*x[32]+0.71*x[33]+0.42*x[34]+0.26*x[35]+0.09*x[36]-0.03*x[37]-0.63*x[38]-0.05*x[39]-0.02*x[40]+0.02*x[41]-0.81*x[42]+0.8*x[43]+0.09*x[44]-0.61*x[45]-0.68*x[46]+0.48*x[47]+0.78*x[48]+0.17*x[49]-0.21*x[50]+0.88*x[51]-0.84*x[52]+0.98*x[53]+0.21*x[54]-0.03*x[55]+0.71*x[56]+0.79*x[57]-0.69*x[58]+0.22*x[59]+0.16*x[60]+x[61] == -0.51)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
