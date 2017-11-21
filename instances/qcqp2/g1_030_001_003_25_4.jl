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
@NLconstraint(m, e1, -(0.38*x[2]*x[10]-1.38*x[2]*x[15]-0.32*x[2]*x[16]+0.12*x[2]*x[20]+0.52*x[2]*x[26]+0.78*x[2]*x[28]+1.44*x[3]*x[6]-0.38*x[3]*x[4]-0.08*x[3]*x[8]-1.34*x[3]*x[10]-0.36*x[3]*x[11]-0.98*x[3]*x[17]+1.56*x[3]*x[20]+0.12*x[3]*x[27]+1.62*x[3]*x[30]+1.3*x[4]*x[10]-0.68*x[4]*x[8]+1.16*x[4]*x[11]+1.84*x[4]*x[15]+0.96*x[4]*x[18]-1.38*x[4]*x[20]+0.9*x[4]*x[21]-0.7*x[4]*x[25]-0.08*x[4]*x[31]+0.5*x[5]*x[9]-0.34*x[5]*x[15]+1.94*x[5]*x[21]-x[5]*x[25]+0.24*x[5]*x[26]-0.18*x[5]*x[27]+0.5*x[5]*x[29]+0.72*x[6]*x[11]-0.52*x[6]*x[17]-2*x[6]*x[18]-0.7*x[6]*x[30]+1.98*x[7]*x[11]-0.1*x[7]*x[14]-0.4*x[7]*x[16]-0.74*x[7]*x[19]+1.58*x[7]*x[22]+0.56*x[7]*x[27]+0.16*x[7]*x[29]+0.1*x[7]*x[30]+0.72*x[8]*x[14]-0.84*x[8]*x[13]-1.64*x[8]*x[19]+0.7*x[8]*x[25]+1.36*x[8]*x[29]+0.82*x[9]*x[17]-1.36*x[9]*x[19]+1.26*x[9]*x[28]+0.94*x[9]*x[31]+(-1.16*x[10]*x[14])-0.82*x[10]*x[20]+0.12*x[10]*x[25]+0.28*x[10]*x[26]+1.06*x[10]*x[30]+1.9*x[11]*x[14]+1.72*x[11]*x[16]-1.7*x[11]*x[20]-1.28*x[11]*x[23]+0.18*x[11]*x[24]-0.14*x[11]*x[26]+1.94*x[11]*x[27]+1.68*x[12]*x[19]-0.88*x[12]*x[15]+1.42*x[12]*x[26]-1.64*x[12]*x[28]-0.92*x[12]*x[31]+1.48*x[13]*x[19]-1.74*x[13]*x[18]-0.3*x[13]*x[22]+(-1.88*x[14]*x[16])-0.78*x[14]*x[17]+0.48*x[14]*x[25]-0.72*x[14]*x[28]+1.2*x[15]*x[25]-1.16*x[15]*x[23]-1.08*x[15]*x[29]+(-0.38*x[16]*x[17])-1.36*x[16]*x[21]+0.38*x[16]*x[29]+0.08*x[17]*x[19]-0.98*x[17]*x[28]+1.22*x[17]*x[29]+0.34*x[18]*x[20]+0.14*x[18]*x[22]+1.52*x[18]*x[26]+1.72*x[19]*x[21]-1.22*x[19]*x[27]-1.3*x[19]*x[30]+1.42*x[20]*x[22]+0.98*x[20]*x[25]-1.1*x[20]*x[30]-0.72*x[20]*x[31]+1.34*x[21]*x[24]-0.3*x[21]*x[22]-0.24*x[21]*x[29]+1.34*x[22]*x[25]+1.62*x[22]*x[27]+0.28*x[23]*x[28]+1.78*x[24]*x[28]+0.3*x[25]*x[27]-0.2*x[25]*x[28]+0.22*x[25]*x[31]-1.72*x[26]*x[30]+0.08*x[27]*x[28]+0.47*x[3]*x[3]-0.03*x[5]*x[5]+0.69*x[9]*x[9]-0.79*x[11]*x[11]+0.29*x[13]*x[13]+0.72*x[14]*x[14]+0.61*x[2]-0.7*x[3]+0.08*x[4]+0.65*x[5]+0.33*x[6]-0.7*x[7]-0.09*x[8]+0.32*x[9]-0.62*x[10]-0.23*x[11]+0.5*x[12]-0.96*x[13]+0.5*x[14]-0.73*x[15]+0.15*x[16]+0.3*x[17]+0.11*x[18]+0.26*x[19]-0.94*x[20]+0.7*x[21]-0.29*x[22]+0.1*x[23]-0.94*x[24]+0.02*x[25]-0.83*x[26]-0.26*x[27]-0.84*x[28]-0.35*x[29]+0.79*x[30]-0.69*x[31])+x[1] == 0.0)
@NLconstraint(m, e2, 0.92*x[2]*x[8]-1.16*x[2]*x[7]-1.04*x[2]*x[10]-0.34*x[2]*x[11]-0.56*x[2]*x[27]+1.86*x[2]*x[28]+0.32*x[3]*x[5]+0.62*x[3]*x[20]+0.36*x[3]*x[25]+1.26*x[3]*x[28]+1.1*x[3]*x[31]+0.24*x[4]*x[8]-1.9*x[4]*x[13]-0.16*x[4]*x[17]+0.04*x[4]*x[18]+0.76*x[4]*x[19]+0.48*x[4]*x[20]+0.48*x[4]*x[25]+(-0.08*x[5]*x[8])-1.82*x[5]*x[15]+1.88*x[5]*x[16]-1.66*x[5]*x[21]+1.72*x[6]*x[7]-0.58*x[6]*x[9]-1.96*x[6]*x[13]-0.86*x[6]*x[14]-0.62*x[6]*x[21]-1.68*x[6]*x[27]+(-1.56*x[7]*x[11])-1.52*x[7]*x[15]-0.9*x[7]*x[16]-1.5*x[7]*x[22]+0.52*x[7]*x[27]+(-0.24*x[8]*x[9])-0.92*x[8]*x[12]+1.7*x[8]*x[17]+0.48*x[8]*x[19]+0.9*x[8]*x[22]+1.14*x[8]*x[29]+1.86*x[9]*x[11]+1.12*x[9]*x[15]+0.1*x[9]*x[18]-0.24*x[9]*x[19]-0.68*x[9]*x[21]-0.36*x[9]*x[23]-0.82*x[9]*x[26]+1.64*x[10]*x[13]-0.26*x[10]*x[11]+0.2*x[10]*x[21]+1.86*x[10]*x[24]-1.02*x[10]*x[29]+1.56*x[11]*x[13]-1.74*x[11]*x[25]-0.4*x[12]*x[22]+1.74*x[13]*x[22]-1.4*x[13]*x[27]-0.5*x[13]*x[30]+0.44*x[13]*x[31]+1.08*x[14]*x[15]-0.46*x[14]*x[18]-1.48*x[14]*x[21]+0.14*x[14]*x[25]+(-0.68*x[15]*x[16])-0.62*x[15]*x[17]-1.48*x[15]*x[21]-1.38*x[15]*x[23]-1.3*x[15]*x[25]-0.1*x[15]*x[30]+1.68*x[15]*x[31]+1.82*x[16]*x[17]-0.34*x[16]*x[19]+0.46*x[16]*x[20]+0.92*x[16]*x[23]-1.08*x[16]*x[30]+1.8*x[17]*x[20]-0.7*x[17]*x[19]+0.16*x[17]*x[28]-1.76*x[17]*x[31]+1.64*x[18]*x[31]-1.5*x[18]*x[19]+0.12*x[19]*x[22]+1.72*x[19]*x[25]+1.38*x[19]*x[30]+1.54*x[19]*x[31]+0.56*x[20]*x[25]+0.46*x[20]*x[31]+0.82*x[22]*x[29]-0.34*x[22]*x[28]-1.42*x[22]*x[30]+1.5*x[23]*x[24]+1.02*x[23]*x[26]-0.68*x[23]*x[29]-1.58*x[23]*x[31]+0.86*x[24]*x[25]+0.4*x[24]*x[29]-0.7*x[24]*x[31]+1.46*x[25]*x[29]-1.56*x[25]*x[31]+1.58*x[26]*x[27]-0.82*x[26]*x[29]-1.48*x[27]*x[30]+0.36*x[29]*x[30]+0.58*x[4]*x[4]+0.22*x[5]*x[5]+0.19*x[7]*x[7]-0.11*x[12]*x[12]+0.48*x[16]*x[16]-0.34*x[20]*x[20]+0.52*x[21]*x[21]+0.41*x[23]*x[23]+0.81*x[25]*x[25]-0.58*x[30]*x[30]-0.59*x[31]*x[31]-0.61*x[2]-0.97*x[3]-0.79*x[4]-0.4*x[5]-0.37*x[6]+0.58*x[7]+0.54*x[8]+0.87*x[9]-0.86*x[10]-0.27*x[11]+0.27*x[12]-0.33*x[13]-0.15*x[14]-0.6*x[15]-0.19*x[16]-0.36*x[17]+0.26*x[18]-0.07*x[19]+0.4*x[20]+0.3*x[21]-0.68*x[22]-0.21*x[23]-0.95*x[24]-0.47*x[25]+0.65*x[26]-0.2*x[27]-0.78*x[28]-0.77*x[29]+0.23*x[30]-0.64*x[31] <= 77.68)
@constraint(m, e3, 0.86*x[2]-0.07*x[3]-0.04*x[4]-0.38*x[5]-0.59*x[6]-0.17*x[7]+0.68*x[8]-0.05*x[9]+0.23*x[10]-0.75*x[11]-0.41*x[12]-0.07*x[13]-0.85*x[14]+0.45*x[15]-0.73*x[16]-0.87*x[17]-0.46*x[18]-0.31*x[19]-0.89*x[20]+0.28*x[21]+0.13*x[22]+0.79*x[23]-0.51*x[24]+0.12*x[25]+0.15*x[26]+0.56*x[27]-0.82*x[28]-0.04*x[29]-0.73*x[30]+0.56*x[31] == -0.57)
@constraint(m, e4, 0.12*x[2]-0.03*x[3]+0.33*x[4]+0.99*x[5]+0.78*x[6]-0.74*x[7]+0.95*x[8]+0.16*x[9]+0.16*x[10]-0.47*x[11]+0.03*x[12]+0.05*x[13]+0.77*x[14]+0.52*x[15]-0.32*x[16]+0.55*x[17]-0.54*x[18]-0.68*x[19]-0.56*x[20]-0.27*x[21]+0.64*x[22]-0.33*x[23]+0.17*x[24]+0.8*x[25]-0.62*x[26]+0.47*x[27]-0.23*x[28]-0.7*x[29]+0.6*x[30]+0.93*x[31] == 0.21)
@constraint(m, e5, -0.12*x[2]+0.36*x[3]+0.66*x[4]+0.71*x[5]+0.41*x[6]+0.17*x[7]+0.45*x[8]+0.96*x[10]+0.45*x[11]+0.03*x[12]-0.3*x[13]-0.22*x[15]+0.78*x[16]-0.15*x[17]+0.52*x[18]+0.62*x[19]+0.85*x[20]+0.25*x[21]-0.15*x[22]-0.31*x[23]-0.95*x[24]+0.73*x[25]-0.74*x[26]+0.2*x[27]+0.28*x[28]-0.93*x[29]+0.39*x[30]-0.63*x[31] == -0.72)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
