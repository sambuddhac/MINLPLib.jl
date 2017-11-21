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
@NLconstraint(m, e1, -(0.14*x[2]*x[4]+2*x[2]*x[5]-0.04*x[2]*x[9]-1.18*x[2]*x[13]-1.38*x[2]*x[19]+1.16*x[3]*x[10]+0.92*x[3]*x[11]+0.52*x[3]*x[15]+0.02*x[3]*x[16]-0.92*x[3]*x[20]+(-1.94*x[4]*x[5])-1.44*x[4]*x[11]+0.38*x[4]*x[14]+1.6*x[4]*x[15]+1.94*x[4]*x[20]+0.82*x[4]*x[21]-1.26*x[5]*x[10]+(-1.26*x[6]*x[9])-1.18*x[6]*x[11]+0.34*x[6]*x[12]-0.5*x[6]*x[14]-0.92*x[6]*x[17]+0.82*x[7]*x[8]-1.06*x[7]*x[14]-1.78*x[7]*x[15]+1.02*x[7]*x[16]-0.28*x[7]*x[20]+1.2*x[8]*x[20]-0.06*x[8]*x[15]-1.96*x[8]*x[21]+0.22*x[9]*x[18]+x[10]*x[13]-1.8*x[10]*x[20]+(-1.1*x[11]*x[13])-0.68*x[11]*x[18]+(-1.98*x[12]*x[15])-0.64*x[12]*x[19]-1.24*x[12]*x[20]+0.28*x[13]*x[18]-1.4*x[13]*x[19]+0.9*x[13]*x[20]+1.98*x[16]*x[17]+0.92*x[16]*x[18]-1.48*x[16]*x[19]-0.72*x[18]*x[20]+0.52*x[3]*x[3]-0.97*x[2]*x[2]+0.4*x[7]*x[7]-0.67*x[9]*x[9]-0.32*x[3]-0.45*x[4]+0.13*x[5]-0.51*x[6]+0.7*x[7]-0.59*x[8]+0.13*x[9]-0.58*x[10]-0.18*x[11]+0.83*x[12]-0.73*x[13]+0.09*x[14]-0.66*x[15]+0.15*x[16]-0.81*x[17]-0.08*x[18]+0.23*x[19]+0.87*x[20]+0.9*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 0.28*x[2]*x[3]-0.18*x[2]*x[7]-1.1*x[2]*x[8]+0.52*x[2]*x[10]+0.94*x[2]*x[16]-0.66*x[2]*x[17]+1.58*x[3]*x[7]-2*x[3]*x[11]-1.02*x[3]*x[16]-0.28*x[3]*x[19]+0.16*x[5]*x[14]-0.68*x[5]*x[12]+1.3*x[5]*x[16]+1.44*x[5]*x[18]-1.28*x[6]*x[13]+0.48*x[7]*x[11]+1.86*x[7]*x[14]-1.46*x[7]*x[15]+1.34*x[7]*x[16]-0.56*x[7]*x[21]+0.08*x[8]*x[9]+0.96*x[8]*x[12]-1.88*x[8]*x[19]+1.42*x[9]*x[10]+0.9*x[9]*x[11]-0.22*x[9]*x[20]+1.1*x[10]*x[12]+0.72*x[10]*x[16]-0.1*x[10]*x[18]-1.7*x[10]*x[20]+0.94*x[10]*x[21]+1.36*x[11]*x[15]+1.66*x[11]*x[16]+1.66*x[11]*x[20]+1.18*x[12]*x[13]-1.18*x[12]*x[14]+1.2*x[12]*x[16]+0.92*x[12]*x[21]+0.04*x[13]*x[14]+0.84*x[14]*x[18]-1.66*x[15]*x[16]+1.52*x[16]*x[18]+1.12*x[16]*x[21]+1.46*x[17]*x[20]-1.28*x[18]*x[21]+1.84*x[19]*x[21]+0.04*x[11]*x[11]-0.59*x[3]*x[3]+0.44*x[17]*x[17]+0.51*x[21]*x[21]+0.15*x[2]+0.62*x[3]+0.39*x[5]+0.55*x[6]-0.94*x[7]+0.27*x[8]+0.95*x[9]-0.84*x[10]-0.71*x[11]-0.61*x[12]-0.24*x[13]-0.64*x[14]-0.24*x[15]+0.81*x[16]-0.46*x[17]-0.17*x[18]+0.59*x[19]+0.9*x[20]+0.48*x[21]-0.08*x[4] <= 54.53)
@constraint(m, e3, 0.06*x[2]-0.06*x[3]+0.22*x[4]-0.38*x[5]+0.02*x[6]+0.69*x[7]-0.2*x[8]-0.17*x[9]+0.77*x[10]-0.83*x[11]+0.4*x[12]-0.09*x[13]-0.08*x[14]+0.6*x[15]-0.3*x[16]-0.49*x[17]+0.84*x[18]+0.99*x[19]+0.04*x[20]+0.34*x[21] == 0.13)
@constraint(m, e4, -0.13*x[2]-0.11*x[3]+0.39*x[4]+0.65*x[5]-0.16*x[6]-0.55*x[7]+0.07*x[8]-0.05*x[9]-0.06*x[10]+0.68*x[11]-0.34*x[12]+0.37*x[13]+0.21*x[14]-0.74*x[15]-0.48*x[16]+0.92*x[17]-0.68*x[18]-0.61*x[19]-0.45*x[20]-0.59*x[21] == -0.97)
@constraint(m, e5, -0.18*x[2]+0.63*x[3]+0.76*x[4]+0.34*x[5]+0.36*x[6]-0.23*x[7]+0.24*x[8]-0.42*x[9]+0.1*x[10]-0.11*x[11]+0.17*x[12]+0.08*x[13]-0.07*x[14]+0.3*x[15]-0.32*x[16]+0.07*x[17]+0.38*x[18]+0.51*x[19]-0.7*x[20]+0.42*x[21] == 0.41)
@constraint(m, e6, -0.42*x[2]+0.12*x[3]-0.65*x[4]+0.28*x[5]-0.87*x[6]-0.02*x[7]-0.4*x[8]-0.74*x[9]-0.61*x[10]+0.78*x[11]-0.72*x[12]+0.14*x[13]-0.68*x[14]+0.35*x[15]+0.04*x[16]-x[17]+0.21*x[18]+0.28*x[19]-0.1*x[20]+0.83*x[21] == 0.9)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
