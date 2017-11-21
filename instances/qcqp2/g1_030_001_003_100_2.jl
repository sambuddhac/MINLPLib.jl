using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[28], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.6*x[2]*x[4]-1.06*x[2]*x[3]+0.36*x[2]*x[5]-0.04*x[2]*x[6]+0.72*x[2]*x[7]+1.96*x[2]*x[9]+1.66*x[2]*x[10]+1.84*x[2]*x[11]+1.96*x[2]*x[12]-0.54*x[2]*x[13]+0.32*x[2]*x[14]-1.36*x[2]*x[15]-1.74*x[2]*x[16]-1.84*x[2]*x[17]+0.06*x[2]*x[18]-0.62*x[2]*x[19]-0.92*x[2]*x[20]+1.22*x[2]*x[21]+1.56*x[2]*x[22]-1.9*x[2]*x[23]-1.94*x[2]*x[24]+0.98*x[2]*x[25]-1.78*x[2]*x[26]+0.4*x[2]*x[27]-0.3*x[2]*x[28]-0.64*x[2]*x[29]-1.8*x[2]*x[30]-1.48*x[2]*x[31]+(-0.76*x[3]*x[4])-1.16*x[3]*x[5]-0.8*x[3]*x[6]-0.48*x[3]*x[7]-0.38*x[3]*x[8]+1.6*x[3]*x[9]-0.08*x[3]*x[11]-1.3*x[3]*x[12]-0.64*x[3]*x[13]-1.86*x[3]*x[14]-0.96*x[3]*x[15]-1.1*x[3]*x[16]-0.98*x[3]*x[17]-0.96*x[3]*x[18]+0.62*x[3]*x[19]-0.58*x[3]*x[20]-1.78*x[3]*x[21]+0.34*x[3]*x[22]-1.16*x[3]*x[23]+1.8*x[3]*x[24]-0.46*x[3]*x[25]+1.16*x[3]*x[26]-0.42*x[3]*x[27]+1.36*x[3]*x[28]+0.2*x[3]*x[29]-1.44*x[3]*x[31]+1.96*x[4]*x[6]-1.28*x[4]*x[5]-1.98*x[4]*x[7]-1.52*x[4]*x[8]+0.2*x[4]*x[9]-0.88*x[4]*x[10]+1.42*x[4]*x[11]+1.14*x[4]*x[12]+1.78*x[4]*x[13]-1.46*x[4]*x[14]-1.66*x[4]*x[15]+0.7*x[4]*x[16]-0.18*x[4]*x[17]-0.8*x[4]*x[18]-1.06*x[4]*x[19]-1.34*x[4]*x[20]-1.08*x[4]*x[21]+0.24*x[4]*x[22]+1.74*x[4]*x[23]-1.92*x[4]*x[24]+0.4*x[4]*x[25]-0.2*x[4]*x[26]+0.92*x[4]*x[27]-1.72*x[4]*x[28]-0.58*x[4]*x[29]-1.78*x[4]*x[30]+0.58*x[4]*x[31]+0.7*x[5]*x[7]-0.38*x[5]*x[6]+0.42*x[5]*x[8]+1.78*x[5]*x[9]+1.16*x[5]*x[10]+1.8*x[5]*x[11]+0.24*x[5]*x[12]-0.12*x[5]*x[13]+1.78*x[5]*x[14]-0.9*x[5]*x[15]+1.58*x[5]*x[16]+0.52*x[5]*x[17]+0.34*x[5]*x[18]+0.46*x[5]*x[20]+0.96*x[5]*x[21]+1.6*x[5]*x[22]-0.34*x[5]*x[23]+1.96*x[5]*x[24]-1.76*x[5]*x[25]-1.96*x[5]*x[26]-1.38*x[5]*x[27]+0.46*x[5]*x[28]+1.14*x[5]*x[29]-1.98*x[5]*x[30]+0.28*x[5]*x[31]+1.86*x[6]*x[7]-1.8*x[6]*x[8]+1.7*x[6]*x[9]-0.54*x[6]*x[10]-1.94*x[6]*x[11]+1.76*x[6]*x[12]-0.24*x[6]*x[13]-0.88*x[6]*x[14]+1.66*x[6]*x[15]+1.32*x[6]*x[16]-1.9*x[6]*x[17]-1.16*x[6]*x[18]-0.28*x[6]*x[19]+0.16*x[6]*x[20]+0.06*x[6]*x[21]-1.98*x[6]*x[22]-0.28*x[6]*x[23]+0.1*x[6]*x[24]-1.86*x[6]*x[25]-1.22*x[6]*x[26]+0.34*x[6]*x[27]-0.22*x[6]*x[28]-0.76*x[6]*x[29]-1.24*x[6]*x[30]+0.32*x[6]*x[31]+1.28*x[7]*x[9]-0.72*x[7]*x[8]+1.22*x[7]*x[10]-0.48*x[7]*x[11]+1.56*x[7]*x[12]-0.42*x[7]*x[13]+0.96*x[7]*x[14]+1.7*x[7]*x[15]-1.78*x[7]*x[16]+1.96*x[7]*x[17]+0.06*x[7]*x[18]-1.4*x[7]*x[19]-1.56*x[7]*x[20]-1.22*x[7]*x[21]+0.56*x[7]*x[22]+1.1*x[7]*x[24]+0.62*x[7]*x[25]-0.92*x[7]*x[26]-0.82*x[7]*x[27]-1.6*x[7]*x[28]+0.78*x[7]*x[29]+1.78*x[7]*x[30]+0.62*x[7]*x[31]+(-1.68*x[8]*x[9])-1.84*x[8]*x[10]+0.98*x[8]*x[11]-0.86*x[8]*x[12]-0.4*x[8]*x[13]-1.26*x[8]*x[14]-0.48*x[8]*x[15]-1.04*x[8]*x[16]-0.32*x[8]*x[17]-0.88*x[8]*x[18]-1.88*x[8]*x[19]-0.62*x[8]*x[20]-0.34*x[8]*x[21]+0.34*x[8]*x[22]-1.48*x[8]*x[23]+1.46*x[8]*x[24]-1.1*x[8]*x[25]-0.58*x[8]*x[26]-1.24*x[8]*x[27]-0.08*x[8]*x[28]-1.72*x[8]*x[29]+0.92*x[8]*x[30]-0.48*x[8]*x[31]+(-1.32*x[9]*x[10])-0.56*x[9]*x[11]+0.48*x[9]*x[12]+1.34*x[9]*x[13]+0.48*x[9]*x[14]-1.86*x[9]*x[15]-1.04*x[9]*x[16]+1.36*x[9]*x[17]-1.36*x[9]*x[18]+1.26*x[9]*x[19]+0.72*x[9]*x[20]+0.22*x[9]*x[22]+1.1*x[9]*x[23]-0.88*x[9]*x[24]-1.86*x[9]*x[25]+1.98*x[9]*x[26]-1.1*x[9]*x[27]-0.26*x[9]*x[28]+1.46*x[9]*x[29]-0.62*x[9]*x[30]-0.66*x[9]*x[31]+0.52*x[10]*x[11]+1.94*x[10]*x[12]-0.42*x[10]*x[13]-0.36*x[10]*x[14]+2*x[10]*x[15]+1.84*x[10]*x[16]+1.26*x[10]*x[17]-0.6*x[10]*x[18]+1.62*x[10]*x[19]+0.88*x[10]*x[20]-1.88*x[10]*x[21]+0.86*x[10]*x[22]+1.9*x[10]*x[23]+0.52*x[10]*x[24]-1.56*x[10]*x[25]-0.18*x[10]*x[26]-0.96*x[10]*x[27]-1.12*x[10]*x[28]+1.98*x[10]*x[29]+1.06*x[10]*x[30]-1.3*x[10]*x[31]+1.3*x[11]*x[12]+0.1*x[11]*x[13]-1.78*x[11]*x[14]-1.1*x[11]*x[15]-1.28*x[11]*x[16]-x[11]*x[17]+1.9*x[11]*x[18]-1.66*x[11]*x[19]-1.34*x[11]*x[20]-0.26*x[11]*x[21]+1.54*x[11]*x[22]+1.54*x[11]*x[23]-0.42*x[11]*x[24]-1.64*x[11]*x[25]-1.38*x[11]*x[26]-1.42*x[11]*x[27]+0.24*x[11]*x[28]+1.12*x[11]*x[29]+1.58*x[11]*x[30]-0.88*x[11]*x[31]+1.44*x[12]*x[13]+1.26*x[12]*x[14]-0.42*x[12]*x[15]+1.12*x[12]*x[17]+1.54*x[12]*x[18]-0.06*x[12]*x[19]+1.74*x[12]*x[20]-0.54*x[12]*x[21]-0.44*x[12]*x[22]-0.2*x[12]*x[23]+1.14*x[12]*x[24]-0.82*x[12]*x[25]-1.62*x[12]*x[26]+0.64*x[12]*x[27]+1.42*x[12]*x[28]+0.38*x[12]*x[29]+1.78*x[12]*x[30]-0.2*x[12]*x[31]+0.46*x[13]*x[15]-1.12*x[13]*x[14]-1.44*x[13]*x[16]-0.6*x[13]*x[18]+1.42*x[13]*x[19]+1.1*x[13]*x[20]-0.74*x[13]*x[21]+1.62*x[13]*x[22]+0.66*x[13]*x[23]-0.62*x[13]*x[24]-1.88*x[13]*x[25]-1.28*x[13]*x[26]-0.84*x[13]*x[27]-1.48*x[13]*x[28]+1.08*x[13]*x[29]-0.64*x[13]*x[30]+0.84*x[13]*x[31]+0.92*x[14]*x[15]-1.08*x[14]*x[16]-1.7*x[14]*x[17]+0.86*x[14]*x[18]+0.98*x[14]*x[19]+1.1*x[14]*x[20]+0.18*x[14]*x[21]+0.18*x[14]*x[22]+0.26*x[14]*x[23]-0.1*x[14]*x[24]+0.34*x[14]*x[25]+0.84*x[14]*x[26]-1.24*x[14]*x[27]-1.58*x[14]*x[28]+1.48*x[14]*x[29]-1.18*x[14]*x[30]+0.78*x[14]*x[31]+(-0.46*x[15]*x[16])-1.06*x[15]*x[17]-1.94*x[15]*x[18]+1.96*x[15]*x[19]+1.92*x[15]*x[20]+1.9*x[15]*x[21]-0.64*x[15]*x[22]+0.36*x[15]*x[23]+2*x[15]*x[24]+1.8*x[15]*x[25]-1.84*x[15]*x[26]-1.18*x[15]*x[28]+1.94*x[15]*x[29]-1.38*x[15]*x[30]+1.16*x[15]*x[31]+0.08*x[16]*x[17]-1.4*x[16]*x[18]+1.58*x[16]*x[20]+1.48*x[16]*x[21]-1.78*x[16]*x[22]+0.24*x[16]*x[23]+0.58*x[16]*x[24]+1.46*x[16]*x[26]+x[16]*x[27]-2*x[16]*x[28]-0.52*x[16]*x[29]+1.44*x[16]*x[30]-0.3*x[16]*x[31]+0.8*x[17]*x[18]-1.1*x[17]*x[20]-1.24*x[17]*x[21]+1.92*x[17]*x[22]+0.6*x[17]*x[23]+0.46*x[17]*x[24]+1.68*x[17]*x[25]+0.52*x[17]*x[26]-0.92*x[17]*x[27]+0.68*x[17]*x[28]-1.5*x[17]*x[29]+0.76*x[17]*x[30]-1.72*x[17]*x[31]+(-1.34*x[18]*x[19])-1.52*x[18]*x[20]-1.76*x[18]*x[21]-0.34*x[18]*x[22]+0.32*x[18]*x[23]+1.84*x[18]*x[24]-x[18]*x[25]+0.72*x[18]*x[26]+0.48*x[18]*x[27]+0.82*x[18]*x[28]+0.72*x[18]*x[29]-0.62*x[18]*x[30]-0.02*x[18]*x[31]+0.24*x[19]*x[20]-0.14*x[19]*x[21]-0.54*x[19]*x[22]-0.48*x[19]*x[23]-1.24*x[19]*x[24]+0.22*x[19]*x[25]+1.54*x[19]*x[26]-0.92*x[19]*x[27]-1.06*x[19]*x[28]-1.76*x[19]*x[29]+0.64*x[19]*x[30]-1.98*x[19]*x[31]+(-0.72*x[20]*x[21])-0.88*x[20]*x[22]-0.02*x[20]*x[23]-1.1*x[20]*x[24]-1.3*x[20]*x[25]-1.12*x[20]*x[26]-0.48*x[20]*x[27]+1.48*x[20]*x[28]-0.76*x[20]*x[29]-1.02*x[20]*x[30]-0.44*x[20]*x[31]+(-0.12*x[21]*x[22])-x[21]*x[23]+0.68*x[21]*x[24]+1.36*x[21]*x[25]+1.88*x[21]*x[26]-1.12*x[21]*x[27]+0.5*x[21]*x[28]-0.92*x[21]*x[29]+0.42*x[21]*x[30]+0.14*x[21]*x[31]+1.84*x[22]*x[24]-0.42*x[22]*x[23]+1.7*x[22]*x[25]-0.62*x[22]*x[26]+1.48*x[22]*x[27]-1.02*x[22]*x[29]-0.76*x[22]*x[30]-1.96*x[22]*x[31]+0.94*x[23]*x[24]-0.08*x[23]*x[25]+0.14*x[23]*x[26]-1.1*x[23]*x[27]+1.22*x[23]*x[28]+1.8*x[23]*x[29]+1.88*x[23]*x[31]+1.94*x[24]*x[25]-1.9*x[24]*x[26]-1.34*x[24]*x[27]-1.82*x[24]*x[28]-0.56*x[24]*x[29]-1.94*x[24]*x[30]+1.08*x[24]*x[31]+(-1.42*x[25]*x[26])-0.4*x[25]*x[27]-1.36*x[25]*x[28]-1.76*x[25]*x[29]-1.5*x[25]*x[30]+0.32*x[25]*x[31]+0.64*x[26]*x[28]-1.08*x[26]*x[27]+0.72*x[26]*x[29]+0.36*x[26]*x[30]+1.78*x[26]*x[31]+0.36*x[27]*x[28]+1.78*x[27]*x[29]+0.94*x[27]*x[30]+x[27]*x[31]+0.32*x[28]*x[30]-0.12*x[28]*x[29]+0.38*x[28]*x[31]+0.9*x[29]*x[31]-1.64*x[29]*x[30]-0.36*x[30]*x[31]+0.97*x[2]*x[2]+0.24*x[4]*x[4]+0.57*x[5]*x[5]-0.13*x[6]*x[6]+0.13*x[7]*x[7]-0.91*x[8]*x[8]+0.59*x[9]*x[9]-0.88*x[10]*x[10]+0.63*x[11]*x[11]+0.63*x[12]*x[12]-0.24*x[13]*x[13]+0.73*x[14]*x[14]-0.67*x[15]*x[15]-0.73*x[16]*x[16]-0.02*x[17]*x[17]-0.7*x[18]*x[18]-0.47*x[19]*x[19]+0.17*x[20]*x[20]+0.01*x[22]*x[22]+0.09*x[23]*x[23]-0.57*x[24]*x[24]+0.5*x[25]*x[25]+0.75*x[26]*x[26]+0.28*x[27]*x[27]-0.99*x[28]*x[28]-0.88*x[29]*x[29]+0.62*x[30]*x[30]+0.83*x[31]*x[31]-0.82*x[2]-0.26*x[3]+0.26*x[4]-0.54*x[5]+0.5*x[6]-0.95*x[7]+0.71*x[8]+0.61*x[9]+0.59*x[10]+0.3*x[11]-0.85*x[12]+0.19*x[13]+0.34*x[14]-0.28*x[15]+0.32*x[16]+0.49*x[17]+0.8*x[18]-0.93*x[19]-0.15*x[20]+0.94*x[21]-0.21*x[22]-0.95*x[23]+0.29*x[24]+0.63*x[25]+0.97*x[26]-0.48*x[27]-0.02*x[28]+0.65*x[29]-0.19*x[30]-0.27*x[31])+x[1] == 0.0)
@NLconstraint(m, e2, 1.6*x[2]*x[4]-1.68*x[2]*x[3]+0.78*x[2]*x[5]-0.68*x[2]*x[6]+0.72*x[2]*x[7]+0.26*x[2]*x[8]+1.36*x[2]*x[9]-0.4*x[2]*x[10]-0.18*x[2]*x[11]-1.32*x[2]*x[12]-1.22*x[2]*x[13]-1.32*x[2]*x[14]-1.64*x[2]*x[15]+0.54*x[2]*x[16]-1.6*x[2]*x[17]-1.6*x[2]*x[19]-0.96*x[2]*x[20]-0.06*x[2]*x[22]+1.98*x[2]*x[23]+1.2*x[2]*x[24]-0.26*x[2]*x[25]-1.34*x[2]*x[26]+1.52*x[2]*x[27]+1.88*x[2]*x[28]+1.78*x[2]*x[29]+1.04*x[2]*x[30]+0.54*x[2]*x[31]+(-0.04*x[3]*x[4])-1.82*x[3]*x[5]+0.64*x[3]*x[7]+0.44*x[3]*x[8]-0.16*x[3]*x[9]-1.02*x[3]*x[10]-0.78*x[3]*x[11]+1.86*x[3]*x[12]+0.64*x[3]*x[13]+0.6*x[3]*x[14]+1.32*x[3]*x[15]+0.16*x[3]*x[16]-0.8*x[3]*x[17]-1.82*x[3]*x[18]+1.74*x[3]*x[19]-1.68*x[3]*x[20]-1.34*x[3]*x[21]-0.56*x[3]*x[22]+0.8*x[3]*x[23]-1.14*x[3]*x[24]+1.64*x[3]*x[26]+0.78*x[3]*x[27]+0.7*x[3]*x[28]-1.68*x[3]*x[29]-0.68*x[3]*x[30]-0.08*x[3]*x[31]+(-1.66*x[4]*x[5])-0.74*x[4]*x[6]-0.54*x[4]*x[7]+1.94*x[4]*x[8]-1.78*x[4]*x[9]-1.18*x[4]*x[10]+1.6*x[4]*x[11]-1.9*x[4]*x[12]-1.88*x[4]*x[13]-0.84*x[4]*x[14]+1.7*x[4]*x[15]+1.36*x[4]*x[16]+0.88*x[4]*x[17]-1.18*x[4]*x[19]+1.62*x[4]*x[20]-1.26*x[4]*x[22]+1.24*x[4]*x[23]+0.26*x[4]*x[24]+1.8*x[4]*x[25]+1.98*x[4]*x[26]-1.26*x[4]*x[27]+1.58*x[4]*x[28]-1.08*x[4]*x[29]-0.26*x[4]*x[30]-0.02*x[4]*x[31]+1.46*x[5]*x[6]-0.2*x[5]*x[7]+0.86*x[5]*x[8]+1.56*x[5]*x[9]+1.1*x[5]*x[10]+1.94*x[5]*x[11]-1.76*x[5]*x[12]-0.22*x[5]*x[13]-1.92*x[5]*x[14]-0.16*x[5]*x[15]-1.88*x[5]*x[17]-0.3*x[5]*x[18]+1.7*x[5]*x[19]-1.86*x[5]*x[20]+1.6*x[5]*x[21]+0.54*x[5]*x[22]-1.84*x[5]*x[23]-0.12*x[5]*x[24]-1.62*x[5]*x[25]+1.34*x[5]*x[26]+1.34*x[5]*x[27]-0.18*x[5]*x[28]+0.74*x[5]*x[29]+1.84*x[5]*x[31]+0.68*x[6]*x[7]-0.34*x[6]*x[8]+0.68*x[6]*x[9]-1.94*x[6]*x[10]-1.8*x[6]*x[11]-1.84*x[6]*x[12]+1.76*x[6]*x[13]-1.58*x[6]*x[14]-0.28*x[6]*x[15]-1.74*x[6]*x[16]+0.12*x[6]*x[17]-1.46*x[6]*x[18]-0.94*x[6]*x[19]-1.62*x[6]*x[20]-1.32*x[6]*x[21]+1.22*x[6]*x[23]+0.44*x[6]*x[24]-1.94*x[6]*x[25]+0.6*x[6]*x[26]-0.5*x[6]*x[27]+0.98*x[6]*x[28]-0.54*x[6]*x[29]-0.56*x[6]*x[30]-1.34*x[6]*x[31]+1.84*x[7]*x[9]-0.4*x[7]*x[8]-1.6*x[7]*x[10]-0.44*x[7]*x[11]+1.36*x[7]*x[12]+0.92*x[7]*x[13]+1.1*x[7]*x[14]+1.78*x[7]*x[15]+0.48*x[7]*x[16]-0.52*x[7]*x[17]-0.56*x[7]*x[18]-0.68*x[7]*x[19]+1.58*x[7]*x[20]-1.72*x[7]*x[21]-1.84*x[7]*x[22]+0.98*x[7]*x[23]-0.7*x[7]*x[24]-1.72*x[7]*x[25]+1.18*x[7]*x[26]+1.56*x[7]*x[27]-0.16*x[7]*x[28]+0.3*x[7]*x[29]-1.46*x[7]*x[30]-1.38*x[7]*x[31]+(-0.04*x[8]*x[9])-1.6*x[8]*x[10]-1.7*x[8]*x[11]-0.42*x[8]*x[12]+0.68*x[8]*x[14]+0.02*x[8]*x[15]-0.78*x[8]*x[16]+1.28*x[8]*x[17]-0.88*x[8]*x[18]-1.12*x[8]*x[19]-1.1*x[8]*x[20]+1.72*x[8]*x[21]+0.78*x[8]*x[22]+0.84*x[8]*x[23]-1.06*x[8]*x[24]-1.76*x[8]*x[25]+0.92*x[8]*x[26]-0.52*x[8]*x[27]+0.66*x[8]*x[28]+1.76*x[8]*x[29]+1.08*x[9]*x[10]+0.72*x[9]*x[11]-1.86*x[9]*x[12]+0.66*x[9]*x[13]+0.14*x[9]*x[14]-0.14*x[9]*x[15]+0.02*x[9]*x[16]+x[9]*x[17]+0.82*x[9]*x[19]+1.56*x[9]*x[20]+0.2*x[9]*x[21]-1.64*x[9]*x[22]+0.1*x[9]*x[23]-1.02*x[9]*x[24]+1.34*x[9]*x[25]+0.1*x[9]*x[26]-0.88*x[9]*x[27]-0.64*x[9]*x[28]+1.22*x[9]*x[29]-0.86*x[9]*x[30]-1.76*x[9]*x[31]+0.58*x[10]*x[11]+1.82*x[10]*x[12]-0.32*x[10]*x[13]-0.52*x[10]*x[14]-1.8*x[10]*x[15]+x[10]*x[16]-0.22*x[10]*x[17]-0.6*x[10]*x[18]+0.88*x[10]*x[20]-0.02*x[10]*x[21]+1.64*x[10]*x[22]+1.16*x[10]*x[23]+1.8*x[10]*x[24]+1.88*x[10]*x[25]+1.94*x[10]*x[26]-1.8*x[10]*x[27]+0.36*x[10]*x[28]-0.76*x[10]*x[29]+1.12*x[10]*x[30]+1.74*x[10]*x[31]+1.34*x[11]*x[12]-1.04*x[11]*x[13]+0.24*x[11]*x[14]-0.46*x[11]*x[15]-1.16*x[11]*x[16]+0.5*x[11]*x[17]-0.5*x[11]*x[18]-1.66*x[11]*x[19]-1.36*x[11]*x[20]-0.5*x[11]*x[21]-1.26*x[11]*x[22]+1.5*x[11]*x[23]-0.7*x[11]*x[24]-2*x[11]*x[25]-0.58*x[11]*x[26]+1.88*x[11]*x[27]-1.46*x[11]*x[28]-0.8*x[11]*x[29]+1.72*x[11]*x[30]-1.22*x[11]*x[31]+1.6*x[12]*x[13]-0.1*x[12]*x[14]+0.2*x[12]*x[15]+0.58*x[12]*x[16]+x[12]*x[17]+0.86*x[12]*x[18]+0.54*x[12]*x[19]+1.62*x[12]*x[20]+0.22*x[12]*x[21]+0.5*x[12]*x[22]-1.66*x[12]*x[23]+1.78*x[12]*x[24]+0.4*x[12]*x[25]+0.68*x[12]*x[26]+1.36*x[12]*x[27]+1.58*x[12]*x[28]+0.32*x[12]*x[29]-1.96*x[12]*x[30]+1.48*x[12]*x[31]+1.16*x[13]*x[15]-1.16*x[13]*x[14]+1.26*x[13]*x[16]-1.32*x[13]*x[17]-0.96*x[13]*x[18]-1.06*x[13]*x[19]+0.68*x[13]*x[20]+1.34*x[13]*x[21]-1.62*x[13]*x[22]+1.32*x[13]*x[23]-1.72*x[13]*x[24]-1.2*x[13]*x[25]-0.02*x[13]*x[26]+0.14*x[13]*x[27]-0.36*x[13]*x[28]+0.84*x[13]*x[29]+0.32*x[13]*x[30]+1.64*x[13]*x[31]+1.9*x[14]*x[15]-1.52*x[14]*x[16]+1.4*x[14]*x[17]-1.2*x[14]*x[18]+1.76*x[14]*x[19]+1.82*x[14]*x[20]-0.42*x[14]*x[21]+1.34*x[14]*x[22]+1.18*x[14]*x[23]+0.92*x[14]*x[24]+0.14*x[14]*x[25]+0.82*x[14]*x[26]-1.32*x[14]*x[27]-1.3*x[14]*x[28]-1.76*x[14]*x[29]+0.1*x[14]*x[30]-1.56*x[14]*x[31]+1.18*x[15]*x[16]-1.5*x[15]*x[17]-1.98*x[15]*x[18]+0.68*x[15]*x[19]-0.28*x[15]*x[20]-0.48*x[15]*x[21]+0.12*x[15]*x[22]+1.64*x[15]*x[24]+0.44*x[15]*x[25]-0.96*x[15]*x[26]-0.44*x[15]*x[27]-0.78*x[15]*x[28]+0.42*x[15]*x[30]+1.24*x[15]*x[31]+(-0.8*x[16]*x[17])-1.36*x[16]*x[18]-0.6*x[16]*x[19]-1.74*x[16]*x[20]+0.16*x[16]*x[21]-0.66*x[16]*x[22]-0.32*x[16]*x[23]-1.08*x[16]*x[24]+1.34*x[16]*x[25]+0.7*x[16]*x[26]-1.34*x[16]*x[27]-0.94*x[16]*x[28]+1.68*x[16]*x[29]+0.02*x[16]*x[30]-0.8*x[16]*x[31]+2*x[17]*x[18]+1.74*x[17]*x[19]-0.5*x[17]*x[20]-0.42*x[17]*x[21]-0.24*x[17]*x[22]+0.8*x[17]*x[23]+0.78*x[17]*x[24]+0.9*x[17]*x[25]+0.06*x[17]*x[26]-1.06*x[17]*x[27]-1.66*x[17]*x[28]+1.2*x[17]*x[29]-1.78*x[17]*x[30]+0.06*x[17]*x[31]+0.42*x[18]*x[20]-0.1*x[18]*x[19]-1.76*x[18]*x[21]-1.48*x[18]*x[22]+1.58*x[18]*x[23]-0.64*x[18]*x[24]+0.88*x[18]*x[25]+1.36*x[18]*x[26]+1.64*x[18]*x[27]-1.08*x[18]*x[28]+0.14*x[18]*x[29]-1.8*x[18]*x[30]-0.32*x[18]*x[31]+(-0.66*x[19]*x[20])-0.26*x[19]*x[21]+1.84*x[19]*x[22]+1.8*x[19]*x[23]+0.12*x[19]*x[24]-0.12*x[19]*x[25]+1.44*x[19]*x[26]+0.7*x[19]*x[27]+0.98*x[19]*x[28]+1.04*x[19]*x[29]+1.98*x[19]*x[30]-1.7*x[19]*x[31]+(-1.86*x[20]*x[21])-1.82*x[20]*x[22]-1.42*x[20]*x[23]-0.42*x[20]*x[24]-0.9*x[20]*x[25]+0.26*x[20]*x[26]+1.42*x[20]*x[27]-0.16*x[20]*x[28]-1.68*x[20]*x[29]+1.1*x[20]*x[30]+1.3*x[20]*x[31]+0.12*x[21]*x[22]-1.32*x[21]*x[23]+0.68*x[21]*x[24]+0.26*x[21]*x[25]-1.9*x[21]*x[26]+0.06*x[21]*x[27]+0.32*x[21]*x[28]-0.9*x[21]*x[29]-1.76*x[21]*x[30]+1.2*x[21]*x[31]+0.88*x[22]*x[23]-1.3*x[22]*x[24]+1.56*x[22]*x[25]-0.52*x[22]*x[26]-0.08*x[22]*x[27]-1.12*x[22]*x[28]+0.38*x[22]*x[29]+x[22]*x[30]-1.24*x[22]*x[31]+1.28*x[23]*x[24]-1.6*x[23]*x[25]-0.54*x[23]*x[26]+1.88*x[23]*x[27]-0.88*x[23]*x[28]-1.5*x[23]*x[29]+1.6*x[23]*x[30]-0.54*x[23]*x[31]+(-1.52*x[24]*x[25])-0.08*x[24]*x[26]-1.24*x[24]*x[27]-0.1*x[24]*x[28]-1.44*x[24]*x[29]-0.7*x[24]*x[30]-0.48*x[24]*x[31]+1.02*x[25]*x[27]-0.72*x[25]*x[26]-1.86*x[25]*x[28]+0.2*x[25]*x[29]+1.26*x[25]*x[30]+1.46*x[25]*x[31]+1.42*x[26]*x[27]-1.84*x[26]*x[28]+1.14*x[26]*x[29]+1.42*x[26]*x[30]+1.78*x[26]*x[31]+1.98*x[27]*x[28]-0.22*x[27]*x[29]+1.84*x[27]*x[30]+0.74*x[27]*x[31]+(-0.52*x[28]*x[29])-0.42*x[28]*x[30]-1.44*x[28]*x[31]+0.8*x[29]*x[30]-0.9*x[29]*x[31]+1.04*x[30]*x[31]+(-0.75*x[2]*x[2])-0.63*x[3]*x[3]-0.85*x[4]*x[4]-0.09*x[5]*x[5]-0.39*x[6]*x[6]+0.05*x[7]*x[7]-0.28*x[8]*x[8]+0.73*x[9]*x[9]+0.37*x[10]*x[10]-0.44*x[11]*x[11]-0.35*x[12]*x[12]-0.26*x[13]*x[13]-0.61*x[14]*x[14]+0.56*x[15]*x[15]+0.02*x[16]*x[16]+0.4*x[17]*x[17]+0.94*x[18]*x[18]-0.27*x[19]*x[19]+0.19*x[20]*x[20]-0.87*x[21]*x[21]+0.19*x[22]*x[22]-0.42*x[23]*x[23]-0.68*x[24]*x[24]+0.75*x[25]*x[25]-0.01*x[26]*x[26]+0.56*x[27]*x[27]+0.98*x[28]*x[28]-0.51*x[29]*x[29]-0.44*x[30]*x[30]-0.51*x[31]*x[31]-0.68*x[2]+0.12*x[3]-0.41*x[4]-0.32*x[5]+0.99*x[6]+0.71*x[7]+0.11*x[8]-0.52*x[9]-0.28*x[10]+0.55*x[11]-0.82*x[12]-0.25*x[13]+0.31*x[14]+0.04*x[15]-0.45*x[16]-0.96*x[17]-0.61*x[18]+0.09*x[19]+0.58*x[20]+0.78*x[21]+0.99*x[22]-0.61*x[23]+0.3*x[24]-0.63*x[25]+0.52*x[26]-0.07*x[27]+0.63*x[28]+0.12*x[29]+0.05*x[30]-0.07*x[31] <= 60.36)
@constraint(m, e3, 0.13*x[2]+0.52*x[3]-0.56*x[4]+0.62*x[5]+0.06*x[6]-0.58*x[7]+0.76*x[8]+0.94*x[9]-0.18*x[10]-0.68*x[11]+0.47*x[12]+0.02*x[13]-0.06*x[14]-0.76*x[15]+0.48*x[16]+0.29*x[17]+0.51*x[18]-0.22*x[19]-0.17*x[20]+0.9*x[21]-0.34*x[22]-0.69*x[23]+0.76*x[24]+0.37*x[25]-0.33*x[26]-0.15*x[27]+0.94*x[28]-0.68*x[29]+0.64*x[30]-0.42*x[31] == -0.54)
@constraint(m, e4, 0.16*x[2]-0.62*x[3]-0.73*x[4]-0.12*x[5]-0.23*x[6]-0.23*x[7]-0.72*x[8]-0.21*x[9]-0.32*x[10]+0.76*x[11]+0.99*x[12]-0.36*x[13]+0.69*x[14]+0.82*x[15]+0.34*x[16]+0.65*x[17]+0.85*x[18]-0.86*x[19]+0.89*x[20]-0.36*x[21]-0.27*x[22]-0.03*x[23]+0.34*x[24]-0.36*x[25]+0.79*x[26]+0.46*x[27]-0.35*x[28]-0.75*x[29]-0.23*x[30]+0.27*x[31] == 0.18)
@constraint(m, e5, 0.14*x[2]-0.78*x[3]-0.85*x[4]-0.5*x[5]-0.77*x[6]-0.83*x[7]+0.08*x[8]+0.67*x[9]+0.26*x[10]-0.02*x[11]+0.8*x[12]-0.61*x[13]+0.4*x[14]+0.4*x[15]+0.22*x[16]-0.43*x[17]+0.1*x[18]+0.33*x[19]-0.45*x[20]-0.44*x[21]+0.84*x[22]+0.44*x[23]-0.72*x[24]+0.5*x[25]-0.14*x[26]-0.72*x[27]-0.84*x[28]+0.36*x[29]+0.3*x[30]+0.56*x[31] == -0.9)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
