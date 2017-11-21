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
@NLconstraint(m, e1, -(-0.6*x[2]*x[3]-0.5*x[2]*x[4]+0.14*x[2]*x[5]+2*x[2]*x[6]+1.6*x[2]*x[7]-0.72*x[2]*x[8]-0.42*x[2]*x[9]-0.04*x[2]*x[10]+1.92*x[2]*x[11]+0.7*x[2]*x[13]+1.88*x[2]*x[14]-1.18*x[2]*x[15]+0.2*x[2]*x[16]-0.6*x[2]*x[17]+1.34*x[2]*x[18]-0.46*x[2]*x[19]+0.38*x[2]*x[20]+x[2]*x[21]+0.7*x[3]*x[4]+1.04*x[3]*x[5]+1.64*x[3]*x[6]-0.7*x[3]*x[7]+1.16*x[3]*x[8]+0.92*x[3]*x[9]-1.66*x[3]*x[10]+0.32*x[3]*x[11]-1.26*x[3]*x[12]+0.52*x[3]*x[13]+0.02*x[3]*x[14]+1.92*x[3]*x[15]+1.32*x[3]*x[16]-0.92*x[3]*x[18]+1.56*x[3]*x[20]-1.1*x[3]*x[21]+1.02*x[4]*x[6]+1.18*x[4]*x[7]-0.32*x[4]*x[8]-1.44*x[4]*x[9]+0.38*x[4]*x[10]-1.32*x[4]*x[11]+1.6*x[4]*x[12]-1.48*x[4]*x[13]-0.78*x[4]*x[14]+1.02*x[4]*x[16]-0.32*x[4]*x[17]+1.94*x[4]*x[18]+1.24*x[4]*x[19]+0.82*x[4]*x[20]-1.1*x[4]*x[21]+0.04*x[5]*x[6]+0.02*x[5]*x[7]+0.32*x[5]*x[8]-1.92*x[5]*x[9]+1.98*x[5]*x[10]-1.26*x[5]*x[11]+0.22*x[5]*x[12]+0.9*x[5]*x[13]-1.46*x[5]*x[14]-0.28*x[5]*x[15]-2*x[5]*x[16]+0.56*x[5]*x[17]+0.4*x[5]*x[18]+1.82*x[5]*x[19]-1.18*x[5]*x[20]-0.6*x[5]*x[21]+1.38*x[6]*x[8]-1.26*x[6]*x[7]+0.9*x[6]*x[9]-1.18*x[6]*x[10]+0.34*x[6]*x[11]-0.5*x[6]*x[12]-0.92*x[6]*x[13]-1.64*x[6]*x[14]+0.8*x[6]*x[15]+0.82*x[6]*x[16]-1.22*x[6]*x[17]-1.3*x[6]*x[18]-1.68*x[6]*x[19]+1.06*x[6]*x[20]+(-1.06*x[7]*x[8])-1.78*x[7]*x[9]+1.02*x[7]*x[10]-0.68*x[7]*x[11]-1.7*x[7]*x[12]-0.18*x[7]*x[13]+0.76*x[7]*x[14]-0.3*x[7]*x[15]-0.28*x[7]*x[16]+1.78*x[7]*x[17]-1.82*x[7]*x[18]-0.04*x[7]*x[19]-0.32*x[7]*x[20]+0.46*x[7]*x[21]+0.96*x[8]*x[9]-1.82*x[8]*x[10]-0.48*x[8]*x[11]-1.42*x[8]*x[12]+0.8*x[8]*x[13]-0.06*x[8]*x[14]+0.5*x[8]*x[15]-1.62*x[8]*x[16]+1.2*x[8]*x[17]-1.96*x[8]*x[18]+2*x[8]*x[19]-1.34*x[8]*x[20]+0.58*x[8]*x[21]+1.42*x[9]*x[10]+0.22*x[9]*x[11]-1.7*x[9]*x[12]+0.82*x[9]*x[13]+1.78*x[9]*x[14]-1.72*x[9]*x[15]+1.04*x[9]*x[16]-0.16*x[9]*x[17]-0.64*x[9]*x[18]-0.08*x[9]*x[19]+x[9]*x[21]+x[10]*x[12]-1.18*x[10]*x[11]+0.14*x[10]*x[13]-0.9*x[10]*x[14]-0.68*x[10]*x[15]-1.8*x[10]*x[17]-1.74*x[10]*x[18]-0.32*x[10]*x[19]-1.1*x[10]*x[20]+0.18*x[10]*x[21]+1.24*x[11]*x[12]+1.94*x[11]*x[13]+1.04*x[11]*x[14]+0.86*x[11]*x[15]+1.86*x[11]*x[17]-0.68*x[11]*x[18]+1.48*x[11]*x[19]-0.66*x[11]*x[20]+1.38*x[11]*x[21]+0.4*x[12]*x[13]+1.78*x[12]*x[14]-0.64*x[12]*x[15]+0.4*x[12]*x[16]-1.74*x[12]*x[17]+0.78*x[12]*x[18]+0.7*x[12]*x[19]+1.64*x[12]*x[20]+1.8*x[12]*x[21]+0.38*x[13]*x[15]-1.94*x[13]*x[14]-0.64*x[13]*x[16]-1.36*x[13]*x[17]+0.28*x[13]*x[18]-1.4*x[13]*x[19]+1.94*x[13]*x[20]-1.2*x[13]*x[21]+(-0.38*x[14]*x[15])-0.46*x[14]*x[16]-0.2*x[14]*x[17]+1.38*x[14]*x[18]-0.4*x[14]*x[19]+1.22*x[14]*x[21]+(-1.08*x[15]*x[16])-0.64*x[15]*x[17]-1.68*x[15]*x[18]+0.36*x[15]*x[19]+0.98*x[15]*x[20]+0.08*x[15]*x[21]+0.74*x[16]*x[19]-1.6*x[16]*x[17]+0.52*x[16]*x[20]+1.98*x[16]*x[21]+(-1.26*x[17]*x[18])-1.48*x[17]*x[19]+1.52*x[17]*x[20]-1.78*x[17]*x[21]+(-1.62*x[18]*x[19])-0.12*x[18]*x[20]+0.1*x[18]*x[21]+(-1.62*x[19]*x[20])-0.72*x[19]*x[21]+1.74*x[20]*x[21]+(-0.97*x[2]*x[2])-0.69*x[3]*x[3]-0.97*x[4]*x[4]-0.32*x[5]*x[5]+0.12*x[6]*x[6]+0.6*x[7]*x[7]+0.71*x[8]*x[8]+0.82*x[9]*x[9]+0.62*x[11]*x[11]-0.99*x[12]*x[12]-0.62*x[13]*x[13]+0.45*x[14]*x[14]+0.9*x[15]*x[15]+0.83*x[16]*x[16]+0.46*x[17]*x[17]-0.21*x[18]*x[18]-0.37*x[19]*x[19]+0.83*x[21]*x[21]-0.32*x[3]-0.45*x[4]+0.13*x[5]-0.51*x[6]+0.7*x[7]-0.59*x[8]+0.13*x[9]-0.58*x[10]-0.18*x[11]+0.83*x[12]-0.73*x[13]+0.09*x[14]-0.66*x[15]+0.15*x[16]-0.81*x[17]-0.08*x[18]+0.23*x[19]+0.87*x[20]+0.9*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 0.88*x[2]*x[3]+0.7*x[2]*x[4]+0.7*x[2]*x[5]+0.02*x[2]*x[6]+0.08*x[2]*x[7]-0.24*x[2]*x[8]+0.76*x[2]*x[9]+0.68*x[2]*x[10]-0.38*x[2]*x[11]-0.76*x[2]*x[12]-1.44*x[2]*x[13]-0.6*x[2]*x[14]+0.28*x[2]*x[15]-1.74*x[2]*x[16]+1.68*x[2]*x[18]-0.9*x[2]*x[19]+0.22*x[2]*x[20]-1.4*x[2]*x[21]+0.14*x[3]*x[5]+1.04*x[3]*x[6]+0.26*x[3]*x[7]-0.12*x[3]*x[8]+0.68*x[3]*x[9]+0.2*x[3]*x[10]-1.84*x[3]*x[11]-0.66*x[3]*x[12]-0.6*x[3]*x[13]+1.84*x[3]*x[14]+1.72*x[3]*x[15]-0.06*x[3]*x[16]-1.2*x[3]*x[17]+0.26*x[3]*x[18]-2*x[3]*x[19]+x[3]*x[20]-0.12*x[3]*x[21]+0.74*x[4]*x[5]+0.56*x[4]*x[6]-1.48*x[4]*x[7]+0.56*x[4]*x[8]+0.58*x[4]*x[9]-0.04*x[4]*x[10]-1.8*x[4]*x[11]-1.36*x[4]*x[12]+0.8*x[4]*x[13]+0.24*x[4]*x[14]-1.48*x[4]*x[15]-1.38*x[4]*x[16]+0.6*x[4]*x[17]-0.12*x[4]*x[18]-1.18*x[4]*x[19]+1.02*x[4]*x[20]-1.38*x[4]*x[21]+0.78*x[5]*x[6]+0.78*x[5]*x[7]+0.24*x[5]*x[9]+1.28*x[5]*x[10]+1.9*x[5]*x[11]-1.48*x[5]*x[12]-1.66*x[5]*x[13]+0.78*x[5]*x[14]-1.28*x[5]*x[15]+1.28*x[5]*x[16]-0.22*x[5]*x[17]-0.8*x[5]*x[18]+0.68*x[5]*x[19]-1.22*x[5]*x[20]-1.42*x[5]*x[21]+0.34*x[6]*x[8]-0.84*x[6]*x[7]+1.38*x[6]*x[9]+0.04*x[6]*x[10]+0.68*x[6]*x[12]-1.32*x[6]*x[13]+0.48*x[6]*x[14]-1.52*x[6]*x[15]-1.76*x[6]*x[16]-0.34*x[6]*x[18]-0.2*x[6]*x[19]+0.82*x[6]*x[20]-1.96*x[6]*x[21]+0.08*x[7]*x[9]-0.26*x[7]*x[8]-1.18*x[7]*x[10]-0.24*x[7]*x[11]+0.12*x[7]*x[12]+1.84*x[7]*x[13]-1.58*x[7]*x[16]+1.02*x[7]*x[17]+0.2*x[7]*x[18]-0.84*x[7]*x[19]-1.56*x[7]*x[20]+0.84*x[7]*x[21]+0.4*x[8]*x[10]-0.32*x[8]*x[9]+1.36*x[8]*x[11]-1.84*x[8]*x[12]-1.44*x[8]*x[13]+1.08*x[8]*x[14]+0.3*x[8]*x[15]+1.34*x[8]*x[16]-1.1*x[8]*x[17]+0.74*x[8]*x[18]-0.98*x[8]*x[20]-0.58*x[8]*x[21]+(-1.3*x[9]*x[11])-0.04*x[9]*x[12]-0.12*x[9]*x[13]+1.74*x[9]*x[14]-0.68*x[9]*x[15]+1.38*x[9]*x[16]+0.92*x[9]*x[17]+1.26*x[9]*x[18]-0.2*x[9]*x[19]+0.98*x[9]*x[20]-0.98*x[9]*x[21]+0.6*x[10]*x[12]-0.4*x[10]*x[11]-0.22*x[10]*x[13]+1.64*x[10]*x[14]-1.36*x[10]*x[15]-1.94*x[10]*x[16]-1.74*x[10]*x[17]+1.98*x[10]*x[18]+0.14*x[10]*x[19]+1.6*x[10]*x[20]+2*x[10]*x[21]+1.24*x[11]*x[12]+1.56*x[11]*x[13]+0.16*x[11]*x[14]-0.56*x[11]*x[15]+1.06*x[11]*x[16]-0.76*x[11]*x[17]+0.68*x[11]*x[18]+1.3*x[11]*x[19]+0.82*x[11]*x[20]+0.52*x[11]*x[21]+0.16*x[12]*x[13]+0.46*x[12]*x[14]-1.56*x[12]*x[15]+0.42*x[12]*x[16]+1.8*x[12]*x[17]+0.08*x[12]*x[18]-0.74*x[12]*x[20]+0.5*x[12]*x[21]+(-1.78*x[13]*x[14])-1.22*x[13]*x[15]-0.14*x[13]*x[16]-1.7*x[13]*x[18]+1.2*x[13]*x[19]-0.36*x[13]*x[20]+0.08*x[13]*x[21]+0.08*x[14]*x[16]-1.86*x[14]*x[15]+1.14*x[14]*x[17]-0.64*x[14]*x[18]-0.96*x[14]*x[19]+0.64*x[14]*x[20]+1.34*x[14]*x[21]+0.9*x[15]*x[16]-1.1*x[15]*x[17]+0.66*x[15]*x[18]+0.16*x[15]*x[19]-0.84*x[15]*x[20]-0.68*x[15]*x[21]+0.2*x[16]*x[17]-0.94*x[16]*x[18]-1.04*x[16]*x[19]+1.52*x[16]*x[20]+1.54*x[16]*x[21]+0.28*x[17]*x[18]+0.06*x[17]*x[19]-0.72*x[17]*x[20]+0.58*x[17]*x[21]+(-0.92*x[18]*x[19])-1.64*x[18]*x[20]-0.16*x[18]*x[21]+1.82*x[19]*x[21]-0.1*x[19]*x[20]-0.18*x[20]*x[21]+0.04*x[3]*x[3]-0.09*x[2]*x[2]+0.27*x[4]*x[4]+0.82*x[5]*x[5]-0.26*x[6]*x[6]-0.11*x[7]*x[7]+0.83*x[9]*x[9]-0.23*x[10]*x[10]+0.3*x[11]*x[11]+0.06*x[12]*x[12]+0.22*x[13]*x[13]+0.36*x[14]*x[14]+0.36*x[15]*x[15]-0.75*x[16]*x[16]-0.7*x[17]*x[17]-0.19*x[18]*x[18]+0.3*x[19]*x[19]+0.21*x[20]*x[20]+0.15*x[21]*x[21]+0.15*x[2]+0.62*x[3]-0.08*x[4]+0.39*x[5]+0.55*x[6]-0.94*x[7]+0.27*x[8]+0.95*x[9]-0.84*x[10]-0.71*x[11]-0.61*x[12]-0.24*x[13]-0.64*x[14]-0.24*x[15]+0.81*x[16]-0.46*x[17]-0.17*x[18]+0.59*x[19]+0.9*x[20]+0.48*x[21] <= 54.53)
@constraint(m, e3, 0.93*x[2]+0.86*x[3]-0.53*x[4]+0.59*x[6]+0.51*x[7]+0.96*x[8]+0.61*x[9]-0.93*x[10]-0.92*x[11]+0.62*x[12]+0.71*x[13]-0.23*x[14]+0.58*x[15]+0.27*x[16]+0.32*x[17]+0.97*x[18]-0.83*x[19]+0.33*x[20]+0.48*x[21] == -0.79)
@constraint(m, e4, -0.98*x[2]+0.78*x[3]+0.58*x[4]-0.27*x[5]+0.55*x[6]-0.13*x[7]-0.42*x[8]-0.96*x[9]-0.75*x[10]+0.7*x[11]-0.27*x[12]-0.16*x[13]-0.25*x[14]+0.18*x[15]+0.53*x[16]-0.17*x[17]+0.58*x[18]+0.91*x[19]+0.39*x[20]+0.23*x[21] == 0.63)
@constraint(m, e5, -0.45*x[2]+0.69*x[3]+0.74*x[4]-0.37*x[5]-0.6*x[6]-0.93*x[7]+0.87*x[8]-0.95*x[10]-0.73*x[11]-0.27*x[12]+0.95*x[13]-0.57*x[14]+0.05*x[15]+0.78*x[16]-0.44*x[17]-0.73*x[18]+0.35*x[19]-0.21*x[20]-0.6*x[21] == 0.96)
@constraint(m, e6, -0.89*x[2]+0.99*x[3]+0.91*x[4]-x[5]-0.34*x[6]+0.46*x[7]-0.63*x[8]+0.92*x[9]-0.66*x[10]+0.43*x[11]+0.38*x[12]-0.98*x[13]+0.98*x[14]+0.75*x[15]-0.47*x[16]+0.3*x[17]-0.12*x[18]+0.6*x[19]-0.2*x[20]+0.58*x[21] == 0.62)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
