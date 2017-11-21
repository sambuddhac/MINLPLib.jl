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
@NLconstraint(m, e1, -(0.14*x[2]*x[4]-0.06*x[2]*x[3]+0.14*x[2]*x[5]-0.18*x[2]*x[6]+0.12*x[2]*x[7]+0.12*x[2]*x[8]-0.14*x[2]*x[9]-0.06*x[2]*x[10]-0.12*x[2]*x[11]-0.08*x[2]*x[12]-0.14*x[2]*x[13]-0.1*x[2]*x[14]-0.02*x[2]*x[16]+0.22*x[2]*x[17]+0.08*x[2]*x[18]-0.14*x[2]*x[19]+0.3*x[2]*x[20]+0.1*x[2]*x[21]+0.16*x[3]*x[4]+0.28*x[3]*x[5]+0.3*x[3]*x[6]+0.16*x[3]*x[7]-0.08*x[3]*x[8]-0.14*x[3]*x[9]-0.06*x[3]*x[10]-0.02*x[3]*x[11]-0.46*x[3]*x[12]+0.38*x[3]*x[13]+0.04*x[3]*x[14]-0.04*x[3]*x[15]+0.52*x[3]*x[16]+0.02*x[3]*x[18]+0.18*x[3]*x[19]+0.24*x[3]*x[20]-0.04*x[3]*x[21]+0.12*x[4]*x[5]-0.02*x[4]*x[6]+0.18*x[4]*x[7]-0.18*x[4]*x[8]+0.14*x[4]*x[9]+0.08*x[4]*x[10]+0.14*x[4]*x[11]-0.02*x[4]*x[12]-0.3*x[4]*x[13]+0.04*x[4]*x[14]+0.02*x[4]*x[15]+0.18*x[4]*x[16]+0.14*x[4]*x[17]+0.04*x[4]*x[18]-0.14*x[4]*x[20]+0.34*x[4]*x[21]+0.18*x[5]*x[6]-0.02*x[5]*x[7]+0.02*x[5]*x[8]-0.08*x[5]*x[9]-0.3*x[5]*x[10]+0.26*x[5]*x[11]+0.08*x[5]*x[12]+0.02*x[5]*x[13]+0.54*x[5]*x[14]-0.02*x[5]*x[15]-0.16*x[5]*x[16]-0.18*x[5]*x[17]+0.04*x[5]*x[18]+0.32*x[5]*x[19]+0.04*x[5]*x[20]+0.28*x[5]*x[21]+0.16*x[6]*x[7]+0.1*x[6]*x[8]-0.1*x[6]*x[9]+0.42*x[6]*x[10]-0.08*x[6]*x[11]+0.3*x[6]*x[13]+0.02*x[6]*x[14]-0.18*x[6]*x[15]+0.22*x[6]*x[16]-0.1*x[6]*x[17]+0.08*x[6]*x[18]+0.38*x[6]*x[19]+0.06*x[6]*x[20]+0.18*x[6]*x[21]+0.34*x[7]*x[9]-0.04*x[7]*x[8]+0.48*x[7]*x[10]-0.3*x[7]*x[11]+0.08*x[7]*x[12]-0.3*x[7]*x[13]+0.24*x[7]*x[14]+0.2*x[7]*x[15]+0.36*x[7]*x[16]+0.6*x[7]*x[17]-0.02*x[7]*x[18]-0.22*x[7]*x[19]-0.2*x[7]*x[20]+0.08*x[7]*x[21]+(-0.12*x[8]*x[9])-0.2*x[8]*x[10]+0.08*x[8]*x[11]+0.2*x[8]*x[12]+0.02*x[8]*x[13]+0.1*x[8]*x[14]+0.02*x[8]*x[15]-0.18*x[8]*x[16]+0.26*x[8]*x[17]+0.34*x[8]*x[18]+0.18*x[8]*x[19]-0.28*x[8]*x[20]-0.06*x[8]*x[21]+0.02*x[9]*x[10]-0.16*x[9]*x[11]+0.36*x[9]*x[12]-0.02*x[9]*x[13]+0.28*x[9]*x[14]+0.06*x[9]*x[15]+0.06*x[9]*x[16]+0.16*x[9]*x[17]-0.08*x[9]*x[18]+0.2*x[9]*x[19]-0.1*x[9]*x[20]+0.16*x[9]*x[21]+0.1*x[10]*x[12]-0.14*x[10]*x[11]+0.02*x[10]*x[13]+0.14*x[10]*x[15]+0.18*x[10]*x[16]+0.34*x[10]*x[17]+0.08*x[10]*x[18]-0.22*x[10]*x[19]+0.06*x[10]*x[20]+0.18*x[10]*x[21]+0.16*x[11]*x[12]+0.16*x[11]*x[13]+0.22*x[11]*x[14]+0.24*x[11]*x[15]-0.14*x[11]*x[16]+0.02*x[11]*x[17]+0.08*x[11]*x[18]+0.22*x[11]*x[19]+0.38*x[11]*x[20]+0.16*x[11]*x[21]+0.04*x[12]*x[14]-0.1*x[12]*x[13]+0.26*x[12]*x[15]+0.1*x[12]*x[16]+0.42*x[12]*x[17]+0.2*x[12]*x[18]+0.04*x[12]*x[19]-0.06*x[12]*x[20]+0.34*x[12]*x[21]+(-0.08*x[13]*x[14])-0.08*x[13]*x[15]-0.24*x[13]*x[16]+0.24*x[13]*x[18]+0.14*x[13]*x[19]+0.36*x[13]*x[20]+0.22*x[13]*x[21]+0.26*x[14]*x[15]-0.12*x[14]*x[16]+0.02*x[14]*x[17]+0.3*x[14]*x[18]+0.26*x[14]*x[19]+0.02*x[14]*x[20]+0.22*x[14]*x[21]+0.18*x[15]*x[16]+0.16*x[15]*x[17]+0.28*x[15]*x[18]-0.04*x[15]*x[19]+0.3*x[15]*x[20]+0.16*x[15]*x[21]+0.06*x[16]*x[17]-0.1*x[16]*x[18]-0.04*x[16]*x[19]+0.1*x[16]*x[20]-0.02*x[16]*x[21]+0.2*x[17]*x[18]+0.2*x[17]*x[19]+0.04*x[17]*x[20]+0.02*x[17]*x[21]+0.3*x[18]*x[19]+0.1*x[18]*x[20]+0.54*x[18]*x[21]+0.16*x[19]*x[20]+0.16*x[20]*x[21]+(-0.58*x[2]*x[2])-0.17*x[3]*x[3]-0.39*x[4]*x[4]-0.34*x[5]*x[5]-0.12*x[6]*x[6]-0.38*x[7]*x[7]-0.43*x[8]*x[8]-0.35*x[9]*x[9]-0.56*x[10]*x[10]-0.39*x[11]*x[11]-0.37*x[12]*x[12]-0.4*x[13]*x[13]-0.45*x[14]*x[14]-0.63*x[15]*x[15]-0.46*x[16]*x[16]-0.04*x[17]*x[17]-0.46*x[18]*x[18]-0.32*x[19]*x[19]-0.01*x[20]*x[20]-0.51*x[21]*x[21]-0.22*x[2]-0.43*x[3]-0.11*x[4]-0.3*x[5]-0.61*x[6]+0.46*x[7]-0.65*x[8]+0.41*x[9]+0.4*x[10]+0.01*x[11]-0.94*x[12]+0.2*x[13]+0.69*x[14]-0.28*x[15]-0.11*x[16]-0.42*x[17]-0.05*x[18]-0.59*x[19]-0.57*x[20]+0.64*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 0.32*x[2]*x[5]-0.04*x[2]*x[3]-0.24*x[2]*x[6]+0.1*x[2]*x[7]+0.04*x[2]*x[8]-0.14*x[2]*x[9]+0.12*x[2]*x[10]+0.1*x[2]*x[11]+0.06*x[2]*x[12]-0.34*x[2]*x[13]-0.08*x[2]*x[14]-0.1*x[2]*x[15]+0.1*x[2]*x[16]+0.08*x[2]*x[17]-0.2*x[2]*x[18]-0.06*x[2]*x[19]+0.06*x[2]*x[20]+0.32*x[2]*x[21]+0.14*x[3]*x[4]-0.06*x[3]*x[5]+0.18*x[3]*x[7]-0.12*x[3]*x[8]-0.1*x[3]*x[9]+0.38*x[3]*x[10]-0.28*x[3]*x[11]+0.22*x[3]*x[12]+0.16*x[3]*x[13]-0.06*x[3]*x[14]-0.32*x[3]*x[15]+0.1*x[3]*x[16]+0.04*x[3]*x[17]+0.02*x[3]*x[18]-0.22*x[3]*x[19]+0.04*x[3]*x[21]+0.28*x[4]*x[5]-0.12*x[4]*x[6]-0.1*x[4]*x[7]-0.06*x[4]*x[8]+0.2*x[4]*x[9]+0.1*x[4]*x[10]-0.1*x[4]*x[11]-0.14*x[4]*x[12]+0.32*x[4]*x[13]-0.08*x[4]*x[14]+0.3*x[4]*x[15]-0.12*x[4]*x[16]+0.14*x[4]*x[17]-0.16*x[4]*x[18]-0.28*x[4]*x[19]-0.08*x[4]*x[20]+(-0.2*x[5]*x[6])-0.12*x[5]*x[7]-0.1*x[5]*x[8]+0.1*x[5]*x[9]-0.22*x[5]*x[10]-0.04*x[5]*x[11]+0.2*x[5]*x[12]+0.16*x[5]*x[13]-0.02*x[5]*x[15]-0.22*x[5]*x[16]-0.12*x[5]*x[17]-0.34*x[5]*x[18]-0.04*x[5]*x[19]-0.02*x[5]*x[20]+0.14*x[5]*x[21]+0.06*x[6]*x[7]-0.44*x[6]*x[8]-0.08*x[6]*x[9]-0.1*x[6]*x[10]-0.36*x[6]*x[11]-0.12*x[6]*x[12]+0.18*x[6]*x[13]-0.02*x[6]*x[14]+0.24*x[6]*x[15]+0.02*x[6]*x[16]+0.22*x[6]*x[17]-0.24*x[6]*x[18]+0.1*x[6]*x[19]-0.1*x[6]*x[20]-0.04*x[6]*x[21]+(-0.08*x[7]*x[8])-0.02*x[7]*x[9]+0.08*x[7]*x[10]-0.24*x[7]*x[11]-0.2*x[7]*x[12]+0.16*x[7]*x[13]-0.08*x[7]*x[14]-0.16*x[7]*x[15]+0.22*x[7]*x[16]+0.1*x[7]*x[17]-0.18*x[7]*x[19]+0.18*x[7]*x[20]-0.32*x[7]*x[21]+0.14*x[8]*x[9]+0.2*x[8]*x[11]+0.28*x[8]*x[12]-0.26*x[8]*x[13]-0.04*x[8]*x[14]-0.2*x[8]*x[15]+0.22*x[8]*x[16]-0.06*x[8]*x[17]+0.14*x[8]*x[18]+0.02*x[8]*x[19]+0.14*x[8]*x[20]-0.16*x[8]*x[21]+0.04*x[9]*x[10]-0.46*x[9]*x[11]+0.34*x[9]*x[12]+0.26*x[9]*x[13]-0.14*x[9]*x[14]+0.4*x[9]*x[15]-0.4*x[9]*x[16]+0.02*x[9]*x[17]-0.06*x[9]*x[18]-0.42*x[9]*x[19]-0.2*x[9]*x[20]-0.14*x[9]*x[21]+0.02*x[10]*x[11]-0.06*x[10]*x[12]-0.02*x[10]*x[13]-0.18*x[10]*x[14]-0.38*x[10]*x[15]+0.16*x[10]*x[16]-0.14*x[10]*x[18]-0.18*x[10]*x[19]-0.1*x[10]*x[20]+0.06*x[10]*x[21]+(-0.06*x[11]*x[12])-0.2*x[11]*x[13]+0.6*x[11]*x[14]+0.3*x[11]*x[15]-0.12*x[11]*x[16]+0.26*x[11]*x[17]+0.12*x[11]*x[18]+0.52*x[11]*x[19]-0.06*x[11]*x[20]+0.3*x[11]*x[21]+(-0.36*x[12]*x[13])-0.36*x[12]*x[14]+0.1*x[12]*x[15]-0.04*x[12]*x[16]-0.2*x[12]*x[17]-0.1*x[12]*x[18]-0.36*x[12]*x[19]-0.26*x[12]*x[20]+0.46*x[12]*x[21]+0.08*x[13]*x[15]-0.3*x[13]*x[14]+0.02*x[13]*x[16]+0.32*x[13]*x[17]-0.06*x[13]*x[18]-0.42*x[13]*x[19]+0.06*x[13]*x[20]-0.4*x[13]*x[21]+0.18*x[14]*x[15]-0.2*x[14]*x[16]+0.04*x[14]*x[17]+0.2*x[14]*x[18]+0.38*x[14]*x[19]+0.14*x[14]*x[20]-0.06*x[14]*x[21]+0.36*x[15]*x[17]-0.4*x[15]*x[16]-0.42*x[15]*x[18]-0.24*x[15]*x[19]-0.2*x[15]*x[20]-0.18*x[15]*x[21]+0.38*x[16]*x[18]-0.36*x[16]*x[17]+0.42*x[16]*x[19]+0.18*x[16]*x[20]-0.26*x[16]*x[21]+(-0.18*x[17]*x[18])-0.14*x[17]*x[19]-0.02*x[17]*x[20]-0.52*x[17]*x[21]+0.32*x[18]*x[19]-0.1*x[18]*x[20]+0.06*x[18]*x[21]+0.06*x[19]*x[20]+0.06*x[19]*x[21]-0.06*x[20]*x[21]+(-0.26*x[2]*x[2])-0.45*x[3]*x[3]-0.43*x[4]*x[4]-0.43*x[5]*x[5]-0.05*x[6]*x[6]-0.24*x[7]*x[7]-0.46*x[8]*x[8]-0.19*x[9]*x[9]-0.44*x[10]*x[10]-0.18*x[11]*x[11]-0.42*x[12]*x[12]-0.18*x[13]*x[13]-0.48*x[14]*x[14]-0.41*x[15]*x[15]-0.39*x[16]*x[16]-0.32*x[17]*x[17]-0.3*x[18]*x[18]-0.17*x[19]*x[19]-0.35*x[20]*x[20]-0.38*x[21]*x[21]+0.11*x[2]-0.53*x[3]-0.03*x[4]+0.9*x[5]+0.34*x[6]+0.64*x[7]+0.79*x[8]-0.76*x[9]+0.01*x[10]+0.83*x[11]+0.24*x[12]+0.55*x[13]+0.81*x[14]-0.94*x[15]+0.46*x[16]+0.27*x[17]+0.57*x[18]+0.43*x[19]+0.9*x[20]-0.12*x[21] <= 67.98)
@constraint(m, e3, 0.39*x[2]+0.52*x[3]+0.01*x[4]+0.01*x[5]+0.16*x[6]+0.58*x[7]+0.03*x[8]-0.8*x[9]+0.63*x[10]+0.45*x[11]+0.08*x[12]+0.28*x[13]+0.5*x[14]+0.56*x[15]+0.49*x[16]+0.06*x[17]+0.17*x[18]-0.51*x[19]-0.25*x[20]+0.48*x[21] == 0.52)
@constraint(m, e4, -0.55*x[2]-0.17*x[3]+0.22*x[4]+0.65*x[5]-0.2*x[6]+0.6*x[7]-0.76*x[8]+0.73*x[9]+0.13*x[10]-0.02*x[11]+0.53*x[12]+0.53*x[13]-0.02*x[14]+0.21*x[15]+0.2*x[16]+0.12*x[17]+0.32*x[18]-0.89*x[19]+0.33*x[20]-0.28*x[21] == -0.71)
@constraint(m, e5, -0.48*x[2]+0.08*x[3]+0.72*x[4]+0.61*x[5]-0.06*x[6]-0.77*x[7]-0.99*x[8]+0.24*x[9]-0.27*x[10]-0.01*x[11]+0.08*x[12]+0.21*x[13]+0.76*x[14]+x[15]+0.92*x[16]+0.21*x[17]+0.27*x[18]-0.45*x[19]-0.61*x[20]-0.69*x[21] == 0.36)
@constraint(m, e6, 0.91*x[2]+0.31*x[3]-0.79*x[4]-0.69*x[5]+0.21*x[6]-0.93*x[7]+0.01*x[8]+0.4*x[9]-0.93*x[10]-0.05*x[11]-0.46*x[12]+0.66*x[13]+0.29*x[14]+0.36*x[15]-0.02*x[16]+0.75*x[17]-0.1*x[18]-0.75*x[19]+0.72*x[20]+0.59*x[21] == 0.09)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
