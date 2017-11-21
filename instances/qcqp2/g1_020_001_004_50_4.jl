using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[21], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.94*x[2]*x[5]-1.56*x[2]*x[3]-1.64*x[2]*x[9]+0.82*x[2]*x[12]-0.12*x[2]*x[13]+0.92*x[2]*x[16]+0.86*x[2]*x[17]-1.9*x[2]*x[20]+(-0.16*x[3]*x[8])-1.44*x[3]*x[11]+1.1*x[3]*x[12]+1.86*x[3]*x[14]+0.52*x[3]*x[16]+1.86*x[3]*x[17]-1.38*x[3]*x[19]-1.14*x[3]*x[20]+(-0.26*x[4]*x[7])-1.9*x[4]*x[10]+1.02*x[4]*x[14]+0.78*x[4]*x[15]-0.88*x[4]*x[18]-1.12*x[4]*x[20]+0.42*x[5]*x[7]+1.72*x[5]*x[8]-1.76*x[5]*x[13]+1.9*x[5]*x[14]-0.12*x[5]*x[15]-0.7*x[5]*x[16]+2*x[5]*x[17]-0.92*x[5]*x[18]+0.64*x[5]*x[19]-0.58*x[5]*x[20]+1.18*x[6]*x[7]-0.12*x[6]*x[13]-0.66*x[6]*x[14]-0.42*x[6]*x[15]+1.44*x[6]*x[16]+1.76*x[6]*x[20]+1.14*x[7]*x[13]-1.52*x[7]*x[14]-1.86*x[7]*x[16]-1.74*x[7]*x[20]-0.5*x[7]*x[21]+0.16*x[8]*x[9]-1.42*x[8]*x[12]+0.76*x[8]*x[14]+1.22*x[8]*x[16]+0.96*x[8]*x[19]-0.52*x[8]*x[20]+1.42*x[9]*x[10]+1.7*x[9]*x[12]-1.16*x[9]*x[13]+0.56*x[9]*x[15]-1.1*x[9]*x[18]-1.04*x[9]*x[20]+1.62*x[9]*x[21]+(-1.76*x[10]*x[11])-0.42*x[10]*x[13]+0.44*x[10]*x[16]-0.56*x[10]*x[20]+1.44*x[11]*x[17]-1.16*x[11]*x[14]+1.56*x[11]*x[18]+1.8*x[11]*x[21]+0.94*x[12]*x[13]-1.28*x[12]*x[15]-1.2*x[12]*x[16]+0.78*x[12]*x[17]+0.06*x[13]*x[14]+1.96*x[13]*x[15]-1.52*x[13]*x[16]-1.76*x[13]*x[17]+0.66*x[13]*x[19]+1.42*x[13]*x[20]+1.26*x[13]*x[21]+(-x[14]*x[17])-1.62*x[14]*x[19]+1.22*x[14]*x[20]+1.08*x[15]*x[16]+0.54*x[15]*x[20]+1.62*x[15]*x[21]+1.32*x[16]*x[17]-1.88*x[16]*x[21]+1.7*x[17]*x[18]-1.34*x[17]*x[21]+(-1.42*x[18]*x[19])-1.96*x[18]*x[20]+1.84*x[18]*x[21]-1.56*x[19]*x[21]+2*x[20]*x[21]+(-0.99*x[2]*x[2])-0.5*x[3]*x[3]+0.78*x[5]*x[5]-0.96*x[8]*x[8]+0.99*x[9]*x[9]-0.47*x[12]*x[12]+0.88*x[14]*x[14]-0.98*x[16]*x[16]+0.51*x[19]*x[19]+0.74*x[21]*x[21]+0.47*x[2]+0.92*x[3]-0.05*x[4]-0.03*x[5]+0.57*x[6]+0.42*x[7]-0.33*x[8]+0.53*x[9]-0.35*x[10]+0.03*x[11]+0.82*x[12]-0.61*x[13]-0.88*x[14]+0.55*x[15]+0.92*x[16]-0.35*x[17]-0.58*x[18]+0.67*x[19]-0.18*x[20]+0.09*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 0.86*x[2]*x[5]-1.3*x[2]*x[4]+1.24*x[2]*x[6]+1.18*x[2]*x[7]-0.52*x[2]*x[8]-0.12*x[2]*x[10]-1.62*x[2]*x[12]-0.42*x[2]*x[14]-1.52*x[2]*x[15]-0.92*x[2]*x[16]+0.3*x[2]*x[17]+0.46*x[2]*x[18]+0.68*x[2]*x[19]+1.18*x[3]*x[6]-0.18*x[3]*x[4]-1.54*x[3]*x[11]-1.34*x[3]*x[12]+0.68*x[3]*x[13]+0.5*x[3]*x[14]+1.7*x[3]*x[18]+0.7*x[3]*x[21]+0.26*x[4]*x[10]-0.92*x[4]*x[9]-0.6*x[4]*x[12]-0.98*x[4]*x[14]-1.5*x[4]*x[15]-1.04*x[4]*x[19]-x[4]*x[20]+x[4]*x[21]+(-0.1*x[5]*x[7])-0.94*x[5]*x[8]-0.16*x[5]*x[9]+1.04*x[5]*x[10]-0.06*x[5]*x[11]+1.98*x[5]*x[19]+0.8*x[5]*x[21]+(-0.9*x[6]*x[8])-0.34*x[6]*x[10]-0.64*x[6]*x[13]-1.56*x[6]*x[18]-0.8*x[6]*x[21]+0.3*x[7]*x[8]-1.54*x[7]*x[9]+0.46*x[7]*x[10]-0.2*x[7]*x[12]-1.34*x[7]*x[13]+0.04*x[7]*x[18]-1.52*x[7]*x[19]-0.42*x[7]*x[21]+1.38*x[8]*x[9]-0.54*x[8]*x[10]+1.82*x[8]*x[12]+0.72*x[8]*x[13]-0.76*x[8]*x[14]+0.84*x[8]*x[18]-0.26*x[8]*x[20]+0.96*x[9]*x[16]-0.62*x[9]*x[13]+0.04*x[10]*x[13]-1.72*x[10]*x[12]-0.68*x[10]*x[16]+1.74*x[10]*x[17]+1.42*x[10]*x[18]-1.48*x[10]*x[20]+1.42*x[10]*x[21]+1.1*x[11]*x[15]-0.56*x[11]*x[12]+1.7*x[11]*x[16]+0.76*x[11]*x[17]+1.82*x[11]*x[18]+0.56*x[11]*x[20]+0.72*x[12]*x[17]-0.26*x[12]*x[20]-0.38*x[12]*x[21]+(-1.2*x[13]*x[14])-1.98*x[13]*x[15]+0.86*x[13]*x[16]-0.24*x[13]*x[17]-0.28*x[13]*x[20]+0.72*x[14]*x[17]-1.48*x[14]*x[19]-0.46*x[14]*x[21]+(-1.96*x[15]*x[16])-0.48*x[15]*x[17]-0.76*x[15]*x[18]+(-1.06*x[16]*x[17])-0.58*x[16]*x[18]-0.78*x[16]*x[19]+0.2*x[16]*x[21]+0.28*x[17]*x[19]+1.14*x[17]*x[20]+(-1.3*x[19]*x[20])-0.38*x[19]*x[21]+1.5*x[20]*x[21]+(-0.7*x[2]*x[2])-0.66*x[3]*x[3]+0.74*x[8]*x[8]+0.68*x[11]*x[11]+0.53*x[12]*x[12]+0.19*x[13]*x[13]-0.84*x[2]+0.74*x[3]-0.17*x[4]-0.24*x[5]+0.42*x[6]+0.4*x[7]-0.21*x[8]+0.18*x[9]+0.78*x[10]-0.45*x[11]-0.51*x[12]-0.96*x[13]-0.63*x[14]-0.08*x[15]+0.58*x[16]+0.4*x[17]-0.56*x[18]+0.69*x[19]-0.1*x[20]+0.5*x[21] <= 8.86)
@constraint(m, e3, -0.58*x[2]-0.74*x[3]-0.29*x[4]-0.32*x[5]+0.54*x[6]-0.73*x[7]+0.32*x[8]-0.14*x[9]+0.58*x[10]+0.09*x[11]-0.82*x[12]-0.13*x[13]+0.96*x[14]+0.24*x[15]+0.93*x[16]+0.23*x[17]+0.04*x[18]+0.74*x[19]+0.21*x[20]-0.91*x[21] == 0.28)
@constraint(m, e4, -0.14*x[2]+0.85*x[3]+0.95*x[4]+0.49*x[5]+0.64*x[6]-0.14*x[7]+0.36*x[8]+0.95*x[9]-0.48*x[10]-0.5*x[11]-0.24*x[12]+0.38*x[13]-0.93*x[14]+0.02*x[15]-0.07*x[16]-0.95*x[17]+0.59*x[18]-0.3*x[19]-0.12*x[20]+0.2*x[21] == -0.06)
@constraint(m, e5, 0.83*x[2]+0.88*x[3]-0.32*x[4]+0.87*x[5]-0.7*x[6]-0.93*x[7]-0.51*x[8]+0.09*x[9]-0.99*x[10]+0.08*x[11]-0.48*x[12]-0.01*x[13]-0.5*x[14]+0.12*x[15]+0.31*x[16]+0.8*x[17]+0.89*x[18]+0.92*x[19]+0.76*x[20]+0.15*x[21] == -0.65)
@constraint(m, e6, -0.49*x[2]-0.49*x[3]-0.32*x[4]+0.84*x[5]-0.94*x[6]-0.26*x[7]+0.32*x[8]+0.05*x[9]-0.86*x[10]-0.42*x[11]+0.39*x[12]+0.81*x[13]-0.14*x[14]-0.74*x[15]+0.85*x[16]+0.76*x[17]-0.48*x[18]+0.51*x[19]-0.08*x[20]-0.3*x[21] == 0.92)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
