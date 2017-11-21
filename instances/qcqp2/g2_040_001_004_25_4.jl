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
@NLconstraint(m, e1, -(-0.22*x[2]*x[3]-0.02*x[2]*x[4]-0.04*x[2]*x[5]-0.08*x[2]*x[6]-0.1*x[2]*x[7]+0.24*x[2]*x[8]+0.1*x[2]*x[9]+0.24*x[2]*x[10]-0.22*x[2]*x[11]+0.06*x[2]*x[12]+0.28*x[2]*x[13]+0.42*x[2]*x[15]+0.12*x[2]*x[16]-0.06*x[2]*x[17]+0.24*x[2]*x[19]-0.08*x[2]*x[20]-0.02*x[2]*x[21]-0.24*x[2]*x[22]-0.04*x[2]*x[23]-0.2*x[2]*x[24]+0.1*x[2]*x[26]-0.04*x[2]*x[27]+0.22*x[2]*x[28]-0.1*x[2]*x[29]-0.04*x[2]*x[30]-0.48*x[2]*x[31]+0.34*x[2]*x[32]+0.1*x[2]*x[33]+0.14*x[2]*x[34]-0.44*x[2]*x[35]-0.08*x[2]*x[37]-0.06*x[2]*x[38]+0.38*x[2]*x[39]-0.06*x[2]*x[40]+0.18*x[2]*x[41]+0.08*x[3]*x[5]-0.04*x[3]*x[4]-0.22*x[3]*x[6]+0.08*x[3]*x[8]+0.12*x[3]*x[9]+0.02*x[3]*x[10]+0.24*x[3]*x[11]-0.04*x[3]*x[12]+0.12*x[3]*x[13]-0.22*x[3]*x[14]-0.08*x[3]*x[15]+0.06*x[3]*x[16]+0.02*x[3]*x[18]+0.06*x[3]*x[19]+0.2*x[3]*x[20]+0.22*x[3]*x[21]+0.12*x[3]*x[22]+0.1*x[3]*x[23]+0.26*x[3]*x[24]-0.2*x[3]*x[25]-0.02*x[3]*x[26]+0.1*x[3]*x[27]+0.12*x[3]*x[28]+0.12*x[3]*x[29]+0.04*x[3]*x[30]-0.06*x[3]*x[31]-0.2*x[3]*x[32]-0.1*x[3]*x[33]+0.04*x[3]*x[34]-0.02*x[3]*x[35]-0.24*x[3]*x[36]+0.24*x[3]*x[37]+0.14*x[3]*x[38]+0.34*x[3]*x[39]-0.16*x[3]*x[40]-0.18*x[3]*x[41]+0.1*x[4]*x[5]+0.1*x[4]*x[6]+0.06*x[4]*x[7]-0.04*x[4]*x[8]+0.34*x[4]*x[9]-0.08*x[4]*x[10]-0.18*x[4]*x[11]+0.1*x[4]*x[12]+0.16*x[4]*x[13]+0.12*x[4]*x[14]+0.48*x[4]*x[15]+0.12*x[4]*x[16]-0.32*x[4]*x[17]-0.12*x[4]*x[18]-0.18*x[4]*x[19]-0.06*x[4]*x[20]-0.08*x[4]*x[21]+0.1*x[4]*x[22]+0.06*x[4]*x[23]-0.04*x[4]*x[24]+0.22*x[4]*x[25]+0.22*x[4]*x[26]+0.06*x[4]*x[27]+0.04*x[4]*x[28]-0.08*x[4]*x[29]-0.22*x[4]*x[30]+0.08*x[4]*x[31]-0.06*x[4]*x[32]-0.08*x[4]*x[33]-0.14*x[4]*x[34]-0.12*x[4]*x[35]-0.04*x[4]*x[36]+0.12*x[4]*x[37]-0.04*x[4]*x[38]+0.04*x[4]*x[39]+0.04*x[4]*x[40]+0.04*x[4]*x[41]+0.28*x[5]*x[7]+0.06*x[5]*x[8]-0.24*x[5]*x[9]+0.36*x[5]*x[10]+0.22*x[5]*x[11]-0.14*x[5]*x[12]-0.04*x[5]*x[13]+0.32*x[5]*x[14]-0.18*x[5]*x[15]+0.22*x[5]*x[16]+0.14*x[5]*x[17]+0.2*x[5]*x[18]+0.02*x[5]*x[19]+0.12*x[5]*x[20]+0.22*x[5]*x[21]+0.12*x[5]*x[22]+0.12*x[5]*x[23]-0.2*x[5]*x[24]+0.2*x[5]*x[25]+0.16*x[5]*x[26]-0.18*x[5]*x[27]-0.16*x[5]*x[28]-0.24*x[5]*x[29]-0.14*x[5]*x[31]+0.08*x[5]*x[32]-0.04*x[5]*x[33]+0.4*x[5]*x[34]-0.12*x[5]*x[35]-0.04*x[5]*x[36]-0.06*x[5]*x[37]+0.22*x[5]*x[38]+0.16*x[5]*x[39]+0.08*x[5]*x[40]-0.24*x[5]*x[41]+0.06*x[6]*x[7]+0.28*x[6]*x[8]+0.16*x[6]*x[9]-0.2*x[6]*x[10]+0.22*x[6]*x[11]+0.06*x[6]*x[12]+0.04*x[6]*x[13]-0.06*x[6]*x[14]+0.02*x[6]*x[15]+0.02*x[6]*x[17]+0.26*x[6]*x[18]-0.08*x[6]*x[19]+0.24*x[6]*x[20]-0.08*x[6]*x[21]+0.12*x[6]*x[22]-0.24*x[6]*x[23]-0.08*x[6]*x[24]-0.1*x[6]*x[25]+0.08*x[6]*x[26]+0.14*x[6]*x[27]+0.26*x[6]*x[28]-0.18*x[6]*x[29]-0.02*x[6]*x[30]-0.06*x[6]*x[32]-0.2*x[6]*x[33]+0.02*x[6]*x[34]+0.12*x[6]*x[35]+0.04*x[6]*x[36]+0.1*x[6]*x[37]+0.2*x[6]*x[38]+0.42*x[6]*x[39]-0.02*x[6]*x[40]-0.12*x[6]*x[41]+0.3*x[7]*x[8]+0.12*x[7]*x[9]-0.1*x[7]*x[10]+0.2*x[7]*x[11]+0.12*x[7]*x[12]+0.26*x[7]*x[13]-0.22*x[7]*x[14]-0.04*x[7]*x[16]+0.08*x[7]*x[18]+0.2*x[7]*x[19]-0.14*x[7]*x[20]-0.12*x[7]*x[21]-0.04*x[7]*x[22]+0.04*x[7]*x[23]-0.04*x[7]*x[24]-0.02*x[7]*x[25]+0.02*x[7]*x[26]+0.06*x[7]*x[27]+0.12*x[7]*x[28]-0.02*x[7]*x[29]+0.22*x[7]*x[30]+0.04*x[7]*x[31]-0.12*x[7]*x[32]-0.06*x[7]*x[33]-0.06*x[7]*x[34]+0.28*x[7]*x[35]-0.02*x[7]*x[36]-0.02*x[7]*x[37]-0.02*x[7]*x[38]+0.32*x[7]*x[39]+0.22*x[7]*x[40]-0.14*x[7]*x[41]+0.2*x[8]*x[9]+0.26*x[8]*x[10]-0.06*x[8]*x[11]-0.06*x[8]*x[12]+0.16*x[8]*x[13]+0.02*x[8]*x[14]+0.08*x[8]*x[15]-0.08*x[8]*x[16]-0.12*x[8]*x[17]-0.24*x[8]*x[18]-0.02*x[8]*x[19]+0.04*x[8]*x[20]+0.4*x[8]*x[21]+0.32*x[8]*x[22]+0.06*x[8]*x[23]+0.08*x[8]*x[26]+0.06*x[8]*x[27]+0.12*x[8]*x[28]+0.02*x[8]*x[29]-0.32*x[8]*x[30]-0.1*x[8]*x[31]-0.38*x[8]*x[32]-0.14*x[8]*x[34]+0.02*x[8]*x[35]-0.1*x[8]*x[37]-0.36*x[8]*x[38]-0.04*x[8]*x[39]+0.02*x[8]*x[40]+0.16*x[8]*x[41]+0.1*x[9]*x[11]-0.2*x[9]*x[10]+0.28*x[9]*x[12]-0.28*x[9]*x[13]+0.42*x[9]*x[14]-0.04*x[9]*x[15]+0.12*x[9]*x[16]-0.14*x[9]*x[18]-0.36*x[9]*x[19]-0.34*x[9]*x[20]+0.04*x[9]*x[21]-0.02*x[9]*x[22]+0.04*x[9]*x[24]+0.1*x[9]*x[25]+0.16*x[9]*x[26]+0.14*x[9]*x[27]-0.3*x[9]*x[28]+0.1*x[9]*x[29]+0.34*x[9]*x[30]+0.28*x[9]*x[31]+0.04*x[9]*x[32]+0.1*x[9]*x[33]-0.1*x[9]*x[34]+0.12*x[9]*x[35]+0.02*x[9]*x[36]+0.04*x[9]*x[37]+0.14*x[9]*x[38]-0.26*x[9]*x[39]+0.26*x[9]*x[40]+0.32*x[9]*x[41]+(-0.34*x[10]*x[11])-0.24*x[10]*x[13]+0.16*x[10]*x[14]+0.06*x[10]*x[15]-0.04*x[10]*x[16]+0.22*x[10]*x[17]+0.12*x[10]*x[18]-0.1*x[10]*x[19]+0.24*x[10]*x[20]-0.18*x[10]*x[21]+0.02*x[10]*x[22]+0.16*x[10]*x[23]+0.22*x[10]*x[24]-0.18*x[10]*x[25]-0.1*x[10]*x[26]+0.16*x[10]*x[27]+0.04*x[10]*x[28]+0.14*x[10]*x[29]+0.24*x[10]*x[30]+0.28*x[10]*x[31]-0.02*x[10]*x[32]+0.3*x[10]*x[33]-0.18*x[10]*x[36]+0.2*x[10]*x[37]+0.1*x[10]*x[38]-0.2*x[10]*x[39]-0.06*x[10]*x[40]+0.2*x[10]*x[41]+0.02*x[11]*x[12]-0.06*x[11]*x[13]+0.2*x[11]*x[14]+0.14*x[11]*x[15]-0.14*x[11]*x[16]-0.1*x[11]*x[17]+0.06*x[11]*x[18]+0.26*x[11]*x[20]-0.16*x[11]*x[21]-0.02*x[11]*x[22]-0.06*x[11]*x[24]-0.06*x[11]*x[25]-0.04*x[11]*x[26]+0.48*x[11]*x[27]-0.12*x[11]*x[28]+0.22*x[11]*x[29]+0.02*x[11]*x[31]+0.18*x[11]*x[32]+0.06*x[11]*x[33]-0.08*x[11]*x[34]-0.12*x[11]*x[35]-0.02*x[11]*x[36]+0.22*x[11]*x[37]-0.1*x[11]*x[38]-0.08*x[11]*x[39]-0.14*x[11]*x[40]+0.18*x[11]*x[41]+0.22*x[12]*x[13]-0.2*x[12]*x[14]-0.02*x[12]*x[15]-0.14*x[12]*x[16]-0.14*x[12]*x[17]+0.34*x[12]*x[18]+0.1*x[12]*x[19]+0.22*x[12]*x[20]+0.22*x[12]*x[21]-0.04*x[12]*x[22]+0.04*x[12]*x[23]-0.12*x[12]*x[24]-0.04*x[12]*x[25]-0.08*x[12]*x[26]-0.12*x[12]*x[27]+0.24*x[12]*x[28]+0.14*x[12]*x[29]+0.1*x[12]*x[30]+0.14*x[12]*x[31]-0.26*x[12]*x[32]+0.08*x[12]*x[33]+0.24*x[12]*x[34]+0.18*x[12]*x[35]-0.02*x[12]*x[36]+0.22*x[12]*x[37]-0.04*x[12]*x[38]-0.16*x[12]*x[39]-0.02*x[12]*x[40]+0.1*x[12]*x[41]+0.18*x[13]*x[14]+0.2*x[13]*x[15]+0.18*x[13]*x[16]+0.04*x[13]*x[17]+0.16*x[13]*x[18]-0.34*x[13]*x[19]-0.24*x[13]*x[20]-0.08*x[13]*x[21]+0.2*x[13]*x[22]+0.16*x[13]*x[23]+0.34*x[13]*x[24]-0.26*x[13]*x[25]+0.3*x[13]*x[26]-0.02*x[13]*x[27]-0.14*x[13]*x[28]+0.04*x[13]*x[29]+0.12*x[13]*x[30]-0.06*x[13]*x[31]-0.12*x[13]*x[32]+0.14*x[13]*x[33]-0.12*x[13]*x[34]-0.18*x[13]*x[35]-0.18*x[13]*x[36]+0.12*x[13]*x[37]+0.34*x[13]*x[38]+0.26*x[13]*x[39]+0.3*x[13]*x[40]+0.18*x[13]*x[41]+0.22*x[14]*x[15]-0.1*x[14]*x[16]+0.02*x[14]*x[17]+0.18*x[14]*x[18]+0.3*x[14]*x[19]-0.02*x[14]*x[20]-0.08*x[14]*x[21]-0.1*x[14]*x[22]+0.16*x[14]*x[23]+0.14*x[14]*x[24]-0.1*x[14]*x[25]-0.04*x[14]*x[26]-0.2*x[14]*x[27]+0.32*x[14]*x[28]-0.26*x[14]*x[29]+0.16*x[14]*x[30]+0.04*x[14]*x[31]+0.18*x[14]*x[32]+0.06*x[14]*x[33]+0.02*x[14]*x[34]+0.16*x[14]*x[35]-0.08*x[14]*x[36]+0.04*x[14]*x[37]-0.26*x[14]*x[38]-0.3*x[14]*x[39]+0.26*x[14]*x[40]+0.12*x[14]*x[41]+0.14*x[15]*x[16]+0.02*x[15]*x[17]+0.1*x[15]*x[18]-0.14*x[15]*x[19]+0.14*x[15]*x[20]-0.08*x[15]*x[21]+0.06*x[15]*x[22]-0.3*x[15]*x[24]+0.22*x[15]*x[25]+0.14*x[15]*x[26]+0.06*x[15]*x[27]-0.02*x[15]*x[28]-0.1*x[15]*x[29]+0.1*x[15]*x[30]+0.3*x[15]*x[31]-0.02*x[15]*x[32]+0.04*x[15]*x[33]+0.1*x[15]*x[34]+0.02*x[15]*x[35]+0.04*x[15]*x[36]+0.06*x[15]*x[37]+0.08*x[15]*x[38]+0.06*x[15]*x[39]-0.08*x[15]*x[40]-0.2*x[15]*x[41]+0.28*x[16]*x[19]-0.04*x[16]*x[18]+0.2*x[16]*x[20]-0.1*x[16]*x[21]+0.14*x[16]*x[22]-0.08*x[16]*x[23]+0.34*x[16]*x[24]-0.02*x[16]*x[25]-0.28*x[16]*x[26]+0.08*x[16]*x[27]+0.02*x[16]*x[28]+0.24*x[16]*x[29]+0.06*x[16]*x[30]+0.14*x[16]*x[31]+0.1*x[16]*x[32]+0.2*x[16]*x[33]-0.08*x[16]*x[34]+0.12*x[16]*x[35]+0.22*x[16]*x[36]+0.06*x[16]*x[37]+0.06*x[16]*x[38]-0.1*x[16]*x[39]-0.08*x[16]*x[41]+0.12*x[17]*x[18]-0.02*x[17]*x[19]+0.18*x[17]*x[20]+0.16*x[17]*x[21]-0.12*x[17]*x[22]+0.3*x[17]*x[23]+0.1*x[17]*x[24]+0.16*x[17]*x[25]-0.12*x[17]*x[26]-0.2*x[17]*x[27]+0.16*x[17]*x[28]-0.12*x[17]*x[29]-0.04*x[17]*x[30]+0.12*x[17]*x[31]-0.1*x[17]*x[32]-0.1*x[17]*x[33]+0.16*x[17]*x[34]-0.04*x[17]*x[35]-0.06*x[17]*x[36]+0.04*x[17]*x[37]-0.1*x[17]*x[38]+0.16*x[17]*x[39]+0.4*x[17]*x[40]+0.2*x[17]*x[41]+0.28*x[18]*x[19]+0.02*x[18]*x[20]+0.04*x[18]*x[21]+0.22*x[18]*x[22]-0.04*x[18]*x[23]-0.02*x[18]*x[24]-0.08*x[18]*x[25]-0.08*x[18]*x[26]+0.18*x[18]*x[27]-0.04*x[18]*x[28]+0.26*x[18]*x[29]+0.12*x[18]*x[30]+0.22*x[18]*x[31]-0.1*x[18]*x[32]+0.02*x[18]*x[33]+0.18*x[18]*x[34]+0.06*x[18]*x[35]+0.16*x[18]*x[36]-0.14*x[18]*x[37]+0.12*x[18]*x[38]-0.08*x[18]*x[39]-0.34*x[18]*x[40]-0.04*x[18]*x[41]+0.3*x[19]*x[20]+0.04*x[19]*x[21]+0.2*x[19]*x[22]+0.08*x[19]*x[23]+0.26*x[19]*x[24]+0.06*x[19]*x[25]+0.24*x[19]*x[26]+0.02*x[19]*x[27]+0.1*x[19]*x[29]+0.14*x[19]*x[30]+0.46*x[19]*x[31]-0.02*x[19]*x[32]-0.16*x[19]*x[33]+0.14*x[19]*x[35]-0.1*x[19]*x[36]+0.08*x[19]*x[37]+0.1*x[19]*x[38]-0.06*x[19]*x[39]+0.02*x[19]*x[40]-0.28*x[19]*x[41]+0.1*x[20]*x[21]-0.1*x[20]*x[22]+0.12*x[20]*x[23]+0.02*x[20]*x[24]+0.06*x[20]*x[25]+0.1*x[20]*x[26]+0.1*x[20]*x[27]-0.26*x[20]*x[28]+0.04*x[20]*x[29]-0.02*x[20]*x[30]-0.08*x[20]*x[31]+0.14*x[20]*x[32]+0.24*x[20]*x[33]+0.04*x[20]*x[34]-0.14*x[20]*x[35]+0.18*x[20]*x[36]-0.28*x[20]*x[37]+0.04*x[20]*x[38]-0.1*x[20]*x[39]+0.32*x[20]*x[40]+0.34*x[20]*x[41]+0.12*x[21]*x[22]-0.04*x[21]*x[23]-0.06*x[21]*x[24]+0.02*x[21]*x[25]+0.16*x[21]*x[26]+0.12*x[21]*x[27]+0.16*x[21]*x[28]+0.08*x[21]*x[29]-0.1*x[21]*x[30]-0.18*x[21]*x[31]+0.14*x[21]*x[32]+0.06*x[21]*x[33]-0.12*x[21]*x[34]+0.08*x[21]*x[35]+0.08*x[21]*x[36]+0.04*x[21]*x[37]+0.1*x[21]*x[38]+0.34*x[21]*x[39]-0.02*x[21]*x[40]+0.02*x[21]*x[41]+0.12*x[22]*x[25]-0.14*x[22]*x[24]+0.16*x[22]*x[26]+0.06*x[22]*x[28]-0.04*x[22]*x[29]+0.08*x[22]*x[30]-0.14*x[22]*x[31]-0.02*x[22]*x[32]-0.02*x[22]*x[33]+0.12*x[22]*x[35]+0.02*x[22]*x[36]-0.1*x[22]*x[37]-0.1*x[22]*x[38]+0.2*x[22]*x[39]+0.16*x[22]*x[40]-0.14*x[22]*x[41]+0.02*x[23]*x[24]+0.1*x[23]*x[25]+0.12*x[23]*x[26]+0.2*x[23]*x[27]-0.02*x[23]*x[28]-0.06*x[23]*x[29]+0.04*x[23]*x[30]+0.08*x[23]*x[31]+0.24*x[23]*x[32]+0.04*x[23]*x[33]-0.06*x[23]*x[34]-0.02*x[23]*x[35]-0.1*x[23]*x[36]+0.08*x[23]*x[37]-0.04*x[23]*x[38]+0.06*x[23]*x[39]-0.16*x[23]*x[40]-0.02*x[23]*x[41]+0.2*x[24]*x[25]-0.06*x[24]*x[26]-0.12*x[24]*x[27]-0.04*x[24]*x[28]+0.18*x[24]*x[29]+0.1*x[24]*x[30]+0.18*x[24]*x[31]+0.44*x[24]*x[32]+0.04*x[24]*x[33]+0.1*x[24]*x[34]+0.1*x[24]*x[35]+0.18*x[24]*x[36]+0.04*x[24]*x[37]-0.18*x[24]*x[38]-0.02*x[24]*x[39]-0.12*x[24]*x[40]-0.18*x[24]*x[41]+0.28*x[25]*x[27]-0.04*x[25]*x[26]+0.12*x[25]*x[28]+0.14*x[25]*x[29]-0.12*x[25]*x[30]-0.16*x[25]*x[31]+0.04*x[25]*x[32]-0.06*x[25]*x[33]+0.06*x[25]*x[34]+0.06*x[25]*x[35]-0.08*x[25]*x[36]+0.26*x[25]*x[37]+0.26*x[25]*x[38]+0.1*x[25]*x[39]-0.18*x[25]*x[40]+0.16*x[25]*x[41]+0.16*x[26]*x[27]+0.12*x[26]*x[28]+0.12*x[26]*x[29]-0.02*x[26]*x[30]-0.06*x[26]*x[31]-0.04*x[26]*x[32]+0.04*x[26]*x[33]+0.14*x[26]*x[34]-0.06*x[26]*x[35]-0.06*x[26]*x[36]+0.18*x[26]*x[37]+0.04*x[26]*x[38]-0.12*x[26]*x[39]-0.28*x[26]*x[40]-0.06*x[26]*x[41]+(-0.02*x[27]*x[28])-0.04*x[27]*x[30]-0.12*x[27]*x[31]-0.06*x[27]*x[33]+0.02*x[27]*x[34]+0.04*x[27]*x[35]-0.12*x[27]*x[36]-0.08*x[27]*x[37]-0.34*x[27]*x[38]-0.12*x[27]*x[39]+0.32*x[27]*x[40]+0.24*x[27]*x[41]+0.1*x[28]*x[29]+0.16*x[28]*x[30]+0.04*x[28]*x[31]+0.24*x[28]*x[32]+0.1*x[28]*x[33]-0.04*x[28]*x[34]+0.16*x[28]*x[35]+0.14*x[28]*x[36]-0.14*x[28]*x[37]+0.1*x[28]*x[38]+0.06*x[28]*x[39]-0.16*x[28]*x[40]+0.16*x[28]*x[41]+0.02*x[29]*x[32]-0.02*x[29]*x[31]+0.1*x[29]*x[33]+0.04*x[29]*x[35]+0.04*x[29]*x[37]-0.22*x[29]*x[38]+0.16*x[29]*x[39]-0.18*x[29]*x[40]+0.06*x[29]*x[41]+(-0.08*x[30]*x[31])-0.08*x[30]*x[32]-0.14*x[30]*x[33]+0.16*x[30]*x[34]+0.1*x[30]*x[35]-0.06*x[30]*x[36]+0.1*x[30]*x[37]-0.14*x[30]*x[38]+0.16*x[30]*x[39]-0.1*x[30]*x[41]+0.06*x[31]*x[33]+0.08*x[31]*x[34]-0.08*x[31]*x[35]-0.02*x[31]*x[36]+0.02*x[31]*x[37]+0.34*x[31]*x[38]+0.38*x[31]*x[39]-0.1*x[31]*x[40]+0.22*x[31]*x[41]+0.1*x[32]*x[35]-0.1*x[32]*x[33]-0.26*x[32]*x[36]+0.08*x[32]*x[37]+0.14*x[32]*x[38]+0.14*x[32]*x[39]-0.04*x[32]*x[40]+0.18*x[32]*x[41]+(-0.06*x[33]*x[34])-0.18*x[33]*x[35]-0.02*x[33]*x[36]+0.04*x[33]*x[37]-0.08*x[33]*x[38]+0.04*x[33]*x[39]-0.08*x[33]*x[40]-0.04*x[33]*x[41]+0.12*x[34]*x[35]+0.02*x[34]*x[36]-0.02*x[34]*x[37]+0.14*x[34]*x[38]-0.06*x[34]*x[39]+0.06*x[34]*x[40]-0.08*x[34]*x[41]+0.14*x[35]*x[36]-0.02*x[35]*x[37]+0.02*x[35]*x[38]+0.06*x[35]*x[39]+0.02*x[35]*x[40]+0.06*x[35]*x[41]+0.12*x[36]*x[37]+0.2*x[36]*x[38]+0.18*x[36]*x[39]+0.1*x[36]*x[40]+0.06*x[36]*x[41]+0.12*x[37]*x[39]+0.08*x[37]*x[40]+0.2*x[37]*x[41]+0.12*x[38]*x[40]-0.14*x[38]*x[39]-0.08*x[38]*x[41]+0.16*x[39]*x[40]+0.28*x[39]*x[41]+0.04*x[40]*x[41]+0.23*x[2]*x[2]+0.16*x[3]*x[3]+0.3*x[4]*x[4]+0.14*x[5]*x[5]+0.27*x[6]*x[6]-0.01*x[7]*x[7]+0.16*x[8]*x[8]+0.19*x[9]*x[9]+0.17*x[10]*x[10]-0.12*x[11]*x[11]+0.06*x[12]*x[12]+0.07*x[13]*x[13]+0.05*x[14]*x[14]+0.19*x[15]*x[15]+0.35*x[16]*x[16]+0.28*x[17]*x[17]+0.17*x[18]*x[18]+0.02*x[19]*x[19]+0.24*x[20]*x[20]+0.33*x[21]*x[21]+0.19*x[22]*x[22]+0.27*x[23]*x[23]+0.14*x[24]*x[24]+0.33*x[25]*x[25]+0.17*x[26]*x[26]+0.3*x[27]*x[27]+0.25*x[28]*x[28]+0.33*x[29]*x[29]+0.21*x[30]*x[30]+0.01*x[31]*x[31]+0.14*x[32]*x[32]+0.22*x[33]*x[33]+0.37*x[34]*x[34]+0.25*x[35]*x[35]+0.25*x[36]*x[36]+0.18*x[37]*x[37]+0.14*x[38]*x[38]+0.06*x[39]*x[39]+0.23*x[40]*x[40]+0.28*x[41]*x[41]-0.25*x[2]+0.49*x[3]-0.31*x[4]+0.79*x[5]-0.44*x[6]-0.37*x[7]+0.63*x[8]-0.21*x[9]+0.01*x[10]-0.68*x[11]+0.98*x[12]+0.3*x[13]+0.55*x[14]+0.36*x[15]-0.07*x[16]-0.76*x[17]+0.28*x[18]+0.01*x[19]+0.77*x[20]-0.2*x[21]-0.35*x[22]-0.95*x[23]-0.36*x[24]-0.14*x[25]-0.21*x[26]-0.83*x[27]+0.6*x[28]+0.43*x[29]+0.78*x[30]-0.1*x[31]-0.67*x[32]+0.9*x[33]+0.66*x[34]-0.85*x[35]-0.96*x[36]-0.3*x[37]-0.09*x[38]-0.02*x[39]-0.96*x[40]-0.81*x[41])+x[1] == 0.0)
@NLconstraint(m, e2, 0.12*x[2]*x[3]+0.14*x[2]*x[4]-0.1*x[2]*x[7]+0.02*x[2]*x[8]-0.14*x[2]*x[9]-0.08*x[2]*x[10]-0.02*x[2]*x[11]-0.02*x[2]*x[13]+0.24*x[2]*x[14]+0.08*x[2]*x[15]+0.32*x[2]*x[16]+0.22*x[2]*x[17]-0.1*x[2]*x[18]-0.02*x[2]*x[19]-0.14*x[2]*x[20]+0.08*x[2]*x[21]+0.02*x[2]*x[22]+0.26*x[2]*x[23]+0.02*x[2]*x[24]+0.16*x[2]*x[25]-0.02*x[2]*x[26]-0.12*x[2]*x[27]+0.16*x[2]*x[29]-0.14*x[2]*x[30]+0.06*x[2]*x[31]+0.1*x[2]*x[32]+0.18*x[2]*x[33]-0.06*x[2]*x[34]+0.24*x[2]*x[35]+0.04*x[2]*x[36]+0.14*x[2]*x[37]+0.14*x[2]*x[38]-0.1*x[2]*x[39]-0.1*x[2]*x[40]+0.06*x[2]*x[41]+(-0.08*x[3]*x[4])-0.12*x[3]*x[5]-0.08*x[3]*x[6]+0.12*x[3]*x[7]-0.14*x[3]*x[8]+0.12*x[3]*x[9]-0.06*x[3]*x[10]+0.26*x[3]*x[11]+0.02*x[3]*x[12]+0.1*x[3]*x[13]-0.14*x[3]*x[14]+0.2*x[3]*x[15]-0.18*x[3]*x[16]+0.06*x[3]*x[17]-0.02*x[3]*x[18]+0.08*x[3]*x[19]-0.08*x[3]*x[20]+0.22*x[3]*x[21]+0.08*x[3]*x[22]-0.08*x[3]*x[23]-0.02*x[3]*x[24]-0.16*x[3]*x[25]+0.2*x[3]*x[26]-0.04*x[3]*x[27]+0.02*x[3]*x[28]-0.14*x[3]*x[29]+0.3*x[3]*x[30]-0.2*x[3]*x[31]-0.06*x[3]*x[32]+0.04*x[3]*x[33]+0.1*x[3]*x[34]+0.08*x[3]*x[35]-0.28*x[3]*x[36]+0.1*x[3]*x[37]+0.12*x[3]*x[38]+0.3*x[3]*x[39]-0.1*x[3]*x[40]+0.2*x[3]*x[41]+0.06*x[4]*x[5]+0.12*x[4]*x[6]-0.3*x[4]*x[7]-0.04*x[4]*x[8]+0.24*x[4]*x[9]-0.08*x[4]*x[10]-0.16*x[4]*x[11]-0.14*x[4]*x[12]-0.16*x[4]*x[13]+0.14*x[4]*x[14]-0.06*x[4]*x[15]-0.08*x[4]*x[16]+0.16*x[4]*x[17]-0.04*x[4]*x[18]-0.24*x[4]*x[19]+0.04*x[4]*x[20]+0.04*x[4]*x[21]+0.04*x[4]*x[22]+0.04*x[4]*x[23]+0.04*x[4]*x[24]-0.1*x[4]*x[25]+0.08*x[4]*x[26]-0.04*x[4]*x[27]+0.24*x[4]*x[28]+0.04*x[4]*x[29]-0.16*x[4]*x[30]-0.2*x[4]*x[31]+0.14*x[4]*x[32]+0.24*x[4]*x[33]-0.06*x[4]*x[34]+0.16*x[4]*x[35]-0.06*x[4]*x[36]+0.08*x[4]*x[37]-0.02*x[4]*x[38]+0.02*x[4]*x[39]+0.2*x[4]*x[40]-0.1*x[4]*x[41]+(-0.26*x[5]*x[6])-0.18*x[5]*x[7]-0.08*x[5]*x[8]+0.32*x[5]*x[9]+0.1*x[5]*x[10]+0.18*x[5]*x[13]+0.28*x[5]*x[14]+0.08*x[5]*x[15]-0.26*x[5]*x[16]+0.06*x[5]*x[17]-0.06*x[5]*x[18]-0.1*x[5]*x[19]+0.2*x[5]*x[20]-0.08*x[5]*x[21]+0.16*x[5]*x[22]-0.3*x[5]*x[24]-0.08*x[5]*x[25]+0.24*x[5]*x[26]+0.16*x[5]*x[27]-0.02*x[5]*x[28]-0.08*x[5]*x[29]+0.02*x[5]*x[31]+0.14*x[5]*x[32]+0.1*x[5]*x[33]+0.02*x[5]*x[34]+0.06*x[5]*x[35]+0.24*x[5]*x[36]+0.08*x[5]*x[37]+0.36*x[5]*x[39]-0.14*x[5]*x[40]-0.04*x[5]*x[41]+0.1*x[6]*x[8]-0.06*x[6]*x[7]+0.1*x[6]*x[10]-0.06*x[6]*x[11]+0.06*x[6]*x[12]+0.14*x[6]*x[14]-0.08*x[6]*x[15]-0.1*x[6]*x[16]+0.08*x[6]*x[17]+0.06*x[6]*x[18]+0.14*x[6]*x[19]-0.24*x[6]*x[20]+0.02*x[6]*x[21]+0.12*x[6]*x[22]-0.12*x[6]*x[23]-0.04*x[6]*x[24]-0.04*x[6]*x[25]-0.14*x[6]*x[26]+0.2*x[6]*x[27]-0.16*x[6]*x[28]-0.04*x[6]*x[29]+0.18*x[6]*x[30]+0.02*x[6]*x[31]+0.02*x[6]*x[32]+0.08*x[6]*x[33]+0.26*x[6]*x[34]-0.16*x[6]*x[35]+0.04*x[6]*x[36]+0.18*x[6]*x[37]+0.16*x[6]*x[38]+0.24*x[6]*x[39]+0.14*x[6]*x[40]+0.26*x[6]*x[41]+0.12*x[7]*x[8]-0.16*x[7]*x[9]+0.12*x[7]*x[10]+0.12*x[7]*x[11]+0.12*x[7]*x[12]+0.1*x[7]*x[14]+0.12*x[7]*x[15]-0.12*x[7]*x[16]+0.08*x[7]*x[17]+0.1*x[7]*x[18]+0.12*x[7]*x[19]+0.28*x[7]*x[20]+0.04*x[7]*x[21]-0.04*x[7]*x[22]-0.2*x[7]*x[23]+0.02*x[7]*x[24]+0.02*x[7]*x[25]+0.04*x[7]*x[26]+0.04*x[7]*x[27]+0.16*x[7]*x[28]-0.08*x[7]*x[29]-0.04*x[7]*x[30]+0.22*x[7]*x[31]+0.04*x[7]*x[32]+0.04*x[7]*x[33]+0.08*x[7]*x[34]+0.1*x[7]*x[36]+0.02*x[7]*x[37]-0.08*x[7]*x[38]+0.02*x[7]*x[39]-0.22*x[7]*x[40]+0.14*x[7]*x[41]+0.04*x[8]*x[9]+0.02*x[8]*x[10]+0.04*x[8]*x[11]-0.1*x[8]*x[12]+0.22*x[8]*x[13]+0.04*x[8]*x[14]-0.1*x[8]*x[15]-0.04*x[8]*x[16]+0.04*x[8]*x[17]-0.02*x[8]*x[18]+0.06*x[8]*x[19]+0.22*x[8]*x[20]-0.04*x[8]*x[21]+0.16*x[8]*x[22]+0.22*x[8]*x[23]-0.18*x[8]*x[24]-0.1*x[8]*x[25]-0.26*x[8]*x[26]+0.12*x[8]*x[27]-0.22*x[8]*x[28]+0.08*x[8]*x[29]+0.12*x[8]*x[30]+0.16*x[8]*x[31]-0.1*x[8]*x[32]+0.06*x[8]*x[33]+0.02*x[8]*x[34]+0.16*x[8]*x[35]+0.2*x[8]*x[36]+0.1*x[8]*x[37]+0.02*x[8]*x[38]-0.08*x[8]*x[39]-0.08*x[8]*x[40]+0.26*x[8]*x[41]+0.18*x[9]*x[10]-0.02*x[9]*x[11]+0.14*x[9]*x[12]+0.06*x[9]*x[13]-0.12*x[9]*x[14]+0.28*x[9]*x[15]+0.32*x[9]*x[16]+0.06*x[9]*x[17]+0.16*x[9]*x[18]+0.28*x[9]*x[19]-0.26*x[9]*x[20]-0.16*x[9]*x[22]+0.08*x[9]*x[23]+0.16*x[9]*x[24]+0.14*x[9]*x[25]+0.06*x[9]*x[26]+0.1*x[9]*x[27]+0.1*x[9]*x[28]+0.38*x[9]*x[29]-0.02*x[9]*x[31]+0.2*x[9]*x[32]+0.04*x[9]*x[33]+0.04*x[9]*x[34]+0.12*x[9]*x[35]+0.04*x[9]*x[36]-0.14*x[9]*x[37]-0.14*x[9]*x[38]-0.26*x[9]*x[39]-0.02*x[9]*x[40]-0.2*x[9]*x[41]+0.04*x[10]*x[12]-0.02*x[10]*x[11]-0.02*x[10]*x[13]+0.16*x[10]*x[14]+0.08*x[10]*x[15]+0.16*x[10]*x[16]-0.22*x[10]*x[18]-0.12*x[10]*x[19]+0.34*x[10]*x[20]-0.08*x[10]*x[21]+0.08*x[10]*x[22]-0.04*x[10]*x[23]+0.16*x[10]*x[24]+0.1*x[10]*x[25]+0.02*x[10]*x[26]+0.08*x[10]*x[27]+0.1*x[10]*x[28]-0.1*x[10]*x[29]-0.04*x[10]*x[30]+0.12*x[10]*x[31]-0.12*x[10]*x[32]-0.06*x[10]*x[33]-0.2*x[10]*x[34]-0.14*x[10]*x[35]+0.26*x[10]*x[36]+0.16*x[10]*x[37]+0.06*x[10]*x[38]+0.04*x[10]*x[39]-0.08*x[10]*x[40]+0.02*x[10]*x[41]+0.24*x[11]*x[12]-0.24*x[11]*x[13]-0.14*x[11]*x[14]+0.24*x[11]*x[15]-0.24*x[11]*x[16]+0.26*x[11]*x[17]-0.04*x[11]*x[18]+0.02*x[11]*x[19]+0.1*x[11]*x[20]+0.04*x[11]*x[21]+0.16*x[11]*x[22]+0.18*x[11]*x[23]+0.16*x[11]*x[24]+0.12*x[11]*x[25]+0.1*x[11]*x[26]-0.02*x[11]*x[27]-0.1*x[11]*x[28]+0.08*x[11]*x[29]-0.3*x[11]*x[30]-0.08*x[11]*x[31]+0.14*x[11]*x[32]+0.16*x[11]*x[33]+0.06*x[11]*x[34]-0.1*x[11]*x[35]-0.04*x[11]*x[36]+0.02*x[11]*x[37]+0.02*x[11]*x[38]-0.08*x[11]*x[39]+0.12*x[11]*x[40]-0.2*x[11]*x[41]+0.36*x[12]*x[13]-0.08*x[12]*x[14]+0.14*x[12]*x[15]+0.1*x[12]*x[16]+0.04*x[12]*x[17]+0.04*x[12]*x[18]-0.28*x[12]*x[19]+0.04*x[12]*x[20]+0.1*x[12]*x[21]+0.12*x[12]*x[22]+0.14*x[12]*x[23]+0.08*x[12]*x[25]-0.02*x[12]*x[26]-0.06*x[12]*x[27]+0.06*x[12]*x[28]+0.06*x[12]*x[29]-0.04*x[12]*x[30]-0.08*x[12]*x[31]-0.06*x[12]*x[32]-0.14*x[12]*x[33]-0.22*x[12]*x[34]+0.08*x[12]*x[35]-0.18*x[12]*x[36]-0.02*x[12]*x[37]-0.02*x[12]*x[38]+0.02*x[12]*x[39]+0.1*x[12]*x[40]-0.1*x[12]*x[41]+(-0.12*x[13]*x[14])-0.02*x[13]*x[15]-0.02*x[13]*x[16]+0.16*x[13]*x[17]-0.18*x[13]*x[18]-0.1*x[13]*x[19]-0.08*x[13]*x[20]-0.1*x[13]*x[21]+0.22*x[13]*x[22]+0.46*x[13]*x[24]+0.02*x[13]*x[26]+0.1*x[13]*x[27]-0.1*x[13]*x[28]+0.26*x[13]*x[29]-0.14*x[13]*x[30]-0.02*x[13]*x[31]+0.2*x[13]*x[32]+0.12*x[13]*x[33]+0.28*x[13]*x[34]-0.3*x[13]*x[35]-0.24*x[13]*x[36]-0.04*x[13]*x[37]-0.04*x[13]*x[40]-0.46*x[13]*x[41]+0.2*x[14]*x[16]-0.28*x[14]*x[15]-0.04*x[14]*x[17]+0.06*x[14]*x[18]+0.18*x[14]*x[19]-0.08*x[14]*x[20]+0.02*x[14]*x[21]-0.14*x[14]*x[22]-0.06*x[14]*x[23]+0.08*x[14]*x[25]-0.08*x[14]*x[26]-0.06*x[14]*x[27]+0.22*x[14]*x[28]+0.1*x[14]*x[29]+0.16*x[14]*x[30]+0.24*x[14]*x[31]+0.1*x[14]*x[32]+0.06*x[14]*x[33]+0.28*x[14]*x[34]+0.12*x[14]*x[36]-0.02*x[14]*x[37]-0.14*x[14]*x[38]+0.2*x[14]*x[40]-0.06*x[14]*x[41]+0.06*x[15]*x[16]-0.1*x[15]*x[17]-0.06*x[15]*x[18]+0.14*x[15]*x[19]+0.02*x[15]*x[20]-0.04*x[15]*x[21]-0.12*x[15]*x[22]+0.06*x[15]*x[23]+0.06*x[15]*x[24]-0.1*x[15]*x[25]+0.24*x[15]*x[28]-0.1*x[15]*x[29]+0.16*x[15]*x[30]+0.06*x[15]*x[31]-0.06*x[15]*x[33]+0.04*x[15]*x[34]+0.06*x[15]*x[36]-0.14*x[15]*x[37]+0.16*x[15]*x[38]-0.1*x[15]*x[39]-0.06*x[15]*x[40]-0.02*x[15]*x[41]+0.02*x[16]*x[17]-0.16*x[16]*x[18]+0.12*x[16]*x[19]+0.22*x[16]*x[20]-0.04*x[16]*x[21]+0.12*x[16]*x[22]+0.04*x[16]*x[23]-0.16*x[16]*x[24]+0.02*x[16]*x[25]+0.26*x[16]*x[26]-0.28*x[16]*x[27]+0.02*x[16]*x[28]-0.24*x[16]*x[29]+0.1*x[16]*x[30]+0.02*x[16]*x[31]-0.16*x[16]*x[32]-0.3*x[16]*x[33]-0.16*x[16]*x[34]+0.1*x[16]*x[35]+0.08*x[16]*x[36]-0.04*x[16]*x[38]+0.24*x[16]*x[40]+0.08*x[16]*x[41]+0.06*x[17]*x[18]+0.06*x[17]*x[19]-0.14*x[17]*x[20]+0.18*x[17]*x[21]-0.04*x[17]*x[22]+0.2*x[17]*x[23]+0.28*x[17]*x[24]-0.08*x[17]*x[25]-0.06*x[17]*x[26]+0.14*x[17]*x[27]-0.12*x[17]*x[28]+0.04*x[17]*x[29]+0.24*x[17]*x[30]-0.06*x[17]*x[31]-0.02*x[17]*x[32]-0.34*x[17]*x[33]+0.14*x[17]*x[34]-0.18*x[17]*x[36]-0.14*x[17]*x[37]-0.14*x[17]*x[38]-0.06*x[17]*x[39]+0.28*x[17]*x[40]-0.12*x[17]*x[41]+0.02*x[18]*x[19]+0.08*x[18]*x[20]+0.22*x[18]*x[21]+0.02*x[18]*x[22]-0.12*x[18]*x[23]+0.06*x[18]*x[24]+0.18*x[18]*x[25]+0.12*x[18]*x[27]-0.1*x[18]*x[28]-0.24*x[18]*x[29]+0.02*x[18]*x[30]+0.26*x[18]*x[31]+0.02*x[18]*x[32]+0.28*x[18]*x[33]-0.06*x[18]*x[34]+0.22*x[18]*x[35]+0.18*x[18]*x[36]+0.22*x[18]*x[37]+0.22*x[18]*x[38]+0.06*x[18]*x[39]+0.38*x[18]*x[41]+0.26*x[19]*x[20]+0.18*x[19]*x[21]-0.22*x[19]*x[22]+0.12*x[19]*x[23]-0.18*x[19]*x[24]+0.12*x[19]*x[25]+0.14*x[19]*x[26]-0.18*x[19]*x[27]+0.1*x[19]*x[28]-0.16*x[19]*x[29]+0.04*x[19]*x[30]+0.06*x[19]*x[31]-0.16*x[19]*x[32]+0.26*x[19]*x[33]-0.24*x[19]*x[34]-0.06*x[19]*x[35]+0.16*x[19]*x[36]+0.28*x[19]*x[37]-0.14*x[19]*x[38]+0.06*x[19]*x[39]-0.08*x[19]*x[40]+0.14*x[20]*x[22]-0.24*x[20]*x[21]-0.04*x[20]*x[23]-0.02*x[20]*x[24]-0.06*x[20]*x[25]+0.02*x[20]*x[26]-0.02*x[20]*x[27]-0.04*x[20]*x[28]+0.34*x[20]*x[29]-0.04*x[20]*x[30]+0.26*x[20]*x[31]+0.16*x[20]*x[32]+0.06*x[20]*x[33]+0.14*x[20]*x[34]-0.16*x[20]*x[36]-0.14*x[20]*x[37]+0.18*x[20]*x[39]-0.08*x[20]*x[40]-0.1*x[20]*x[41]+0.14*x[21]*x[23]-0.12*x[21]*x[22]-0.24*x[21]*x[24]+0.04*x[21]*x[26]+0.08*x[21]*x[27]-0.04*x[21]*x[28]+0.08*x[21]*x[29]+0.06*x[21]*x[32]-0.16*x[21]*x[33]+0.08*x[21]*x[34]+0.18*x[21]*x[35]+0.08*x[21]*x[36]+0.14*x[21]*x[37]+0.16*x[21]*x[38]-0.1*x[21]*x[39]-0.16*x[21]*x[40]+0.14*x[21]*x[41]+0.14*x[22]*x[25]-0.08*x[22]*x[23]-0.14*x[22]*x[26]+0.04*x[22]*x[27]+0.08*x[22]*x[28]+0.16*x[22]*x[29]-0.2*x[22]*x[30]+0.1*x[22]*x[31]-0.2*x[22]*x[32]+0.18*x[22]*x[33]-0.04*x[22]*x[34]-0.02*x[22]*x[35]+0.02*x[22]*x[36]-0.16*x[22]*x[37]-0.02*x[22]*x[38]+0.2*x[22]*x[39]+0.08*x[22]*x[40]+0.04*x[22]*x[41]+0.08*x[23]*x[24]+0.06*x[23]*x[25]+0.1*x[23]*x[26]-0.06*x[23]*x[27]-0.02*x[23]*x[28]-0.1*x[23]*x[29]-0.16*x[23]*x[30]-0.32*x[23]*x[31]-0.04*x[23]*x[32]+0.14*x[23]*x[33]-0.08*x[23]*x[34]+0.28*x[23]*x[36]+0.08*x[23]*x[37]+0.04*x[23]*x[38]+0.06*x[23]*x[39]-0.08*x[23]*x[40]+0.04*x[23]*x[41]+0.22*x[24]*x[25]+0.04*x[24]*x[26]-0.14*x[24]*x[27]+0.12*x[24]*x[28]-0.32*x[24]*x[29]-0.02*x[24]*x[30]+0.1*x[24]*x[31]+0.1*x[24]*x[32]+0.06*x[24]*x[33]-0.12*x[24]*x[34]-0.08*x[24]*x[35]+0.08*x[24]*x[36]+0.38*x[24]*x[37]-0.1*x[24]*x[38]-0.24*x[24]*x[39]+0.1*x[24]*x[40]-0.06*x[24]*x[41]+0.12*x[25]*x[27]-0.04*x[25]*x[26]-0.06*x[25]*x[28]+0.02*x[25]*x[29]-0.04*x[25]*x[31]-0.04*x[25]*x[32]-0.28*x[25]*x[33]-0.16*x[25]*x[35]-0.04*x[25]*x[36]-0.02*x[25]*x[37]-0.02*x[25]*x[38]-0.02*x[25]*x[39]+0.02*x[25]*x[40]+0.14*x[26]*x[27]+0.06*x[26]*x[28]+0.04*x[26]*x[29]+0.2*x[26]*x[30]-0.06*x[26]*x[31]+0.12*x[26]*x[32]+0.14*x[26]*x[33]-0.1*x[26]*x[34]+0.04*x[26]*x[35]+0.22*x[26]*x[36]-0.32*x[26]*x[37]+0.06*x[26]*x[38]-0.14*x[26]*x[39]-0.12*x[26]*x[40]+0.08*x[26]*x[41]+(-0.26*x[27]*x[28])-0.2*x[27]*x[29]+0.22*x[27]*x[30]-0.16*x[27]*x[31]+0.04*x[27]*x[32]+0.2*x[27]*x[33]+0.14*x[27]*x[35]-0.02*x[27]*x[36]+0.12*x[27]*x[37]+0.02*x[27]*x[38]+0.24*x[27]*x[40]+0.2*x[27]*x[41]+0.02*x[28]*x[29]+0.28*x[28]*x[30]+0.38*x[28]*x[31]-0.02*x[28]*x[32]+0.08*x[28]*x[33]+0.12*x[28]*x[34]+0.06*x[28]*x[35]-0.4*x[28]*x[36]-0.22*x[28]*x[37]+0.34*x[28]*x[38]-0.14*x[28]*x[39]-0.12*x[28]*x[40]+0.16*x[28]*x[41]+0.02*x[29]*x[31]-0.06*x[29]*x[30]-0.06*x[29]*x[32]+0.16*x[29]*x[33]+0.08*x[29]*x[34]+0.18*x[29]*x[35]+0.08*x[29]*x[36]+0.2*x[29]*x[37]+0.02*x[29]*x[38]+0.2*x[29]*x[39]+0.14*x[29]*x[40]+0.2*x[29]*x[41]+0.16*x[30]*x[32]-0.34*x[30]*x[31]+0.08*x[30]*x[33]-0.1*x[30]*x[34]-0.12*x[30]*x[35]-0.16*x[30]*x[36]-0.16*x[30]*x[37]-0.1*x[30]*x[38]+0.24*x[30]*x[39]+0.16*x[30]*x[40]-0.08*x[30]*x[41]+0.04*x[31]*x[34]-0.06*x[31]*x[33]-0.24*x[31]*x[35]-0.14*x[31]*x[36]+0.02*x[31]*x[37]+0.02*x[31]*x[38]+0.22*x[31]*x[39]+0.04*x[31]*x[40]-0.16*x[31]*x[41]+0.02*x[32]*x[33]-0.24*x[32]*x[34]-0.02*x[32]*x[35]+0.16*x[32]*x[37]-0.14*x[32]*x[38]+0.2*x[32]*x[39]-0.16*x[32]*x[40]+0.16*x[32]*x[41]+0.04*x[33]*x[34]-0.2*x[33]*x[35]+0.08*x[33]*x[36]-0.32*x[33]*x[37]-0.28*x[33]*x[38]+0.04*x[33]*x[39]+0.16*x[33]*x[40]-0.16*x[33]*x[41]+0.06*x[34]*x[35]-0.14*x[34]*x[36]+0.26*x[34]*x[37]+0.24*x[34]*x[39]-0.18*x[34]*x[40]-0.12*x[34]*x[41]+(-0.14*x[35]*x[36])-0.04*x[35]*x[37]+0.22*x[35]*x[38]+0.2*x[35]*x[39]-0.12*x[35]*x[40]-0.1*x[35]*x[41]+(-0.04*x[36]*x[37])-0.28*x[36]*x[38]+0.12*x[36]*x[39]+0.14*x[36]*x[40]-0.12*x[36]*x[41]+(-0.1*x[37]*x[38])-0.24*x[37]*x[39]-0.22*x[37]*x[40]+0.06*x[38]*x[39]+0.24*x[38]*x[40]+0.12*x[38]*x[41]+(-0.14*x[39]*x[40])-0.04*x[39]*x[41]+0.04*x[40]*x[41]+0.19*x[2]*x[2]+0.26*x[3]*x[3]+0.35*x[4]*x[4]+0.07*x[5]*x[5]+0.17*x[6]*x[6]+0.22*x[7]*x[7]+0.17*x[8]*x[8]-0.04*x[9]*x[9]+0.28*x[10]*x[10]+0.19*x[11]*x[11]+0.38*x[12]*x[12]+0.23*x[13]*x[13]+0.09*x[14]*x[14]+0.22*x[15]*x[15]+0.44*x[16]*x[16]+0.16*x[17]*x[17]+0.21*x[18]*x[18]+0.2*x[19]*x[19]+0.07*x[20]*x[20]+0.26*x[21]*x[21]+0.13*x[22]*x[22]+0.34*x[23]*x[23]+0.36*x[24]*x[24]+0.29*x[25]*x[25]+0.25*x[26]*x[26]+0.35*x[27]*x[27]+0.36*x[28]*x[28]+0.18*x[29]*x[29]+0.34*x[30]*x[30]+0.33*x[31]*x[31]+0.2*x[32]*x[32]+0.21*x[33]*x[33]+0.32*x[34]*x[34]+0.16*x[35]*x[35]+0.16*x[36]*x[36]+0.34*x[37]*x[37]+0.37*x[38]*x[38]+0.19*x[39]*x[39]+0.37*x[40]*x[40]+0.16*x[41]*x[41]-0.26*x[2]-0.93*x[3]-0.58*x[4]-0.74*x[5]-0.28*x[6]-0.06*x[7]+0.38*x[8]-0.96*x[9]-0.08*x[10]-0.83*x[11]+0.9*x[12]+0.94*x[13]-0.42*x[14]-0.1*x[15]-0.32*x[16]-0.41*x[17]+0.14*x[18]-0.75*x[19]+0.24*x[20]-0.92*x[21]-0.53*x[22]-0.79*x[23]-0.01*x[24]-0.11*x[25]+0.41*x[26]-0.38*x[27]-0.16*x[28]+0.74*x[29]+0.1*x[30]+0.52*x[31]-0.2*x[32]+0.9*x[33]+0.99*x[34]-0.16*x[35]-0.23*x[36]-0.86*x[37]+0.93*x[38]+0.38*x[39]+0.49*x[40]+0.85*x[41] <= 58.47)
@constraint(m, e3, -0.02*x[2]-0.71*x[3]-0.3*x[4]+0.23*x[5]-0.04*x[6]-0.27*x[7]-0.03*x[8]+0.04*x[9]-0.36*x[10]-0.55*x[11]+0.94*x[12]-0.67*x[13]+0.24*x[14]+0.6*x[15]+0.1*x[16]+0.6*x[17]-0.05*x[18]+0.59*x[19]-0.35*x[20]-0.05*x[21]+0.61*x[22]-0.34*x[23]-0.42*x[24]+0.41*x[25]+0.83*x[26]+0.12*x[27]+0.03*x[28]+0.89*x[29]-0.85*x[30]-0.04*x[31]+0.1*x[32]+0.02*x[33]-0.17*x[34]-0.71*x[35]+0.62*x[36]-0.57*x[37]+0.54*x[38]+0.03*x[39]+0.9*x[40]+0.57*x[41] == -0.12)
@constraint(m, e4, -0.15*x[2]-0.13*x[3]+0.98*x[4]+0.83*x[5]+0.6*x[6]+0.08*x[7]-0.05*x[8]-0.35*x[9]-0.58*x[10]+0.2*x[11]-0.97*x[12]+0.46*x[13]+0.15*x[14]+0.5*x[15]+0.99*x[16]-0.11*x[17]-0.39*x[18]-0.68*x[19]-0.44*x[20]-0.77*x[21]-0.95*x[22]+0.59*x[23]+0.8*x[24]-0.69*x[25]+0.86*x[26]+0.95*x[27]-0.53*x[28]-0.65*x[29]+0.41*x[30]+0.98*x[31]+0.96*x[32]-0.29*x[33]-0.24*x[34]-0.29*x[35]-0.25*x[36]+0.67*x[37]-0.64*x[38]+0.56*x[39]-0.02*x[40]-0.45*x[41] == -0.88)
@constraint(m, e5, -0.42*x[2]+0.58*x[3]-0.1*x[4]-0.65*x[5]-0.8*x[6]+0.06*x[7]-0.15*x[8]+0.28*x[9]-0.17*x[10]-0.91*x[11]-0.89*x[12]+0.77*x[13]-0.01*x[14]-0.13*x[15]-0.64*x[16]-0.27*x[17]+x[18]+0.34*x[19]+0.91*x[20]+0.25*x[21]-0.81*x[22]+0.2*x[23]-0.87*x[24]+0.72*x[25]+0.49*x[26]-0.89*x[27]+0.34*x[28]+0.69*x[29]-0.98*x[30]+0.62*x[31]+0.9*x[32]+0.66*x[33]-0.03*x[34]-0.02*x[35]-0.87*x[36]-0.84*x[37]+0.45*x[38]+0.04*x[39]-0.94*x[40]+0.53*x[41] == -0.46)
@constraint(m, e6, 0.85*x[2]-0.4*x[3]-0.5*x[4]-0.94*x[5]-0.08*x[6]-0.5*x[7]-0.48*x[8]+0.87*x[9]+0.05*x[10]+0.37*x[12]+0.92*x[13]+0.18*x[14]+0.94*x[15]-0.42*x[16]-0.94*x[17]+0.02*x[18]+0.99*x[19]+0.19*x[20]+0.79*x[21]+0.81*x[22]+0.17*x[23]-0.18*x[24]-0.19*x[25]+0.3*x[26]+0.18*x[27]+0.68*x[28]-0.46*x[29]-0.34*x[30]+0.3*x[31]+0.49*x[32]-0.41*x[33]-0.91*x[34]-0.25*x[35]+0.2*x[36]-0.39*x[37]+0.22*x[38]-0.83*x[39]+0.51*x[40]+0.43*x[41] == -0.78)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
