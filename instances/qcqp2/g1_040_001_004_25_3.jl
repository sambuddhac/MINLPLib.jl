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
@NLconstraint(m, e1, -(0.76*x[2]*x[8]+1.78*x[2]*x[10]-1.22*x[2]*x[16]+1.84*x[2]*x[19]+1.36*x[2]*x[20]-0.68*x[2]*x[27]+1.9*x[2]*x[30]+1.82*x[2]*x[33]-0.62*x[2]*x[35]+0.06*x[2]*x[36]+0.72*x[2]*x[41]+(-1.42*x[3]*x[5])-0.94*x[3]*x[6]-1.86*x[3]*x[8]+1.9*x[3]*x[11]-0.7*x[3]*x[12]-0.52*x[3]*x[14]-1.48*x[3]*x[19]+1.42*x[3]*x[20]+0.88*x[3]*x[27]+1.7*x[3]*x[28]-0.12*x[3]*x[29]-0.32*x[3]*x[32]-1.64*x[3]*x[35]-1.26*x[3]*x[38]-0.28*x[3]*x[40]-1.04*x[3]*x[41]+1.32*x[4]*x[8]-0.26*x[4]*x[9]+1.2*x[4]*x[13]-0.96*x[4]*x[18]+1.62*x[4]*x[19]+1.74*x[4]*x[22]+1.64*x[4]*x[32]-0.88*x[4]*x[37]+0.42*x[5]*x[7]+1.76*x[5]*x[15]-1.56*x[5]*x[17]-0.32*x[5]*x[20]+0.52*x[5]*x[24]+1.36*x[5]*x[33]-0.92*x[5]*x[34]+0.18*x[5]*x[35]+0.9*x[5]*x[36]+1.78*x[5]*x[41]+(-1.76*x[6]*x[11])-0.4*x[6]*x[18]-1.14*x[6]*x[19]-1.96*x[6]*x[20]-1.36*x[6]*x[22]+1.22*x[6]*x[26]+1.42*x[7]*x[13]-0.08*x[7]*x[17]-1.56*x[7]*x[19]+0.32*x[7]*x[20]+0.4*x[7]*x[23]-0.04*x[7]*x[30]+0.84*x[7]*x[38]+0.34*x[7]*x[39]+1.44*x[8]*x[11]+0.22*x[8]*x[15]-1.7*x[8]*x[17]-1.42*x[8]*x[22]-0.44*x[8]*x[35]-1.1*x[8]*x[37]+1.6*x[8]*x[39]+0.76*x[9]*x[18]-0.18*x[9]*x[17]+0.12*x[9]*x[21]+1.08*x[9]*x[22]+1.32*x[9]*x[35]+0.94*x[10]*x[14]+1.34*x[10]*x[28]-1.86*x[10]*x[40]+0.42*x[11]*x[20]-0.84*x[11]*x[28]-1.44*x[11]*x[32]+1.32*x[11]*x[35]+1.04*x[11]*x[39]+1.04*x[12]*x[16]-1.62*x[12]*x[19]-1.06*x[12]*x[28]+0.76*x[12]*x[29]+1.28*x[12]*x[41]+1.32*x[13]*x[22]-1.02*x[13]*x[21]+1.3*x[13]*x[24]-0.36*x[13]*x[26]+0.3*x[13]*x[28]+1.94*x[13]*x[31]-0.14*x[13]*x[36]+0.06*x[13]*x[39]+0.04*x[14]*x[15]-1.52*x[14]*x[19]+0.78*x[14]*x[20]+1.54*x[14]*x[28]+0.16*x[14]*x[29]-0.06*x[14]*x[31]+0.44*x[14]*x[38]+1.88*x[15]*x[19]+0.06*x[15]*x[23]+1.22*x[15]*x[24]-1.56*x[15]*x[30]+0.56*x[15]*x[33]+1.24*x[15]*x[34]+1.04*x[15]*x[41]+(-1.54*x[16]*x[18])-1.96*x[16]*x[23]+1.58*x[16]*x[24]+0.04*x[16]*x[29]+1.14*x[16]*x[33]-1.04*x[16]*x[38]+0.28*x[17]*x[21]-0.68*x[17]*x[18]-1.28*x[17]*x[24]+1.22*x[17]*x[28]-0.48*x[17]*x[29]+1.96*x[17]*x[34]+1.9*x[18]*x[20]+1.06*x[18]*x[22]-1.82*x[18]*x[23]-1.4*x[18]*x[25]-0.34*x[18]*x[26]-0.82*x[18]*x[28]-1.3*x[18]*x[30]+1.34*x[18]*x[34]+0.24*x[18]*x[39]+(-0.32*x[19]*x[21])-0.82*x[19]*x[30]+1.4*x[19]*x[39]+0.1*x[20]*x[21]-1.84*x[20]*x[23]-0.68*x[20]*x[28]-0.9*x[20]*x[30]+0.8*x[20]*x[39]-1.8*x[20]*x[40]+1.84*x[21]*x[30]-1.16*x[21]*x[26]+0.2*x[22]*x[24]+0.46*x[22]*x[28]-0.3*x[22]*x[35]-0.48*x[22]*x[37]+1.16*x[22]*x[41]+1.8*x[23]*x[28]+0.5*x[23]*x[30]+0.18*x[23]*x[33]-1.48*x[23]*x[35]-1.64*x[23]*x[36]-1.8*x[23]*x[37]+0.32*x[23]*x[39]-1.84*x[23]*x[40]+1.96*x[24]*x[26]-1.96*x[24]*x[28]+0.2*x[24]*x[33]-0.06*x[24]*x[34]+1.28*x[24]*x[38]+1.66*x[24]*x[40]+0.76*x[25]*x[27]+1.3*x[25]*x[29]-1.1*x[25]*x[30]-0.96*x[25]*x[38]+1.76*x[25]*x[40]+(-1.82*x[26]*x[29])-1.28*x[26]*x[30]-1.88*x[26]*x[31]-1.9*x[26]*x[38]+1.92*x[27]*x[29]+0.38*x[27]*x[30]+(-0.06*x[28]*x[31])-1.68*x[28]*x[37]+0.9*x[29]*x[32]-1.26*x[29]*x[33]-0.8*x[29]*x[36]+0.72*x[29]*x[39]+1.92*x[30]*x[36]-1.06*x[30]*x[40]-1.36*x[31]*x[39]+1.56*x[32]*x[35]+1.66*x[32]*x[41]+1.34*x[33]*x[38]+1.44*x[33]*x[40]-0.16*x[33]*x[41]+1.38*x[34]*x[40]+0.56*x[35]*x[37]-0.9*x[37]*x[40]-1.24*x[39]*x[40]+0.5*x[40]*x[41]+(-0.64*x[4]*x[4])-0.35*x[11]*x[11]-0.9*x[13]*x[13]-0.24*x[16]*x[16]+0.14*x[17]*x[17]-0.06*x[18]*x[18]+0.24*x[21]*x[21]+0.18*x[24]*x[24]+0.46*x[27]*x[27]+0.55*x[32]*x[32]-0.35*x[34]*x[34]-0.68*x[35]*x[35]+0.08*x[2]+0.81*x[3]+0.16*x[4]+0.23*x[5]+0.96*x[6]+0.25*x[7]-0.37*x[8]+0.53*x[9]+0.16*x[10]+0.04*x[11]-0.39*x[12]+0.54*x[13]-0.87*x[14]-0.83*x[15]+0.61*x[16]+0.13*x[17]-0.81*x[18]-0.8*x[19]-0.02*x[20]+0.63*x[21]-0.57*x[22]-0.14*x[23]-0.3*x[24]-0.73*x[25]-0.15*x[26]+0.34*x[27]+0.22*x[28]+0.78*x[29]-0.66*x[30]-0.7*x[31]+0.78*x[32]-0.92*x[33]+0.79*x[34]+0.55*x[35]+0.6*x[36]+0.49*x[37]+0.97*x[38]-0.07*x[39]+0.4*x[40]+0.82*x[41])+x[1] == 0.0)
@NLconstraint(m, e2, 0.88*x[2]*x[20]-0.8*x[2]*x[21]-0.06*x[2]*x[23]-1.38*x[2]*x[28]-0.92*x[2]*x[31]-0.54*x[2]*x[36]-0.66*x[2]*x[39]+1.7*x[3]*x[10]-1.54*x[3]*x[8]+1.58*x[3]*x[12]+0.44*x[3]*x[18]+0.12*x[3]*x[35]+0.74*x[3]*x[37]-0.54*x[3]*x[38]+x[3]*x[39]-1.16*x[3]*x[41]+0.66*x[4]*x[5]+1.66*x[4]*x[8]-1.22*x[4]*x[20]+1.7*x[4]*x[21]+x[4]*x[22]-1.8*x[4]*x[23]-1.48*x[4]*x[24]-1.02*x[4]*x[26]-1.26*x[4]*x[28]+1.04*x[4]*x[36]+0.2*x[4]*x[40]+0.08*x[4]*x[41]+1.46*x[5]*x[6]-0.76*x[5]*x[11]+0.84*x[5]*x[14]+1.08*x[5]*x[16]+0.82*x[5]*x[17]-1.92*x[5]*x[18]+0.82*x[5]*x[19]+1.46*x[5]*x[36]+1.44*x[6]*x[16]-0.8*x[6]*x[9]+0.2*x[6]*x[29]+1.56*x[6]*x[31]+0.86*x[6]*x[34]+1.52*x[7]*x[8]-1.12*x[7]*x[9]-1.04*x[7]*x[11]-0.96*x[7]*x[22]-1.28*x[7]*x[24]-1.64*x[7]*x[27]+1.36*x[7]*x[29]-1.78*x[7]*x[30]-0.58*x[7]*x[33]+1.06*x[7]*x[38]+0.4*x[7]*x[40]+1.9*x[8]*x[17]-0.74*x[8]*x[10]-0.4*x[8]*x[27]-1.82*x[8]*x[33]+1.5*x[8]*x[35]-1.24*x[8]*x[37]-1.92*x[8]*x[39]+1.84*x[9]*x[19]-0.18*x[9]*x[14]-1.26*x[9]*x[22]+0.1*x[9]*x[24]+0.14*x[9]*x[25]+0.74*x[9]*x[27]+0.68*x[9]*x[30]+1.54*x[9]*x[37]-0.76*x[9]*x[39]-1.78*x[9]*x[40]+1.02*x[10]*x[12]-0.52*x[10]*x[11]+0.04*x[10]*x[13]+0.78*x[10]*x[16]+1.24*x[10]*x[17]+1.14*x[10]*x[19]-0.16*x[10]*x[20]-1.68*x[10]*x[26]+1.04*x[10]*x[31]+1.52*x[10]*x[32]+0.12*x[10]*x[33]-1.18*x[10]*x[35]-1.54*x[10]*x[36]+1.7*x[10]*x[41]+1.58*x[11]*x[29]+0.42*x[11]*x[32]+0.74*x[12]*x[16]-1.26*x[12]*x[20]+1.46*x[12]*x[29]+0.1*x[12]*x[33]+0.38*x[12]*x[34]+1.52*x[12]*x[36]-0.94*x[12]*x[39]+0.8*x[12]*x[41]+1.96*x[13]*x[16]+1.3*x[13]*x[26]+1.16*x[13]*x[27]-0.22*x[13]*x[28]-1.18*x[13]*x[29]+0.1*x[13]*x[36]+1.78*x[13]*x[41]+1.92*x[14]*x[28]-1.8*x[14]*x[15]-0.66*x[14]*x[35]-0.36*x[14]*x[39]+0.76*x[14]*x[41]+0.94*x[15]*x[16]-1.46*x[15]*x[18]-1.14*x[15]*x[20]-1.88*x[15]*x[21]-1.48*x[15]*x[22]-0.92*x[15]*x[24]-1.9*x[15]*x[26]-0.06*x[15]*x[30]-1.38*x[15]*x[31]+0.98*x[16]*x[20]-0.14*x[16]*x[19]-0.46*x[16]*x[24]+0.04*x[16]*x[28]-1.36*x[16]*x[29]-x[16]*x[34]+1.46*x[16]*x[36]-0.36*x[16]*x[41]+(-0.7*x[17]*x[18])-0.98*x[17]*x[22]-0.88*x[17]*x[27]-1.46*x[17]*x[31]-0.22*x[17]*x[35]-0.56*x[17]*x[38]+0.62*x[17]*x[40]+0.8*x[17]*x[41]+1.2*x[18]*x[20]-0.56*x[18]*x[23]-0.78*x[18]*x[26]-0.82*x[18]*x[31]-0.88*x[18]*x[33]+(-0.76*x[19]*x[21])-1.02*x[19]*x[30]-0.62*x[19]*x[34]+0.58*x[20]*x[30]+1.42*x[20]*x[33]+1.72*x[20]*x[35]-1.5*x[20]*x[38]-1.86*x[20]*x[39]-1.4*x[20]*x[40]+1.04*x[21]*x[29]+1.12*x[21]*x[33]+0.68*x[21]*x[36]+1.02*x[22]*x[25]+0.94*x[22]*x[37]+0.08*x[22]*x[39]-1.64*x[22]*x[40]+1.08*x[23]*x[27]-1.08*x[23]*x[30]-0.98*x[23]*x[31]-1.26*x[23]*x[34]+0.52*x[24]*x[38]+(-1.78*x[25]*x[26])-0.18*x[25]*x[30]+0.8*x[25]*x[32]+1.42*x[26]*x[31]-1.9*x[26]*x[27]+0.84*x[27]*x[33]-1.36*x[27]*x[29]+1.66*x[28]*x[30]-1.5*x[28]*x[29]-1.3*x[28]*x[39]+1.16*x[28]*x[40]+0.04*x[29]*x[33]+0.8*x[29]*x[37]+0.22*x[30]*x[33]+1.54*x[30]*x[37]+1.12*x[30]*x[40]+0.24*x[30]*x[41]+0.4*x[32]*x[36]-1.28*x[32]*x[33]-1.14*x[32]*x[37]-1.34*x[32]*x[39]-1.26*x[32]*x[41]+0.16*x[33]*x[34]-1.28*x[33]*x[40]+1.98*x[34]*x[39]+1.82*x[35]*x[37]-1.46*x[35]*x[38]+0.76*x[35]*x[39]+0.12*x[35]*x[41]+0.3*x[36]*x[41]-0.38*x[36]*x[40]+0.82*x[37]*x[38]-1.02*x[37]*x[39]+0.56*x[39]*x[41]+0.85*x[2]*x[2]+x[6]*x[6]-0.05*x[8]*x[8]-0.79*x[10]*x[10]+0.6*x[14]*x[14]+0.64*x[19]*x[19]+0.72*x[23]*x[23]-0.56*x[25]*x[25]-0.21*x[41]*x[41]-0.96*x[2]-0.18*x[3]-0.87*x[4]+0.86*x[5]-0.49*x[6]-0.38*x[7]+0.61*x[8]-0.4*x[9]-0.36*x[10]+0.62*x[11]+0.78*x[12]+0.51*x[13]-0.27*x[14]+0.35*x[15]-0.68*x[16]+x[17]-0.57*x[18]+0.74*x[19]+0.71*x[20]+0.45*x[21]-0.25*x[22]-0.62*x[23]+0.13*x[24]+0.49*x[25]-0.61*x[26]-0.84*x[27]-0.5*x[28]+0.06*x[29]+0.48*x[30]-0.27*x[31]+0.44*x[32]+0.43*x[33]-0.88*x[34]-0.18*x[35]-0.33*x[36]-0.08*x[37]-0.63*x[38]+0.62*x[39]+0.05*x[40]-0.17*x[41] <= 15.75)
@constraint(m, e3, -0.22*x[2]-0.34*x[3]+0.22*x[4]+0.41*x[5]+0.36*x[6]-0.48*x[7]+0.41*x[8]-0.76*x[9]-0.65*x[10]+0.95*x[11]-0.53*x[12]+0.89*x[13]+0.59*x[14]+0.02*x[15]+0.86*x[16]-0.51*x[17]+0.63*x[18]-0.59*x[19]+0.29*x[20]-0.55*x[21]-0.91*x[22]+0.24*x[23]-0.15*x[24]+0.42*x[25]-0.05*x[26]+0.7*x[27]+0.19*x[28]+0.17*x[29]-0.46*x[30]-0.18*x[31]-0.94*x[32]-0.46*x[33]+0.79*x[34]-0.88*x[35]-0.05*x[36]-0.13*x[37]+0.09*x[38]-0.48*x[39]-0.02*x[40]+0.98*x[41] == -0.82)
@constraint(m, e4, 0.39*x[2]+0.03*x[3]+0.65*x[4]+0.99*x[5]+0.67*x[6]+0.45*x[7]-0.65*x[8]-0.28*x[9]-0.88*x[10]+0.76*x[11]+0.59*x[12]-0.14*x[13]-0.62*x[14]+0.74*x[15]-0.98*x[16]-0.45*x[17]-0.9*x[18]-0.18*x[19]+0.43*x[20]+0.56*x[21]-0.94*x[22]-0.37*x[23]-0.29*x[24]+0.18*x[25]+0.29*x[26]-0.11*x[27]-0.51*x[28]+0.96*x[29]-0.03*x[30]+0.29*x[31]+0.49*x[32]-0.68*x[33]+0.72*x[34]-0.14*x[35]-0.97*x[36]+0.44*x[37]+0.97*x[38]+0.33*x[39]+0.64*x[40]-0.12*x[41] == -0.39)
@constraint(m, e5, 0.26*x[2]+0.31*x[3]+x[4]-0.81*x[5]-0.96*x[6]+0.34*x[7]-0.38*x[8]+0.88*x[9]-0.09*x[10]-0.2*x[11]-0.37*x[12]+0.66*x[13]-0.92*x[14]-0.19*x[15]+0.01*x[16]+0.24*x[17]-0.34*x[18]+0.93*x[19]-0.54*x[20]-0.94*x[21]-0.52*x[22]-0.32*x[23]+0.94*x[24]+x[25]-0.13*x[26]+0.09*x[27]-0.31*x[28]-0.52*x[29]+0.06*x[30]-0.59*x[31]-0.6*x[32]+0.75*x[33]-0.44*x[34]+0.55*x[35]-0.51*x[36]-0.72*x[37]+0.35*x[38]-0.41*x[39]+0.33*x[40]-0.67*x[41] == -0.76)
@constraint(m, e6, -0.55*x[2]-0.4*x[3]-0.08*x[4]+0.67*x[5]+0.63*x[6]+0.58*x[7]-0.66*x[8]+0.89*x[9]+0.35*x[10]+0.56*x[11]-0.45*x[12]+0.56*x[13]+0.79*x[14]+0.4*x[15]-0.69*x[16]+0.93*x[17]+0.1*x[18]+0.35*x[19]-0.56*x[20]+0.85*x[21]+0.02*x[22]+0.55*x[23]-0.59*x[24]+0.14*x[25]-0.63*x[26]+0.39*x[27]-0.86*x[28]+0.06*x[29]-0.28*x[30]-0.66*x[31]+0.37*x[32]+0.2*x[33]+0.48*x[34]-0.39*x[35]-0.64*x[36]-0.45*x[37]+0.89*x[38]+0.93*x[39]-0.5*x[40]-0.56*x[41] == 0.34)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
