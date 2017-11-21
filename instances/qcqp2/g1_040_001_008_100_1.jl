using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[10], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.76*x[2]*x[4]-1.34*x[2]*x[3]+1.48*x[2]*x[5]+0.1*x[2]*x[6]-0.66*x[2]*x[7]+0.42*x[2]*x[8]-x[2]*x[9]+1.8*x[2]*x[10]+1.78*x[2]*x[11]+0.52*x[2]*x[12]-0.68*x[2]*x[13]-1.62*x[2]*x[14]-0.28*x[2]*x[15]-1.6*x[2]*x[16]-1.88*x[2]*x[17]+1.26*x[2]*x[18]-1.44*x[2]*x[19]+1.62*x[2]*x[20]-1.48*x[2]*x[21]-0.94*x[2]*x[22]-0.68*x[2]*x[23]+1.64*x[2]*x[24]-1.92*x[2]*x[25]+2*x[2]*x[26]+1.54*x[2]*x[27]-0.5*x[2]*x[28]+1.22*x[2]*x[29]+0.38*x[2]*x[30]-1.98*x[2]*x[31]+1.98*x[2]*x[32]+1.72*x[2]*x[33]-0.04*x[2]*x[34]-1.5*x[2]*x[35]+0.12*x[2]*x[36]-1.3*x[2]*x[37]-0.38*x[2]*x[38]+1.04*x[2]*x[39]+0.52*x[2]*x[40]+0.48*x[2]*x[41]+1.62*x[3]*x[4]-1.4*x[3]*x[5]+0.54*x[3]*x[6]+1.02*x[3]*x[7]-1.76*x[3]*x[8]-0.42*x[3]*x[9]-0.66*x[3]*x[10]-1.46*x[3]*x[11]-1.22*x[3]*x[13]+1.48*x[3]*x[14]+0.38*x[3]*x[15]+0.16*x[3]*x[16]+1.4*x[3]*x[17]-0.76*x[3]*x[18]+0.88*x[3]*x[19]-0.64*x[3]*x[20]-1.42*x[3]*x[21]+0.86*x[3]*x[22]-0.5*x[3]*x[23]+1.24*x[3]*x[24]-1.96*x[3]*x[25]+1.16*x[3]*x[26]+0.96*x[3]*x[27]+0.74*x[3]*x[28]-1.44*x[3]*x[29]+0.1*x[3]*x[30]-1.76*x[3]*x[31]+0.76*x[3]*x[32]-0.24*x[3]*x[33]+1.14*x[3]*x[34]-1.88*x[3]*x[35]-0.02*x[3]*x[36]+0.18*x[3]*x[37]+1.28*x[3]*x[38]+1.72*x[3]*x[39]+0.92*x[3]*x[40]-0.82*x[3]*x[41]+1.48*x[4]*x[6]-0.22*x[4]*x[5]-1.72*x[4]*x[7]+1.08*x[4]*x[8]+1.84*x[4]*x[9]+0.42*x[4]*x[10]+0.88*x[4]*x[11]+0.36*x[4]*x[12]+1.88*x[4]*x[13]-0.16*x[4]*x[14]+1.92*x[4]*x[15]+1.2*x[4]*x[16]-1.06*x[4]*x[17]-0.64*x[4]*x[18]+1.7*x[4]*x[19]+0.92*x[4]*x[20]+1.1*x[4]*x[21]-1.6*x[4]*x[22]-0.32*x[4]*x[23]-0.5*x[4]*x[24]-0.06*x[4]*x[25]-0.12*x[4]*x[27]+1.02*x[4]*x[28]+x[4]*x[29]-1.94*x[4]*x[30]-1.14*x[4]*x[31]+1.46*x[4]*x[32]+0.38*x[4]*x[33]+0.64*x[4]*x[34]+1.4*x[4]*x[35]-0.28*x[4]*x[36]-1.42*x[4]*x[37]-1.64*x[4]*x[38]-1.68*x[4]*x[39]+1.08*x[4]*x[40]-0.28*x[4]*x[41]+1.28*x[5]*x[6]-1.14*x[5]*x[7]+0.86*x[5]*x[8]-1.34*x[5]*x[9]-1.34*x[5]*x[10]-1.48*x[5]*x[11]-1.3*x[5]*x[12]-0.96*x[5]*x[13]+0.4*x[5]*x[14]-1.84*x[5]*x[15]-1.96*x[5]*x[16]-1.84*x[5]*x[17]+0.42*x[5]*x[18]-1.52*x[5]*x[19]-1.56*x[5]*x[20]+1.74*x[5]*x[22]+1.52*x[5]*x[23]+1.68*x[5]*x[24]-0.1*x[5]*x[25]-1.78*x[5]*x[26]+0.68*x[5]*x[27]+1.02*x[5]*x[28]+0.56*x[5]*x[29]+0.16*x[5]*x[30]+0.96*x[5]*x[31]-1.96*x[5]*x[32]-0.94*x[5]*x[33]-1.2*x[5]*x[34]+0.5*x[5]*x[35]+0.76*x[5]*x[36]+1.06*x[5]*x[37]-0.34*x[5]*x[38]+1.86*x[5]*x[39]-1.28*x[5]*x[40]+0.28*x[5]*x[41]+0.94*x[6]*x[8]-1.4*x[6]*x[7]-0.64*x[6]*x[9]-1.54*x[6]*x[10]+x[6]*x[11]-1.88*x[6]*x[12]-0.42*x[6]*x[13]-1.16*x[6]*x[14]+1.38*x[6]*x[15]+0.18*x[6]*x[16]+0.42*x[6]*x[17]+1.56*x[6]*x[18]+1.98*x[6]*x[19]+1.76*x[6]*x[20]+1.78*x[6]*x[21]+1.68*x[6]*x[22]-1.1*x[6]*x[23]+1.58*x[6]*x[24]-0.04*x[6]*x[25]+1.78*x[6]*x[26]+1.46*x[6]*x[27]+0.24*x[6]*x[28]+1.18*x[6]*x[29]-0.44*x[6]*x[30]-1.48*x[6]*x[31]-1.3*x[6]*x[32]+0.5*x[6]*x[33]+1.44*x[6]*x[34]-0.64*x[6]*x[35]+1.02*x[6]*x[36]+0.7*x[6]*x[37]-0.36*x[6]*x[38]-1.34*x[6]*x[39]+0.8*x[6]*x[40]+1.98*x[6]*x[41]+0.06*x[7]*x[9]-1.88*x[7]*x[8]-1.98*x[7]*x[10]-0.56*x[7]*x[11]-x[7]*x[12]-0.02*x[7]*x[13]-0.66*x[7]*x[14]-0.98*x[7]*x[15]+1.9*x[7]*x[16]+0.22*x[7]*x[17]-0.6*x[7]*x[18]-0.86*x[7]*x[19]-0.2*x[7]*x[20]-0.84*x[7]*x[21]+1.96*x[7]*x[22]-0.8*x[7]*x[23]+1.5*x[7]*x[24]+0.72*x[7]*x[25]+0.04*x[7]*x[26]-0.4*x[7]*x[27]+0.94*x[7]*x[28]-1.72*x[7]*x[29]-0.42*x[7]*x[30]+1.46*x[7]*x[31]+1.76*x[7]*x[32]-0.12*x[7]*x[33]-1.82*x[7]*x[34]-0.84*x[7]*x[35]+0.92*x[7]*x[36]-0.78*x[7]*x[37]+0.28*x[7]*x[38]+1.32*x[7]*x[39]+0.32*x[7]*x[40]+0.82*x[7]*x[41]+1.84*x[8]*x[9]+1.52*x[8]*x[10]+0.34*x[8]*x[11]-0.04*x[8]*x[12]-1.76*x[8]*x[13]-0.28*x[8]*x[14]-0.1*x[8]*x[15]-1.54*x[8]*x[16]+0.82*x[8]*x[17]+0.86*x[8]*x[18]+0.38*x[8]*x[19]+1.12*x[8]*x[20]-0.26*x[8]*x[21]+0.46*x[8]*x[22]+1.3*x[8]*x[23]-0.66*x[8]*x[24]+0.88*x[8]*x[25]-0.36*x[8]*x[26]+1.7*x[8]*x[27]+0.9*x[8]*x[28]+1.66*x[8]*x[29]-0.54*x[8]*x[30]-1.56*x[8]*x[31]+1.56*x[8]*x[32]-0.92*x[8]*x[33]-0.6*x[8]*x[34]-1.16*x[8]*x[35]+1.66*x[8]*x[36]-1.12*x[8]*x[37]-0.92*x[8]*x[38]-1.52*x[8]*x[39]+1.1*x[8]*x[40]-1.36*x[8]*x[41]+1.74*x[9]*x[10]+1.28*x[9]*x[11]+1.84*x[9]*x[12]+0.78*x[9]*x[13]+1.64*x[9]*x[14]-1.56*x[9]*x[15]+1.54*x[9]*x[16]+1.4*x[9]*x[17]+1.02*x[9]*x[18]+0.52*x[9]*x[19]-1.26*x[9]*x[20]+1.56*x[9]*x[21]+0.68*x[9]*x[22]+1.52*x[9]*x[25]-0.86*x[9]*x[26]+1.54*x[9]*x[27]+1.48*x[9]*x[28]+x[9]*x[29]-1.72*x[9]*x[30]+1.82*x[9]*x[31]+1.14*x[9]*x[32]+1.54*x[9]*x[33]-x[9]*x[34]-0.92*x[9]*x[35]-0.32*x[9]*x[36]-0.48*x[9]*x[37]+1.4*x[9]*x[38]-0.66*x[9]*x[39]+1.9*x[9]*x[40]-1.16*x[9]*x[41]+0.98*x[10]*x[11]+1.42*x[10]*x[12]+1.46*x[10]*x[13]+1.18*x[10]*x[14]-1.52*x[10]*x[15]-1.32*x[10]*x[16]-0.68*x[10]*x[17]+0.78*x[10]*x[18]-0.34*x[10]*x[19]+0.5*x[10]*x[20]-0.6*x[10]*x[21]-1.02*x[10]*x[22]+0.42*x[10]*x[23]-1.44*x[10]*x[24]-0.54*x[10]*x[25]-1.56*x[10]*x[26]-0.64*x[10]*x[27]+1.88*x[10]*x[28]+0.56*x[10]*x[29]-0.26*x[10]*x[30]-1.56*x[10]*x[31]-0.92*x[10]*x[32]-1.32*x[10]*x[34]+1.84*x[10]*x[35]+0.52*x[10]*x[36]-1.36*x[10]*x[37]+1.36*x[10]*x[39]-1.86*x[10]*x[40]-0.14*x[10]*x[41]+0.64*x[11]*x[13]-0.54*x[11]*x[12]-0.2*x[11]*x[14]-1.16*x[11]*x[15]-0.3*x[11]*x[16]-0.66*x[11]*x[17]+1.44*x[11]*x[18]-1.76*x[11]*x[19]+1.14*x[11]*x[20]-x[11]*x[21]-0.44*x[11]*x[22]+1.5*x[11]*x[23]+0.02*x[11]*x[24]+1.74*x[11]*x[25]-0.82*x[11]*x[26]+1.92*x[11]*x[27]-0.96*x[11]*x[28]-1.52*x[11]*x[29]-1.22*x[11]*x[30]-0.48*x[11]*x[31]+1.18*x[11]*x[32]-1.04*x[11]*x[33]+0.32*x[11]*x[34]-0.26*x[11]*x[35]-0.98*x[11]*x[36]+0.26*x[11]*x[38]+0.82*x[11]*x[39]+1.64*x[11]*x[40]+0.72*x[11]*x[41]+(-x[12]*x[13])-1.8*x[12]*x[14]+1.9*x[12]*x[15]+0.66*x[12]*x[16]+1.82*x[12]*x[17]-1.74*x[12]*x[18]+0.7*x[12]*x[19]-0.02*x[12]*x[20]+0.02*x[12]*x[21]-0.92*x[12]*x[22]+1.92*x[12]*x[23]-0.1*x[12]*x[24]+1.16*x[12]*x[25]-0.02*x[12]*x[26]+x[12]*x[27]-0.78*x[12]*x[28]-1.34*x[12]*x[29]-1.9*x[12]*x[30]-0.72*x[12]*x[31]+1.6*x[12]*x[32]+0.28*x[12]*x[33]-0.16*x[12]*x[34]+1.8*x[12]*x[35]-0.1*x[12]*x[36]-1.5*x[12]*x[37]-1.12*x[12]*x[38]-0.08*x[12]*x[39]-1.86*x[12]*x[40]+0.64*x[12]*x[41]+1.3*x[13]*x[15]-0.96*x[13]*x[14]-0.3*x[13]*x[16]-0.16*x[13]*x[17]+1.76*x[13]*x[18]+0.76*x[13]*x[19]+1.76*x[13]*x[20]-1.92*x[13]*x[21]+1.38*x[13]*x[22]+0.72*x[13]*x[23]-1.16*x[13]*x[24]+x[13]*x[25]+1.08*x[13]*x[26]+1.28*x[13]*x[27]+0.2*x[13]*x[28]+1.42*x[13]*x[29]-0.44*x[13]*x[30]+0.82*x[13]*x[31]-1.4*x[13]*x[32]-1.22*x[13]*x[33]-1.86*x[13]*x[34]-0.66*x[13]*x[35]-1.58*x[13]*x[36]+0.48*x[13]*x[37]+1.1*x[13]*x[38]+0.52*x[13]*x[39]+0.14*x[13]*x[40]+1.82*x[13]*x[41]+1.18*x[14]*x[15]-0.68*x[14]*x[16]+0.16*x[14]*x[17]-1.84*x[14]*x[18]-0.3*x[14]*x[19]+1.36*x[14]*x[21]+x[14]*x[22]+1.54*x[14]*x[23]-0.06*x[14]*x[24]-1.18*x[14]*x[25]-0.8*x[14]*x[26]+0.26*x[14]*x[27]-0.58*x[14]*x[28]+0.34*x[14]*x[29]-1.48*x[14]*x[30]-0.94*x[14]*x[31]+1.18*x[14]*x[32]+1.56*x[14]*x[33]-1.64*x[14]*x[34]-0.32*x[14]*x[35]+1.94*x[14]*x[36]+1.8*x[14]*x[37]+1.52*x[14]*x[38]-0.3*x[14]*x[39]-1.16*x[14]*x[40]+0.82*x[14]*x[41]+0.96*x[15]*x[16]+1.08*x[15]*x[17]-1.06*x[15]*x[18]+1.56*x[15]*x[19]+1.08*x[15]*x[20]-0.86*x[15]*x[21]-0.74*x[15]*x[22]-0.4*x[15]*x[23]+0.64*x[15]*x[24]-1.46*x[15]*x[25]-1.4*x[15]*x[26]+1.78*x[15]*x[27]-0.08*x[15]*x[28]+1.98*x[15]*x[29]+1.8*x[15]*x[30]-1.18*x[15]*x[31]+1.68*x[15]*x[32]-1.92*x[15]*x[33]+0.78*x[15]*x[34]-0.88*x[15]*x[35]-0.06*x[15]*x[36]-1.04*x[15]*x[37]-1.12*x[15]*x[38]+0.3*x[15]*x[39]+0.3*x[15]*x[40]+0.84*x[15]*x[41]+1.08*x[16]*x[17]+0.64*x[16]*x[18]+1.68*x[16]*x[19]+1.84*x[16]*x[20]+0.46*x[16]*x[21]-0.92*x[16]*x[22]+0.24*x[16]*x[23]-0.64*x[16]*x[24]-1.18*x[16]*x[25]-1.62*x[16]*x[26]+x[16]*x[27]+1.96*x[16]*x[28]+0.72*x[16]*x[29]+0.04*x[16]*x[30]+0.8*x[16]*x[31]-0.1*x[16]*x[32]+0.46*x[16]*x[33]-1.9*x[16]*x[34]+0.38*x[16]*x[35]+1.74*x[16]*x[36]-0.38*x[16]*x[37]+0.66*x[16]*x[38]+1.9*x[16]*x[39]+1.08*x[16]*x[40]+0.14*x[16]*x[41]+(-0.22*x[17]*x[18])-1.86*x[17]*x[19]+1.18*x[17]*x[20]+1.72*x[17]*x[21]-0.9*x[17]*x[22]+0.44*x[17]*x[23]-1.46*x[17]*x[24]-0.56*x[17]*x[25]+1.52*x[17]*x[26]-1.28*x[17]*x[27]+0.92*x[17]*x[28]-0.42*x[17]*x[29]+1.8*x[17]*x[30]-1.9*x[17]*x[31]-x[17]*x[32]-0.52*x[17]*x[33]-1.66*x[17]*x[34]-1.82*x[17]*x[35]-1.16*x[17]*x[36]-0.46*x[17]*x[37]+0.18*x[17]*x[38]+1.94*x[17]*x[39]-0.58*x[17]*x[40]-1.98*x[17]*x[41]+0.26*x[18]*x[19]-0.48*x[18]*x[20]-0.56*x[18]*x[21]+1.18*x[18]*x[22]-0.24*x[18]*x[23]-0.94*x[18]*x[24]+1.7*x[18]*x[25]-0.24*x[18]*x[26]+0.16*x[18]*x[27]+1.4*x[18]*x[28]+1.18*x[18]*x[29]+1.06*x[18]*x[30]+1.66*x[18]*x[31]+1.7*x[18]*x[32]+1.9*x[18]*x[33]-0.06*x[18]*x[34]+1.74*x[18]*x[35]-0.48*x[18]*x[36]+0.18*x[18]*x[37]+1.96*x[18]*x[38]+0.8*x[18]*x[39]-1.14*x[18]*x[40]-1.64*x[18]*x[41]+0.58*x[19]*x[21]-1.3*x[19]*x[20]-0.12*x[19]*x[22]-1.8*x[19]*x[23]+0.72*x[19]*x[24]-1.3*x[19]*x[25]-0.32*x[19]*x[26]-0.56*x[19]*x[27]-0.6*x[19]*x[28]-0.7*x[19]*x[29]-1.26*x[19]*x[30]-1.16*x[19]*x[31]-0.76*x[19]*x[32]-0.8*x[19]*x[33]+1.42*x[19]*x[34]-1.84*x[19]*x[35]-0.28*x[19]*x[36]+0.68*x[19]*x[37]+0.06*x[19]*x[38]+0.04*x[19]*x[39]+0.12*x[19]*x[40]-1.2*x[19]*x[41]+(-0.46*x[20]*x[21])-0.8*x[20]*x[22]+0.64*x[20]*x[23]+0.3*x[20]*x[24]+0.32*x[20]*x[25]-0.12*x[20]*x[27]+0.58*x[20]*x[28]-0.82*x[20]*x[29]+x[20]*x[30]-1.86*x[20]*x[31]-0.58*x[20]*x[32]-0.8*x[20]*x[33]+0.08*x[20]*x[34]-0.04*x[20]*x[35]+0.8*x[20]*x[36]+1.8*x[20]*x[38]-1.26*x[20]*x[39]-0.58*x[20]*x[40]+x[20]*x[41]+(-1.5*x[21]*x[22])-0.22*x[21]*x[23]-1.82*x[21]*x[24]-1.06*x[21]*x[25]-1.96*x[21]*x[26]+0.76*x[21]*x[27]+0.56*x[21]*x[28]+1.48*x[21]*x[29]+1.6*x[21]*x[30]+1.96*x[21]*x[31]+0.16*x[21]*x[32]+1.54*x[21]*x[33]+1.1*x[21]*x[34]+1.54*x[21]*x[35]-1.48*x[21]*x[36]+1.16*x[21]*x[37]-1.7*x[21]*x[38]-0.48*x[21]*x[39]-1.62*x[21]*x[40]+0.72*x[21]*x[41]+1.74*x[22]*x[24]-1.02*x[22]*x[23]-0.12*x[22]*x[25]+1.98*x[22]*x[26]+0.76*x[22]*x[27]-0.44*x[22]*x[28]-0.1*x[22]*x[29]-0.14*x[22]*x[30]-0.48*x[22]*x[31]-1.66*x[22]*x[32]+1.86*x[22]*x[33]-1.52*x[22]*x[34]-0.06*x[22]*x[35]-1.2*x[22]*x[36]+0.6*x[22]*x[37]+0.16*x[22]*x[38]+1.24*x[22]*x[39]-0.54*x[22]*x[40]-1.3*x[22]*x[41]+0.68*x[23]*x[25]-0.3*x[23]*x[24]-1.22*x[23]*x[26]-0.84*x[23]*x[27]+1.3*x[23]*x[28]-1.3*x[23]*x[29]-1.86*x[23]*x[30]+1.86*x[23]*x[31]+1.18*x[23]*x[32]+0.06*x[23]*x[33]-0.2*x[23]*x[34]+1.34*x[23]*x[35]-0.9*x[23]*x[36]-1.96*x[23]*x[37]+0.6*x[23]*x[38]-0.34*x[23]*x[39]-1.06*x[23]*x[40]+1.24*x[23]*x[41]+1.98*x[24]*x[25]-1.88*x[24]*x[26]+0.16*x[24]*x[27]-0.32*x[24]*x[28]+1.08*x[24]*x[29]-0.2*x[24]*x[30]-0.12*x[24]*x[31]+1.4*x[24]*x[32]-1.28*x[24]*x[33]+0.5*x[24]*x[34]+1.02*x[24]*x[35]+0.52*x[24]*x[36]-0.62*x[24]*x[37]-0.64*x[24]*x[38]+0.92*x[24]*x[39]-0.26*x[24]*x[40]+0.84*x[24]*x[41]+1.02*x[25]*x[26]-0.7*x[25]*x[27]-1.98*x[25]*x[28]+1.22*x[25]*x[29]+1.7*x[25]*x[30]+1.34*x[25]*x[31]-1.34*x[25]*x[32]+1.58*x[25]*x[33]-0.38*x[25]*x[34]+0.66*x[25]*x[35]+1.5*x[25]*x[36]-1.64*x[25]*x[37]-0.72*x[25]*x[38]-1.62*x[25]*x[39]+0.08*x[25]*x[40]+1.92*x[25]*x[41]+0.6*x[26]*x[28]-0.1*x[26]*x[27]+1.06*x[26]*x[29]-1.1*x[26]*x[30]+1.24*x[26]*x[31]+0.78*x[26]*x[32]+1.04*x[26]*x[33]-1.9*x[26]*x[34]-0.18*x[26]*x[35]-1.78*x[26]*x[36]-1.3*x[26]*x[37]-0.38*x[26]*x[38]-1.9*x[26]*x[39]+x[26]*x[40]-1.94*x[26]*x[41]+(-0.9*x[27]*x[28])-1.96*x[27]*x[29]-1.58*x[27]*x[30]-0.96*x[27]*x[31]-1.98*x[27]*x[32]-0.52*x[27]*x[33]-1.2*x[27]*x[34]-0.06*x[27]*x[35]+1.78*x[27]*x[36]+0.62*x[27]*x[37]-1.48*x[27]*x[39]-1.86*x[27]*x[40]-x[27]*x[41]+1.56*x[28]*x[29]+0.7*x[28]*x[30]+1.84*x[28]*x[31]-1.66*x[28]*x[32]+0.9*x[28]*x[33]+1.7*x[28]*x[35]+0.88*x[28]*x[36]-1.54*x[28]*x[37]+1.06*x[28]*x[38]-0.02*x[28]*x[39]-0.46*x[28]*x[40]+1.62*x[28]*x[41]+0.78*x[29]*x[30]-1.88*x[29]*x[33]+1.22*x[29]*x[34]+0.9*x[29]*x[35]+0.48*x[29]*x[36]-0.62*x[29]*x[37]-0.34*x[29]*x[38]-1.64*x[29]*x[39]-1.34*x[29]*x[40]+0.36*x[29]*x[41]+1.3*x[30]*x[31]-0.52*x[30]*x[33]-1.22*x[30]*x[34]-0.28*x[30]*x[35]+1.66*x[30]*x[36]+0.84*x[30]*x[37]-1.2*x[30]*x[38]-1.72*x[30]*x[39]+1.98*x[30]*x[40]-1.38*x[30]*x[41]+(-1.06*x[31]*x[32])-1.42*x[31]*x[34]-1.1*x[31]*x[35]-1.44*x[31]*x[36]+0.76*x[31]*x[37]-0.74*x[31]*x[38]-0.16*x[31]*x[39]-0.6*x[31]*x[40]+0.98*x[31]*x[41]+(-1.56*x[32]*x[33])-0.26*x[32]*x[34]-0.62*x[32]*x[35]+0.56*x[32]*x[36]-0.68*x[32]*x[37]-1.08*x[32]*x[38]+1.56*x[32]*x[39]-0.34*x[32]*x[40]-0.84*x[32]*x[41]+(-0.28*x[33]*x[34])-1.66*x[33]*x[35]+1.24*x[33]*x[36]-1.16*x[33]*x[37]+1.84*x[33]*x[38]-0.42*x[33]*x[40]-1.48*x[33]*x[41]+(-2*x[34]*x[35])-0.6*x[34]*x[37]+1.26*x[34]*x[38]-0.2*x[34]*x[39]-0.24*x[34]*x[40]-0.92*x[34]*x[41]+0.36*x[35]*x[36]-0.42*x[35]*x[37]+0.14*x[35]*x[38]+1.48*x[35]*x[39]+0.62*x[35]*x[41]+0.4*x[36]*x[37]-0.94*x[36]*x[38]-0.98*x[36]*x[39]-1.04*x[36]*x[40]-1.96*x[36]*x[41]+1.56*x[37]*x[39]-1.52*x[37]*x[38]-0.7*x[37]*x[40]-2*x[37]*x[41]+0.72*x[38]*x[39]-0.52*x[38]*x[40]-1.24*x[38]*x[41]+0.9*x[39]*x[41]-1.4*x[39]*x[40]+0.92*x[40]*x[41]+0.31*x[2]*x[2]-0.88*x[3]*x[3]+0.88*x[4]*x[4]+0.63*x[5]*x[5]+0.34*x[6]*x[6]-0.06*x[7]*x[7]-0.47*x[8]*x[8]-0.61*x[9]*x[9]-0.32*x[10]*x[10]-0.95*x[11]*x[11]-0.13*x[12]*x[12]+0.51*x[13]*x[13]-0.6*x[14]*x[14]-0.84*x[15]*x[15]-0.48*x[16]*x[16]-0.19*x[17]*x[17]-0.08*x[18]*x[18]+0.4*x[19]*x[19]+0.82*x[20]*x[20]+0.32*x[21]*x[21]+0.93*x[22]*x[22]-0.82*x[24]*x[24]+0.62*x[25]*x[25]+0.19*x[26]*x[26]-0.11*x[27]*x[27]+0.58*x[28]*x[28]+0.13*x[29]*x[29]+0.32*x[30]*x[30]-0.46*x[31]*x[31]-0.35*x[32]*x[32]-0.14*x[33]*x[33]-0.4*x[34]*x[34]-0.73*x[35]*x[35]-0.57*x[36]*x[36]-0.14*x[37]*x[37]-0.93*x[38]*x[38]+0.19*x[39]*x[39]+0.77*x[40]*x[40]+0.52*x[41]*x[41]+0.47*x[2]+0.92*x[3]-0.05*x[4]-0.03*x[5]+0.57*x[6]+0.42*x[7]-0.33*x[8]+0.53*x[9]-0.35*x[10]+0.03*x[11]+0.82*x[12]-0.61*x[13]-0.88*x[14]+0.55*x[15]+0.92*x[16]-0.35*x[17]-0.58*x[18]+0.67*x[19]-0.18*x[20]+0.09*x[21]-0.84*x[22]+0.74*x[23]-0.17*x[24]-0.24*x[25]+0.42*x[26]+0.4*x[27]-0.21*x[28]+0.18*x[29]+0.78*x[30]-0.45*x[31]-0.51*x[32]-0.96*x[33]-0.63*x[34]-0.08*x[35]+0.58*x[36]+0.4*x[37]-0.56*x[38]+0.69*x[39]-0.1*x[40]+0.5*x[41])+x[1] == 0.0)
@NLconstraint(m, e2, (-0.72*x[2]*x[3])-1.34*x[2]*x[4]-1.12*x[2]*x[5]-0.92*x[2]*x[6]-1.8*x[2]*x[7]-1.52*x[2]*x[8]-0.32*x[2]*x[9]+1.22*x[2]*x[10]+0.74*x[2]*x[11]+0.98*x[2]*x[13]-0.24*x[2]*x[14]-0.12*x[2]*x[15]-0.76*x[2]*x[16]+1.68*x[2]*x[17]+0.18*x[2]*x[19]+0.56*x[2]*x[20]-1.76*x[2]*x[21]+1.16*x[2]*x[22]+1.76*x[2]*x[23]-1.96*x[2]*x[25]+0.96*x[2]*x[26]+1.78*x[2]*x[27]+0.62*x[2]*x[28]-0.32*x[2]*x[29]+0.02*x[2]*x[30]-0.48*x[2]*x[31]+0.98*x[2]*x[32]-1.46*x[2]*x[33]+1.96*x[2]*x[34]-0.7*x[2]*x[35]+0.58*x[2]*x[36]+0.48*x[2]*x[37]+0.24*x[2]*x[38]+1.46*x[2]*x[39]+1.28*x[2]*x[40]+0.08*x[2]*x[41]+0.02*x[3]*x[4]+1.18*x[3]*x[5]-0.12*x[3]*x[6]-1.72*x[3]*x[7]-0.74*x[3]*x[8]+1.84*x[3]*x[9]+1.3*x[3]*x[10]+0.34*x[3]*x[11]-0.4*x[3]*x[12]-1.6*x[3]*x[13]-1.58*x[3]*x[14]-1.52*x[3]*x[15]+1.16*x[3]*x[16]-0.58*x[3]*x[17]-1.74*x[3]*x[18]-0.48*x[3]*x[19]-0.92*x[3]*x[20]-1.04*x[3]*x[21]-0.96*x[3]*x[22]+1.98*x[3]*x[23]+0.28*x[3]*x[24]+0.38*x[3]*x[25]-0.68*x[3]*x[26]-0.74*x[3]*x[27]+1.48*x[3]*x[28]-0.86*x[3]*x[29]-0.8*x[3]*x[30]+1.2*x[3]*x[31]-0.56*x[3]*x[32]+0.26*x[3]*x[34]-0.3*x[3]*x[35]+0.64*x[3]*x[36]-0.74*x[3]*x[37]+0.4*x[3]*x[38]+1.54*x[3]*x[39]-0.92*x[3]*x[40]-0.68*x[3]*x[41]+(-1.9*x[4]*x[5])-1.86*x[4]*x[6]-0.3*x[4]*x[7]+0.6*x[4]*x[8]+0.98*x[4]*x[9]+1.98*x[4]*x[10]+0.18*x[4]*x[11]-0.78*x[4]*x[12]+0.34*x[4]*x[13]+0.88*x[4]*x[14]+0.76*x[4]*x[15]+1.64*x[4]*x[16]-1.36*x[4]*x[17]+0.52*x[4]*x[19]+0.98*x[4]*x[20]+0.86*x[4]*x[21]+0.7*x[4]*x[22]-0.04*x[4]*x[23]-0.56*x[4]*x[25]+1.66*x[4]*x[26]-0.1*x[4]*x[27]-1.88*x[4]*x[28]-0.9*x[4]*x[29]+1.06*x[4]*x[30]-0.32*x[4]*x[31]-0.36*x[4]*x[32]+1.56*x[4]*x[33]-0.18*x[4]*x[34]-1.32*x[4]*x[35]+1.48*x[4]*x[37]+0.54*x[4]*x[38]-1.94*x[4]*x[39]-0.64*x[4]*x[40]-0.84*x[4]*x[41]+(-1.06*x[5]*x[6])-0.02*x[5]*x[7]-1.96*x[5]*x[8]+1.02*x[5]*x[9]+1.6*x[5]*x[10]-1.18*x[5]*x[11]-0.92*x[5]*x[12]+0.62*x[5]*x[13]-0.18*x[5]*x[14]+1.4*x[5]*x[15]+0.58*x[5]*x[16]+1.18*x[5]*x[17]+1.76*x[5]*x[18]+1.16*x[5]*x[19]+1.76*x[5]*x[20]-1.78*x[5]*x[21]-0.38*x[5]*x[22]+1.4*x[5]*x[23]+0.76*x[5]*x[24]-0.54*x[5]*x[25]-1.9*x[5]*x[26]-0.82*x[5]*x[27]+0.26*x[5]*x[28]+1.16*x[5]*x[29]+0.9*x[5]*x[30]-1.22*x[5]*x[31]+0.8*x[5]*x[32]+1.6*x[5]*x[33]+1.68*x[5]*x[34]+1.24*x[5]*x[35]+1.66*x[5]*x[36]-0.66*x[5]*x[37]+0.3*x[5]*x[38]+0.06*x[5]*x[39]+0.6*x[5]*x[40]+0.42*x[5]*x[41]+1.6*x[6]*x[8]-1.16*x[6]*x[7]+1.9*x[6]*x[9]-0.22*x[6]*x[10]+1.5*x[6]*x[11]+0.06*x[6]*x[12]+1.62*x[6]*x[13]+0.22*x[6]*x[14]+0.24*x[6]*x[15]-0.92*x[6]*x[16]-0.04*x[6]*x[17]+1.76*x[6]*x[18]-0.48*x[6]*x[19]-0.24*x[6]*x[20]+0.86*x[6]*x[21]+0.7*x[6]*x[22]-0.04*x[6]*x[23]+1.42*x[6]*x[24]+1.62*x[6]*x[25]-1.94*x[6]*x[26]+0.58*x[6]*x[27]-1.86*x[6]*x[28]+0.52*x[6]*x[29]-0.6*x[6]*x[30]-0.08*x[6]*x[31]+1.08*x[6]*x[32]-1.62*x[6]*x[33]-1.42*x[6]*x[34]-1.2*x[6]*x[35]+0.9*x[6]*x[36]-0.74*x[6]*x[37]-0.44*x[6]*x[38]+0.18*x[6]*x[39]+0.38*x[6]*x[40]-0.88*x[6]*x[41]+1.38*x[7]*x[8]+0.9*x[7]*x[9]+1.58*x[7]*x[10]-0.18*x[7]*x[11]-0.36*x[7]*x[12]+0.08*x[7]*x[13]-0.46*x[7]*x[14]+0.78*x[7]*x[15]+0.16*x[7]*x[16]+0.9*x[7]*x[17]+1.68*x[7]*x[18]-0.3*x[7]*x[19]+1.32*x[7]*x[20]-1.18*x[7]*x[21]-1.92*x[7]*x[22]+1.42*x[7]*x[23]-0.76*x[7]*x[24]+1.04*x[7]*x[26]+x[7]*x[27]+1.06*x[7]*x[28]+1.12*x[7]*x[29]-0.28*x[7]*x[30]-0.52*x[7]*x[31]+0.76*x[7]*x[32]-0.88*x[7]*x[33]+0.16*x[7]*x[34]-1.26*x[7]*x[35]-x[7]*x[36]+0.54*x[7]*x[37]-1.44*x[7]*x[38]+0.9*x[7]*x[39]-1.8*x[7]*x[40]-1.44*x[7]*x[41]+1.32*x[8]*x[9]-0.46*x[8]*x[11]-0.08*x[8]*x[12]-1.88*x[8]*x[13]+1.2*x[8]*x[14]+0.44*x[8]*x[15]+1.36*x[8]*x[16]-0.96*x[8]*x[17]-0.18*x[8]*x[18]-0.92*x[8]*x[19]+1.86*x[8]*x[20]+0.82*x[8]*x[21]+1.46*x[8]*x[22]-1.74*x[8]*x[23]+0.58*x[8]*x[24]+0.9*x[8]*x[25]+1.28*x[8]*x[26]-0.44*x[8]*x[27]+1.72*x[8]*x[28]-1.96*x[8]*x[29]+1.2*x[8]*x[30]+1.68*x[8]*x[31]+1.76*x[8]*x[32]+1.32*x[8]*x[33]+0.88*x[8]*x[34]+1.94*x[8]*x[35]-0.1*x[8]*x[36]+0.12*x[8]*x[37]-1.42*x[8]*x[38]-0.74*x[8]*x[39]+1.58*x[8]*x[40]-1.04*x[8]*x[41]+0.66*x[9]*x[10]-0.92*x[9]*x[11]-0.38*x[9]*x[12]-0.66*x[9]*x[13]-0.24*x[9]*x[14]-0.4*x[9]*x[15]+0.06*x[9]*x[16]-1.94*x[9]*x[17]-1.54*x[9]*x[18]-0.88*x[9]*x[19]+0.56*x[9]*x[20]-0.92*x[9]*x[21]+0.68*x[9]*x[22]-0.52*x[9]*x[23]+0.88*x[9]*x[24]+1.94*x[9]*x[25]+x[9]*x[26]-0.08*x[9]*x[27]-1.1*x[9]*x[28]-0.2*x[9]*x[29]-1.62*x[9]*x[30]+1.32*x[9]*x[31]-0.68*x[9]*x[32]+0.28*x[9]*x[33]-1.52*x[9]*x[34]-0.94*x[9]*x[35]-0.26*x[9]*x[36]+1.92*x[9]*x[37]-1.44*x[9]*x[38]+1.5*x[9]*x[39]+0.28*x[9]*x[40]+1.72*x[9]*x[41]+1.44*x[10]*x[12]-0.12*x[10]*x[11]+0.7*x[10]*x[13]-1.04*x[10]*x[14]-1.82*x[10]*x[15]+1.78*x[10]*x[16]-1.2*x[10]*x[17]+0.04*x[10]*x[18]-1.76*x[10]*x[19]-0.74*x[10]*x[20]-1.9*x[10]*x[21]-1.02*x[10]*x[22]-0.66*x[10]*x[23]+1.12*x[10]*x[24]-1.24*x[10]*x[25]+0.44*x[10]*x[26]-0.78*x[10]*x[27]+0.4*x[10]*x[28]+0.62*x[10]*x[29]-1.14*x[10]*x[30]-0.4*x[10]*x[31]+0.3*x[10]*x[32]+1.2*x[10]*x[33]+0.58*x[10]*x[34]+1.74*x[10]*x[35]+0.7*x[10]*x[36]-0.32*x[10]*x[37]-0.56*x[10]*x[38]+1.58*x[10]*x[39]+1.32*x[10]*x[40]-x[10]*x[41]+1.26*x[11]*x[13]-0.18*x[11]*x[12]-1.28*x[11]*x[14]+0.08*x[11]*x[15]+1.94*x[11]*x[16]+0.7*x[11]*x[17]+0.5*x[11]*x[18]-0.94*x[11]*x[19]-0.74*x[11]*x[20]+0.9*x[11]*x[21]-0.38*x[11]*x[22]-0.1*x[11]*x[23]+0.12*x[11]*x[24]+1.18*x[11]*x[25]-1.7*x[11]*x[26]-x[11]*x[27]+1.56*x[11]*x[28]+1.24*x[11]*x[29]+0.34*x[11]*x[30]-0.96*x[11]*x[31]-0.06*x[11]*x[32]-1.22*x[11]*x[33]-1.4*x[11]*x[34]+0.68*x[11]*x[35]+1.74*x[11]*x[36]+1.94*x[11]*x[37]-0.94*x[11]*x[38]-0.2*x[11]*x[39]-1.24*x[11]*x[40]+1.7*x[11]*x[41]+1.26*x[12]*x[14]-1.96*x[12]*x[13]-0.78*x[12]*x[15]-1.58*x[12]*x[16]+0.28*x[12]*x[17]-0.2*x[12]*x[18]+0.6*x[12]*x[19]+1.68*x[12]*x[20]+0.04*x[12]*x[21]+0.1*x[12]*x[22]+1.96*x[12]*x[23]-1.52*x[12]*x[24]+0.06*x[12]*x[25]+1.98*x[12]*x[26]+1.86*x[12]*x[27]-1.22*x[12]*x[28]+1.54*x[12]*x[29]-0.36*x[12]*x[30]-1.04*x[12]*x[31]+0.94*x[12]*x[32]-0.5*x[12]*x[33]+1.82*x[12]*x[34]+1.92*x[12]*x[35]-0.08*x[12]*x[36]+1.24*x[12]*x[37]+1.64*x[12]*x[38]+1.76*x[12]*x[39]-0.7*x[12]*x[40]+0.3*x[12]*x[41]+(-1.08*x[13]*x[14])-1.52*x[13]*x[15]-0.22*x[13]*x[16]+0.8*x[13]*x[17]-1.38*x[13]*x[18]-0.82*x[13]*x[19]-1.94*x[13]*x[20]-0.84*x[13]*x[21]+1.34*x[13]*x[23]-1.74*x[13]*x[24]+1.18*x[13]*x[25]-1.74*x[13]*x[26]-1.3*x[13]*x[27]-0.8*x[13]*x[28]-1.58*x[13]*x[29]-0.48*x[13]*x[30]+1.7*x[13]*x[31]+1.22*x[13]*x[32]+0.52*x[13]*x[33]-0.18*x[13]*x[34]+0.9*x[13]*x[35]+0.46*x[13]*x[37]+1.02*x[13]*x[38]-0.56*x[13]*x[39]-1.76*x[13]*x[40]+1.08*x[14]*x[15]+0.9*x[14]*x[16]+1.34*x[14]*x[17]-1.38*x[14]*x[18]+0.58*x[14]*x[19]+1.1*x[14]*x[20]+0.54*x[14]*x[21]+0.78*x[14]*x[22]+0.6*x[14]*x[23]+0.66*x[14]*x[24]-0.06*x[14]*x[25]+0.5*x[14]*x[26]+0.74*x[14]*x[28]+0.78*x[14]*x[29]+0.16*x[14]*x[30]-1.32*x[14]*x[31]+1.52*x[14]*x[32]+0.4*x[14]*x[33]-0.64*x[14]*x[34]+1.68*x[14]*x[35]+1.38*x[14]*x[36]-1.66*x[14]*x[37]+1.58*x[14]*x[38]+0.62*x[14]*x[39]+0.12*x[14]*x[40]+1.64*x[14]*x[41]+0.02*x[15]*x[17]-0.86*x[15]*x[16]+1.84*x[15]*x[18]-0.56*x[15]*x[19]+1.12*x[15]*x[20]-0.86*x[15]*x[21]-0.46*x[15]*x[22]+0.78*x[15]*x[23]+1.26*x[15]*x[24]+0.88*x[15]*x[25]-1.4*x[15]*x[26]-0.8*x[15]*x[27]-0.5*x[15]*x[28]-1.7*x[15]*x[29]-0.84*x[15]*x[30]-0.38*x[15]*x[31]-0.44*x[15]*x[32]-0.06*x[15]*x[33]-1.34*x[15]*x[34]-1.12*x[15]*x[35]-0.9*x[15]*x[36]+0.6*x[15]*x[37]-1.82*x[15]*x[38]-0.58*x[15]*x[39]+0.28*x[15]*x[40]+0.18*x[15]*x[41]+1.92*x[16]*x[17]+1.92*x[16]*x[18]+0.68*x[16]*x[19]-0.3*x[16]*x[20]-1.02*x[16]*x[21]-1.88*x[16]*x[22]+0.16*x[16]*x[23]-0.54*x[16]*x[24]-1.52*x[16]*x[25]-1.9*x[16]*x[26]+0.74*x[16]*x[27]-0.12*x[16]*x[28]-1.3*x[16]*x[29]-0.7*x[16]*x[30]+0.7*x[16]*x[31]-0.38*x[16]*x[32]-1.32*x[16]*x[33]-1.72*x[16]*x[34]+0.44*x[16]*x[35]+0.4*x[16]*x[36]-0.88*x[16]*x[37]+1.86*x[16]*x[38]+1.28*x[16]*x[39]-0.04*x[16]*x[40]-1.86*x[16]*x[41]+0.68*x[17]*x[19]-1.94*x[17]*x[18]-0.72*x[17]*x[20]+1.04*x[17]*x[21]-1.34*x[17]*x[22]-1.38*x[17]*x[23]-1.28*x[17]*x[24]-0.52*x[17]*x[25]+1.5*x[17]*x[26]+0.96*x[17]*x[27]-1.98*x[17]*x[28]+0.2*x[17]*x[29]+0.08*x[17]*x[30]+0.66*x[17]*x[31]-0.46*x[17]*x[32]+1.66*x[17]*x[33]+1.34*x[17]*x[34]-0.58*x[17]*x[35]+0.1*x[17]*x[36]+x[17]*x[37]+0.16*x[17]*x[38]+0.48*x[17]*x[39]+1.12*x[17]*x[40]-0.82*x[17]*x[41]+1.3*x[18]*x[20]-1.66*x[18]*x[19]-1.82*x[18]*x[21]+0.26*x[18]*x[22]-0.94*x[18]*x[23]+0.18*x[18]*x[24]-1.08*x[18]*x[25]-0.26*x[18]*x[26]+0.44*x[18]*x[27]-1.7*x[18]*x[28]-0.94*x[18]*x[29]+0.48*x[18]*x[30]+1.16*x[18]*x[31]+1.38*x[18]*x[32]+0.58*x[18]*x[33]-0.12*x[18]*x[34]-0.34*x[18]*x[35]-0.84*x[18]*x[36]-1.3*x[18]*x[37]+1.34*x[18]*x[38]+0.72*x[18]*x[39]-1.96*x[18]*x[40]-1.94*x[18]*x[41]+0.62*x[19]*x[20]+1.64*x[19]*x[21]-0.72*x[19]*x[22]+1.42*x[19]*x[23]-0.56*x[19]*x[24]-1.2*x[19]*x[25]+0.16*x[19]*x[26]+1.08*x[19]*x[27]-1.32*x[19]*x[28]+1.92*x[19]*x[29]-0.98*x[19]*x[31]-1.88*x[19]*x[32]-0.3*x[19]*x[33]+0.42*x[19]*x[34]-0.68*x[19]*x[35]-0.86*x[19]*x[36]+0.96*x[19]*x[37]-1.24*x[19]*x[38]-1.1*x[19]*x[39]+1.9*x[19]*x[40]+x[19]*x[41]+1.26*x[20]*x[22]-1.54*x[20]*x[23]+0.62*x[20]*x[24]+1.92*x[20]*x[25]+1.66*x[20]*x[26]+1.92*x[20]*x[27]+0.4*x[20]*x[28]-1.92*x[20]*x[29]-1.6*x[20]*x[30]-0.2*x[20]*x[31]-1.84*x[20]*x[32]+0.12*x[20]*x[33]-0.3*x[20]*x[34]+0.26*x[20]*x[35]-1.98*x[20]*x[36]+0.54*x[20]*x[37]+1.42*x[20]*x[38]-1.7*x[20]*x[39]-1.56*x[20]*x[40]+(-1.36*x[21]*x[22])-0.16*x[21]*x[23]-1.72*x[21]*x[24]-0.54*x[21]*x[25]-1.24*x[21]*x[26]+1.62*x[21]*x[27]-1.12*x[21]*x[28]-0.5*x[21]*x[29]+1.12*x[21]*x[30]+0.94*x[21]*x[31]-1.02*x[21]*x[32]-0.68*x[21]*x[33]-0.68*x[21]*x[35]+0.3*x[21]*x[36]+1.74*x[21]*x[37]+1.52*x[21]*x[38]-1.72*x[21]*x[39]-1.42*x[21]*x[40]+0.32*x[21]*x[41]+1.94*x[22]*x[23]+0.86*x[22]*x[24]+1.46*x[22]*x[25]+1.92*x[22]*x[26]-0.96*x[22]*x[27]+0.26*x[22]*x[28]-0.78*x[22]*x[29]-1.58*x[22]*x[30]+0.86*x[22]*x[31]+0.14*x[22]*x[32]-0.02*x[22]*x[33]+1.96*x[22]*x[34]-1.5*x[22]*x[35]+1.16*x[22]*x[36]-1.5*x[22]*x[37]-1.12*x[22]*x[38]-0.66*x[22]*x[39]+1.3*x[22]*x[40]-1.78*x[22]*x[41]+0.96*x[23]*x[24]-1.8*x[23]*x[25]+0.68*x[23]*x[26]+1.78*x[23]*x[27]+1.74*x[23]*x[28]+0.04*x[23]*x[29]-1.48*x[23]*x[31]+0.26*x[23]*x[32]-0.84*x[23]*x[33]+1.88*x[23]*x[34]+1.48*x[23]*x[35]+0.64*x[23]*x[36]+0.28*x[23]*x[38]-1.7*x[23]*x[39]+2*x[23]*x[40]+1.7*x[23]*x[41]+1.92*x[24]*x[26]-0.62*x[24]*x[25]+1.26*x[24]*x[27]+1.5*x[24]*x[28]+0.58*x[24]*x[29]-1.44*x[24]*x[30]-1.48*x[24]*x[31]-0.34*x[24]*x[32]+0.54*x[24]*x[33]-0.5*x[24]*x[34]-1.3*x[24]*x[35]+0.22*x[24]*x[36]+1.04*x[24]*x[37]-0.02*x[24]*x[38]+1.68*x[24]*x[39]-0.62*x[24]*x[40]-1.96*x[24]*x[41]+1.08*x[25]*x[26]-0.42*x[25]*x[27]-0.14*x[25]*x[28]-1.24*x[25]*x[29]-0.22*x[25]*x[30]-0.38*x[25]*x[31]+1.32*x[25]*x[32]+0.94*x[25]*x[33]+1.52*x[25]*x[34]-1.46*x[25]*x[35]-0.04*x[25]*x[36]+0.28*x[25]*x[37]-0.1*x[25]*x[39]+0.48*x[25]*x[40]+0.32*x[26]*x[27]+1.6*x[26]*x[28]-0.98*x[26]*x[29]-1.1*x[26]*x[30]-0.84*x[26]*x[31]+0.12*x[26]*x[32]-1.94*x[26]*x[33]+0.9*x[26]*x[34]+1.5*x[26]*x[35]+1.92*x[26]*x[36]-1.48*x[26]*x[37]-0.7*x[26]*x[38]-1.9*x[26]*x[39]-0.36*x[26]*x[40]-0.58*x[26]*x[41]+(-0.92*x[27]*x[28])-0.68*x[27]*x[29]-1.46*x[27]*x[30]+1.2*x[27]*x[31]+1.16*x[27]*x[32]-0.74*x[27]*x[33]-0.64*x[27]*x[34]+0.44*x[27]*x[35]+0.78*x[27]*x[36]+1.42*x[27]*x[37]+0.74*x[27]*x[38]+1.36*x[27]*x[39]-0.44*x[27]*x[40]-1.26*x[27]*x[41]+0.52*x[28]*x[30]-0.26*x[28]*x[29]+0.92*x[28]*x[31]-0.7*x[28]*x[32]-0.08*x[28]*x[33]-1.62*x[28]*x[34]+1.06*x[28]*x[35]+1.22*x[28]*x[36]+1.14*x[28]*x[37]-1.26*x[28]*x[38]+1.56*x[28]*x[39]-1.72*x[28]*x[40]-0.02*x[28]*x[41]+0.5*x[29]*x[30]+0.82*x[29]*x[31]-1.78*x[29]*x[32]+1.54*x[29]*x[33]+1.2*x[29]*x[34]+1.3*x[29]*x[35]-0.38*x[29]*x[36]+0.52*x[29]*x[37]+1.78*x[29]*x[38]+1.98*x[29]*x[39]-1.02*x[29]*x[40]-0.8*x[29]*x[41]+1.98*x[30]*x[31]+1.54*x[30]*x[32]-1.82*x[30]*x[33]-0.66*x[30]*x[34]+0.36*x[30]*x[35]+1.28*x[30]*x[36]-1.12*x[30]*x[37]+1.82*x[30]*x[38]-1.78*x[30]*x[39]-0.9*x[30]*x[40]+0.24*x[30]*x[41]+0.4*x[31]*x[33]-0.86*x[31]*x[32]-0.64*x[31]*x[34]-1.2*x[31]*x[36]+0.66*x[31]*x[37]+0.26*x[31]*x[38]+1.74*x[31]*x[39]+1.92*x[31]*x[40]+1.54*x[31]*x[41]+1.34*x[32]*x[33]-1.58*x[32]*x[34]+1.12*x[32]*x[35]-1.88*x[32]*x[36]-0.36*x[32]*x[37]-1.36*x[32]*x[38]+0.88*x[32]*x[40]-1.06*x[32]*x[41]+0.36*x[33]*x[35]-0.32*x[33]*x[34]-1.2*x[33]*x[36]+0.42*x[33]*x[37]-0.66*x[33]*x[38]+1.04*x[33]*x[39]+1.58*x[33]*x[40]-0.74*x[33]*x[41]+(-1.5*x[34]*x[35])-1.76*x[34]*x[36]-1.12*x[34]*x[37]+0.32*x[34]*x[38]-1.62*x[34]*x[39]+1.16*x[34]*x[40]-x[34]*x[41]+0.66*x[35]*x[36]+0.98*x[35]*x[37]-1.54*x[35]*x[38]+0.4*x[35]*x[39]+1.04*x[35]*x[40]+0.98*x[35]*x[41]+0.6*x[36]*x[38]-1.54*x[36]*x[37]+0.84*x[36]*x[39]-0.06*x[36]*x[40]+0.06*x[36]*x[41]+1.5*x[37]*x[38]-0.8*x[37]*x[39]-1.28*x[37]*x[40]-0.62*x[37]*x[41]+1.44*x[38]*x[40]-0.2*x[38]*x[39]-0.42*x[38]*x[41]+(-0.46*x[39]*x[40])-1.78*x[39]*x[41]+0.88*x[40]*x[41]+0.19*x[3]*x[3]-0.31*x[2]*x[2]-0.64*x[4]*x[4]-0.98*x[5]*x[5]+0.13*x[6]*x[6]-0.89*x[7]*x[7]+0.03*x[8]*x[8]-0.82*x[9]*x[9]+0.57*x[10]*x[10]+0.73*x[11]*x[11]-0.3*x[12]*x[12]+0.31*x[13]*x[13]-0.78*x[14]*x[14]-0.59*x[15]*x[15]-0.27*x[16]*x[16]-0.89*x[17]*x[17]-0.51*x[18]*x[18]+0.94*x[19]*x[19]+0.48*x[20]*x[20]+0.75*x[21]*x[21]+0.38*x[22]*x[22]-0.94*x[23]*x[23]-0.19*x[24]*x[24]-0.48*x[25]*x[25]-0.3*x[26]*x[26]+0.13*x[27]*x[27]-0.44*x[28]*x[28]-0.61*x[29]*x[29]+0.1*x[30]*x[30]+0.76*x[31]*x[31]-0.77*x[32]*x[32]-0.6*x[33]*x[33]+0.5*x[34]*x[34]+0.42*x[35]*x[35]-0.69*x[36]*x[36]-0.24*x[37]*x[37]+0.83*x[38]*x[38]+0.92*x[39]*x[39]+0.81*x[40]*x[40]+0.05*x[41]*x[41]+0.39*x[2]+x[3]+0.81*x[4]+0.72*x[5]+0.88*x[6]+0.33*x[7]-0.93*x[8]+0.48*x[9]-0.44*x[10]+0.51*x[11]+0.92*x[12]+0.43*x[13]-0.57*x[14]-0.26*x[15]+0.74*x[16]-0.46*x[17]-0.06*x[18]+0.26*x[19]-0.98*x[20]+0.71*x[21]+0.28*x[22]+0.39*x[23]+0.03*x[24]+0.47*x[25]-0.21*x[26]-0.88*x[27]-0.95*x[28]-0.35*x[29]+0.66*x[30]-0.95*x[31]-0.72*x[32]-0.81*x[33]+0.97*x[34]+0.61*x[35]+0.81*x[36]-0.28*x[37]+0.98*x[38]-0.64*x[39]-0.78*x[40]-0.88*x[41] <= 8.86)
@constraint(m, e3, -0.7*x[2]+0.75*x[3]+0.91*x[4]-0.17*x[5]-0.4*x[6]-0.56*x[7]+0.02*x[8]+0.64*x[9]-0.66*x[10]-0.45*x[11]-0.92*x[12]+0.71*x[13]-0.52*x[14]-0.61*x[15]-0.99*x[16]+0.12*x[17]+0.5*x[18]-0.37*x[19]+0.81*x[20]+0.53*x[21]+0.17*x[22]+0.4*x[23]-0.7*x[24]-0.86*x[25]-0.4*x[26]-0.78*x[27]+0.89*x[28]-0.05*x[29]-0.6*x[30]+0.64*x[31]-0.08*x[32]+0.3*x[33]+0.44*x[34]-0.7*x[35]-0.1*x[36]+0.75*x[37]+0.56*x[38]-0.84*x[39]-0.87*x[40]-0.71*x[41] == -0.96)
@constraint(m, e4, 0.06*x[2]+0.24*x[3]+0.73*x[4]+0.28*x[5]-0.38*x[6]-0.5*x[7]-0.43*x[8]-0.88*x[9]+0.89*x[10]+0.57*x[11]-0.97*x[12]+0.56*x[13]+0.36*x[14]+0.59*x[15]+0.63*x[16]+0.32*x[17]+0.51*x[18]+0.71*x[19]+0.04*x[20]-0.32*x[21]+0.51*x[22]+0.16*x[23]-0.81*x[24]+0.06*x[25]+0.94*x[26]+0.9*x[27]-0.2*x[28]+0.06*x[29]+0.83*x[30]-0.93*x[31]-0.88*x[32]-0.81*x[33]-0.03*x[34]-0.51*x[35]-0.75*x[36]-0.92*x[37]+0.17*x[38]+0.81*x[39]+0.45*x[40]+0.97*x[41] == -0.38)
@constraint(m, e5, 0.13*x[2]+0.65*x[3]+0.27*x[4]+0.37*x[5]-0.13*x[6]-0.31*x[7]+0.51*x[8]-0.33*x[9]-0.38*x[10]+0.99*x[11]+0.18*x[12]+0.58*x[13]-0.66*x[14]-0.87*x[15]-0.97*x[16]+0.21*x[17]-0.34*x[18]-0.48*x[19]+0.16*x[20]-0.91*x[21]-0.95*x[22]+0.05*x[23]+0.54*x[24]-0.88*x[25]-0.01*x[26]-0.16*x[27]-0.27*x[28]+0.05*x[29]+0.89*x[30]+0.2*x[31]-0.85*x[32]+0.85*x[33]+0.12*x[34]+0.38*x[35]-0.44*x[36]+0.52*x[37]+0.29*x[38]+0.1*x[39]-0.17*x[40]-0.39*x[41] == -0.34)
@constraint(m, e6, 0.88*x[2]+0.91*x[3]+0.11*x[4]-0.21*x[5]-0.74*x[6]-0.11*x[7]-0.19*x[8]+0.36*x[9]-0.81*x[10]-0.84*x[11]-0.16*x[12]-0.88*x[13]-0.56*x[14]+0.57*x[15]+0.33*x[16]+0.19*x[17]-0.29*x[18]-0.61*x[19]+0.35*x[20]-0.61*x[21]-0.67*x[22]+0.84*x[23]+0.6*x[24]-0.35*x[25]-0.36*x[26]-0.63*x[27]-0.45*x[28]+0.46*x[29]-0.2*x[30]+0.88*x[31]-0.77*x[32]-0.97*x[33]+0.39*x[34]-0.16*x[35]+0.27*x[36]-0.66*x[37]-0.1*x[38]+0.64*x[39]-0.16*x[40]+0.24*x[41] == 0.08)
@constraint(m, e7, 0.09*x[2]+0.35*x[3]-0.31*x[4]+0.12*x[5]+0.54*x[6]+0.56*x[7]+0.3*x[8]-0.95*x[9]+0.66*x[10]-0.65*x[11]-0.58*x[12]-0.43*x[13]+0.42*x[14]-0.58*x[15]-0.17*x[16]-0.72*x[17]-0.78*x[18]+0.37*x[19]+0.57*x[20]-0.81*x[21]-0.57*x[22]-0.24*x[23]+0.23*x[24]+0.19*x[25]-0.88*x[26]+0.36*x[27]-0.31*x[29]-0.25*x[30]-0.24*x[31]+0.18*x[32]-0.03*x[33]-0.18*x[34]+0.1*x[35]+0.07*x[36]-0.59*x[37]+0.85*x[38]+0.91*x[39]-0.46*x[40]-0.09*x[41] == 0.03)
@constraint(m, e8, -0.59*x[2]+0.1*x[3]+0.71*x[4]-0.34*x[5]-0.1*x[6]-0.71*x[7]+0.04*x[8]-0.88*x[9]-0.43*x[10]+0.83*x[11]-0.27*x[12]-0.22*x[13]-0.31*x[15]-0.5*x[16]+0.71*x[17]-0.79*x[18]-0.71*x[19]-0.12*x[20]+0.84*x[21]+0.1*x[22]+x[23]-0.62*x[24]+0.33*x[25]+0.32*x[26]+0.89*x[27]+0.29*x[28]+0.15*x[29]-0.57*x[30]+0.73*x[31]-0.8*x[32]-0.45*x[33]+0.73*x[34]-0.88*x[35]-0.63*x[36]-0.87*x[37]-0.92*x[38]-0.33*x[39]-0.09*x[40]-0.34*x[41] == 0.24)
@constraint(m, e9, 0.33*x[2]-0.73*x[3]-0.51*x[4]-0.64*x[5]-0.31*x[6]+0.47*x[7]-0.08*x[8]-0.1*x[9]-0.6*x[10]-0.7*x[11]+0.32*x[12]+0.67*x[13]+0.83*x[14]-0.47*x[15]-0.3*x[16]-0.77*x[17]+0.14*x[18]+0.16*x[19]-0.92*x[20]+0.92*x[21]-0.54*x[22]-0.75*x[23]+x[24]+0.95*x[25]+0.93*x[26]+0.64*x[27]-0.93*x[28]-0.51*x[29]+0.16*x[30]-0.35*x[31]+0.97*x[32]-0.41*x[33]+0.37*x[34]+0.43*x[35]-0.31*x[36]-0.24*x[37]-0.31*x[38]+0.85*x[39]-0.32*x[40]-0.23*x[41] == -0.56)
@constraint(m, e10, -0.25*x[2]+0.26*x[3]+0.18*x[4]+0.11*x[5]-0.98*x[6]+0.25*x[7]+0.46*x[8]-0.64*x[9]-0.54*x[10]-0.68*x[11]+0.43*x[12]+0.54*x[13]+0.19*x[14]+0.98*x[15]-0.24*x[16]+0.79*x[17]+0.09*x[18]+0.67*x[19]-0.51*x[20]+0.97*x[21]+0.75*x[22]+0.48*x[23]-0.15*x[24]-0.45*x[25]+0.57*x[26]-0.6*x[28]+0.54*x[29]+0.16*x[30]-0.83*x[31]+0.45*x[32]+0.63*x[33]+0.98*x[34]-0.61*x[35]-0.48*x[36]-0.3*x[37]-0.36*x[38]+0.35*x[39]-0.26*x[40]+0.84*x[41] == -0.45)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
