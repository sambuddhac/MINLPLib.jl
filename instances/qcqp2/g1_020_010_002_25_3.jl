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
@NLconstraint(m, e1, -(-1.5*x[2]*x[4]-1.84*x[2]*x[5]+1.8*x[2]*x[11]+1.7*x[2]*x[13]+0.42*x[2]*x[17]+(-0.06*x[3]*x[6])-0.24*x[3]*x[7]+1.12*x[3]*x[11]+1.74*x[3]*x[14]-1.06*x[3]*x[19]+(-0.94*x[4]*x[15])-0.52*x[4]*x[16]+0.9*x[5]*x[13]-0.62*x[5]*x[20]+(-1.34*x[6]*x[15])-0.86*x[6]*x[16]-1.42*x[6]*x[19]+2*x[6]*x[21]+0.7*x[7]*x[8]+1.68*x[7]*x[11]+1.14*x[7]*x[12]+1.74*x[7]*x[17]-1.12*x[7]*x[19]+(-0.46*x[8]*x[13])-1.48*x[8]*x[16]-0.98*x[8]*x[17]+1.42*x[8]*x[19]-1.68*x[8]*x[21]+0.78*x[9]*x[15]-0.82*x[9]*x[16]+1.2*x[9]*x[21]+1.72*x[10]*x[15]-0.54*x[10]*x[16]+0.74*x[10]*x[17]-0.86*x[10]*x[19]-0.94*x[10]*x[20]+0.68*x[10]*x[21]+(-0.98*x[11]*x[12])-1.54*x[11]*x[13]-1.7*x[11]*x[14]+1.08*x[11]*x[17]-0.26*x[11]*x[18]+1.24*x[12]*x[17]-1.42*x[12]*x[18]-0.64*x[13]*x[17]+0.56*x[14]*x[16]+0.46*x[15]*x[21]+1.84*x[17]*x[18]+0.75*x[16]*x[16]-0.91*x[14]*x[14]+0.33*x[2]-0.45*x[3]-0.67*x[4]-0.92*x[5]+0.69*x[6]-0.49*x[7]+0.28*x[8]-0.55*x[9]+0.32*x[10]+0.7*x[11]+0.32*x[12]+0.36*x[13]+0.19*x[14]-0.27*x[15]-0.01*x[16]-0.61*x[17]-0.46*x[18]-0.3*x[19]+0.41*x[20]+0.42*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 1.68*x[2]*x[5]+1.94*x[2]*x[6]+0.14*x[2]*x[8]-1.8*x[2]*x[9]-1.6*x[2]*x[12]-0.46*x[2]*x[18]-0.32*x[3]*x[14]+0.36*x[4]*x[11]-1.12*x[4]*x[7]-1.18*x[4]*x[13]+0.12*x[4]*x[14]+1.14*x[4]*x[15]-1.02*x[4]*x[16]+0.38*x[4]*x[18]-1.46*x[4]*x[21]+0.68*x[5]*x[9]+0.12*x[6]*x[8]-1.1*x[6]*x[9]+0.32*x[6]*x[10]-0.82*x[6]*x[13]+1.58*x[6]*x[14]+0.68*x[6]*x[16]-1.54*x[6]*x[18]+1.02*x[7]*x[13]-1.84*x[7]*x[9]+0.92*x[8]*x[9]+0.82*x[8]*x[12]-1.7*x[8]*x[15]-0.62*x[8]*x[21]+1.34*x[9]*x[16]+0.44*x[9]*x[19]+0.1*x[10]*x[18]-0.04*x[10]*x[12]-1.94*x[10]*x[21]+1.42*x[12]*x[13]-1.82*x[12]*x[15]-0.94*x[12]*x[21]+1.06*x[13]*x[16]-0.42*x[13]*x[18]+0.68*x[13]*x[19]-0.86*x[14]*x[21]+0.56*x[15]*x[16]+1.38*x[15]*x[19]+1.9*x[15]*x[21]+1.9*x[17]*x[18]+1.6*x[17]*x[19]-1.34*x[17]*x[20]+(-0.71*x[7]*x[7])-0.75*x[21]*x[21]+0.59*x[2]-0.04*x[3]+0.05*x[4]-0.5*x[5]-0.19*x[6]+0.26*x[7]-0.3*x[8]+0.45*x[9]-0.98*x[10]-0.74*x[11]+0.1*x[12]+0.07*x[13]-0.36*x[14]+0.23*x[15]-0.32*x[16]-0.57*x[17]+0.4*x[18]+0.73*x[19]+0.82*x[20]+0.81*x[21] <= 92.86)
@NLconstraint(m, e3, 1.48*x[2]*x[11]+0.28*x[2]*x[14]-0.92*x[2]*x[16]+1.78*x[3]*x[15]+1.34*x[3]*x[16]+1.92*x[3]*x[21]+(-0.7*x[4]*x[5])-0.32*x[4]*x[6]+1.3*x[4]*x[8]-1.84*x[4]*x[10]+0.26*x[4]*x[18]+0.24*x[5]*x[11]-1.56*x[5]*x[13]-0.72*x[5]*x[18]+(-1.44*x[6]*x[9])-1.86*x[6]*x[10]+0.54*x[6]*x[11]-1.98*x[6]*x[12]-x[6]*x[19]+1.48*x[7]*x[12]-1.1*x[7]*x[19]-1.92*x[8]*x[20]+1.1*x[9]*x[18]-0.18*x[9]*x[16]-1.94*x[9]*x[20]+1.36*x[10]*x[15]+1.8*x[10]*x[18]-1.66*x[10]*x[20]+0.2*x[10]*x[21]-0.84*x[11]*x[20]+0.32*x[12]*x[14]+1.08*x[12]*x[16]+0.1*x[12]*x[17]+1.38*x[12]*x[20]+0.92*x[12]*x[21]-0.26*x[13]*x[15]+1.26*x[14]*x[15]+0.2*x[14]*x[21]+0.36*x[15]*x[17]-1.06*x[16]*x[18]+0.24*x[17]*x[21]+(-0.27*x[4]*x[4])-0.83*x[9]*x[9]-0.75*x[12]*x[12]-0.2*x[14]*x[14]+0.48*x[17]*x[17]+0.61*x[18]*x[18]+0.49*x[2]+0.16*x[3]+0.47*x[4]+0.26*x[5]+0.53*x[6]+0.6*x[7]+0.18*x[8]+0.09*x[9]-0.48*x[10]-0.69*x[11]-0.14*x[12]+0.08*x[13]+0.8*x[14]-0.03*x[15]-0.77*x[16]+0.08*x[17]+0.54*x[18]+0.02*x[19]+0.86*x[20]-0.08*x[21] <= 75.01)
@NLconstraint(m, e4, 1.1*x[2]*x[3]-0.1*x[2]*x[5]+1.74*x[2]*x[6]-1.18*x[2]*x[21]+1.84*x[4]*x[8]+0.24*x[4]*x[10]+1.56*x[4]*x[18]+0.14*x[4]*x[19]+1.48*x[4]*x[21]+0.3*x[5]*x[11]+1.32*x[5]*x[12]-1.98*x[5]*x[14]+0.54*x[5]*x[19]+1.92*x[6]*x[11]-1.12*x[6]*x[7]+1.18*x[6]*x[15]+1.84*x[7]*x[14]-1.64*x[7]*x[8]+1.82*x[7]*x[18]+1.46*x[8]*x[15]-1.88*x[8]*x[19]+0.94*x[9]*x[13]-1.48*x[9]*x[11]-1.36*x[9]*x[14]-1.46*x[9]*x[18]-1.8*x[9]*x[19]+1.38*x[9]*x[20]-0.32*x[9]*x[21]+1.08*x[10]*x[13]+1.24*x[10]*x[18]+1.92*x[11]*x[17]-1.2*x[11]*x[14]+1.94*x[11]*x[18]+0.04*x[11]*x[21]-0.96*x[12]*x[14]+1.32*x[13]*x[19]-1.68*x[13]*x[15]+1.22*x[15]*x[20]-1.22*x[15]*x[21]-1.9*x[18]*x[20]-0.68*x[19]*x[20]-0.06*x[20]*x[21]+(-0.14*x[2]*x[2])-0.47*x[4]*x[4]+0.24*x[8]*x[8]-0.33*x[9]*x[9]-0.07*x[10]*x[10]+0.54*x[17]*x[17]+0.32*x[19]*x[19]+0.06*x[21]*x[21]+0.22*x[2]+0.53*x[3]-0.13*x[4]+0.32*x[5]+0.25*x[6]+0.32*x[7]-0.79*x[8]+0.24*x[9]+0.8*x[10]-0.58*x[11]-0.75*x[12]-0.18*x[13]-0.01*x[14]+0.63*x[15]-0.24*x[17]+0.74*x[18]-0.17*x[19]-0.15*x[20]-0.65*x[21]+0.33*x[16] <= 76.38)
@NLconstraint(m, e5, (-1.6*x[2]*x[4])-0.5*x[2]*x[8]+1.62*x[2]*x[17]+0.58*x[4]*x[15]+0.28*x[4]*x[18]+(-1.48*x[5]*x[10])-0.12*x[5]*x[14]-0.2*x[5]*x[16]-0.34*x[5]*x[21]+(-0.2*x[6]*x[8])-0.7*x[6]*x[10]+0.66*x[6]*x[11]+(-0.12*x[7]*x[9])-1.06*x[7]*x[11]+0.94*x[7]*x[13]-1.4*x[7]*x[18]-0.64*x[7]*x[20]+(-1.04*x[8]*x[12])-1.12*x[8]*x[13]+1.22*x[8]*x[14]+(-1.26*x[9]*x[11])-0.46*x[9]*x[13]+1.84*x[9]*x[16]-0.34*x[9]*x[20]+0.9*x[10]*x[18]+0.14*x[10]*x[20]+(-0.32*x[11]*x[13])-0.02*x[11]*x[14]+1.98*x[11]*x[16]-0.6*x[11]*x[18]-1.8*x[12]*x[18]+1.82*x[13]*x[14]+1.56*x[13]*x[17]+0.54*x[13]*x[18]+1.28*x[14]*x[17]-1.66*x[14]*x[20]+(-1.74*x[15]*x[17])-1.34*x[15]*x[19]+1.82*x[15]*x[21]+1.04*x[16]*x[17]+0.02*x[17]*x[18]-0.16*x[17]*x[20]+0.52*x[18]*x[20]+1.08*x[19]*x[20]+(-0.2*x[6]*x[6])-0.08*x[12]*x[12]+0.11*x[14]*x[14]-0.83*x[15]*x[15]-0.02*x[17]*x[17]+0.94*x[20]*x[20]+0.07*x[2]+0.16*x[4]+0.82*x[5]-0.46*x[6]+0.53*x[7]-0.07*x[8]-0.14*x[9]+0.3*x[10]-0.9*x[11]+0.15*x[12]-0.53*x[13]+0.74*x[14]-0.77*x[15]+0.77*x[16]+0.98*x[17]-0.08*x[18]+0.16*x[19]+0.06*x[20]-0.78*x[21]-0.66*x[3] <= 46.11)
@NLconstraint(m, e6, 1.42*x[2]*x[11]-1.6*x[2]*x[4]+0.2*x[2]*x[12]+0.3*x[2]*x[13]+0.54*x[2]*x[16]+1.58*x[2]*x[17]-1.34*x[2]*x[20]-1.18*x[2]*x[21]+1.06*x[3]*x[7]-0.34*x[3]*x[8]-1.94*x[3]*x[10]-0.46*x[3]*x[13]+0.86*x[3]*x[16]+0.64*x[3]*x[17]-0.8*x[3]*x[18]+0.6*x[4]*x[7]-1.96*x[4]*x[5]-0.52*x[4]*x[15]-1.66*x[4]*x[16]-0.2*x[4]*x[18]+0.84*x[5]*x[6]-0.92*x[5]*x[8]-0.16*x[5]*x[10]-0.82*x[5]*x[15]-0.16*x[5]*x[19]+0.28*x[6]*x[18]+0.96*x[7]*x[14]+1.28*x[8]*x[15]-1.82*x[8]*x[11]-1.04*x[8]*x[18]+1.88*x[8]*x[19]-1.16*x[8]*x[20]+1.04*x[9]*x[18]+1.9*x[10]*x[18]-0.42*x[10]*x[12]+0.64*x[11]*x[18]-0.42*x[11]*x[20]+1.12*x[12]*x[16]-1.94*x[12]*x[13]+0.7*x[12]*x[21]+(-1.42*x[13]*x[15])-0.44*x[13]*x[19]-0.18*x[14]*x[17]-0.44*x[15]*x[17]-1.5*x[16]*x[19]+0.38*x[17]*x[21]+0.66*x[18]*x[19]+0.41*x[3]*x[3]-0.78*x[18]*x[18]-0.79*x[19]*x[19]-0.93*x[2]-0.41*x[3]-0.7*x[4]+0.18*x[5]-0.2*x[6]+0.85*x[7]-0.01*x[8]-0.28*x[9]-0.84*x[10]-0.59*x[11]-0.94*x[12]+0.82*x[13]-0.77*x[14]-0.51*x[15]+0.95*x[16]+0.7*x[17]-0.4*x[18]-0.91*x[19]-0.75*x[20]+0.2*x[21] <= 18.61)
@NLconstraint(m, e7, 0.62*x[2]*x[11]-1.88*x[2]*x[9]-1.82*x[2]*x[13]-0.32*x[2]*x[14]-1.76*x[2]*x[17]-1.76*x[2]*x[18]+0.18*x[2]*x[21]+1.26*x[3]*x[12]-0.38*x[3]*x[5]+0.24*x[3]*x[17]-0.94*x[3]*x[20]+1.74*x[4]*x[5]-1.28*x[4]*x[7]-1.12*x[4]*x[9]+1.18*x[4]*x[12]-0.94*x[4]*x[17]-1.04*x[4]*x[21]+1.76*x[5]*x[6]-1.66*x[5]*x[14]-1.16*x[5]*x[15]+(-1.44*x[6]*x[9])-1.48*x[6]*x[12]+0.82*x[7]*x[10]-0.54*x[7]*x[14]+(-0.84*x[8]*x[13])-1.4*x[8]*x[18]-0.66*x[8]*x[19]+0.04*x[9]*x[16]+1.98*x[9]*x[17]+(-1.28*x[10]*x[12])-1.16*x[10]*x[13]-1.48*x[10]*x[18]-1.22*x[10]*x[20]-0.5*x[11]*x[18]+(-1.48*x[12]*x[19])-1.38*x[12]*x[21]+1.92*x[13]*x[18]+0.28*x[13]*x[21]+0.38*x[14]*x[18]+0.34*x[15]*x[17]+1.14*x[15]*x[20]+1.96*x[16]*x[19]-0.38*x[16]*x[21]+1.22*x[17]*x[18]-0.78*x[19]*x[20]+0.01*x[3]*x[3]-0.03*x[9]*x[9]+0.57*x[12]*x[12]-0.45*x[13]*x[13]-0.8*x[18]*x[18]-0.96*x[2]+0.97*x[3]-0.61*x[4]-0.14*x[5]-0.11*x[7]+0.76*x[8]+0.8*x[9]-0.96*x[10]+0.72*x[11]+0.06*x[12]-0.94*x[13]-0.16*x[14]-0.62*x[15]+0.19*x[16]-0.57*x[17]-0.76*x[18]-0.35*x[19]-0.61*x[20]+0.45*x[21] <= 13.89)
@NLconstraint(m, e8, 1.46*x[2]*x[8]-1.4*x[2]*x[5]-1.64*x[2]*x[15]-0.14*x[2]*x[20]+1.84*x[2]*x[21]+(-0.02*x[3]*x[9])-1.04*x[3]*x[20]+(-1.36*x[4]*x[9])-0.7*x[4]*x[10]+1.96*x[4]*x[11]+0.5*x[4]*x[12]-0.72*x[4]*x[14]-1.12*x[4]*x[17]+(-0.3*x[5]*x[6])-0.9*x[5]*x[13]-1.96*x[5]*x[14]+0.04*x[5]*x[16]-1.28*x[5]*x[18]-0.8*x[6]*x[11]+1.96*x[7]*x[10]-0.92*x[7]*x[12]+0.56*x[7]*x[16]-0.54*x[7]*x[17]-1.3*x[7]*x[19]+1.76*x[8]*x[9]-0.2*x[8]*x[12]+1.84*x[8]*x[14]+0.7*x[8]*x[17]+(-0.12*x[9]*x[17])-0.86*x[9]*x[18]+0.94*x[11]*x[13]+1.3*x[12]*x[18]+0.12*x[12]*x[19]-0.6*x[12]*x[20]+1.9*x[13]*x[18]-1.26*x[13]*x[21]-1.76*x[14]*x[16]+0.48*x[15]*x[17]-1.58*x[15]*x[16]+0.38*x[15]*x[19]-1.68*x[16]*x[18]+1.72*x[17]*x[19]-1.52*x[18]*x[21]-0.72*x[20]*x[21]+0.1*x[3]*x[3]-0.61*x[2]*x[2]-0.63*x[13]*x[13]+0.1*x[16]*x[16]+0.8*x[17]*x[17]+0.48*x[18]*x[18]+0.6*x[2]+0.99*x[3]+0.39*x[4]+0.27*x[5]-0.02*x[6]-0.91*x[7]-0.38*x[8]-0.57*x[9]-0.4*x[10]-0.59*x[11]+0.89*x[12]-0.75*x[13]+0.15*x[14]-0.55*x[15]-0.38*x[16]+0.77*x[17]+0.31*x[18]-0.12*x[19]-0.4*x[20]+0.19*x[21] <= 61.74)
@NLconstraint(m, e9, 0.34*x[2]*x[6]-0.26*x[2]*x[7]+0.76*x[2]*x[12]+1.16*x[2]*x[21]+1.84*x[3]*x[4]-0.4*x[3]*x[9]+0.1*x[3]*x[11]+0.14*x[3]*x[15]-0.84*x[3]*x[21]+(-1.32*x[4]*x[6])-0.28*x[4]*x[11]+0.52*x[4]*x[14]+1.04*x[4]*x[20]+0.04*x[4]*x[21]+1.08*x[5]*x[9]-1.8*x[5]*x[8]-0.1*x[5]*x[10]-1.62*x[5]*x[18]+1.22*x[6]*x[8]+1.3*x[6]*x[9]+0.44*x[6]*x[19]+(-0.56*x[7]*x[8])-0.26*x[7]*x[9]-1.86*x[7]*x[12]+1.16*x[7]*x[17]+0.6*x[8]*x[11]-1.52*x[8]*x[13]+0.48*x[8]*x[17]+0.44*x[8]*x[18]+1.26*x[9]*x[12]-0.94*x[9]*x[14]+0.8*x[9]*x[19]+(-0.88*x[10]*x[11])-1.44*x[10]*x[13]-0.12*x[10]*x[17]-0.72*x[10]*x[21]+1.34*x[11]*x[16]-x[11]*x[14]+1.78*x[14]*x[17]-0.34*x[14]*x[16]+0.4*x[15]*x[21]+0.06*x[16]*x[17]+0.22*x[16]*x[19]+1.2*x[16]*x[20]+1.1*x[17]*x[18]+0.76*x[17]*x[20]-0.2*x[18]*x[20]+0.62*x[3]*x[3]+0.54*x[10]*x[10]+0.05*x[13]*x[13]-0.66*x[2]-0.41*x[3]+0.99*x[4]-0.58*x[5]-0.64*x[6]+0.92*x[7]+0.9*x[8]+0.19*x[9]+0.95*x[10]-0.24*x[11]+0.76*x[12]+0.21*x[13]-0.68*x[14]+x[15]-0.03*x[16]+0.62*x[17]-0.94*x[18]-0.67*x[19]+0.31*x[20]-0.71*x[21] <= 22.0)
@NLconstraint(m, e10, 1.84*x[2]*x[5]-1.5*x[2]*x[7]-0.26*x[2]*x[10]-1.88*x[2]*x[14]+1.68*x[2]*x[18]+(-1.7*x[3]*x[7])-1.84*x[3]*x[8]-1.18*x[3]*x[13]-1.78*x[3]*x[15]-1.92*x[3]*x[17]+1.74*x[4]*x[8]-1.58*x[4]*x[13]-1.08*x[4]*x[14]-0.44*x[4]*x[17]+0.38*x[4]*x[19]+0.48*x[5]*x[10]+1.1*x[5]*x[16]-0.48*x[5]*x[17]-1.56*x[5]*x[20]-1.74*x[5]*x[21]+(-1.76*x[6]*x[7])-0.6*x[6]*x[11]+1.94*x[6]*x[12]-1.58*x[6]*x[19]+1.94*x[7]*x[13]-0.04*x[7]*x[15]+0.16*x[7]*x[16]+1.38*x[7]*x[18]+0.28*x[7]*x[19]+0.38*x[8]*x[9]-0.82*x[8]*x[14]+0.48*x[8]*x[20]+1.66*x[9]*x[11]-1.26*x[9]*x[19]+x[10]*x[11]+0.84*x[10]*x[17]+1.98*x[10]*x[21]-1.66*x[11]*x[12]+1.66*x[12]*x[21]-1.3*x[13]*x[15]+1.52*x[14]*x[19]-1.62*x[14]*x[17]+0.62*x[15]*x[18]-0.5*x[15]*x[16]-0.18*x[16]*x[18]+1.56*x[17]*x[20]-1.22*x[17]*x[18]+0.5*x[18]*x[20]+0.32*x[2]*x[2]+0.06*x[7]*x[7]-0.36*x[2]-0.76*x[3]-0.69*x[4]-0.9*x[5]+0.66*x[6]+0.11*x[7]-0.27*x[8]+0.82*x[9]+0.38*x[10]+0.68*x[11]-0.3*x[12]+0.49*x[13]-0.08*x[14]-0.4*x[15]-0.05*x[16]+0.22*x[17]-0.04*x[18]+0.11*x[19]+0.69*x[20]-0.19*x[21] <= 48.55)
@NLconstraint(m, e11, 0.44*x[3]*x[16]-0.22*x[3]*x[17]-1.66*x[3]*x[21]-1.4*x[2]*x[15]+0.22*x[4]*x[11]-1.14*x[4]*x[6]+1.68*x[4]*x[13]+1.2*x[4]*x[20]+0.78*x[5]*x[14]-0.96*x[5]*x[16]+0.42*x[5]*x[19]-0.32*x[5]*x[21]+1.1*x[6]*x[12]+0.4*x[7]*x[12]-1.7*x[7]*x[9]-0.54*x[7]*x[13]+1.6*x[7]*x[17]-1.72*x[7]*x[18]-1.32*x[7]*x[20]-0.18*x[7]*x[21]+1.06*x[8]*x[11]+1.54*x[8]*x[12]+0.98*x[8]*x[14]-0.88*x[8]*x[20]+1.5*x[8]*x[21]+0.36*x[9]*x[20]-0.16*x[9]*x[11]-1.04*x[10]*x[12]-1.2*x[11]*x[16]+(-1.54*x[12]*x[14])-2*x[12]*x[20]+0.18*x[13]*x[15]-1.64*x[13]*x[14]-0.42*x[13]*x[18]-0.96*x[13]*x[19]+0.5*x[14]*x[21]-0.42*x[14]*x[20]+1.52*x[15]*x[19]-1.9*x[15]*x[16]+0.4*x[15]*x[20]+1.04*x[16]*x[17]-1.18*x[16]*x[21]+1.62*x[17]*x[19]-1.86*x[17]*x[18]+0.34*x[18]*x[19]-1.14*x[19]*x[20]+0.06*x[5]*x[5]+0.93*x[6]*x[6]-0.08*x[10]*x[10]+0.56*x[12]*x[12]+0.36*x[2]-0.64*x[3]+0.66*x[4]+0.57*x[5]-0.63*x[6]+0.41*x[7]-0.32*x[8]-0.59*x[9]-0.57*x[10]+0.47*x[11]+0.76*x[12]+0.06*x[13]-0.76*x[14]+0.02*x[15]-0.82*x[16]-0.69*x[17]+0.17*x[18]-0.2*x[19]-0.05*x[20]+0.92*x[21] <= 0.35)
@constraint(m, e12, -0.16*x[2]-0.51*x[3]-0.49*x[4]+0.64*x[5]+0.23*x[6]+0.51*x[7]-0.69*x[8]-0.74*x[9]-0.25*x[10]+0.83*x[11]-0.82*x[12]-0.46*x[13]+0.02*x[14]+0.87*x[15]+0.42*x[16]-0.18*x[17]-0.87*x[18]-0.11*x[19]+0.87*x[20]+0.88*x[21] == 0.27)
@constraint(m, e13, -0.79*x[2]+0.21*x[3]-0.44*x[4]+0.72*x[5]-0.69*x[6]-0.76*x[7]-0.76*x[8]+0.99*x[9]+0.42*x[10]+0.53*x[11]+0.32*x[12]-0.27*x[13]+0.5*x[14]+0.88*x[15]-0.78*x[16]-0.53*x[17]+0.89*x[18]-0.93*x[19]+0.09*x[20]-0.39*x[21] == 0.8)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
