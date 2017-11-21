using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
setlowerbound(x[19], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[1], 1.0)
setupperbound(x[1], 10.0)
setlowerbound(x[2], 2.0)
setupperbound(x[2], 9.0)
setlowerbound(x[3], 1.0)
setupperbound(x[3], 8.0)
setlowerbound(x[4], 2.0)
setupperbound(x[4], 9.0)
setlowerbound(x[5], 2.0)
setupperbound(x[5], 7.0)
setlowerbound(x[6], 4.0)
setupperbound(x[6], 9.0)
setlowerbound(x[7], 2.0)
setupperbound(x[7], 9.0)
setlowerbound(x[8], 1.0)
setupperbound(x[8], 6.0)
setlowerbound(x[9], 4.0)
setupperbound(x[9], 7.0)
setlowerbound(x[10], 4.0)
setupperbound(x[10], 8.0)
setlowerbound(x[11], 3.0)
setupperbound(x[11], 10.0)
setlowerbound(x[12], 3.0)
setupperbound(x[12], 8.0)
setlowerbound(x[13], 4.0)
setupperbound(x[13], 9.0)
setlowerbound(x[14], 2.0)
setupperbound(x[14], 7.0)
setlowerbound(x[15], 2.0)
setupperbound(x[15], 7.0)
setlowerbound(x[16], 4.0)
setupperbound(x[16], 8.0)
setlowerbound(x[17], 1.0)
setupperbound(x[17], 7.0)
setlowerbound(x[18], 3.0)
setupperbound(x[18], 6.0)
setupperbound(x[19], 9.0)
setupperbound(x[20], 7.0)
setlowerbound(x[21], 4.0)
setupperbound(x[21], 10.0)
setlowerbound(x[22], 1.0)
setupperbound(x[22], 9.0)
setlowerbound(x[23], 1.0)
setupperbound(x[23], 8.0)
setlowerbound(x[24], 4.0)
setupperbound(x[24], 6.0)
setlowerbound(x[25], 2.0)
setupperbound(x[25], 6.0)
setlowerbound(x[26], 4.0)
setupperbound(x[26], 8.0)
setlowerbound(x[27], 3.0)
setupperbound(x[27], 8.0)
setlowerbound(x[28], 3.0)
setupperbound(x[28], 10.0)
setlowerbound(x[29], 4.0)
setupperbound(x[29], 7.0)
setlowerbound(x[30], 1.0)
setupperbound(x[30], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.4*x[1]+0.58*x[2]+4.76*x[3]+x[14]-1.8*x[16]-4.06*x[19]-0.2*x[20]+0.23*x[22]+3.81*x[27] >= 19.1)
@NLconstraint(m, e2, 1.15*x[1]*x[2]-3.47*x[1]*x[4]-3.74*x[4]+4.45*x[1]*x[9]+1.19*x[1]*x[10]-1.66*x[1]*x[11]+2*x[11]-1.13*x[1]*x[12]-1.47*x[1]*x[14]-2.41*x[1]*x[19]+2.46*x[1]*x[20]+2.8*x[1]*x[22]+4.41*x[1]*x[25]-3.12*x[25]+4.18*x[1]*x[27]+1.45*x[27]-0.41*x[1]*x[29]+4*x[29]-3.3*x[2]*x[2]-2*x[2]*x[9]+4.18*x[2]*x[13]-1.99*x[2]*x[14]-0.13*x[2]*x[16]+1.53*x[16]+3.76*x[2]*x[18]-2.41*x[2]*x[21]+0.43*x[3]*x[3]-0.56*x[3]*x[4]-4.47*x[3]*x[6]+3.76*x[3]*x[7]+2.44*x[3]*x[8]+2.83*x[3]*x[9]+0.63*x[3]*x[10]-0.05*x[3]*x[11]+0.9*x[3]*x[22]+4.3*x[3]*x[29]-3.32*x[3]*x[30]+2.56*x[30]+2.22*x[4]*x[4]-1.79*x[4]*x[5]-4.96*x[4]*x[14]+4.56*x[4]*x[20]+1.02*x[4]*x[21]+2.81*x[4]*x[29]-0.36*x[5]*x[7]+3.7*x[5]*x[12]-2.22*x[5]*x[25]+1.95*x[6]*x[8]+3.1*x[6]*x[11]+0.15*x[6]*x[14]+1.47*x[6]*x[16]+1.39*x[6]*x[19]-1.86*x[6]*x[21]+1.45*x[6]*x[22]+4.62*x[6]*x[25]-1.01*x[7]*x[13]+0.65*x[7]*x[15]-3.48*x[7]*x[17]+2.49*x[7]*x[25]-4.4*x[7]*x[29]+3.22*x[7]*x[30]+0.72*x[8]*x[13]+0.95*x[8]*x[16]-3.83*x[8]*x[20]+4.48*x[8]*x[24]-0.1*x[24]+0.01*x[8]*x[28]+3.95*x[9]*x[11]-2.15*x[9]*x[14]-4.26*x[9]*x[17]+3.68*x[9]*x[23]-1.95*x[9]*x[28]-4.92*x[10]*x[11]-3.33*x[10]*x[17]-0.42*x[10]*x[19]+1.8*x[10]*x[27]-0.13*x[11]*x[12]+3.97*x[11]*x[13]+2.93*x[11]*x[14]+2.23*x[11]*x[15]+3.03*x[11]*x[16]-4.34*x[11]*x[17]+1.64*x[11]*x[28]-1.4*x[12]*x[12]-3.18*x[12]*x[13]+4.92*x[12]*x[17]+3.67*x[12]*x[18]-2.16*x[12]*x[23]-3.53*x[12]*x[24]-1.52*x[12]*x[28]-3.19*x[12]*x[29]-3.86*x[13]*x[17]+4.83*x[13]*x[22]-1.79*x[13]*x[24]-0.56*x[13]*x[26]+3.68*x[26]+0.18*x[13]*x[29]+0.42*x[15]*x[22]-3.4*x[15]*x[24]+0.05*x[15]*x[25]-4.42*x[15]*x[29]+1.18*x[16]*x[21]+4.46*x[16]*x[25]-4.4*x[16]*x[30]-4.57*x[17]*x[24]-3.66*x[18]*x[25]+4.3*x[18]*x[27]-4.36*x[19]*x[19]-4.2*x[19]*x[20]+4.94*x[19]*x[23]+4.05*x[19]*x[24]-0.46*x[19]*x[26]+4.17*x[19]*x[27]-3.38*x[19]*x[30]-1.78*x[20]*x[21]-2.28*x[20]*x[23]+4.93*x[20]*x[24]-2.81*x[20]*x[26]-1.01*x[22]*x[22]-4.8*x[22]*x[24]-4.97*x[22]*x[26]+2.75*x[23]*x[23]+2.35*x[23]*x[28]+4.7*x[24]*x[27]+2.62*x[25]*x[26]-4.92*x[25]*x[29]+1.62*x[26]*x[27]+3.96*x[26]*x[29]-3.99*x[28]*x[29] >= 537.0)
@constraint(m, e3, 3.1*x[1]+2.99*x[3]+4.01*x[14]-1.41*x[15]-2.76*x[20]+0.44*x[23]-1.14*x[28]+3.62*x[30] >= 47.0)
@NLconstraint(m, e4, 2.69*x[1]*x[2]+1.58*x[1]-2.45*x[1]*x[6]-0.55*x[1]*x[8]-3.2*x[8]-2.99*x[1]*x[10]-1.49*x[10]-3.77*x[1]*x[13]+0.69*x[1]*x[17]-3.57*x[1]*x[18]+4.61*x[18]+0.45*x[1]*x[22]-0.41*x[22]+0.47*x[1]*x[25]+4.3*x[1]*x[27]-0.36*x[27]+1.69*x[2]*x[2]+1.25*x[2]*x[3]-2.57*x[2]*x[7]-1.04*x[7]-4.1*x[2]*x[8]-0.94*x[2]*x[13]+1.97*x[2]*x[26]+1.28*x[2]*x[29]-3.61*x[29]-x[3]*x[11]-1.24*x[3]*x[13]-2.49*x[3]*x[17]+2.74*x[3]*x[22]+2.3*x[3]*x[23]-3.24*x[3]*x[29]-1.25*x[4]*x[7]-1.01*x[4]-2.4*x[4]*x[10]-1.97*x[4]*x[15]-2.7*x[4]*x[18]-0.07*x[4]*x[25]-4.77*x[4]*x[30]-4.53*x[5]*x[21]-4.43*x[6]*x[10]+2.81*x[6]*x[14]-1.01*x[6]*x[16]-4.87*x[16]-1.04*x[6]*x[23]-1.07*x[7]*x[12]+0.6*x[7]*x[14]+1.18*x[7]*x[15]-3.72*x[7]*x[16]-4.99*x[7]*x[17]-1.03*x[7]*x[20]-2.06*x[7]*x[22]+4.26*x[8]*x[14]-1.98*x[8]*x[21]+0.94*x[8]*x[23]-1.85*x[8]*x[25]-1.3*x[8]*x[30]+0.92*x[9]*x[10]-4.44*x[9]*x[11]+3.86*x[9]*x[13]-4.27*x[9]*x[14]+3.71*x[9]*x[18]+4.42*x[9]*x[21]-2.33*x[9]*x[24]-3.12*x[9]*x[26]+4.19*x[9]*x[30]+4.6*x[10]*x[13]-0.66*x[10]*x[14]+3.35*x[10]*x[18]+4.77*x[10]*x[24]+0.52*x[11]*x[14]+0.81*x[11]*x[23]+3.52*x[11]*x[24]+1.94*x[12]*x[18]+3.63*x[12]*x[24]+2.3*x[12]*x[25]+3.05*x[12]*x[26]+1.84*x[13]*x[13]+2.27*x[13]*x[20]+3.47*x[13]*x[23]-2.73*x[14]*x[15]+2.24*x[14]*x[23]+0.07*x[14]*x[24]-1.91*x[15]*x[17]+0.66*x[15]*x[20]-3.19*x[15]*x[22]-0.65*x[15]*x[23]-4.71*x[15]*x[26]+1.41*x[16]*x[20]-4.45*x[16]*x[28]+0.08*x[17]*x[20]-3.34*x[17]*x[29]-4.73*x[17]*x[30]-1.68*x[18]*x[21]-2*x[18]*x[26]+2.78*x[19]*x[20]+3.93*x[19]*x[21]+5*x[19]*x[24]-4.87*x[19]*x[26]-3.85*x[19]*x[27]+3.76*x[19]*x[28]+4.63*x[19]*x[29]-4.22*x[19]*x[30]-3.37*x[20]*x[23]-3.78*x[21]*x[25]+1.83*x[21]*x[26]-3.29*x[21]*x[30]+0.4*x[22]*x[22]-0.33*x[22]*x[28]+3*x[23]*x[29]-0.17*x[23]*x[30]+0.12*x[24]*x[24]-4.92*x[24]*x[29]+0.42*x[24]*x[30]-2.54*x[25]*x[26]+4.85*x[25]*x[28]+3.87*x[26]*x[27]-4.34*x[26]*x[28]+4.41*x[27]*x[28]+1.22*x[29]*x[29] >= -972.9)
@constraint(m, e5, 0.65*x[1]-0.41*x[2]-1.52*x[3]+4.05*x[10]+3.29*x[12]-4.69*x[14]-4.96*x[22]-3.2*x[23]+4.32*x[26] >= 2.5)
@NLconstraint(m, e6, 4.76*x[1]*x[7]-0.93*x[1]*x[3]-3.88*x[1]*x[9]-2.29*x[9]+1.4*x[1]*x[14]+1.06*x[1]*x[21]-0.02*x[2]*x[5]+3.6*x[2]*x[7]-0.28*x[2]*x[11]-3.1*x[2]*x[15]-0.6*x[2]*x[18]-1.13*x[18]+1.59*x[2]*x[19]-1.4*x[19]+1.39*x[2]*x[21]-4.47*x[2]*x[24]+0.34*x[2]*x[25]+0.33*x[3]*x[6]-0.31*x[3]*x[16]+1.08*x[16]+4.31*x[3]*x[22]-1.77*x[3]*x[23]-4.98*x[3]*x[27]+3.48*x[4]*x[5]-0.95*x[4]*x[8]+1.01*x[4]*x[12]-3.56*x[4]*x[13]+0.53*x[4]*x[21]-2.9*x[4]*x[22]-2.22*x[4]*x[25]+2.75*x[5]*x[7]-0.4*x[5]*x[10]-3.98*x[5]*x[11]-4.95*x[5]*x[18]+3.62*x[5]*x[23]-3.97*x[5]*x[25]-0.35*x[6]*x[7]-3.53*x[6]*x[8]+3.53*x[6]*x[10]+0.5*x[6]*x[11]+0.87*x[6]*x[18]+1.14*x[6]*x[24]+0.84*x[6]*x[29]+3.98*x[6]*x[30]-2.94*x[7]*x[11]+2.95*x[7]*x[12]-0.24*x[7]*x[20]+3.91*x[7]*x[22]+0.79*x[7]*x[24]-0.84*x[7]*x[26]-3.68*x[26]-4.97*x[7]*x[27]+3.03*x[8]*x[8]-1.11*x[8]*x[9]+1.5*x[8]*x[10]-0.43*x[8]*x[11]+2.78*x[8]*x[12]+0.93*x[8]*x[13]+2.75*x[8]*x[17]-1.71*x[17]-2.23*x[8]*x[24]-1.98*x[8]*x[25]+2.05*x[8]*x[26]+2.77*x[9]*x[13]+1.95*x[9]*x[15]-0.54*x[9]*x[19]-4.12*x[9]*x[27]-0.6*x[10]*x[11]-4.29*x[10]*x[12]-3.63*x[10]*x[14]+1.33*x[10]*x[17]-4.75*x[10]*x[18]+0.52*x[10]*x[19]+3.45*x[10]*x[20]-2.84*x[10]*x[21]+0.99*x[10]*x[22]+1.32*x[10]*x[23]-3.49*x[10]*x[24]+1.5*x[10]*x[25]+0.52*x[10]*x[29]-2.25*x[10]*x[30]+3.74*x[11]*x[12]+0.28*x[11]*x[17]+1.85*x[11]*x[21]-4.96*x[11]*x[22]+1.32*x[11]*x[26]-3.1*x[11]*x[29]+1.6*x[11]*x[30]+4.71*x[12]*x[13]-0.71*x[12]*x[18]+1.45*x[12]*x[19]-4.72*x[12]*x[21]+3.69*x[12]*x[22]-4.36*x[12]*x[25]+0.68*x[13]*x[18]+0.09*x[13]*x[20]-1.54*x[13]*x[24]-3.14*x[13]*x[25]+4.79*x[13]*x[27]+3.22*x[14]*x[20]+3.88*x[14]*x[23]+3.11*x[14]*x[25]-0.44*x[14]*x[28]+3.52*x[14]*x[30]+4.13*x[15]*x[15]+0.9*x[15]*x[17]-0.68*x[15]*x[18]+3.76*x[15]*x[27]+4.99*x[16]*x[16]+0.32*x[16]*x[20]+3.38*x[16]*x[27]+0.56*x[16]*x[29]-0.71*x[16]*x[30]+2.92*x[17]*x[22]+0.92*x[17]*x[24]+1.31*x[17]*x[25]+0.76*x[17]*x[26]+1.16*x[18]*x[18]+1.27*x[18]*x[28]-2.73*x[19]*x[21]+0.44*x[20]*x[20]-3.82*x[20]*x[22]+0.56*x[20]*x[27]+1.5*x[20]*x[28]+3.23*x[21]*x[29]+4.79*x[22]*x[22]+2.2*x[22]*x[27]-1.18*x[22]*x[29]+0.82*x[23]*x[26]+3.22*x[24]*x[24]-4.37*x[24]*x[25]-0.8*x[25]*x[28]+1.71*x[26]*x[29]+3.09*x[29]*x[29] >= 1372.9)
@constraint(m, e7, 4.14*x[1]-4.83*x[4]+1.31*x[8]+0.82*x[9]-2*x[10]-1.66*x[12]-0.95*x[15]+3.82*x[22]-4.46*x[25]-2.87*x[27]-4.33*x[28] >= -62.8)
@NLconstraint(m, e8, 0.75*x[1]-3.5*x[1]*x[2]+4.49*x[1]*x[3]-3.24*x[1]*x[9]+3.28*x[9]+4.88*x[1]*x[19]-4.3*x[19]+4.44*x[1]*x[30]+2.18*x[2]*x[4]-3.13*x[4]-1.17*x[2]*x[5]+1.07*x[2]*x[6]-0.9*x[2]*x[9]+0.01*x[2]*x[10]-3.22*x[10]+0.52*x[2]*x[18]-3.87*x[2]*x[19]-4.83*x[2]*x[21]-2.72*x[2]*x[22]+3.59*x[2]*x[29]+1.87*x[3]*x[6]+2.09*x[3]*x[7]+3.43*x[3]*x[15]+1.85*x[3]*x[17]-3.04*x[3]*x[18]-0.85*x[3]*x[20]+3.05*x[3]*x[22]+2.6*x[3]*x[28]+4.45*x[4]*x[5]+0.72*x[4]*x[7]+1.3*x[4]*x[21]-4.45*x[4]*x[24]+1.25*x[4]*x[29]-2.68*x[5]*x[9]+3.25*x[5]*x[12]+4.22*x[5]*x[14]+3.53*x[14]-2.49*x[5]*x[16]-2.14*x[16]+1.97*x[5]*x[20]+4.93*x[5]*x[25]-2.78*x[5]*x[26]-4.34*x[5]*x[27]-0.24*x[5]*x[30]-4.18*x[6]*x[7]-1.06*x[6]*x[9]-1.77*x[6]*x[16]+0.02*x[6]*x[21]-1.44*x[6]*x[27]+0.4*x[6]*x[30]-2.46*x[7]*x[8]+4.55*x[8]+3.58*x[7]*x[9]+1.12*x[7]*x[12]-2.64*x[7]*x[14]+2.1*x[7]*x[17]+0.09*x[7]*x[23]-1.31*x[7]*x[27]-0.42*x[7]*x[30]+1.25*x[8]*x[12]+3.74*x[8]*x[20]-0.88*x[8]*x[22]-0.03*x[8]*x[23]+1.24*x[8]*x[24]+3.74*x[8]*x[28]-4.44*x[8]*x[29]-2.07*x[9]*x[10]-2.63*x[9]*x[13]+0.84*x[13]-0.84*x[9]*x[21]+1.94*x[9]*x[23]-1.54*x[9]*x[25]+0.84*x[10]*x[10]+2.5*x[10]*x[11]-3.66*x[10]*x[12]-4.96*x[10]*x[16]+3.68*x[10]*x[19]+4.79*x[10]*x[26]-1.45*x[10]*x[27]+3.31*x[11]*x[11]-1.41*x[11]*x[12]+2.87*x[11]*x[14]-3.39*x[11]*x[18]-4.05*x[11]*x[25]+0.55*x[11]*x[30]-4.46*x[12]*x[12]-1.33*x[12]*x[13]+1.75*x[12]*x[14]-2.42*x[12]*x[15]+0.69*x[12]*x[19]+3.7*x[12]*x[21]+2.05*x[12]*x[24]+1.85*x[12]*x[28]-2.5*x[12]*x[30]-3*x[13]*x[27]-2.24*x[13]*x[28]-0.06*x[14]*x[14]+2.57*x[14]*x[17]+4.72*x[14]*x[21]-4.79*x[14]*x[24]+0.52*x[15]*x[15]-4.38*x[15]*x[20]-3.37*x[15]*x[24]+4.64*x[15]*x[26]+1.54*x[15]*x[30]+1.23*x[16]*x[19]-1.76*x[16]*x[26]-1.47*x[16]*x[29]-0.41*x[19]*x[19]-0.09*x[19]*x[20]-3.77*x[19]*x[21]-2.97*x[19]*x[22]-1.39*x[19]*x[25]+1.7*x[19]*x[26]-0.86*x[20]*x[20]+4.79*x[20]*x[24]+3.16*x[20]*x[25]-1.02*x[20]*x[28]+1.19*x[22]*x[27]-4.58*x[22]*x[28]-3.11*x[22]*x[30]-4.56*x[23]*x[30]-0.92*x[24]*x[24]-2.7*x[24]*x[29]-2.31*x[26]*x[26]-4.41*x[26]*x[30]+0.67*x[28]*x[28]+0.44*x[28]*x[29]-0.85*x[29]*x[29] >= -912.2)
@constraint(m, e9, -0.11*x[1]-0.45*x[3]+0.76*x[4]+2.58*x[8]-1.04*x[9]-1.99*x[12]-2.05*x[21]+0.2*x[28] >= -19.2)
@NLconstraint(m, e10, 0.6*x[1]*x[1]+1.43*x[1]*x[7]-2.29*x[1]*x[8]-4.82*x[1]*x[12]-0.87*x[12]-1.15*x[1]*x[17]+2.6*x[1]*x[23]+1.36*x[1]*x[30]+2.89*x[30]+2.04*x[2]*x[14]-1.76*x[2]+1.51*x[2]*x[17]+2.5*x[2]*x[23]-1.84*x[2]*x[25]+4.65*x[2]*x[26]+0.78*x[26]-1.27*x[2]*x[28]+0.57*x[28]-1.3*x[2]*x[30]+3.44*x[3]*x[10]+4.05*x[3]+2.69*x[3]*x[12]-4.5*x[3]*x[15]+1.93*x[3]*x[23]-2.01*x[4]*x[5]+0.11*x[4]*x[9]-0.43*x[4]*x[12]-0.71*x[4]*x[21]+2.34*x[21]+1.01*x[4]*x[23]-1.06*x[4]*x[27]-2.88*x[5]*x[5]-2.02*x[5]*x[6]-3.9*x[5]*x[7]-4.01*x[5]*x[8]-1.38*x[5]*x[11]-0.55*x[11]+0.49*x[5]*x[22]-1.74*x[5]*x[23]-0.79*x[5]*x[25]+4.13*x[5]*x[28]+3.93*x[5]*x[30]-0.64*x[6]*x[29]+2.45*x[7]*x[15]-3.65*x[7]*x[17]-0.24*x[7]*x[21]-4.49*x[7]*x[25]-1.68*x[7]*x[30]-1.52*x[8]*x[10]-1.62*x[8]*x[15]-1.3*x[8]*x[18]+1.29*x[18]-2.61*x[8]*x[19]-2.62*x[8]*x[23]-2.44*x[8]*x[28]+1.44*x[9]*x[11]-1.73*x[9]*x[16]+2.91*x[9]*x[21]+4.52*x[9]*x[22]+3.87*x[9]*x[25]+2.55*x[10]*x[16]-0.57*x[10]*x[24]+3.7*x[11]*x[11]+4.85*x[11]*x[17]-2.52*x[11]*x[21]+0.46*x[11]*x[27]+2.94*x[12]*x[15]-3.26*x[12]*x[18]+0.11*x[12]*x[22]+2.21*x[12]*x[23]-4.45*x[12]*x[24]-0.67*x[12]*x[26]+2.88*x[12]*x[27]-4.07*x[13]*x[19]+4.58*x[13]*x[29]-4.41*x[14]*x[15]-2.89*x[14]*x[18]-4.04*x[14]*x[26]-2.12*x[15]*x[16]-4.02*x[15]*x[18]+2.45*x[15]*x[19]+1.17*x[15]*x[21]-0.39*x[15]*x[22]+2.1*x[15]*x[23]-0.49*x[15]*x[27]+2.36*x[16]*x[20]+4.67*x[16]*x[23]-3.48*x[17]*x[17]+2.67*x[17]*x[20]+4.17*x[17]*x[23]-1.64*x[17]*x[24]-1.86*x[17]*x[28]-3.61*x[18]*x[22]+0.65*x[18]*x[24]+3.5*x[18]*x[26]-1.92*x[18]*x[27]+4.79*x[18]*x[30]+1.54*x[19]*x[19]+0.12*x[19]*x[23]-3.52*x[19]*x[24]-2.48*x[19]*x[27]+4.18*x[20]*x[22]+0.9*x[20]*x[29]+1.13*x[20]*x[30]+0.9*x[21]*x[30]+3.65*x[22]*x[23]+4.18*x[22]*x[24]+4.49*x[22]*x[26]-4.13*x[22]*x[28]+1.57*x[23]*x[24]-1.31*x[23]*x[26]-0.26*x[24]*x[24]+1.5*x[24]*x[26]+1.81*x[24]*x[28]+3.44*x[25]*x[25]-4.12*x[25]*x[28]+3.09*x[26]*x[28]+3.01*x[27]*x[29]-3.07*x[28]*x[28]-4.37*x[28]*x[29] >= 527.9)
@constraint(m, e11, 4.82*x[4]+0.1*x[7]+3.29*x[13]-2.25*x[16]-1.68*x[18]-2.39*x[23]+0.99*x[24] >= 21.5)
@NLconstraint(m, e12, (-0.86*x[1]*x[11])-3.11*x[1]*x[12]+0.45*x[1]*x[14]+4.16*x[14]-2.11*x[1]*x[19]-4.95*x[1]*x[20]-1.64*x[20]-3.83*x[2]*x[2]+0.52*x[2]*x[18]-4.81*x[18]-4.5*x[2]*x[20]-3.05*x[3]*x[6]-0.67*x[6]-1.34*x[3]*x[10]-3.32*x[3]*x[12]+3.81*x[3]*x[13]+4.24*x[3]*x[19]-4.84*x[3]*x[21]+2.01*x[21]+0.16*x[3]*x[23]-3.25*x[23]-3.79*x[3]*x[25]-2.59*x[3]*x[26]+3.83*x[3]*x[27]+1.88*x[27]+4.16*x[4]*x[15]+1.3*x[4]+0.39*x[4]*x[16]+1.37*x[16]-3.17*x[4]*x[19]+3.56*x[4]*x[20]+4.97*x[4]*x[24]-3.17*x[4]*x[25]+3.36*x[5]*x[14]+1.94*x[5]*x[15]-4.53*x[5]*x[17]-1.39*x[17]+2.15*x[5]*x[22]-0.64*x[5]*x[26]-4.77*x[5]*x[30]+1.21*x[30]+1.17*x[6]*x[6]-3.54*x[6]*x[7]+4.1*x[7]-3.95*x[6]*x[8]-3.96*x[6]*x[16]+2.48*x[6]*x[21]+2.05*x[6]*x[22]+0.13*x[7]*x[8]-0.28*x[7]*x[12]-2.61*x[7]*x[13]+1.76*x[7]*x[16]-4.19*x[7]*x[17]-4.69*x[7]*x[22]+0.43*x[8]*x[10]-0.93*x[8]*x[11]-1.97*x[8]*x[18]+1.56*x[8]*x[23]-3.88*x[8]*x[25]+1.75*x[8]*x[29]+1.34*x[8]*x[30]+2.88*x[9]*x[10]+2.83*x[9]+2.1*x[9]*x[13]-3.36*x[9]*x[27]-2.9*x[10]*x[22]+3.44*x[10]*x[25]-0.81*x[10]*x[30]-2.45*x[11]*x[16]-3.17*x[11]*x[22]-1.04*x[11]*x[25]-1.63*x[11]*x[28]-1.77*x[28]+0.06*x[12]*x[18]+1.41*x[12]*x[24]-4.81*x[12]*x[26]+3.2*x[12]*x[28]-1.5*x[12]*x[30]-3.5*x[13]*x[23]+1.14*x[13]*x[25]-1.9*x[13]*x[26]-2.47*x[14]*x[16]+0.24*x[14]*x[19]+4.69*x[14]*x[23]+2.3*x[14]*x[24]+3.8*x[14]*x[25]+1.86*x[14]*x[26]-0.25*x[15]*x[16]+2.84*x[15]*x[17]-3.1*x[15]*x[22]-4.97*x[15]*x[25]-2.31*x[15]*x[27]-2.99*x[16]*x[17]+0.99*x[16]*x[18]+0.29*x[16]*x[20]-4.34*x[16]*x[24]-4.15*x[16]*x[28]-1.3*x[17]*x[19]+4.03*x[17]*x[29]+2.95*x[17]*x[30]+3.73*x[18]*x[18]-3.7*x[18]*x[21]-0.38*x[18]*x[23]+1.53*x[18]*x[25]+1.66*x[18]*x[26]-3.27*x[18]*x[27]-2.94*x[18]*x[30]+4.49*x[19]*x[20]+2.97*x[19]*x[21]+2.44*x[19]*x[22]+4.62*x[21]*x[23]-2.42*x[21]*x[25]+0.55*x[21]*x[28]+4.35*x[21]*x[29]+2.45*x[23]*x[23]+0.46*x[23]*x[28]+0.57*x[25]*x[27]+3.9*x[25]*x[28]+0.53*x[27]*x[30]+3.77*x[28]*x[29]-0.07*x[29]*x[30] >= -1169.8)
@constraint(m, e13, -0.17*x[1]+0.69*x[3]-4.52*x[11]-4.18*x[12]-1.93*x[18]-1.65*x[27]+3.3*x[30] >= -49.9)
@NLconstraint(m, e14, 3.84*x[1]*x[4]+1.43*x[1]*x[21]+4.18*x[1]*x[24]-2.08*x[1]*x[25]+4.48*x[1]*x[28]-2.94*x[2]*x[9]-0.14*x[9]-1.56*x[2]*x[10]+1.38*x[2]*x[12]+4.89*x[12]-2.88*x[2]*x[13]+3.96*x[2]*x[14]+3.25*x[14]+1.4*x[2]*x[22]+4.79*x[2]*x[25]-2.38*x[2]*x[29]-4.16*x[3]*x[4]+2.17*x[3]*x[8]+0.75*x[3]*x[10]+4.16*x[3]*x[14]+1.33*x[3]*x[16]+3.77*x[3]*x[18]-2.12*x[3]*x[23]+1.92*x[3]*x[27]-4.59*x[27]-0.8*x[4]*x[5]-3.2*x[4]*x[6]+3.53*x[4]*x[7]-2.99*x[4]*x[11]+0.31*x[4]*x[14]-1.82*x[4]*x[15]-4.57*x[4]*x[17]-1.56*x[17]+4.41*x[4]*x[20]-4.7*x[4]*x[21]+2.04*x[4]*x[26]-2.95*x[5]*x[7]+3.53*x[5]*x[12]-4.71*x[5]*x[14]-0.45*x[5]*x[15]-3.33*x[5]*x[17]+3.41*x[5]*x[18]-1.09*x[5]*x[29]-3.28*x[6]*x[6]-1.66*x[6]*x[11]-3.84*x[6]*x[14]+3.7*x[6]*x[15]-4.45*x[6]*x[18]-4.64*x[6]*x[21]-3.12*x[6]*x[23]-1.38*x[6]*x[30]+4.48*x[7]*x[8]-0.37*x[7]*x[10]-4.43*x[7]*x[11]+0.98*x[7]*x[14]+4.01*x[7]*x[18]-1.93*x[7]*x[22]-3.61*x[8]*x[9]-4.53*x[8]*x[11]+4.66*x[8]*x[17]-3.44*x[8]*x[21]+2.43*x[8]*x[24]-1.38*x[8]*x[25]-4.91*x[8]*x[29]-1.56*x[9]*x[13]+0.94*x[9]*x[16]+1.19*x[9]*x[23]-2.11*x[9]*x[26]+2*x[10]*x[12]-3.34*x[10]*x[14]-4.85*x[10]*x[16]-4.58*x[10]*x[24]-3.6*x[10]*x[25]-1.38*x[10]*x[29]-4.01*x[11]*x[14]+3.08*x[11]*x[15]+2.25*x[11]*x[26]+1.19*x[11]*x[29]-4.48*x[12]*x[16]-1.34*x[12]*x[17]-2.18*x[12]*x[19]+4.13*x[12]*x[21]+1.2*x[12]*x[23]+1.78*x[12]*x[27]+2.33*x[12]*x[28]-0.48*x[13]*x[23]+0.85*x[13]*x[26]+1.51*x[14]*x[15]-1.53*x[14]*x[19]+0.93*x[14]*x[20]+1.92*x[14]*x[21]-1.95*x[14]*x[26]+2.84*x[14]*x[29]-3.09*x[15]*x[26]-0.84*x[17]*x[17]+1.7*x[18]*x[18]-4.96*x[18]*x[27]+1.14*x[19]*x[23]+4.86*x[19]*x[26]+3.7*x[19]*x[29]+3.04*x[20]*x[22]-1.9*x[20]*x[29]+2.81*x[21]*x[21]-1.08*x[21]*x[22]+4.31*x[21]*x[23]+4.49*x[22]*x[22]+3.91*x[22]*x[25]+3.2*x[23]*x[25]+4.2*x[23]*x[26]-0.79*x[23]*x[30]+0.88*x[25]*x[26]-4.62*x[25]*x[28]+3.95*x[25]*x[30]-4.42*x[26]*x[26]+1.77*x[26]*x[30]-3.3*x[28]*x[29] >= -507.5)
@constraint(m, e15, 8.3*x[1]+7.6*x[2]+5.5*x[3]+4.5*x[4]+5.3*x[5]+6.5*x[6]+5*x[7]+8.8*x[8]+6.7*x[9]+7.9*x[10]+6.1*x[11]+1.8*x[12]+1.4*x[13]+4.8*x[14]+6.8*x[15]+3.5*x[16]+2.2*x[17]+5*x[18]+8.8*x[19]+8.1*x[20]+2.5*x[21]+3.7*x[22]+6*x[23]-0.3*x[24]+7.4*x[25]+0.6*x[26]-0.3*x[27]+8.9*x[28]+7.8*x[29]+8.6*x[30] >= 649.4)
@NLconstraint(m, e16, (-3.99*x[1]*x[7])-2.03*x[7]-2.83*x[1]*x[9]-2.02*x[9]+1.56*x[1]*x[16]+3.51*x[16]+2.77*x[1]*x[23]-4.65*x[1]*x[24]-3.62*x[1]*x[25]-4.89*x[2]*x[4]+2.36*x[2]*x[5]-1.86*x[2]*x[7]+1.46*x[2]*x[8]-0.36*x[2]*x[14]+2.58*x[14]-0.95*x[2]*x[15]-4.54*x[2]*x[17]+3.42*x[17]+1.05*x[2]*x[21]+3.41*x[21]-0.07*x[2]*x[23]+0.92*x[3]*x[3]-1.54*x[3]+0.97*x[3]*x[13]-2.17*x[13]+4.66*x[3]*x[15]+0.02*x[4]*x[6]+1.18*x[6]-0.22*x[4]*x[10]-0.85*x[4]*x[15]-3.81*x[4]*x[16]+0.52*x[4]*x[21]-3.9*x[4]*x[28]-4.14*x[5]*x[5]+3.72*x[5]*x[6]-0.03*x[5]*x[8]-4.64*x[5]*x[10]+1.3*x[5]*x[15]-3.86*x[5]*x[21]-3.65*x[5]*x[25]-3.65*x[5]*x[29]+1.39*x[6]*x[9]+2.42*x[6]*x[10]-3.23*x[6]*x[13]+1.88*x[6]*x[14]-2.14*x[6]*x[17]-1.12*x[6]*x[25]-2.98*x[6]*x[28]-3.45*x[7]*x[8]+0.77*x[7]*x[12]+0.97*x[7]*x[15]-3.13*x[7]*x[22]+2.1*x[22]-4.27*x[7]*x[27]-0.06*x[8]*x[8]+1.94*x[8]*x[9]+3.51*x[8]*x[10]+2.14*x[8]*x[12]+1.58*x[8]*x[15]+2.18*x[8]*x[21]-2.1*x[8]*x[22]+0.29*x[9]*x[13]-0.93*x[9]*x[15]-3.51*x[9]*x[23]-1.68*x[10]*x[16]-4.31*x[10]*x[21]+4.97*x[10]*x[23]-4.92*x[10]*x[25]-4.49*x[10]*x[27]-3.26*x[10]*x[30]+4.67*x[11]*x[11]-2.11*x[11]+1.5*x[11]*x[14]-0.45*x[11]*x[18]+2.22*x[11]*x[22]+4.78*x[11]*x[25]+2.9*x[11]*x[29]+1.36*x[12]*x[15]+1.49*x[13]*x[13]+2.54*x[13]*x[14]+1.38*x[13]*x[15]+1.88*x[13]*x[17]+4.78*x[13]*x[21]+2.45*x[13]*x[28]-4.44*x[14]*x[18]-2.52*x[14]*x[27]-1.91*x[15]*x[19]-0.06*x[15]*x[27]-3.16*x[15]*x[28]-3.19*x[16]*x[19]-0.33*x[16]*x[25]+3.27*x[16]*x[28]+0.93*x[16]*x[30]+2.59*x[17]*x[22]+1.24*x[17]*x[30]-1.61*x[18]*x[18]+1.03*x[18]*x[25]-0.52*x[18]*x[28]+3.05*x[18]*x[29]-3.42*x[18]*x[30]+1.14*x[19]*x[25]+2.14*x[19]*x[26]+0.2*x[26]-2*x[19]*x[28]-1.75*x[19]*x[29]-1.6*x[20]*x[22]+4.78*x[20]*x[24]-2.94*x[20]*x[26]-3.94*x[21]*x[23]-2.3*x[22]*x[27]-2.69*x[23]*x[23]-1.81*x[23]*x[24]+2.75*x[23]*x[27]+4.7*x[23]*x[30]-0.91*x[24]*x[28]+2.09*x[24]*x[29]-0.9*x[25]*x[28]-3.6*x[26]*x[29]-4.93*x[27]*x[28]-3.77*x[27]*x[30]-1.43*x[28]*x[30]-0.31*x[29]*x[30]-3.71*x[30]*x[30] >= -1995.3)
@NLconstraint(m, e17, -(-7.71*x[1]*x[1]-2.23*x[1]+4.41*x[1]*x[2]-6.95*x[2]-8.93*x[1]*x[3]-1.78*x[3]-0.35*x[1]*x[4]-3.43*x[4]-5.34*x[1]*x[5]+1.38*x[5]-0.69*x[1]*x[6]+1.28*x[6]-0.87*x[1]*x[7]-4.25*x[7]-0.23*x[1]*x[8]-8.8*x[8]-3.68*x[1]*x[9]-9.7*x[9]-6.91*x[1]*x[10]+2*x[10]+5.67*x[1]*x[11]-2.13*x[11]-3.54*x[1]*x[12]-9.51*x[12]-9.17*x[1]*x[13]-0.81*x[13]-3.98*x[1]*x[14]-6.38*x[14]-6.11*x[1]*x[15]-3.79*x[15]-4.5*x[1]*x[16]+4*x[16]-3.91*x[1]*x[17]-6.46*x[17]-9.03*x[1]*x[18]-9.18*x[18]-5.87*x[1]*x[19]-4.04*x[19]-0.25*x[1]*x[20]-8.03*x[20]-1.16*x[1]*x[21]-5.54*x[21]-9.17*x[1]*x[22]-1.27*x[22]-4.32*x[1]*x[23]+8.85*x[23]-3.28*x[1]*x[24]-6.92*x[24]+4.58*x[1]*x[25]-0.52*x[25]-1.37*x[1]*x[26]-7.28*x[26]+6.2*x[1]*x[27]-4.98*x[27]-0.55*x[1]*x[28]+8.56*x[28]-9.9*x[1]*x[29]-2.21*x[29]-0.65*x[1]*x[30]-7.02*x[30]-7.25*x[2]*x[2]-3.8*x[2]*x[3]-2.19*x[2]*x[4]-3.67*x[2]*x[5]-1.58*x[2]*x[6]-0.83*x[2]*x[7]+7.37*x[2]*x[8]-0.15*x[2]*x[9]-1.84*x[2]*x[10]-2.43*x[2]*x[11]-1.24*x[2]*x[12]-9.04*x[2]*x[13]-8.09*x[2]*x[14]-4.67*x[2]*x[15]-4.66*x[2]*x[16]-1.75*x[2]*x[17]-6.24*x[2]*x[18]+1.16*x[2]*x[19]-8.07*x[2]*x[20]-9.65*x[2]*x[21]-2.15*x[2]*x[22]-5.03*x[2]*x[23]-4*x[2]*x[24]-8.01*x[2]*x[25]-2.14*x[2]*x[26]-5.35*x[2]*x[27]-0.96*x[2]*x[28]-3.5*x[2]*x[29]-6*x[2]*x[30]-7.59*x[3]*x[3]-6.98*x[3]*x[4]-7.52*x[3]*x[5]-3.32*x[3]*x[6]+2.83*x[3]*x[7]-6.53*x[3]*x[8]-2.53*x[3]*x[9]-9.27*x[3]*x[10]-5.47*x[3]*x[11]-9.01*x[3]*x[12]-3.54*x[3]*x[13]-0.45*x[3]*x[14]-4.09*x[3]*x[15]-2.35*x[3]*x[16]+1.95*x[3]*x[17]-7.04*x[3]*x[18]-5.08*x[3]*x[19]-0.15*x[3]*x[20]-4*x[3]*x[21]-2.12*x[3]*x[22]-3.85*x[3]*x[23]-5.79*x[3]*x[24]-0.84*x[3]*x[25]-3.92*x[3]*x[26]-3.26*x[3]*x[27]-2*x[3]*x[28]-2.69*x[3]*x[29]-2.21*x[3]*x[30]-3.84*x[4]*x[4]-9.16*x[4]*x[5]-3.96*x[4]*x[6]-4.53*x[4]*x[7]-5.73*x[4]*x[8]-1.02*x[4]*x[9]-1.76*x[4]*x[10]-3.38*x[4]*x[11]-6.78*x[4]*x[12]-1.05*x[4]*x[13]-4.87*x[4]*x[14]-0.16*x[4]*x[15]-6.68*x[4]*x[16]-7.98*x[4]*x[17]+5.37*x[4]*x[18]+6.91*x[4]*x[19]-1.7*x[4]*x[20]-3.96*x[4]*x[21]-0.21*x[4]*x[22]-1.71*x[4]*x[23]-9.73*x[4]*x[24]-3.72*x[4]*x[25]-4.7*x[4]*x[26]-8.73*x[4]*x[27]-0.43*x[4]*x[28]-8.2*x[4]*x[29]-5.37*x[4]*x[30]-8.86*x[5]*x[5]-10*x[5]*x[6]-1.13*x[5]*x[7]-4.14*x[5]*x[8]-1.76*x[5]*x[9]-5.39*x[5]*x[10]-1.93*x[5]*x[11]-1.24*x[5]*x[12]-5.51*x[5]*x[13]-7.59*x[5]*x[14]-3.4*x[5]*x[15]-8.76*x[5]*x[16]+4.44*x[5]*x[17]-8.63*x[5]*x[18]-7.62*x[5]*x[19]+2.35*x[5]*x[20]-1.45*x[5]*x[21]-2.17*x[5]*x[22]-8.53*x[5]*x[23]+3*x[5]*x[24]+5.51*x[5]*x[25]-2.07*x[5]*x[26]+4.6*x[5]*x[27]-6.19*x[5]*x[28]-0.31*x[5]*x[29]-8.91*x[5]*x[30]-0.03*x[6]*x[6]+0.66*x[6]*x[7]-5.13*x[6]*x[8]-9.01*x[6]*x[9]-7.93*x[6]*x[10]-3.81*x[6]*x[11]-3.71*x[6]*x[12]-5.62*x[6]*x[13]-3.93*x[6]*x[14]-6.11*x[6]*x[15]-2.13*x[6]*x[16]-6.99*x[6]*x[17]-3.58*x[6]*x[18]-1.6*x[6]*x[19]-1.69*x[6]*x[20]-1.12*x[6]*x[21]-2.07*x[6]*x[22]-6.71*x[6]*x[23]-7.58*x[6]*x[24]-1.69*x[6]*x[25]-9.7*x[6]*x[26]-4.47*x[6]*x[27]-9.43*x[6]*x[28]-4.96*x[6]*x[29]-1.49*x[6]*x[30]-6.57*x[7]*x[7]+4.6*x[7]*x[8]-2.33*x[7]*x[9]-4.34*x[7]*x[10]-0.1*x[7]*x[11]-0.15*x[7]*x[12]-8.23*x[7]*x[13]-0.29*x[7]*x[14]-1.48*x[7]*x[15]-4.43*x[7]*x[16]-8.07*x[7]*x[17]-9.23*x[7]*x[18]-4.56*x[7]*x[19]-4.28*x[7]*x[20]-5.79*x[7]*x[21]-9.53*x[7]*x[22]-5.15*x[7]*x[23]-8.68*x[7]*x[24]-5.9*x[7]*x[25]-9.96*x[7]*x[26]-9.17*x[7]*x[27]-4.9*x[7]*x[28]-9.59*x[7]*x[29]-1.5*x[7]*x[30]-6.63*x[8]*x[8]-7.95*x[8]*x[9]-9.57*x[8]*x[10]+2.3*x[8]*x[11]-8.54*x[8]*x[12]-9.44*x[8]*x[13]-3.39*x[8]*x[14]-4.26*x[8]*x[15]-9.05*x[8]*x[16]-6.6*x[8]*x[17]-9.92*x[8]*x[18]-4.84*x[8]*x[19]-9.93*x[8]*x[20]-7.58*x[8]*x[21]-8.61*x[8]*x[22]-2.29*x[8]*x[23]-9.58*x[8]*x[24]-3.8*x[8]*x[25]+6.37*x[8]*x[26]-7.88*x[8]*x[27]-3.84*x[8]*x[28]-5.44*x[8]*x[29]-1.51*x[8]*x[30]-3.58*x[9]*x[9]-0.64*x[9]*x[10]-0.86*x[9]*x[11]-9.73*x[9]*x[12]-8.51*x[9]*x[13]+5.84*x[9]*x[14]-6.02*x[9]*x[15]-1.56*x[9]*x[16]-2.78*x[9]*x[17]-2.34*x[9]*x[18]-4.75*x[9]*x[19]+6.18*x[9]*x[20]-1.97*x[9]*x[21]-9.65*x[9]*x[22]-5.87*x[9]*x[23]-1.11*x[9]*x[24]-0.78*x[9]*x[25]-6.22*x[9]*x[26]-7.96*x[9]*x[27]-2.59*x[9]*x[28]-9.31*x[9]*x[29]-1.5*x[9]*x[30]-8.01*x[10]*x[10]-6.28*x[10]*x[11]-0.38*x[10]*x[12]-0.19*x[10]*x[13]-4.48*x[10]*x[14]-2.98*x[10]*x[15]-1.24*x[10]*x[16]+5.66*x[10]*x[17]-1.12*x[10]*x[18]+9.09*x[10]*x[19]-8.32*x[10]*x[20]-4.76*x[10]*x[21]-2.17*x[10]*x[22]-6.38*x[10]*x[23]-8.22*x[10]*x[24]-1.34*x[10]*x[25]-5*x[10]*x[26]-0.92*x[10]*x[27]-3.52*x[10]*x[28]-0.48*x[10]*x[29]-1.26*x[10]*x[30]-5.77*x[11]*x[11]-6.86*x[11]*x[12]-0.76*x[11]*x[13]-2.19*x[11]*x[14]-7.08*x[11]*x[15]+1.57*x[11]*x[16]-6.67*x[11]*x[17]-9.23*x[11]*x[18]-8.4*x[11]*x[19]-2.52*x[11]*x[20]+8.44*x[11]*x[21]+5.92*x[11]*x[22]-2.76*x[11]*x[23]-5.45*x[11]*x[24]-1.36*x[11]*x[25]-1.77*x[11]*x[26]-7.31*x[11]*x[27]-8.21*x[11]*x[28]-1.85*x[11]*x[29]-4.33*x[11]*x[30]-0.15*x[12]*x[12]-2.55*x[12]*x[13]-2.52*x[12]*x[14]-0.17*x[12]*x[15]-4.08*x[12]*x[16]-9.64*x[12]*x[17]-3.21*x[12]*x[18]-0.86*x[12]*x[19]-6.87*x[12]*x[20]-7.92*x[12]*x[21]-0.51*x[12]*x[22]-4.81*x[12]*x[23]-2.88*x[12]*x[24]-6.66*x[12]*x[25]-2.58*x[12]*x[26]-0.92*x[12]*x[27]-5.58*x[12]*x[28]-3.71*x[12]*x[29]-1.8*x[12]*x[30]-5*x[13]*x[13]-5.74*x[13]*x[14]-0.81*x[13]*x[15]-2.2*x[13]*x[16]-4.86*x[13]*x[17]+4.92*x[13]*x[18]-4.97*x[13]*x[19]-3.94*x[13]*x[20]-5.04*x[13]*x[21]-9.05*x[13]*x[22]-9.27*x[13]*x[23]-2.07*x[13]*x[24]-7.12*x[13]*x[25]-1.62*x[13]*x[26]-1.63*x[13]*x[27]-1.71*x[13]*x[28]-6.5*x[13]*x[29]-1.35*x[13]*x[30]-4.89*x[14]*x[14]-6.8*x[14]*x[15]-1.66*x[14]*x[16]-3.91*x[14]*x[17]-6.71*x[14]*x[18]-4.68*x[14]*x[19]-6.78*x[14]*x[20]-2.38*x[14]*x[21]-2.62*x[14]*x[22]+3.68*x[14]*x[23]-3.67*x[14]*x[24]-6.2*x[14]*x[25]-0.83*x[14]*x[26]-5.84*x[14]*x[27]-3.94*x[14]*x[28]-3.29*x[14]*x[29]-2.08*x[14]*x[30]-2.03*x[15]*x[15]-7.44*x[15]*x[16]-4.92*x[15]*x[17]-2.98*x[15]*x[18]-1.6*x[15]*x[19]-7.71*x[15]*x[20]+8.22*x[15]*x[21]-6.47*x[15]*x[22]-3.77*x[15]*x[23]-0.61*x[15]*x[24]-5.73*x[15]*x[25]-7.48*x[15]*x[26]-2.97*x[15]*x[27]+6.85*x[15]*x[28]-7.05*x[15]*x[29]-7.66*x[15]*x[30]-5.27*x[16]*x[16]-4.55*x[16]*x[17]-1.87*x[16]*x[18]-7.21*x[16]*x[19]-8.08*x[16]*x[20]-2.64*x[16]*x[21]-9.43*x[16]*x[22]-7.57*x[16]*x[23]-0.42*x[16]*x[24]+1.07*x[16]*x[25]+3.83*x[16]*x[26]-3.15*x[16]*x[27]-5.81*x[16]*x[28]-8.76*x[16]*x[29]-0.04*x[16]*x[30]-5.78*x[17]*x[17]+5*x[17]*x[18]-5.31*x[17]*x[19]-0.25*x[17]*x[20]-0.07*x[17]*x[21]-0.82*x[17]*x[22]-7.27*x[17]*x[23]-5.15*x[17]*x[24]-3.39*x[17]*x[25]-2.22*x[17]*x[26]-4.98*x[17]*x[27]-0.06*x[17]*x[28]-8.58*x[17]*x[29]-9.73*x[17]*x[30]-0.96*x[18]*x[18]-0.32*x[18]*x[19]-3.17*x[18]*x[20]-9.59*x[18]*x[21]-5.72*x[18]*x[22]+5.88*x[18]*x[23]-3.3*x[18]*x[24]-8.58*x[18]*x[25]-1.91*x[18]*x[26]-9.52*x[18]*x[27]-5.88*x[18]*x[28]-6.98*x[18]*x[29]+2.84*x[18]*x[30]-8.69*x[19]*x[19]-7.42*x[19]*x[20]-1.55*x[19]*x[21]-6.25*x[19]*x[22]+5.33*x[19]*x[23]-2.93*x[19]*x[24]-5.99*x[19]*x[25]-9.22*x[19]*x[26]-3.68*x[19]*x[27]-3.4*x[19]*x[28]-0.91*x[19]*x[29]-5.26*x[19]*x[30]-0.48*x[20]*x[20]+5.21*x[20]*x[21]-0.51*x[20]*x[22]-9.48*x[20]*x[23]-7.45*x[20]*x[24]+9.98*x[20]*x[25]+8.24*x[20]*x[26]-2.67*x[20]*x[27]-0.65*x[20]*x[28]-8.24*x[20]*x[29]-8.55*x[20]*x[30]-0.43*x[21]*x[21]-6.39*x[21]*x[22]-5.42*x[21]*x[23]-6.9*x[21]*x[24]-8.16*x[21]*x[25]-8.46*x[21]*x[26]-3.51*x[21]*x[27]-5.34*x[21]*x[28]-7.77*x[21]*x[29]+6.29*x[21]*x[30]+6.98*x[22]*x[22]-5.71*x[22]*x[23]-7.26*x[22]*x[24]-8.77*x[22]*x[25]-6.13*x[22]*x[26]-7.7*x[22]*x[27]-8.95*x[22]*x[28]-3.33*x[22]*x[29]-6.68*x[22]*x[30]-3.96*x[23]*x[23]-7.31*x[23]*x[24]-5.17*x[23]*x[25]-8.65*x[23]*x[26]-9.53*x[23]*x[27]-2.41*x[23]*x[28]-6.11*x[23]*x[29]+3.29*x[23]*x[30]-7.55*x[24]*x[24]+9.83*x[24]*x[25]-7.81*x[24]*x[26]-1.23*x[24]*x[27]-8.74*x[24]*x[28]-3.02*x[24]*x[29]-9.15*x[24]*x[30]-0.55*x[25]*x[25]+6.54*x[25]*x[26]-9.04*x[25]*x[27]+2.35*x[25]*x[28]-7.97*x[25]*x[29]-5.32*x[25]*x[30]+3.68*x[26]*x[26]-7.49*x[26]*x[27]-1.71*x[26]*x[28]-3.77*x[26]*x[29]-6.69*x[26]*x[30]-0.29*x[27]*x[27]-9.52*x[27]*x[28]-0.61*x[27]*x[29]-3.35*x[27]*x[30]-2.6*x[28]*x[28]-0.19*x[28]*x[29]-4.89*x[28]*x[30]-3.08*x[29]*x[29]-0.49*x[29]*x[30]-2.01*x[30]*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script. 
