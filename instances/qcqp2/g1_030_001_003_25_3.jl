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
@NLconstraint(m, e1, -(1.46*x[2]*x[7]-0.08*x[2]*x[9]-0.74*x[2]*x[11]+0.6*x[2]*x[19]+1.74*x[2]*x[20]-1.22*x[2]*x[23]+1.6*x[2]*x[27]-1.64*x[2]*x[28]+0.86*x[2]*x[29]+1.44*x[3]*x[6]-0.08*x[3]*x[4]-0.8*x[3]*x[7]-1.16*x[3]*x[9]+0.52*x[3]*x[12]-0.64*x[3]*x[19]-0.48*x[3]*x[23]+0.84*x[4]*x[7]+1.08*x[4]*x[10]+0.02*x[4]*x[11]-1.08*x[4]*x[14]-0.7*x[4]*x[22]+0.28*x[4]*x[24]+0.34*x[4]*x[29]+1.78*x[5]*x[7]+1.36*x[5]*x[8]+0.04*x[5]*x[11]-0.92*x[5]*x[16]-1.92*x[5]*x[18]+1.18*x[5]*x[19]+0.38*x[5]*x[22]+1.52*x[6]*x[16]-1.08*x[6]*x[19]-1.98*x[6]*x[25]+0.18*x[6]*x[26]+1.96*x[6]*x[27]-1.12*x[6]*x[31]+1.24*x[7]*x[8]+x[7]*x[12]+1.06*x[7]*x[13]+0.16*x[7]*x[15]-0.82*x[7]*x[21]-0.58*x[7]*x[23]-0.56*x[7]*x[26]+1.9*x[7]*x[31]+1.22*x[8]*x[11]+1.04*x[8]*x[13]+1.8*x[8]*x[14]-0.18*x[8]*x[16]-0.06*x[8]*x[31]+(-1.9*x[9]*x[10])-0.3*x[9]*x[16]-0.74*x[9]*x[18]+1.74*x[9]*x[24]+0.62*x[9]*x[26]+(-0.56*x[10]*x[11])-0.1*x[10]*x[25]+0.08*x[10]*x[26]+1.48*x[11]*x[13]-0.42*x[11]*x[15]+0.42*x[11]*x[17]+1.5*x[11]*x[27]+0.58*x[12]*x[13]+1.86*x[12]*x[14]-0.82*x[12]*x[15]-1.04*x[12]*x[17]-1.14*x[12]*x[19]-0.3*x[12]*x[22]-1.52*x[12]*x[23]-1.94*x[12]*x[29]+1.26*x[12]*x[30]+0.56*x[13]*x[17]-0.66*x[13]*x[18]-1.72*x[13]*x[29]+1.26*x[14]*x[26]-0.9*x[14]*x[17]-0.16*x[14]*x[28]+1.52*x[15]*x[16]+1.54*x[15]*x[17]-1.74*x[15]*x[18]+1.54*x[15]*x[20]-2*x[15]*x[29]+1.56*x[16]*x[17]-1.92*x[16]*x[31]+0.02*x[17]*x[26]-1.56*x[17]*x[19]+(-1.78*x[18]*x[21])-1.06*x[18]*x[26]-0.32*x[18]*x[29]-0.96*x[18]*x[31]+0.96*x[19]*x[28]-0.44*x[19]*x[24]+0.22*x[20]*x[31]+1.94*x[21]*x[30]+0.46*x[22]*x[26]-0.1*x[22]*x[25]+0.46*x[23]*x[25]-1.14*x[23]*x[26]+1.68*x[23]*x[27]-0.14*x[23]*x[31]+0.9*x[24]*x[27]-0.9*x[24]*x[28]+0.54*x[24]*x[30]-1.9*x[24]*x[31]+1.18*x[25]*x[31]+1.7*x[26]*x[30]+0.3*x[26]*x[31]+(-0.41*x[2]*x[2])-0.49*x[4]*x[4]-0.49*x[6]*x[6]+0.84*x[12]*x[12]+0.3*x[22]*x[22]-0.3*x[28]*x[28]-0.47*x[2]-0.81*x[3]+0.43*x[4]-0.15*x[5]-0.65*x[6]+0.33*x[7]-0.26*x[8]-0.74*x[9]+0.1*x[10]-0.19*x[11]+0.43*x[12]-0.35*x[13]-0.36*x[14]-0.03*x[15]-0.24*x[16]+0.75*x[17]+0.04*x[18]-0.15*x[19]+0.42*x[20]-0.12*x[21]+0.42*x[22]-0.86*x[23]-0.55*x[24]+0.17*x[25]+0.87*x[26]-0.84*x[27]-0.53*x[28]+0.36*x[30]+0.4*x[31])+x[1] == 0.0)
@NLconstraint(m, e2, 1.7*x[2]*x[5]-1.2*x[2]*x[6]+0.32*x[2]*x[14]+1.6*x[2]*x[16]-1.36*x[2]*x[21]+1.64*x[2]*x[23]+(-1.5*x[3]*x[8])-1.94*x[3]*x[13]-0.26*x[3]*x[15]-1.96*x[3]*x[17]-0.98*x[3]*x[21]+0.14*x[3]*x[22]+x[3]*x[28]+(-0.54*x[4]*x[7])-1.76*x[4]*x[8]-0.38*x[4]*x[9]+0.44*x[4]*x[10]-1.66*x[4]*x[11]-0.66*x[4]*x[27]+0.66*x[5]*x[10]-0.88*x[5]*x[6]-0.98*x[5]*x[21]+1.44*x[5]*x[24]-1.34*x[5]*x[27]-0.92*x[5]*x[29]+(-1.7*x[6]*x[11])-0.9*x[6]*x[15]+1.1*x[6]*x[23]+1.1*x[6]*x[30]+(-0.08*x[7]*x[12])-0.8*x[7]*x[13]-0.28*x[7]*x[15]+0.28*x[7]*x[16]-1.4*x[7]*x[17]-0.94*x[7]*x[19]+0.5*x[7]*x[23]-1.1*x[7]*x[26]+1.18*x[7]*x[29]+0.68*x[7]*x[30]+0.5*x[8]*x[9]-1.3*x[8]*x[12]-0.66*x[8]*x[14]+1.84*x[8]*x[16]-1.08*x[8]*x[18]-1.86*x[8]*x[20]-0.22*x[8]*x[22]-1.16*x[8]*x[27]+0.28*x[9]*x[12]+1.48*x[9]*x[25]+1.38*x[9]*x[27]+1.98*x[9]*x[30]+1.98*x[10]*x[23]-0.96*x[10]*x[22]-1.22*x[10]*x[29]+0.3*x[10]*x[31]+0.34*x[11]*x[16]-1.6*x[11]*x[21]-1.02*x[11]*x[23]-1.78*x[11]*x[28]+1.58*x[12]*x[13]+1.24*x[12]*x[17]-1.34*x[12]*x[21]-1.78*x[12]*x[22]+0.22*x[12]*x[25]-0.98*x[12]*x[29]-0.64*x[12]*x[31]+0.94*x[13]*x[14]+1.14*x[13]*x[23]-0.52*x[13]*x[26]-0.72*x[13]*x[30]+0.18*x[14]*x[15]-0.68*x[14]*x[18]+0.08*x[14]*x[21]-1.44*x[14]*x[22]+1.4*x[14]*x[24]+1.76*x[14]*x[28]+0.14*x[15]*x[19]-0.68*x[15]*x[17]-0.36*x[15]*x[23]+1.2*x[15]*x[25]+1.3*x[16]*x[17]-1.16*x[16]*x[19]-0.36*x[16]*x[21]+1.46*x[16]*x[22]-1.6*x[16]*x[24]-1.84*x[16]*x[27]-0.36*x[16]*x[30]+0.26*x[18]*x[19]-0.4*x[18]*x[21]+0.36*x[18]*x[29]+0.58*x[19]*x[20]-0.78*x[19]*x[24]-x[19]*x[26]+0.74*x[19]*x[30]+0.8*x[19]*x[31]+1.64*x[21]*x[24]+1.06*x[21]*x[29]+0.48*x[24]*x[26]-0.54*x[24]*x[27]+(-0.48*x[25]*x[26])-0.42*x[25]*x[28]+0.44*x[25]*x[30]+1.16*x[26]*x[30]-1.28*x[28]*x[30]+0.12*x[29]*x[30]-1.32*x[30]*x[31]+0.87*x[6]*x[6]-0.49*x[15]*x[15]-0.8*x[19]*x[19]+0.01*x[20]*x[20]+0.29*x[21]*x[21]-0.22*x[31]*x[31]-0.19*x[2]-0.83*x[3]-0.67*x[4]+0.87*x[5]+0.27*x[6]-0.18*x[7]-0.45*x[8]-0.54*x[9]+0.56*x[10]-0.8*x[11]+0.61*x[12]+0.36*x[13]+0.68*x[14]-0.57*x[15]+0.78*x[16]+0.26*x[17]+0.15*x[18]-0.1*x[19]-0.73*x[20]+0.94*x[21]+0.89*x[22]-0.09*x[23]-0.05*x[24]-0.41*x[25]-0.3*x[26]-0.47*x[27]+0.16*x[28]-0.65*x[29]+0.93*x[30]-0.78*x[31] <= 14.8)
@constraint(m, e3, 0.65*x[2]-0.04*x[3]-0.56*x[4]+0.39*x[5]+0.73*x[6]+0.15*x[7]-0.05*x[8]+0.23*x[9]-0.27*x[10]+0.73*x[11]+0.53*x[12]-0.04*x[13]+0.19*x[14]+0.73*x[15]-0.12*x[16]+0.29*x[17]+0.81*x[18]+0.15*x[19]+0.28*x[20]-0.8*x[21]-0.82*x[22]-0.8*x[23]-0.83*x[24]+0.81*x[25]-0.55*x[26]+0.67*x[27]-0.22*x[28]-0.94*x[29]-0.2*x[30]+0.02*x[31] == 0.1)
@constraint(m, e4, 0.88*x[2]-0.85*x[3]-0.47*x[4]+0.57*x[5]-0.5*x[7]+0.77*x[9]-0.7*x[10]-0.07*x[11]+0.93*x[12]-0.05*x[13]-0.82*x[14]-0.37*x[15]-0.09*x[16]-0.97*x[17]-0.39*x[18]-0.7*x[19]-0.05*x[20]+0.97*x[21]+0.42*x[22]-0.79*x[23]+0.35*x[24]+0.64*x[25]-0.83*x[26]-0.89*x[27]+0.59*x[28]-0.58*x[29]-0.74*x[30]+0.09*x[31] == -0.87)
@constraint(m, e5, 0.14*x[2]-0.47*x[3]-0.39*x[4]+0.1*x[5]-0.99*x[6]+0.03*x[7]+x[8]+0.42*x[9]+0.65*x[10]-0.8*x[11]+0.59*x[12]-0.37*x[13]+0.54*x[14]-0.56*x[15]-0.69*x[16]-0.14*x[17]-0.6*x[18]-0.83*x[19]+0.01*x[20]+0.01*x[21]+0.93*x[22]-x[23]+0.24*x[24]+0.03*x[25]-0.41*x[26]-0.89*x[27]-0.22*x[28]+0.75*x[29]+0.22*x[30]+0.48*x[31] == 0.83)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
