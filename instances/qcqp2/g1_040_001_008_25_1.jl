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
@NLconstraint(m, e1, -(0.76*x[2]*x[4]+1.48*x[2]*x[5]-0.66*x[2]*x[9]+1.78*x[2]*x[12]+0.52*x[2]*x[13]-1.88*x[2]*x[20]+1.62*x[2]*x[22]-1.48*x[2]*x[23]+2*x[2]*x[33]-0.5*x[2]*x[36]+1.72*x[3]*x[6]-0.38*x[3]*x[8]+0.52*x[3]*x[10]-1.4*x[3]*x[12]+0.54*x[3]*x[13]-1.76*x[3]*x[16]+0.38*x[3]*x[19]+0.88*x[3]*x[20]-1.42*x[3]*x[23]-0.5*x[3]*x[25]+1.24*x[3]*x[26]-1.76*x[3]*x[29]+0.76*x[3]*x[31]+1.14*x[3]*x[33]-1.88*x[3]*x[34]-0.82*x[3]*x[39]+1.76*x[3]*x[40]-0.22*x[3]*x[41]+1.08*x[4]*x[9]-1.72*x[4]*x[5]-0.16*x[4]*x[12]-1.06*x[4]*x[14]+0.92*x[4]*x[18]-0.32*x[4]*x[21]+0.38*x[4]*x[30]-1.42*x[4]*x[34]+1.26*x[4]*x[40]+(-1.34*x[5]*x[6])-1.34*x[5]*x[8]-1.96*x[5]*x[12]+0.42*x[5]*x[13]-1.56*x[5]*x[14]+1.68*x[5]*x[20]+1.02*x[5]*x[21]+0.16*x[5]*x[22]-0.34*x[5]*x[29]+1.86*x[5]*x[30]+0.94*x[5]*x[35]+x[6]*x[8]-0.42*x[6]*x[10]+1.56*x[6]*x[14]-1.1*x[6]*x[19]+0.24*x[6]*x[24]+1.18*x[6]*x[26]+0.5*x[6]*x[32]+1.44*x[6]*x[34]+1.02*x[6]*x[39]+0.7*x[6]*x[40]+1.9*x[7]*x[19]-x[7]*x[12]-0.84*x[7]*x[29]-1.72*x[7]*x[37]-0.42*x[7]*x[39]+0.92*x[8]*x[13]+0.28*x[8]*x[15]+1.84*x[8]*x[18]-1.76*x[8]*x[20]+0.82*x[8]*x[24]+1.12*x[8]*x[26]-0.54*x[8]*x[35]-1.16*x[8]*x[37]-1.12*x[8]*x[38]-0.92*x[8]*x[39]+1.1*x[8]*x[40]+1.02*x[9]*x[20]-1.36*x[9]*x[10]-1.26*x[9]*x[26]+1.56*x[9]*x[27]+1.52*x[9]*x[36]+1.54*x[10]*x[21]-0.48*x[10]*x[25]+1.4*x[10]*x[26]-1.52*x[10]*x[32]-0.68*x[10]*x[35]-0.34*x[10]*x[36]+0.5*x[10]*x[37]+(-0.64*x[11]*x[13])-1.32*x[11]*x[23]-1.36*x[11]*x[25]-0.54*x[11]*x[30]-1.16*x[11]*x[32]-1.76*x[11]*x[39]+1.14*x[11]*x[40]+1.74*x[12]*x[21]-x[12]*x[17]+1.92*x[12]*x[23]-1.52*x[12]*x[26]-0.48*x[12]*x[32]-1.04*x[12]*x[34]+0.32*x[12]*x[36]+0.82*x[12]*x[38]+0.72*x[12]*x[41]+x[13]*x[26]-1.74*x[13]*x[19]-0.78*x[13]*x[27]-0.16*x[13]*x[36]-1.5*x[13]*x[39]+0.76*x[14]*x[20]-1.86*x[14]*x[15]+1.76*x[14]*x[22]-1.92*x[14]*x[24]-1.16*x[14]*x[29]-1.22*x[14]*x[34]+1.1*x[14]*x[40]+(-1.18*x[15]*x[22])-0.94*x[15]*x[29]+1.56*x[15]*x[30]-1.64*x[15]*x[31]-0.32*x[15]*x[33]+1.94*x[15]*x[37]+1.8*x[15]*x[38]-1.06*x[15]*x[40]+1.08*x[16]*x[17]-0.4*x[16]*x[23]+1.68*x[16]*x[29]-1.92*x[16]*x[30]-1.12*x[16]*x[34]+(-0.1*x[17]*x[24])-1.9*x[17]*x[27]+1.72*x[17]*x[37]+0.44*x[17]*x[39]+(-1.82*x[18]*x[20])-1.16*x[18]*x[21]-0.56*x[18]*x[32]+1.9*x[19]*x[27]+0.8*x[19]*x[32]-1.64*x[19]*x[33]+0.8*x[19]*x[34]-0.12*x[19]*x[37]-1.8*x[19]*x[39]-0.32*x[19]*x[40]+1.42*x[20]*x[25]-0.28*x[20]*x[27]-1.2*x[20]*x[29]+0.64*x[20]*x[32]+1.8*x[21]*x[25]-0.04*x[21]*x[22]-0.58*x[21]*x[26]-0.22*x[21]*x[30]-1.96*x[21]*x[35]+0.16*x[21]*x[36]+1.1*x[21]*x[37]+1.86*x[22]*x[23]+0.76*x[22]*x[30]+0.6*x[22]*x[36]+1.86*x[23]*x[24]-0.9*x[23]*x[32]+1.98*x[23]*x[35]+0.16*x[23]*x[36]-0.32*x[23]*x[37]+0.92*x[24]*x[32]-0.26*x[24]*x[34]-1.98*x[24]*x[35]+1.22*x[24]*x[36]+1.7*x[24]*x[39]+1.34*x[24]*x[40]+(-0.38*x[25]*x[26])-1.64*x[25]*x[27]+0.08*x[25]*x[33]-0.1*x[25]*x[36]+1.06*x[25]*x[37]-1.1*x[25]*x[39]+0.78*x[25]*x[40]+x[26]*x[33]+1.7*x[27]*x[35]-0.46*x[28]*x[29]+0.9*x[29]*x[33]-1.88*x[29]*x[31]-1.64*x[29]*x[38]+1.66*x[30]*x[33]+1.98*x[30]*x[38]-1.38*x[30]*x[40]+0.98*x[31]*x[39]-1.44*x[31]*x[33]-1.56*x[31]*x[41]+1.84*x[33]*x[37]-0.42*x[33]*x[39]-0.8*x[34]*x[36]+(-0.24*x[35]*x[39])-1.46*x[35]*x[40]-1.04*x[36]*x[41]+1.56*x[37]*x[40]+1.54*x[40]*x[41]+0.74*x[4]*x[4]-0.06*x[8]*x[8]-0.78*x[11]*x[11]-0.6*x[15]*x[15]-0.28*x[20]*x[20]-0.81*x[22]*x[22]+0.79*x[25]*x[25]+0.47*x[2]+0.92*x[3]-0.05*x[4]-0.03*x[5]+0.57*x[6]+0.42*x[7]-0.33*x[8]+0.53*x[9]-0.35*x[10]+0.03*x[11]+0.82*x[12]-0.61*x[13]-0.88*x[14]+0.55*x[15]+0.92*x[16]-0.35*x[17]-0.58*x[18]+0.67*x[19]-0.18*x[20]+0.09*x[21]-0.84*x[22]+0.74*x[23]-0.17*x[24]-0.24*x[25]+0.42*x[26]+0.4*x[27]-0.21*x[28]+0.18*x[29]+0.78*x[30]-0.45*x[31]-0.51*x[32]-0.96*x[33]-0.63*x[34]-0.08*x[35]+0.58*x[36]+0.4*x[37]-0.56*x[38]+0.69*x[39]-0.1*x[40]+0.5*x[41])+x[1] == 0.0)
@NLconstraint(m, e2, (-0.58*x[2]*x[7])-0.42*x[2]*x[9]+1.36*x[2]*x[12]-0.14*x[2]*x[15]-1.6*x[2]*x[38]+0.4*x[3]*x[6]-1.78*x[3]*x[5]+0.46*x[3]*x[8]-0.6*x[3]*x[9]-1.92*x[3]*x[10]+0.28*x[3]*x[11]-1.5*x[3]*x[14]+0.06*x[3]*x[21]-1.02*x[3]*x[23]+(-1.52*x[4]*x[5])-0.38*x[4]*x[12]+0.54*x[4]*x[15]-1.52*x[4]*x[17]-0.1*x[4]*x[23]-0.92*x[4]*x[26]-1.3*x[4]*x[31]-0.46*x[4]*x[37]+0.46*x[4]*x[40]+1.56*x[5]*x[12]-1.9*x[5]*x[13]+1.9*x[5]*x[17]+1.58*x[5]*x[23]+1.5*x[5]*x[24]+1.38*x[5]*x[29]+0.58*x[5]*x[30]+0.82*x[5]*x[34]-0.98*x[5]*x[36]+0.12*x[6]*x[7]-1.96*x[6]*x[9]+1.28*x[6]*x[10]-1.34*x[6]*x[12]-0.8*x[6]*x[13]+0.52*x[6]*x[24]-0.14*x[6]*x[26]-0.98*x[6]*x[30]+1.68*x[6]*x[33]-0.5*x[6]*x[36]+x[6]*x[38]+0.2*x[7]*x[15]-1.7*x[7]*x[8]+0.72*x[7]*x[17]-0.82*x[7]*x[28]+1.78*x[7]*x[29]+0.84*x[7]*x[31]+0.32*x[7]*x[32]-0.58*x[7]*x[33]-0.82*x[7]*x[34]+0.98*x[7]*x[35]+1.8*x[8]*x[10]-0.88*x[8]*x[13]+0.76*x[8]*x[18]+0.9*x[8]*x[19]-0.1*x[8]*x[20]-1.98*x[8]*x[24]+0.82*x[8]*x[28]-1.34*x[8]*x[32]+0.1*x[8]*x[35]+0.66*x[8]*x[40]+(-0.92*x[9]*x[10])-1.36*x[9]*x[12]-1.82*x[9]*x[15]+1.76*x[9]*x[17]-1.74*x[9]*x[20]-0.06*x[9]*x[21]+1.98*x[9]*x[27]-0.5*x[9]*x[29]+1.94*x[9]*x[30]-0.72*x[9]*x[31]+1.88*x[9]*x[32]+0.92*x[9]*x[33]+0.96*x[9]*x[34]+0.72*x[9]*x[35]-1.38*x[9]*x[36]-0.32*x[9]*x[40]+1.1*x[10]*x[17]+1.02*x[10]*x[25]+0.42*x[10]*x[26]+1.4*x[10]*x[27]-0.18*x[10]*x[29]+1.3*x[10]*x[37]+1.22*x[10]*x[38]+0.36*x[11]*x[23]-1.76*x[11]*x[18]+0.34*x[11]*x[34]-0.92*x[11]*x[36]-1.74*x[11]*x[40]+0.72*x[12]*x[15]-0.72*x[12]*x[16]+0.78*x[12]*x[22]-0.84*x[12]*x[23]+1.04*x[12]*x[33]+1.38*x[13]*x[21]+1.66*x[13]*x[24]+0.06*x[13]*x[31]+1.94*x[13]*x[33]+1.7*x[13]*x[36]+0.28*x[14]*x[22]-1.36*x[14]*x[23]-1.7*x[14]*x[35]+1.02*x[15]*x[16]-1.4*x[15]*x[21]+1.06*x[15]*x[22]-0.92*x[15]*x[30]-1.28*x[15]*x[33]-1.56*x[15]*x[36]-1.52*x[15]*x[37]+1.12*x[15]*x[38]-1.8*x[15]*x[40]+0.36*x[16]*x[24]-0.56*x[16]*x[22]-0.1*x[16]*x[27]-0.72*x[16]*x[34]-0.02*x[16]*x[36]+1.82*x[16]*x[37]+1.92*x[17]*x[19]-0.46*x[17]*x[31]-1.26*x[17]*x[36]+0.64*x[17]*x[38]-0.42*x[17]*x[41]+1.58*x[18]*x[20]-0.76*x[18]*x[19]+0.88*x[18]*x[26]-1.66*x[18]*x[31]+0.94*x[18]*x[35]+0.58*x[18]*x[36]+0.44*x[18]*x[41]+1.46*x[19]*x[22]-1.98*x[19]*x[28]+1.08*x[19]*x[30]+1.6*x[19]*x[33]+1.56*x[19]*x[36]-1.4*x[19]*x[41]+1.02*x[20]*x[23]+0.64*x[20]*x[27]+0.24*x[20]*x[37]+1.46*x[21]*x[22]-1.98*x[21]*x[27]-1.86*x[21]*x[34]+1.48*x[21]*x[37]+1.02*x[21]*x[39]+(-1.46*x[22]*x[32])-0.96*x[22]*x[36]-1.48*x[22]*x[41]+0.86*x[23]*x[33]+1.9*x[23]*x[35]+0.54*x[23]*x[41]+0.94*x[24]*x[25]+1.9*x[24]*x[27]+1.4*x[24]*x[37]+(-1.6*x[25]*x[26])-1.34*x[25]*x[27]+0.74*x[25]*x[33]+1.72*x[25]*x[35]-1.72*x[25]*x[36]+1.88*x[26]*x[27]+0.24*x[26]*x[31]-0.78*x[26]*x[34]+0.34*x[27]*x[40]-0.54*x[27]*x[34]+0.04*x[28]*x[29]-0.14*x[28]*x[32]+0.4*x[28]*x[34]+0.8*x[28]*x[36]+1.04*x[29]*x[35]-1.84*x[29]*x[31]-0.16*x[29]*x[39]+0.02*x[30]*x[36]+(-1.7*x[31]*x[33])-0.14*x[31]*x[34]+0.48*x[31]*x[35]+0.44*x[31]*x[37]+0.08*x[31]*x[39]+0.14*x[32]*x[35]+0.52*x[32]*x[40]+0.58*x[34]*x[35]-1.48*x[34]*x[38]+x[34]*x[41]-0.78*x[35]*x[38]+1.62*x[36]*x[38]-0.4*x[36]*x[37]-1.44*x[36]*x[39]+0.4*x[36]*x[41]+0.8*x[37]*x[40]+1.84*x[39]*x[41]+(-0.18*x[3]*x[3])-0.95*x[14]*x[14]-0.72*x[21]*x[21]-0.97*x[22]*x[22]-0.41*x[26]*x[26]-0.79*x[30]*x[30]+0.29*x[33]*x[33]+0.2*x[41]*x[41]+0.39*x[2]+x[3]+0.81*x[4]+0.72*x[5]+0.88*x[6]+0.33*x[7]-0.93*x[8]+0.48*x[9]-0.44*x[10]+0.51*x[11]+0.92*x[12]+0.43*x[13]-0.57*x[14]-0.26*x[15]+0.74*x[16]-0.46*x[17]-0.06*x[18]+0.26*x[19]-0.98*x[20]+0.71*x[21]+0.28*x[22]+0.39*x[23]+0.03*x[24]+0.47*x[25]-0.21*x[26]-0.88*x[27]-0.95*x[28]-0.35*x[29]+0.66*x[30]-0.95*x[31]-0.72*x[32]-0.81*x[33]+0.97*x[34]+0.61*x[35]+0.81*x[36]-0.28*x[37]+0.98*x[38]-0.64*x[39]-0.78*x[40]-0.88*x[41] <= 8.86)
@constraint(m, e3, -0.46*x[2]-0.36*x[3]-0.87*x[4]-0.91*x[5]+0.68*x[6]-0.59*x[7]+0.56*x[8]+0.1*x[9]+0.93*x[10]+0.45*x[11]-0.81*x[12]+0.45*x[13]-0.46*x[14]+0.54*x[15]+0.61*x[16]+0.96*x[17]-0.27*x[18]-0.97*x[19]-0.61*x[20]+0.5*x[21]-0.47*x[22]-0.35*x[23]-0.5*x[24]-0.94*x[25]+0.33*x[26]+0.32*x[27]+0.48*x[28]-0.56*x[29]-0.96*x[30]+0.14*x[31]-0.51*x[32]+0.45*x[33]-0.17*x[34]+0.13*x[35]-0.37*x[36]-0.93*x[37]-0.49*x[38]+0.77*x[39]-0.46*x[40]+0.13*x[41] == -0.55)
@constraint(m, e4, -0.09*x[2]-0.42*x[3]+0.45*x[4]-0.37*x[5]-0.32*x[6]-0.49*x[7]+0.09*x[8]+0.3*x[9]+0.96*x[10]+0.13*x[11]-0.36*x[12]+0.97*x[13]+0.29*x[14]-0.15*x[15]-0.16*x[16]-0.09*x[17]-0.09*x[18]-0.7*x[19]+0.42*x[20]-0.15*x[21]-0.31*x[22]-0.74*x[23]-0.57*x[24]+0.59*x[25]+0.75*x[26]-0.56*x[27]+0.75*x[28]-0.94*x[29]+0.38*x[30]+0.56*x[31]-0.29*x[32]-0.81*x[33]-0.9*x[34]+0.29*x[35]+0.79*x[36]+0.89*x[37]-0.12*x[38]+0.19*x[39]+0.04*x[40]-0.21*x[41] == 0.05)
@constraint(m, e5, 0.19*x[2]-0.76*x[3]+0.53*x[4]+0.59*x[5]+0.02*x[6]+0.43*x[7]-0.73*x[8]-0.66*x[9]-0.75*x[10]+0.71*x[11]-0.6*x[12]-0.33*x[14]+0.27*x[15]+0.84*x[16]+0.59*x[17]-0.27*x[18]-0.35*x[19]-0.77*x[20]-0.86*x[21]+0.17*x[22]-0.82*x[23]+0.65*x[24]-0.37*x[25]+0.8*x[26]+0.82*x[27]+0.18*x[28]-0.53*x[29]-0.41*x[30]-0.44*x[31]-0.41*x[32]-0.72*x[33]+0.77*x[34]+0.43*x[35]-0.31*x[36]-0.74*x[37]+0.92*x[38]+0.74*x[39]+0.63*x[40]+0.05*x[41] == -0.24)
@constraint(m, e6, 0.35*x[2]-0.41*x[3]+0.89*x[4]+0.87*x[5]-0.37*x[6]+0.66*x[7]-0.04*x[8]+0.96*x[9]+0.12*x[10]-0.79*x[11]+0.09*x[12]-0.39*x[13]+0.14*x[14]+0.85*x[15]-0.34*x[16]+0.64*x[17]-0.75*x[18]-0.33*x[19]-0.77*x[20]+0.6*x[21]+0.58*x[22]+0.31*x[23]-0.25*x[24]-0.18*x[25]-0.24*x[26]-0.98*x[27]+0.25*x[28]+0.13*x[29]+0.88*x[30]+0.52*x[31]-0.65*x[32]-0.38*x[33]-0.98*x[34]-0.09*x[35]+0.67*x[36]+0.34*x[37]-0.51*x[38]-0.24*x[39]-0.24*x[40]+0.67*x[41] == 0.44)
@constraint(m, e7, 0.7*x[2]-0.04*x[3]+0.13*x[4]-0.1*x[5]+0.38*x[6]-0.46*x[7]+0.6*x[8]+0.8*x[9]+0.73*x[10]+0.44*x[11]+0.84*x[12]+0.31*x[13]+0.37*x[14]+0.58*x[15]+0.44*x[16]+0.47*x[17]+0.44*x[18]-0.8*x[19]+0.14*x[20]+0.29*x[21]-0.55*x[22]-0.97*x[23]-0.6*x[24]-0.14*x[26]-0.19*x[27]-0.88*x[28]+0.22*x[29]+0.31*x[30]-0.25*x[31]-0.51*x[32]-0.05*x[33]+0.75*x[34]-0.79*x[35]-0.04*x[36]+0.88*x[37]+0.2*x[38]-0.44*x[39]+0.67*x[40]-0.39*x[41] == 0.29)
@constraint(m, e8, 0.71*x[2]+0.37*x[3]-0.18*x[4]-0.15*x[5]+0.09*x[6]+0.21*x[7]-0.19*x[8]+0.38*x[9]-0.34*x[10]-0.02*x[11]-0.31*x[12]+0.76*x[13]-0.23*x[14]-0.19*x[15]+0.72*x[16]+0.25*x[17]-0.36*x[18]-0.32*x[19]-0.64*x[20]+0.3*x[21]-0.18*x[22]+0.96*x[23]+0.39*x[24]-0.06*x[25]-0.99*x[26]+0.09*x[27]-0.69*x[28]-0.94*x[29]+0.31*x[30]+0.73*x[31]+0.35*x[32]+0.01*x[33]+0.27*x[34]+0.35*x[35]-0.98*x[36]+0.04*x[37]+0.47*x[38]+0.96*x[39]-0.24*x[40]+0.03*x[41] == -0.22)
@constraint(m, e9, -0.13*x[2]-0.22*x[3]+0.53*x[4]+0.6*x[5]-0.37*x[6]-0.28*x[7]-0.19*x[8]+0.81*x[9]+0.83*x[10]-0.85*x[11]+0.99*x[12]+0.71*x[13]-0.44*x[14]-0.54*x[15]+0.31*x[16]+0.08*x[17]+0.44*x[18]+0.96*x[19]-0.32*x[20]+0.77*x[21]-0.61*x[22]-0.76*x[23]+0.25*x[24]+0.68*x[25]+0.27*x[26]+0.84*x[27]-0.2*x[28]-0.05*x[29]-0.69*x[30]+0.79*x[31]+0.52*x[32]-0.63*x[33]+0.29*x[34]+0.89*x[35]-0.43*x[36]-0.77*x[37]+0.96*x[38]-0.97*x[39]+0.14*x[40]+0.83*x[41] == 0.41)
@constraint(m, e10, -0.93*x[2]+0.13*x[3]-0.73*x[4]+0.52*x[5]-0.89*x[6]-0.48*x[7]+0.26*x[8]+0.56*x[9]+0.69*x[10]-0.8*x[11]+0.45*x[12]-0.81*x[13]-0.68*x[14]+0.3*x[15]+0.96*x[16]-0.15*x[17]-0.64*x[18]-0.23*x[19]+0.65*x[20]-0.66*x[21]+0.14*x[22]+0.15*x[23]+0.45*x[24]-0.19*x[25]-0.66*x[26]+0.54*x[27]+0.72*x[28]-0.4*x[29]-0.4*x[30]-0.28*x[31]+0.79*x[32]-0.69*x[33]-0.01*x[34]+0.6*x[35]+0.08*x[36]+0.21*x[37]-0.76*x[38]+0.5*x[39]+0.57*x[40]-0.79*x[41] == 0.84)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
