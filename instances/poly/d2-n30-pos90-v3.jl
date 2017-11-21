using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
setlowerbound(x[19], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[1], 2.0)
setupperbound(x[1], 8.0)
setlowerbound(x[2], 1.0)
setupperbound(x[2], 9.0)
setlowerbound(x[3], 3.0)
setupperbound(x[3], 8.0)
setlowerbound(x[4], 3.0)
setupperbound(x[4], 6.0)
setlowerbound(x[5], 3.0)
setupperbound(x[5], 10.0)
setlowerbound(x[6], 3.0)
setupperbound(x[6], 6.0)
setlowerbound(x[7], 1.0)
setupperbound(x[7], 8.0)
setupperbound(x[8], 10.0)
setlowerbound(x[9], 4.0)
setupperbound(x[9], 9.0)
setupperbound(x[10], 9.0)
setlowerbound(x[11], 4.0)
setupperbound(x[11], 8.0)
setlowerbound(x[12], 3.0)
setupperbound(x[12], 8.0)
setupperbound(x[13], 9.0)
setlowerbound(x[14], 4.0)
setupperbound(x[14], 10.0)
setlowerbound(x[15], 1.0)
setupperbound(x[15], 7.0)
setlowerbound(x[16], 3.0)
setupperbound(x[16], 6.0)
setlowerbound(x[17], 3.0)
setupperbound(x[17], 7.0)
setlowerbound(x[18], 3.0)
setupperbound(x[18], 6.0)
setupperbound(x[19], 9.0)
setlowerbound(x[20], 1.0)
setupperbound(x[20], 7.0)
setlowerbound(x[21], 3.0)
setupperbound(x[21], 8.0)
setupperbound(x[22], 8.0)
setlowerbound(x[23], 2.0)
setupperbound(x[23], 10.0)
setlowerbound(x[24], 3.0)
setupperbound(x[24], 10.0)
setlowerbound(x[25], 3.0)
setupperbound(x[25], 6.0)
setlowerbound(x[26], 1.0)
setupperbound(x[26], 6.0)
setupperbound(x[27], 8.0)
setupperbound(x[28], 10.0)
setlowerbound(x[29], 4.0)
setupperbound(x[29], 10.0)
setlowerbound(x[30], 4.0)
setupperbound(x[30], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, 3.22*x[2]+4.59*x[3]+1.87*x[11]+2.86*x[14]+2.43*x[20]+3.5*x[21]+0.22*x[23]-2.12*x[24] >= 89.0)
@NLconstraint(m, e2, 0.54*x[1]*x[5]+1.18*x[1]-2.11*x[1]*x[8]+3.03*x[8]+3.57*x[1]*x[9]+2.64*x[1]*x[11]-4.27*x[1]*x[13]-0.67*x[1]*x[22]+4.06*x[1]*x[25]-2.95*x[1]*x[29]+2.45*x[29]+1.45*x[2]*x[4]+0.24*x[2]*x[11]-1.52*x[2]*x[13]+0.98*x[2]*x[16]+4.51*x[2]*x[20]+4.75*x[2]*x[21]-1.3*x[2]*x[28]-2*x[3]*x[4]+2.11*x[3]+1.39*x[3]*x[6]+2.44*x[6]-3.05*x[3]*x[13]+3.75*x[3]*x[14]-2.45*x[3]*x[17]-1.97*x[3]*x[21]+4.88*x[3]*x[24]-0.75*x[3]*x[26]+0.06*x[26]+3.8*x[4]*x[4]+2.12*x[4]*x[5]-3.87*x[4]*x[7]+1.16*x[4]*x[14]+2.49*x[4]*x[23]+2.83*x[23]-2.09*x[4]*x[26]-1.96*x[4]*x[27]+1.59*x[4]*x[28]+4.54*x[5]*x[13]+2.91*x[5]*x[23]+3.29*x[6]*x[20]+0.91*x[6]*x[22]-0.97*x[6]*x[26]+2.76*x[6]*x[27]-2.68*x[7]*x[7]+0.55*x[7]*x[8]+4.27*x[7]*x[9]-3.73*x[7]*x[21]-0.91*x[7]*x[26]-2.47*x[7]*x[27]+4.07*x[7]*x[30]-3.56*x[8]*x[8]-3.53*x[8]*x[10]+0.54*x[10]-0.2*x[8]*x[11]-2.9*x[8]*x[17]+1.72*x[8]*x[18]+2.83*x[8]*x[21]+2.45*x[8]*x[27]+3.96*x[9]*x[12]+4.84*x[9]*x[21]-3.11*x[9]*x[23]+4.12*x[9]*x[26]+0.6*x[10]*x[13]+4.29*x[10]*x[21]-1.18*x[11]*x[11]-2.65*x[11]*x[17]+2.38*x[11]*x[18]+2.17*x[11]*x[19]-1.64*x[19]-1.21*x[11]*x[25]+1.84*x[11]*x[30]+2.8*x[12]*x[15]+0.91*x[15]-1.75*x[12]*x[16]-1.34*x[12]*x[18]+0.22*x[12]*x[22]+3.35*x[12]*x[24]-2.86*x[12]*x[26]-4.26*x[12]*x[27]+0.63*x[12]*x[28]-1.34*x[12]*x[29]-0.78*x[12]*x[30]-2.16*x[13]*x[20]+1.9*x[13]*x[22]-1.67*x[13]*x[26]+1.48*x[13]*x[29]+0.93*x[14]*x[16]+3.89*x[14]*x[17]+4.22*x[14]*x[20]-0.31*x[14]*x[22]+4.68*x[14]*x[27]-0.38*x[14]*x[28]-1.35*x[14]*x[29]-0.83*x[14]*x[30]+0.82*x[15]*x[19]-4.04*x[15]*x[21]+4.7*x[15]*x[25]-1.35*x[16]*x[16]-1.5*x[16]*x[28]-1.84*x[17]*x[21]+0.07*x[19]*x[19]+2.66*x[19]*x[24]+4.52*x[19]*x[28]-0.96*x[20]*x[26]+3.41*x[20]*x[30]-1.14*x[21]*x[25]+2.9*x[21]*x[29]+4.28*x[24]*x[24]+4.15*x[24]*x[25]+2.25*x[24]*x[26]-1.7*x[24]*x[27]-2.46*x[24]*x[30]-2.11*x[25]*x[28]+2.43*x[26]*x[30]+4.33*x[27]*x[27]+4.79*x[27]*x[29]-0.69*x[28]*x[30]-2.54*x[29]*x[29] >= 2596.2)
@constraint(m, e3, 5.9*x[1]+6.4*x[2]+4*x[3]+5.4*x[4]+0.3*x[5]+7.5*x[6]+7.5*x[7]+5.6*x[8]+1.6*x[9]+4.4*x[10]+5.4*x[11]+3.4*x[12]+2.1*x[13]+4.7*x[14]+5.7*x[15]+5.9*x[16]+2.5*x[17]+7.6*x[18]+4.5*x[19]-0.1*x[20]+0.6*x[21]+6.8*x[22]+1.9*x[23]+5.9*x[24]+8.6*x[25]+2.3*x[26]+3.8*x[27]+3.8*x[28]-0.5*x[29]+1.7*x[30] >= 492.3)
@NLconstraint(m, e4, 1.69*x[1]*x[7]+0.3*x[1]*x[8]-3.52*x[1]*x[12]-1.92*x[1]*x[15]-1.16*x[15]+1.42*x[1]*x[16]-1.44*x[16]-3.97*x[1]*x[20]-3.38*x[1]*x[23]-0.58*x[1]*x[25]+2.35*x[2]*x[3]-4.19*x[3]+0.9*x[2]*x[5]+1.77*x[2]*x[7]+3.35*x[2]*x[8]+1.26*x[2]*x[13]+0.11*x[13]-4.34*x[2]*x[14]+1.08*x[2]*x[24]-4.3*x[2]*x[26]-1.29*x[2]*x[29]-2.67*x[29]-2.81*x[3]*x[4]+0.09*x[3]*x[12]+1.3*x[3]*x[16]-1.85*x[3]*x[26]-0.16*x[3]*x[29]-3.15*x[4]*x[6]+3.02*x[4]*x[8]+0.53*x[4]*x[14]+4.76*x[4]*x[25]+1.74*x[4]*x[27]-1.19*x[27]-0.59*x[4]*x[28]-2.21*x[5]*x[5]+1.72*x[5]*x[7]+1.15*x[5]*x[13]-0.43*x[5]*x[17]+3.38*x[5]*x[18]-3.04*x[5]*x[26]+0.01*x[6]*x[6]-4.65*x[6]*x[8]-0.31*x[6]*x[10]-1.8*x[10]+1.93*x[6]*x[16]-2.62*x[6]*x[17]+2.39*x[6]*x[18]+0.29*x[6]*x[20]-2.97*x[6]*x[25]-0.79*x[6]*x[28]-0.62*x[7]*x[11]-4.54*x[7]*x[12]+3.41*x[7]*x[14]+4.67*x[7]*x[17]+1.72*x[7]*x[21]-3.56*x[8]*x[8]-0.06*x[8]*x[9]-1.56*x[8]*x[14]+3.09*x[8]*x[24]+3.38*x[9]*x[11]+2.36*x[9]*x[28]+3.19*x[9]*x[30]-2.85*x[10]*x[13]+3.78*x[10]*x[22]+0.59*x[22]-2.36*x[10]*x[25]-4.06*x[10]*x[27]+3.11*x[11]*x[13]-0.49*x[11]*x[16]-2.66*x[11]*x[18]-2.56*x[11]*x[20]+2.4*x[11]*x[23]+4.94*x[11]*x[25]+1.04*x[11]*x[26]+3.7*x[12]*x[14]+1.88*x[12]*x[15]+4.58*x[12]*x[19]+1.85*x[19]+2.57*x[12]*x[21]+2.17*x[12]*x[22]-2.68*x[13]*x[13]-3.1*x[13]*x[14]+4.15*x[13]*x[17]+4.22*x[13]*x[22]+1.98*x[13]*x[25]+4.28*x[13]*x[28]-4.37*x[13]*x[29]+4.72*x[14]*x[20]+1.25*x[14]*x[22]-4.16*x[14]*x[28]+4.88*x[14]*x[29]-2.71*x[14]*x[30]+0.05*x[15]*x[17]+1.37*x[15]*x[22]-0.11*x[15]*x[27]-4.75*x[16]*x[25]-2.85*x[16]*x[26]+4.13*x[17]*x[21]+1.04*x[17]*x[22]+0.47*x[17]*x[23]-4.75*x[17]*x[25]+2.45*x[17]*x[29]-4*x[18]*x[18]+0.3*x[18]*x[22]-1.56*x[18]*x[24]-3.94*x[18]*x[25]-1.95*x[18]*x[28]+1.57*x[18]*x[30]-4.33*x[19]*x[20]+2.6*x[19]*x[21]+4.95*x[19]*x[22]+2.83*x[20]*x[28]-0.88*x[21]*x[28]-0.79*x[22]*x[23]-4.59*x[22]*x[24]+1.95*x[22]*x[25]+2.08*x[23]*x[26]-3.81*x[23]*x[27]-3.26*x[23]*x[28]+1.14*x[24]*x[27]+3.19*x[24]*x[28]+x[25]*x[26]+4.3*x[26]*x[26]+0.94*x[26]*x[27]+3.43*x[27]*x[28]-2.62*x[28]*x[29] >= 764.0)
@constraint(m, e5, 4.51*x[1]-2.93*x[6]+4.73*x[11]-3.1*x[12]-4.58*x[14]+4.19*x[16]-0.62*x[17]+0.27*x[18]+1.33*x[19]+3.28*x[21]-1.16*x[25]-0.37*x[27]-4.19*x[30] >= -6.5)
@NLconstraint(m, e6, 2.91*x[1]*x[1]+0.03*x[1]*x[5]-4.46*x[5]+1.04*x[1]*x[22]-3.72*x[1]*x[27]-2.99*x[1]*x[30]+1.13*x[2]*x[3]-3.02*x[2]-3.49*x[3]+0.83*x[2]*x[5]+0.37*x[2]*x[9]+2.71*x[2]*x[14]-4.83*x[14]+1.06*x[2]*x[16]-0.91*x[2]*x[17]-1.79*x[2]*x[18]+1.67*x[2]*x[24]+0.11*x[2]*x[25]+3.39*x[25]+1.75*x[2]*x[26]-3.13*x[26]+0.84*x[2]*x[29]+1.8*x[3]*x[12]+4.99*x[12]-2.17*x[3]*x[14]+1.54*x[3]*x[20]+4.62*x[4]*x[9]-3.13*x[4]*x[19]+1.53*x[4]*x[22]+1.02*x[4]*x[25]+0.62*x[4]*x[30]+4.57*x[5]*x[11]-3.05*x[5]*x[12]+0.72*x[5]*x[17]-1.73*x[5]*x[23]-2.23*x[5]*x[27]-3.81*x[6]*x[8]-2.16*x[6]+0.77*x[6]*x[10]-3.72*x[6]*x[12]-3.54*x[6]*x[13]-0.4*x[6]*x[16]+2.66*x[6]*x[17]+4.64*x[6]*x[21]-2*x[7]*x[19]+2.34*x[7]+1.02*x[7]*x[25]+4*x[8]*x[11]-0.27*x[8]*x[14]-1.18*x[8]*x[15]+2.92*x[8]*x[20]-3.74*x[8]*x[22]+2.41*x[8]*x[24]+4.41*x[8]*x[27]-3.49*x[8]*x[30]-3.92*x[9]*x[11]-4.5*x[9]*x[13]-0.61*x[9]*x[16]-4.38*x[10]*x[13]-4.87*x[10]*x[30]+0.23*x[11]*x[12]-4.29*x[11]*x[13]+2.67*x[11]*x[18]+2.04*x[11]*x[20]+0.59*x[11]*x[22]+1.36*x[12]*x[18]-4.15*x[12]*x[19]-3.19*x[12]*x[22]+0.64*x[13]*x[16]+2.52*x[13]*x[23]+2.97*x[13]*x[25]-3.21*x[13]*x[26]-2.83*x[13]*x[29]-4.12*x[14]*x[14]+3.1*x[14]*x[15]-3.17*x[14]*x[19]+3.05*x[14]*x[25]-2.11*x[14]*x[26]+2.27*x[14]*x[28]-4.04*x[14]*x[29]-2.44*x[15]*x[15]-1.89*x[15]*x[17]+3.44*x[15]*x[18]+2.14*x[15]*x[28]-1.12*x[16]*x[16]-1.87*x[16]*x[23]+3.19*x[16]*x[25]+0.28*x[16]*x[26]+0.45*x[16]*x[27]+1.82*x[16]*x[28]-4.38*x[17]*x[18]-1.36*x[17]*x[19]+3.53*x[17]*x[20]+0.22*x[17]*x[22]+0.68*x[17]*x[28]+0.2*x[18]*x[22]+0.54*x[18]*x[23]-1.42*x[18]*x[24]-1.6*x[18]*x[26]-1.84*x[20]*x[26]-3.35*x[21]*x[28]+3.2*x[22]*x[29]-1.48*x[22]*x[30]+0.57*x[23]*x[25]-1.53*x[23]*x[26]+3.19*x[24]*x[26]-4.74*x[24]*x[30]+2.03*x[25]*x[25]-4.26*x[26]*x[27]+2.78*x[26]*x[30]+1.11*x[27]*x[28]-1.28*x[28]*x[29] >= -1322.7)
@constraint(m, e7, -0.36*x[1]-4.41*x[2]-0.23*x[4]-4.96*x[6]+3.38*x[17]-4.51*x[18]-4.83*x[27] >= -70.0)
@NLconstraint(m, e8, (-1.31*x[1]*x[4])-2.95*x[4]+0.77*x[1]*x[5]+1.59*x[5]-1.4*x[1]*x[12]-2.11*x[12]-0.24*x[1]*x[24]+2.29*x[1]*x[26]+1.16*x[1]*x[27]+3.53*x[1]*x[28]+2.08*x[1]*x[29]+3.07*x[1]*x[30]-1.69*x[2]*x[2]-2*x[2]*x[7]+4.38*x[7]-2.45*x[2]*x[20]-3.33*x[2]*x[22]+2.11*x[3]*x[9]+0.46*x[9]+1.14*x[3]*x[14]+3.3*x[14]-1.58*x[3]*x[18]-4.86*x[3]*x[22]+2.9*x[3]*x[25]-0.78*x[4]*x[8]-1.85*x[8]-2.54*x[4]*x[18]-2.44*x[4]*x[21]+2.22*x[4]*x[23]+x[4]*x[24]-1.28*x[4]*x[26]+0.13*x[5]*x[5]-0.82*x[5]*x[11]+1.35*x[5]*x[12]-1.77*x[5]*x[18]+3.75*x[5]*x[19]-1.28*x[19]+2.91*x[5]*x[21]+1.21*x[5]*x[25]-1.04*x[5]*x[26]-1.78*x[5]*x[29]+0.87*x[6]*x[11]+0.67*x[6]*x[12]+2.89*x[6]*x[21]+2.16*x[6]*x[22]-1.81*x[6]*x[24]-0.56*x[6]*x[26]+2.76*x[7]*x[10]-3.84*x[7]*x[13]+4.17*x[13]+0.8*x[7]*x[17]-2.49*x[7]*x[19]-0.38*x[7]*x[24]+4.81*x[7]*x[27]-0.07*x[7]*x[30]+2.08*x[8]*x[15]-1.26*x[15]-1.57*x[8]*x[16]+0.72*x[8]*x[18]-4.62*x[8]*x[24]-1.1*x[9]*x[15]+0.4*x[9]*x[23]-2.1*x[9]*x[24]+1.91*x[9]*x[26]+2.27*x[9]*x[28]+0.52*x[10]*x[10]+1.06*x[10]*x[17]+1.75*x[10]*x[22]-4.71*x[10]*x[23]-4.36*x[10]*x[30]-1.51*x[11]*x[14]+0.71*x[11]*x[15]-1.07*x[11]*x[19]-3.3*x[11]*x[29]-1.76*x[12]*x[12]+3.21*x[12]*x[13]+4.36*x[12]*x[15]+2.71*x[12]*x[19]-3.49*x[12]*x[21]-2.04*x[12]*x[26]+1.51*x[12]*x[27]+4.44*x[12]*x[28]+4.4*x[12]*x[30]+4.2*x[13]*x[13]+0.9*x[13]*x[15]+0.41*x[13]*x[16]-1.81*x[13]*x[21]-1.73*x[13]*x[23]+4.42*x[14]*x[19]+3.12*x[14]*x[22]+1.75*x[14]*x[27]-0.87*x[15]*x[18]+3.6*x[15]*x[21]-3.01*x[15]*x[22]-4.9*x[15]*x[25]-0.09*x[16]*x[26]+5*x[17]*x[19]-2.41*x[17]*x[22]+0.1*x[17]*x[25]-4.71*x[17]*x[26]+3.13*x[17]*x[29]-3.91*x[18]*x[23]+1.9*x[18]*x[24]+3.4*x[18]*x[29]-2.52*x[19]*x[22]+4.75*x[19]*x[23]-3.74*x[19]*x[29]+1.08*x[20]*x[24]+4.69*x[20]*x[25]+3.97*x[20]*x[30]+3.13*x[21]*x[26]-4.79*x[21]*x[27]+3.98*x[21]*x[30]-4.48*x[22]*x[28]+4.79*x[23]*x[25]+3.52*x[24]*x[30]-3.29*x[25]*x[25]-1.91*x[25]*x[30]+3.72*x[26]*x[26]-1.83*x[26]*x[30]-4.15*x[30]*x[30] >= 878.7)
@constraint(m, e9, 4.2*x[7]-2.87*x[15]+2.54*x[17]-3.42*x[18]+2.66*x[23]-3.98*x[30] >= -7.2)
@NLconstraint(m, e10, 1.55*x[1]*x[11]-0.29*x[1]+1.51*x[1]*x[24]-2.13*x[24]-3.41*x[1]*x[28]+0.25*x[1]*x[29]-4.59*x[2]*x[2]-4.37*x[2]*x[3]+3.19*x[2]*x[9]-4.58*x[2]*x[12]+4.89*x[12]+1.62*x[2]*x[30]+0.43*x[30]-1.9*x[3]*x[3]-1.79*x[3]*x[8]+1.25*x[8]-0.1*x[3]*x[11]+0.15*x[3]*x[12]-0.05*x[3]*x[13]+0.9*x[3]*x[15]+3.07*x[3]*x[16]-1.22*x[16]-0.04*x[3]*x[18]+3.1*x[4]*x[4]+1.36*x[4]*x[13]+1.81*x[4]*x[21]+3.62*x[4]*x[26]+1.44*x[4]*x[29]-3.21*x[4]*x[30]+2.38*x[5]*x[5]+1.44*x[5]*x[7]-0.52*x[5]*x[21]-0.34*x[5]*x[22]-2.63*x[5]*x[23]-3.49*x[23]-3.23*x[5]*x[24]-2.46*x[5]*x[27]+0.23*x[5]*x[28]+1.2*x[5]*x[30]-0.09*x[6]*x[8]-4.94*x[6]*x[12]-0.53*x[6]*x[13]+0.31*x[6]*x[22]-3.12*x[7]*x[7]-2.4*x[7]*x[11]+3.29*x[7]*x[17]+3.75*x[7]*x[18]-3.34*x[7]*x[23]+3.77*x[7]*x[25]+3.7*x[7]*x[26]+4.68*x[7]*x[28]+1.13*x[7]*x[29]+4.33*x[8]*x[21]+2.89*x[8]*x[23]-4.61*x[8]*x[27]+4.66*x[9]*x[10]+4.86*x[10]-1.49*x[9]*x[23]-2.23*x[9]*x[25]+1.63*x[10]*x[13]-2.5*x[10]*x[18]+4.44*x[10]*x[21]+0.76*x[10]*x[23]+3.21*x[10]*x[27]+3.42*x[10]*x[29]-0.29*x[10]*x[30]+2.21*x[11]*x[25]+4.71*x[12]*x[16]-2.51*x[12]*x[21]+1.59*x[12]*x[28]+2.03*x[13]*x[17]-4.98*x[13]*x[20]+4.4*x[13]*x[26]+3.01*x[14]*x[14]-0.72*x[14]+4.49*x[14]*x[18]+3.96*x[14]*x[29]+0.32*x[15]*x[19]+1.99*x[15]*x[30]+0.76*x[16]*x[17]+4.24*x[16]*x[22]-0.26*x[16]*x[27]+1.01*x[16]*x[28]+0.24*x[16]*x[29]-2.67*x[17]*x[17]+2.73*x[17]*x[23]+4.41*x[18]*x[19]-0.89*x[18]*x[23]+2.95*x[18]*x[24]+1.05*x[18]*x[25]-3.28*x[18]*x[27]+1.35*x[18]*x[30]-4.04*x[19]*x[23]-1.17*x[20]*x[23]-0.52*x[21]*x[25]+0.02*x[21]*x[29]-1.14*x[21]*x[30]-1.41*x[22]*x[25]-3.27*x[23]*x[27]+4.31*x[23]*x[28]-1.03*x[23]*x[29]-4.96*x[24]*x[26]+1.31*x[24]*x[29]-3.92*x[25]*x[26]+0.59*x[25]*x[29]-0.39*x[26]*x[29]+1.75*x[27]*x[28]-1.13*x[27]*x[30] >= 1208.8)
@constraint(m, e11, 2.83*x[1]-3.57*x[2]-3.84*x[4]+1.31*x[5]+2.59*x[7]-2.9*x[10]-1.86*x[14] >= -26.9)
@NLconstraint(m, e12, (-0.8*x[1]*x[2])-4.67*x[1]*x[12]-3.91*x[1]*x[19]-0.13*x[1]*x[20]+0.82*x[1]*x[23]+4.29*x[2]*x[5]-2.33*x[2]*x[10]-0.39*x[2]*x[13]+2.03*x[13]-3.06*x[2]*x[16]-0.17*x[16]-0.33*x[2]*x[17]+4.67*x[17]+3.02*x[2]*x[19]+3.04*x[2]*x[20]+4.57*x[2]*x[22]-2.34*x[2]*x[23]-2.75*x[2]*x[26]+2.58*x[2]*x[27]-3.87*x[2]*x[28]-2.16*x[28]+3.84*x[3]*x[7]-0.81*x[3]*x[11]+2.67*x[3]*x[12]+3.75*x[3]*x[13]-3.05*x[3]*x[20]-2.31*x[3]*x[21]+4.08*x[21]+2.13*x[3]*x[25]-3.11*x[4]*x[9]-1.59*x[4]*x[12]-0.9*x[4]*x[14]-0.56*x[4]*x[19]+1.46*x[4]*x[27]-4.46*x[5]*x[8]-0.69*x[5]*x[15]-1.42*x[5]*x[20]-3.41*x[5]*x[21]+4.34*x[5]*x[27]-3.74*x[5]*x[30]+2.64*x[30]-2.35*x[6]*x[7]+2.29*x[6]-3.7*x[6]*x[12]+0.14*x[6]*x[14]-1.17*x[6]*x[17]+2.71*x[6]*x[30]+4.29*x[7]*x[9]+0.83*x[7]*x[17]-0.37*x[7]*x[23]-4.01*x[8]*x[10]+4.87*x[8]*x[22]-3.3*x[8]*x[23]+1.21*x[8]*x[24]-2.92*x[8]*x[25]-3.91*x[9]*x[13]+4.14*x[9]*x[16]-1.18*x[9]*x[22]+0.05*x[9]*x[23]+2.7*x[9]*x[28]-4.84*x[9]*x[30]+2.49*x[10]*x[13]-2.18*x[10]*x[14]+0.91*x[10]*x[18]-2.96*x[18]+1.34*x[10]*x[21]+1.03*x[10]*x[26]+2.53*x[11]*x[12]+1.89*x[11]*x[15]-1.54*x[11]*x[17]+4.65*x[11]*x[19]+3.11*x[11]*x[24]+0.27*x[11]*x[25]+4.95*x[11]*x[29]-3.44*x[12]*x[13]+4.01*x[12]*x[14]-2.22*x[12]*x[18]+3.91*x[12]*x[22]+3.95*x[12]*x[24]-3.43*x[12]*x[27]-3.7*x[12]*x[28]+1.94*x[12]*x[29]-1.94*x[13]*x[16]+0.26*x[13]*x[18]+4.48*x[13]*x[20]+4.07*x[13]*x[30]-0.94*x[14]*x[20]+2.59*x[14]*x[24]-4.3*x[14]*x[28]-3.9*x[15]*x[16]-0.26*x[15]*x[17]-3.3*x[15]*x[18]+0.68*x[15]*x[19]-2.41*x[15]*x[28]-4.9*x[15]*x[30]+1.36*x[16]*x[16]+4.18*x[16]*x[17]-1.75*x[16]*x[20]+4.56*x[16]*x[27]-1.38*x[17]*x[21]+2.85*x[17]*x[22]-1.58*x[17]*x[25]-2.48*x[17]*x[29]-1.08*x[18]*x[20]+1.48*x[18]*x[22]-0.9*x[18]*x[23]-1.28*x[18]*x[30]+3.19*x[19]*x[21]-1.47*x[19]*x[23]+3.12*x[19]*x[24]+3.01*x[19]*x[27]+4.97*x[19]*x[28]+0.04*x[20]*x[23]-3.52*x[20]*x[29]-0.83*x[20]*x[30]+0.67*x[21]*x[26]-4.63*x[21]*x[27]-3.41*x[21]*x[29]+0.92*x[22]*x[27]+0.22*x[22]*x[30]+4.9*x[23]*x[23]+3.28*x[23]*x[26]+2.83*x[24]*x[25]+0.78*x[24]*x[26]-0.7*x[24]*x[28]-4.97*x[25]*x[26]-0.55*x[25]*x[27]-3.67*x[25]*x[30]+0.49*x[26]*x[27]-4.29*x[26]*x[30]-0.3*x[27]*x[28]-4.83*x[30]*x[30] >= -277.1)
@constraint(m, e13, 0.67*x[2]-0.8*x[5]+1.06*x[14]-0.57*x[21]+2.36*x[22] >= 11.8)
@NLconstraint(m, e14, (-0.06*x[1]*x[4])-2.66*x[1]*x[5]+1.33*x[1]*x[12]-2.02*x[1]*x[15]-1.05*x[1]*x[17]+3.09*x[1]*x[18]+2.43*x[1]*x[30]+1.36*x[2]*x[10]+3.72*x[2]-1.12*x[2]*x[11]+4.01*x[2]*x[12]+1.55*x[2]*x[17]-2.89*x[2]*x[18]-0.69*x[2]*x[23]-3.71*x[2]*x[25]-2.18*x[2]*x[27]+1.49*x[2]*x[28]-0.13*x[28]-0.03*x[3]*x[9]-4.56*x[3]+0.38*x[9]+3.34*x[3]*x[10]-4.75*x[3]*x[12]+3.27*x[3]*x[20]-3.28*x[20]-2.28*x[3]*x[25]-4.12*x[3]*x[27]+3.17*x[3]*x[28]-2.83*x[4]*x[8]+1.98*x[4]*x[12]+1.29*x[4]*x[16]+1.37*x[4]*x[19]+0.45*x[4]*x[22]+0.39*x[4]*x[23]+1.79*x[4]*x[25]-3.16*x[5]*x[12]-4.71*x[5]*x[16]-0.28*x[5]*x[22]-0.3*x[5]*x[23]+3.1*x[5]*x[26]+3.27*x[26]-1.21*x[5]*x[30]-1.74*x[6]*x[6]-3.88*x[6]+0.9*x[6]*x[8]-0.37*x[6]*x[11]+3.08*x[6]*x[17]-1.44*x[6]*x[19]-2.95*x[6]*x[24]-1.33*x[6]*x[25]-1.31*x[7]*x[11]+2.24*x[7]*x[17]+1.32*x[7]*x[19]+1.19*x[7]*x[21]+4.11*x[21]-3.67*x[7]*x[22]+4.07*x[7]*x[28]+2.94*x[8]*x[9]+0.48*x[8]*x[10]-0.35*x[8]*x[11]+4.47*x[8]*x[13]-4.39*x[8]*x[19]-4.16*x[8]*x[21]+0.83*x[9]*x[12]-4.85*x[9]*x[16]+2.43*x[9]*x[17]+0.68*x[9]*x[21]-0.9*x[9]*x[23]+1.72*x[9]*x[25]-0.49*x[9]*x[26]-1.25*x[9]*x[29]+1.5*x[10]*x[11]+1.3*x[10]*x[13]-2.67*x[10]*x[21]-3.71*x[10]*x[22]-3.01*x[10]*x[25]-2.74*x[10]*x[29]+2.9*x[11]*x[26]-1.32*x[11]*x[27]-0.37*x[11]*x[28]+1.8*x[11]*x[29]-1.57*x[12]*x[17]+3.71*x[12]*x[22]-1.19*x[12]*x[27]+2.5*x[12]*x[28]+4.64*x[13]*x[13]-0.02*x[13]*x[15]-3.88*x[13]*x[16]+3.6*x[13]*x[17]+3.5*x[13]*x[19]+3.1*x[13]*x[23]+0.35*x[14]*x[15]-3.25*x[14]*x[26]+4.28*x[14]*x[27]-4.56*x[15]*x[23]-4.76*x[15]*x[28]+2.88*x[16]*x[17]+0.28*x[16]*x[18]+1.98*x[16]*x[19]-1.23*x[16]*x[26]+0.69*x[16]*x[29]-2.98*x[17]*x[20]+2.11*x[17]*x[22]-1.09*x[17]*x[26]-1.5*x[17]*x[30]+1.26*x[18]*x[18]-4.96*x[18]*x[20]+3.48*x[18]*x[29]+3.73*x[19]*x[25]-2.44*x[19]*x[26]-0.05*x[19]*x[28]-2.19*x[20]*x[24]-2.23*x[20]*x[26]+0.22*x[20]*x[28]+2.41*x[21]*x[21]-3.08*x[21]*x[23]-2.97*x[21]*x[25]+1.97*x[21]*x[28]-2.88*x[21]*x[29]-3.5*x[22]*x[26]+4.94*x[22]*x[29]+3.9*x[23]*x[23]+1.76*x[23]*x[24]+0.08*x[23]*x[25]+1.08*x[23]*x[28]+2.9*x[24]*x[24]-0.67*x[24]*x[29]+1.37*x[25]*x[29]+3.46*x[25]*x[30]-3.31*x[26]*x[26]-3.66*x[26]*x[27]-4.86*x[26]*x[29]-4.68*x[28]*x[29] >= -114.9)
@constraint(m, e15, 0.04*x[9]-2.34*x[19]+4.82*x[20]-3.94*x[22]+3.25*x[23]+0.43*x[25]-0.04*x[28] >= 14.4)
@NLconstraint(m, e16, 4.8*x[1]*x[2]-1.5*x[1]*x[1]+1.28*x[1]*x[8]+0.45*x[1]*x[10]-0.07*x[1]*x[16]-2.09*x[1]*x[22]+4.21*x[1]*x[23]-3.63*x[1]*x[27]+1.67*x[2]*x[3]+1.48*x[2]*x[9]-0.35*x[2]*x[10]+4.82*x[2]*x[11]-1.57*x[2]*x[16]+4.85*x[2]*x[17]+4.83*x[2]*x[18]+1.29*x[2]*x[29]-3.84*x[3]*x[6]-0.73*x[3]*x[22]+3.2*x[3]*x[29]-0.96*x[4]*x[5]+2.59*x[4]*x[17]+1.97*x[4]*x[26]+3.99*x[5]*x[8]-4.13*x[5]*x[9]-3.96*x[5]*x[16]-3.72*x[5]*x[25]+0.2*x[6]*x[8]+2.22*x[6]*x[14]-0.78*x[6]*x[24]+3.49*x[6]*x[28]-3.35*x[6]*x[30]-0.14*x[7]*x[8]-1.28*x[7]*x[15]-0.77*x[7]*x[18]-4.57*x[7]*x[20]-3.41*x[7]*x[23]+0.1*x[7]*x[25]-2.63*x[7]*x[28]-4.36*x[8]*x[20]-4.36*x[8]*x[23]+4.23*x[8]*x[24]+0.95*x[8]*x[28]+1.74*x[9]*x[11]+1.4*x[9]*x[15]+3.27*x[9]*x[26]+1.9*x[9]*x[27]+0.25*x[10]*x[20]-1.04*x[10]*x[21]+0.13*x[21]-1.68*x[10]*x[25]-2.93*x[10]*x[27]-3.37*x[10]*x[28]-4*x[10]*x[30]+0.35*x[11]*x[12]+1.51*x[11]*x[18]-2.63*x[11]*x[24]-1.49*x[11]*x[27]+1.74*x[12]*x[15]-1.43*x[12]*x[18]+2.61*x[12]*x[20]+0.29*x[12]*x[25]+4.89*x[12]*x[30]+3.25*x[13]*x[18]+2.5*x[13]-1.28*x[13]*x[29]+2.18*x[13]*x[30]-0.22*x[14]*x[14]-3.47*x[14]*x[20]-2.94*x[14]*x[21]+2.52*x[14]*x[24]+1.71*x[14]*x[27]+0.56*x[15]*x[16]+4.28*x[15]*x[19]-1.94*x[19]-3.29*x[15]*x[21]-2.49*x[16]*x[19]-2.4*x[16]*x[21]-3.02*x[16]*x[27]-0.57*x[16]*x[28]+2*x[17]*x[19]+2.29*x[17]*x[22]+3.37*x[17]*x[26]-1.28*x[18]*x[18]+1.61*x[18]*x[19]-3.8*x[18]*x[23]+4.72*x[18]*x[25]+4.67*x[18]*x[29]-0.84*x[19]*x[26]-3.1*x[19]*x[29]-0.87*x[20]*x[23]-0.68*x[20]*x[25]+2.25*x[20]*x[26]-3.88*x[21]*x[23]-2.98*x[21]*x[27]+1.36*x[22]*x[23]-3.88*x[22]*x[27]-4.12*x[22]*x[28]+1.69*x[22]*x[30]+1.41*x[23]*x[25]-1.06*x[24]*x[28]-1.47*x[24]*x[30]-0.97*x[25]*x[27]-0.49*x[26]*x[27]-0.6*x[26]*x[28]-3.85*x[26]*x[29]-1.1*x[26]*x[30]+1.35*x[29]*x[30] >= -469.0)
@NLconstraint(m, e17, -(5.31*x[1]*x[1]-7.55*x[1]+5.76*x[1]*x[2]+3.44*x[2]+2.47*x[1]*x[3]+9.69*x[3]+4.24*x[1]*x[4]+0.08*x[4]+5.06*x[1]*x[5]+8.53*x[5]+1.25*x[1]*x[6]+6.25*x[6]+7.35*x[1]*x[7]-6.16*x[7]+9.02*x[1]*x[8]+2.76*x[8]+3.56*x[1]*x[9]+2.44*x[9]+7.72*x[1]*x[10]+7.24*x[10]+6.05*x[1]*x[11]+6.74*x[11]+3.83*x[1]*x[12]+3.46*x[12]+3.33*x[1]*x[13]+7.39*x[13]+7.7*x[1]*x[14]+8.75*x[14]+2.28*x[1]*x[15]+5.16*x[15]+8.83*x[1]*x[16]+9.14*x[16]+4.03*x[1]*x[17]+4.18*x[17]+2.63*x[1]*x[18]+3.59*x[18]+7.02*x[1]*x[19]+6.74*x[19]-1.49*x[1]*x[20]+5.79*x[20]+1.55*x[1]*x[21]+3.79*x[21]+7.77*x[1]*x[22]+6.03*x[22]+3.01*x[1]*x[23]+7.04*x[23]+7.8*x[1]*x[24]+7.56*x[24]+2.42*x[1]*x[25]+7.36*x[25]+5.21*x[1]*x[26]+2.73*x[26]+9.28*x[1]*x[27]+4.08*x[27]+0.78*x[1]*x[28]+6.26*x[28]+9.34*x[1]*x[29]+7.22*x[29]+4.74*x[1]*x[30]+5.66*x[30]+4.22*x[2]*x[2]+8.61*x[2]*x[3]+8.92*x[2]*x[4]+7.2*x[2]*x[5]+0.64*x[2]*x[6]+9.43*x[2]*x[7]+7.43*x[2]*x[8]+0.12*x[2]*x[9]+1.24*x[2]*x[10]+5.13*x[2]*x[11]+5.56*x[2]*x[12]+0.15*x[2]*x[13]+7.88*x[2]*x[14]+1.19*x[2]*x[15]+8.14*x[2]*x[16]+2.13*x[2]*x[17]+3.26*x[2]*x[18]+4.87*x[2]*x[19]+9.72*x[2]*x[20]+9.45*x[2]*x[21]+8.14*x[2]*x[22]-8.88*x[2]*x[23]+2*x[2]*x[24]+5.27*x[2]*x[25]+2.9*x[2]*x[26]+2.7*x[2]*x[27]+3.95*x[2]*x[28]+9.56*x[2]*x[29]+6.54*x[2]*x[30]+8.78*x[3]*x[3]+0.72*x[3]*x[4]+1.25*x[3]*x[5]+1.87*x[3]*x[6]+5.8*x[3]*x[7]+2.04*x[3]*x[8]+0.6*x[3]*x[9]+0.04*x[3]*x[10]+6.16*x[3]*x[11]+6.35*x[3]*x[12]+1.15*x[3]*x[13]-3.03*x[3]*x[14]+9.88*x[3]*x[15]+1.3*x[3]*x[16]+6.09*x[3]*x[17]+7.54*x[3]*x[18]+2.15*x[3]*x[19]+6.74*x[3]*x[20]+8.78*x[3]*x[21]+8.58*x[3]*x[22]+6.64*x[3]*x[23]+1.13*x[3]*x[24]+1.94*x[3]*x[25]+6.31*x[3]*x[26]+1.82*x[3]*x[27]-7.17*x[3]*x[28]+5.38*x[3]*x[29]+4.58*x[3]*x[30]+2.47*x[4]*x[4]-7.81*x[4]*x[5]+6.79*x[4]*x[6]+4.53*x[4]*x[7]+3.5*x[4]*x[8]+8.33*x[4]*x[9]+5.48*x[4]*x[10]+1.7*x[4]*x[11]+8.42*x[4]*x[12]+5.6*x[4]*x[13]+3.49*x[4]*x[14]-0.19*x[4]*x[15]+9.4*x[4]*x[16]+0.45*x[4]*x[17]+4.06*x[4]*x[18]+2.16*x[4]*x[19]-1.41*x[4]*x[20]+3.96*x[4]*x[21]+1.87*x[4]*x[22]+6.22*x[4]*x[23]+7.39*x[4]*x[24]+3.77*x[4]*x[25]+4.95*x[4]*x[26]+3.06*x[4]*x[27]+6.71*x[4]*x[28]+1.2*x[4]*x[29]+2.8*x[4]*x[30]+1.85*x[5]*x[5]+4.17*x[5]*x[6]+5.23*x[5]*x[7]+0.49*x[5]*x[8]+5.78*x[5]*x[9]+1.62*x[5]*x[10]+4.22*x[5]*x[11]+3.42*x[5]*x[12]+0.2*x[5]*x[13]+9.51*x[5]*x[14]+1.33*x[5]*x[15]+2.38*x[5]*x[16]+1.79*x[5]*x[17]+0.42*x[5]*x[18]+4.58*x[5]*x[19]+3.69*x[5]*x[20]+2.2*x[5]*x[21]-1.9*x[5]*x[22]+7.39*x[5]*x[23]+3.92*x[5]*x[24]+4.61*x[5]*x[25]+0.65*x[5]*x[26]+0.81*x[5]*x[27]+4.16*x[5]*x[28]+6.65*x[5]*x[29]+5.38*x[5]*x[30]+2.94*x[6]*x[6]+3.29*x[6]*x[7]+8.06*x[6]*x[8]-0.48*x[6]*x[9]+6.97*x[6]*x[10]+5*x[6]*x[11]+6.63*x[6]*x[12]+7.6*x[6]*x[13]+3.38*x[6]*x[14]+8.31*x[6]*x[15]+0.75*x[6]*x[16]+7.5*x[6]*x[17]+7.46*x[6]*x[18]+6.24*x[6]*x[19]+2.09*x[6]*x[20]+9.18*x[6]*x[21]+7.97*x[6]*x[22]+2.27*x[6]*x[23]+6.81*x[6]*x[24]+8.62*x[6]*x[25]+8.03*x[6]*x[26]+9.34*x[6]*x[27]+8.74*x[6]*x[28]+4.26*x[6]*x[29]+3.94*x[6]*x[30]+1.09*x[7]*x[7]+2.93*x[7]*x[8]+1.34*x[7]*x[9]+3.15*x[7]*x[10]+9.93*x[7]*x[11]+3.14*x[7]*x[12]+2.4*x[7]*x[13]-6.99*x[7]*x[14]+1.74*x[7]*x[15]+1.53*x[7]*x[16]+6.14*x[7]*x[17]+9.51*x[7]*x[18]+1.84*x[7]*x[19]+4.1*x[7]*x[20]+1.61*x[7]*x[21]+7.91*x[7]*x[22]-1.87*x[7]*x[23]+0.31*x[7]*x[24]+0.26*x[7]*x[25]+5.87*x[7]*x[26]+2.39*x[7]*x[27]+0.27*x[7]*x[28]+2.7*x[7]*x[29]+5.52*x[7]*x[30]+0.72*x[8]*x[8]+7.98*x[8]*x[9]+2.62*x[8]*x[10]-9.06*x[8]*x[11]+8.9*x[8]*x[12]+4.02*x[8]*x[13]+4.87*x[8]*x[14]+5.91*x[8]*x[15]+1.25*x[8]*x[16]-6.22*x[8]*x[17]+0.04*x[8]*x[18]+6.36*x[8]*x[19]+6.45*x[8]*x[20]+1.55*x[8]*x[21]+2.56*x[8]*x[22]+7.76*x[8]*x[23]+3.56*x[8]*x[24]+7.96*x[8]*x[25]+4.7*x[8]*x[26]+3.96*x[8]*x[27]+6.93*x[8]*x[28]+9.27*x[8]*x[29]+3.5*x[8]*x[30]+4.14*x[9]*x[9]+9.52*x[9]*x[10]+1.87*x[9]*x[11]+2.87*x[9]*x[12]+1.87*x[9]*x[13]+9.31*x[9]*x[14]+6.4*x[9]*x[15]+8.09*x[9]*x[16]+0.35*x[9]*x[17]+8.67*x[9]*x[18]-3.07*x[9]*x[19]+4.83*x[9]*x[20]+4.86*x[9]*x[21]+1.13*x[9]*x[22]+3.85*x[9]*x[23]+9.94*x[9]*x[24]+8.14*x[9]*x[25]+5.41*x[9]*x[26]+0.15*x[9]*x[27]+6.13*x[9]*x[28]+9.89*x[9]*x[29]+1.33*x[9]*x[30]+9.33*x[10]*x[10]+7.76*x[10]*x[11]+6.13*x[10]*x[12]+7.32*x[10]*x[13]+8.42*x[10]*x[14]+10*x[10]*x[15]+9.54*x[10]*x[16]+4.2*x[10]*x[17]+8.72*x[10]*x[18]+8.38*x[10]*x[19]+6.49*x[10]*x[20]+4.88*x[10]*x[21]+9.37*x[10]*x[22]-1.11*x[10]*x[23]+1.92*x[10]*x[24]+4.75*x[10]*x[25]+3.69*x[10]*x[26]+1.15*x[10]*x[27]+7.88*x[10]*x[28]+2.34*x[10]*x[29]+6.43*x[10]*x[30]+0.49*x[11]*x[11]-6.66*x[11]*x[12]+5.12*x[11]*x[13]+5.57*x[11]*x[14]+3.49*x[11]*x[15]-4.59*x[11]*x[16]+9.86*x[11]*x[17]+6.97*x[11]*x[18]+1.78*x[11]*x[19]+7.23*x[11]*x[20]+2.46*x[11]*x[21]+5.44*x[11]*x[22]+7.73*x[11]*x[23]+2.05*x[11]*x[24]-6.91*x[11]*x[25]+0.53*x[11]*x[26]+8.66*x[11]*x[27]+9.51*x[11]*x[28]+7.89*x[11]*x[29]+0.56*x[11]*x[30]+9.18*x[12]*x[12]+8.42*x[12]*x[13]+6.94*x[12]*x[14]-3.33*x[12]*x[15]+3.56*x[12]*x[16]+6.58*x[12]*x[17]+6.76*x[12]*x[18]+6.9*x[12]*x[19]+5.53*x[12]*x[20]+2.57*x[12]*x[21]+3.27*x[12]*x[22]+8.96*x[12]*x[23]+7.65*x[12]*x[24]-9.76*x[12]*x[25]+0.26*x[12]*x[26]+8.09*x[12]*x[27]+7.36*x[12]*x[28]+8.26*x[12]*x[29]+6.22*x[12]*x[30]+5.46*x[13]*x[13]+2.01*x[13]*x[14]+5.96*x[13]*x[15]+8.08*x[13]*x[16]+0.46*x[13]*x[17]+10*x[13]*x[18]+4.53*x[13]*x[19]+1.52*x[13]*x[20]+8.48*x[13]*x[21]+0.15*x[13]*x[22]+1.2*x[13]*x[23]-2.53*x[13]*x[24]+4.5*x[13]*x[25]+6.65*x[13]*x[26]+2.45*x[13]*x[27]+9.97*x[13]*x[28]+0.82*x[13]*x[29]-1.64*x[13]*x[30]+0.42*x[14]*x[14]+3.74*x[14]*x[15]+2.38*x[14]*x[16]+2.66*x[14]*x[17]-7.98*x[14]*x[18]+8.32*x[14]*x[19]+8.14*x[14]*x[20]+7.15*x[14]*x[21]+3.52*x[14]*x[22]+6.25*x[14]*x[23]+1.88*x[14]*x[24]-1.18*x[14]*x[25]+1.18*x[14]*x[26]+1.43*x[14]*x[27]-0.99*x[14]*x[28]+4.62*x[14]*x[29]+7.71*x[14]*x[30]+6.72*x[15]*x[15]+6.5*x[15]*x[16]+9.93*x[15]*x[17]+1.65*x[15]*x[18]+5.66*x[15]*x[19]+3.02*x[15]*x[20]+6.71*x[15]*x[21]+6.01*x[15]*x[22]-2.99*x[15]*x[23]-1.79*x[15]*x[24]+9.32*x[15]*x[25]+0.18*x[15]*x[26]+3.54*x[15]*x[27]+5.49*x[15]*x[28]+9.56*x[15]*x[29]+2.11*x[15]*x[30]+4.37*x[16]*x[16]+8.02*x[16]*x[17]-1.8*x[16]*x[18]-6.71*x[16]*x[19]+9.64*x[16]*x[20]+7.99*x[16]*x[21]+2.68*x[16]*x[22]+1.37*x[16]*x[23]+3.11*x[16]*x[24]+9*x[16]*x[25]+2.42*x[16]*x[26]+4.5*x[16]*x[27]+7.72*x[16]*x[28]+5.47*x[16]*x[29]+0.23*x[16]*x[30]+8.15*x[17]*x[17]+7.21*x[17]*x[18]-7.24*x[17]*x[19]+0.67*x[17]*x[20]+0.54*x[17]*x[21]+9.16*x[17]*x[22]+1.46*x[17]*x[23]+3.44*x[17]*x[24]+9.39*x[17]*x[25]+4.45*x[17]*x[26]+5.26*x[17]*x[27]+3.58*x[17]*x[28]+2.25*x[17]*x[29]+2.57*x[17]*x[30]+7.53*x[18]*x[18]+4.34*x[18]*x[19]+4.37*x[18]*x[20]+7.64*x[18]*x[21]+3.28*x[18]*x[22]+0.02*x[18]*x[23]+0.43*x[18]*x[24]+4.72*x[18]*x[25]+9.11*x[18]*x[26]-0.71*x[18]*x[27]+0.79*x[18]*x[28]+1.16*x[18]*x[29]+3.04*x[18]*x[30]+6.36*x[19]*x[19]+8.38*x[19]*x[20]+2.66*x[19]*x[21]+7.4*x[19]*x[22]+2.27*x[19]*x[23]+7.06*x[19]*x[24]+8.72*x[19]*x[25]+7.91*x[19]*x[26]+3.21*x[19]*x[27]+7.39*x[19]*x[28]+7.15*x[19]*x[29]+7.67*x[19]*x[30]+8.22*x[20]*x[20]+0.87*x[20]*x[21]+2.39*x[20]*x[22]+9.28*x[20]*x[23]+3.58*x[20]*x[24]-8.38*x[20]*x[25]+7.27*x[20]*x[26]+3.72*x[20]*x[27]+5.84*x[20]*x[28]+4*x[20]*x[29]+2.88*x[20]*x[30]+9.19*x[21]*x[21]+2.2*x[21]*x[22]+9.86*x[21]*x[23]+6.35*x[21]*x[24]+8.64*x[21]*x[25]+0.53*x[21]*x[26]+3.34*x[21]*x[27]+1.06*x[21]*x[28]+9.16*x[21]*x[29]+6.06*x[21]*x[30]+2.08*x[22]*x[22]+9.12*x[22]*x[23]+1.81*x[22]*x[24]+7*x[22]*x[25]+8.23*x[22]*x[26]+0.72*x[22]*x[27]+5.32*x[22]*x[28]+6.32*x[22]*x[29]+7.48*x[22]*x[30]+0.07*x[23]*x[23]-2.09*x[23]*x[24]+1.74*x[23]*x[25]+4.02*x[23]*x[26]+2.61*x[23]*x[27]-9.81*x[23]*x[28]+1.33*x[23]*x[29]+7.36*x[23]*x[30]+3.15*x[24]*x[24]+7.38*x[24]*x[25]+6.69*x[24]*x[26]-1.82*x[24]*x[27]+9.71*x[24]*x[28]+8.33*x[24]*x[29]+1.02*x[24]*x[30]+4.81*x[25]*x[25]+2.63*x[25]*x[26]+0.32*x[25]*x[27]+4.25*x[25]*x[28]+4.62*x[25]*x[29]+3.75*x[25]*x[30]+4.09*x[26]*x[26]+2.43*x[26]*x[27]-3.91*x[26]*x[28]+5.26*x[26]*x[29]+0.31*x[26]*x[30]+3.48*x[27]*x[27]+9.56*x[27]*x[28]+2.98*x[27]*x[29]+7.85*x[27]*x[30]+6.61*x[28]*x[28]+5.12*x[28]*x[29]+3.69*x[28]*x[30]+1.72*x[29]*x[29]+7.53*x[29]*x[30]+6.49*x[30]*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script. 
