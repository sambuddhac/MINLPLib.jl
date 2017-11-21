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
@NLconstraint(m, e1, -(-1.85*x[2]*x[12]-0.14*x[2]*x[13]+1.68*x[2]*x[14]+0.56*x[2]*x[17]+0.44*x[2]*x[18]-1.13*x[2]*x[20]+1.04*x[2]*x[21]+1.24*x[3]*x[14]+1.54*x[3]*x[15]+0.86*x[3]*x[20]+(-0.07*x[4]*x[15])-1.42*x[4]*x[18]-1.2*x[4]*x[19]+1.94*x[5]*x[15]-0.07*x[5]*x[13]+0.86*x[5]*x[16]-1.63*x[5]*x[17]-0.1*x[5]*x[21]+0.61*x[6]*x[13]+1.22*x[6]*x[14]-1.61*x[6]*x[15]+1.31*x[6]*x[18]-0.19*x[6]*x[19]+1.71*x[6]*x[20]+1.98*x[7]*x[19]-1.62*x[7]*x[15]-1.68*x[7]*x[21]+0.07*x[8]*x[14]-1.28*x[8]*x[16]-0.44*x[8]*x[17]+1.71*x[8]*x[19]-0.25*x[8]*x[20]-1.42*x[8]*x[21]+1.88*x[9]*x[12]-1.86*x[9]*x[13]+1.91*x[9]*x[14]-1.58*x[9]*x[17]-1.64*x[9]*x[18]+0.84*x[9]*x[19]+0.28*x[10]*x[12]+0.84*x[10]*x[13]+0.55*x[10]*x[14]-0.99*x[10]*x[16]+1.21*x[10]*x[17]-0.39*x[10]*x[20]-0.02*x[10]*x[21]+(-0.59*x[11]*x[13])-x[11]*x[15]-0.5*x[11]*x[19]+1.35*x[11]*x[21]-0.28*x[2]+0.01*x[3]+0.73*x[4]-0.98*x[5]-0.76*x[6]-0.94*x[7]+0.3*x[8]-0.33*x[9]+0.5*x[10]+0.11*x[11]-0.9*x[12]+0.68*x[13]-0.68*x[14]+0.29*x[15]+0.9*x[16]+0.97*x[17]-0.64*x[18]+0.19*x[19]+0.93*x[20]-0.77*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, (-0.1*x[2]*x[12])-0.53*x[2]*x[13]+0.59*x[2]*x[15]+0.02*x[2]*x[18]-0.67*x[2]*x[19]-1.4*x[2]*x[20]+1.54*x[3]*x[21]-0.67*x[3]*x[16]+0.02*x[4]*x[12]+0.66*x[4]*x[13]+0.8*x[4]*x[14]+1.06*x[4]*x[15]+1.14*x[4]*x[18]-0.79*x[4]*x[19]+(-1.83*x[5]*x[12])-1.02*x[5]*x[13]+2*x[5]*x[14]-1.25*x[5]*x[15]-1.48*x[5]*x[18]+1.35*x[5]*x[19]-1.14*x[5]*x[21]+(-0.26*x[6]*x[13])-1.84*x[6]*x[18]+0.24*x[6]*x[19]-1.98*x[6]*x[20]+(-0.51*x[7]*x[12])-1.89*x[7]*x[14]-1.37*x[7]*x[20]+1.99*x[7]*x[21]+0.86*x[8]*x[12]-0.65*x[8]*x[13]+0.77*x[8]*x[14]-0.95*x[8]*x[15]+1.49*x[8]*x[16]-1.64*x[8]*x[18]-0.6*x[8]*x[19]+0.93*x[9]*x[12]-0.72*x[9]*x[13]+1.76*x[9]*x[18]-0.74*x[9]*x[19]+0.93*x[9]*x[20]+1.33*x[9]*x[21]+1.92*x[10]*x[13]-0.31*x[10]*x[18]+0.56*x[10]*x[20]+0.95*x[11]*x[15]-0.88*x[11]*x[12]+0.22*x[11]*x[19]+0.29*x[11]*x[20]-0.18*x[2]+0.77*x[3]-0.5*x[4]-0.55*x[5]+0.58*x[6]-0.61*x[7]-0.17*x[8]+0.21*x[9]-0.72*x[10]-0.54*x[11]+0.87*x[12]+0.89*x[13]-0.44*x[14]+0.86*x[15]+0.78*x[16]-0.44*x[18]+0.53*x[19]+0.14*x[20]+0.98*x[21]+0.71*x[17] <= 88.21)
@NLconstraint(m, e3, (-1.09*x[2]*x[12])-0.27*x[2]*x[13]+1.56*x[2]*x[15]+1.38*x[2]*x[18]-0.14*x[2]*x[21]+(-1.7*x[3]*x[13])-0.21*x[3]*x[14]-0.16*x[3]*x[20]+1.85*x[4]*x[13]-1.67*x[4]*x[12]-0.86*x[4]*x[14]-1.76*x[4]*x[15]+1.25*x[4]*x[20]+0.53*x[5]*x[12]-1.72*x[5]*x[13]+1.31*x[5]*x[14]+1.93*x[5]*x[16]-1.72*x[5]*x[17]-0.85*x[5]*x[18]+0.7*x[5]*x[20]+1.26*x[6]*x[12]-1.91*x[6]*x[14]-0.18*x[6]*x[15]-0.02*x[6]*x[17]-1.72*x[6]*x[18]-0.24*x[6]*x[21]+0.72*x[7]*x[12]-1.82*x[7]*x[17]-0.32*x[7]*x[19]-0.75*x[7]*x[20]+(-1.06*x[8]*x[12])-1.38*x[8]*x[15]-1.19*x[8]*x[16]-1.06*x[8]*x[17]-0.66*x[8]*x[18]-1.02*x[8]*x[20]+1.33*x[9]*x[14]+1.09*x[9]*x[15]-1.96*x[9]*x[17]-0.3*x[9]*x[18]+1.58*x[10]*x[13]-0.49*x[10]*x[12]-1.42*x[10]*x[15]-1.46*x[10]*x[16]-0.04*x[10]*x[20]+0.17*x[11]*x[14]-1.09*x[11]*x[13]-0.84*x[11]*x[16]+0.52*x[11]*x[17]+0.92*x[11]*x[20]-0.9*x[2]+0.44*x[3]+0.04*x[4]+0.14*x[5]+0.68*x[6]+0.13*x[7]-0.17*x[8]+0.99*x[9]+0.59*x[10]-0.86*x[11]+0.74*x[12]+0.41*x[13]-0.16*x[14]+0.5*x[15]+0.35*x[16]+0.87*x[17]+0.35*x[18]-0.19*x[19]+0.55*x[20]+0.98*x[21] <= 67.18)
@NLconstraint(m, e4, 1.39*x[2]*x[19]-0.07*x[2]*x[21]+1.27*x[3]*x[12]+0.6*x[3]*x[13]-0.42*x[3]*x[17]-0.07*x[3]*x[21]+(-0.67*x[4]*x[12])-1.45*x[4]*x[13]+1.58*x[4]*x[14]+0.48*x[4]*x[15]-1.42*x[4]*x[18]+1.48*x[4]*x[21]+(-0.31*x[5]*x[12])-1.22*x[5]*x[21]+1.45*x[6]*x[12]+0.14*x[6]*x[13]-0.6*x[6]*x[14]+0.01*x[6]*x[16]-0.51*x[6]*x[17]-0.04*x[6]*x[18]+0.1*x[6]*x[19]-1.31*x[6]*x[20]-0.29*x[6]*x[21]+0.89*x[7]*x[15]-0.47*x[7]*x[14]+0.14*x[7]*x[20]+0.69*x[8]*x[12]+0.01*x[8]*x[13]-1.8*x[8]*x[14]-1.79*x[8]*x[15]+0.28*x[8]*x[17]+0.78*x[8]*x[18]-0.7*x[8]*x[19]+1.71*x[9]*x[13]-1.51*x[9]*x[14]-1.47*x[9]*x[15]+1.64*x[9]*x[16]+1.76*x[9]*x[17]+0.16*x[9]*x[18]+1.96*x[10]*x[18]-1.52*x[10]*x[17]-1.85*x[10]*x[19]+0.6*x[10]*x[20]-1.27*x[10]*x[21]+0.16*x[11]*x[15]-0.99*x[11]*x[14]+0.33*x[11]*x[16]+0.17*x[11]*x[17]+1.18*x[11]*x[18]-0.2*x[11]*x[20]-0.92*x[2]-0.48*x[3]+0.2*x[4]-0.86*x[5]+0.93*x[6]+0.94*x[7]-0.22*x[8]+0.94*x[9]+0.28*x[10]-0.2*x[11]+0.49*x[12]-0.46*x[13]+0.89*x[14]+0.59*x[15]+0.58*x[16]+0.17*x[17]+0.57*x[18]+0.24*x[19]-0.31*x[20]+0.62*x[21] <= 96.28)
@NLconstraint(m, e5, 1.32*x[2]*x[12]-0.3*x[2]*x[13]-0.18*x[2]*x[14]-1.55*x[2]*x[17]+(-0.37*x[3]*x[12])-0.97*x[3]*x[16]+1.97*x[3]*x[19]-0.37*x[3]*x[20]-1.76*x[3]*x[21]+0.09*x[4]*x[12]+0.72*x[4]*x[17]+0.27*x[4]*x[19]+1.91*x[4]*x[20]+1.12*x[4]*x[21]+0.08*x[5]*x[14]-1.11*x[5]*x[15]+1.55*x[5]*x[18]-0.41*x[5]*x[19]-1.38*x[5]*x[20]+0.96*x[5]*x[21]+0.82*x[6]*x[12]+1.35*x[6]*x[14]+1.02*x[6]*x[16]-0.1*x[6]*x[18]-1.97*x[6]*x[19]+0.02*x[6]*x[20]+1.38*x[6]*x[21]+1.67*x[7]*x[16]-1.6*x[7]*x[14]+1.24*x[7]*x[18]+0.64*x[7]*x[19]-1.98*x[7]*x[20]+1.31*x[8]*x[12]-0.21*x[8]*x[13]+0.16*x[8]*x[14]-1.34*x[8]*x[15]-0.09*x[8]*x[18]+1.36*x[8]*x[20]+0.08*x[8]*x[21]+0.67*x[9]*x[15]-1.69*x[9]*x[14]-1.03*x[9]*x[19]-0.06*x[9]*x[20]+1.88*x[10]*x[13]-0.46*x[10]*x[20]-1.88*x[10]*x[21]+(-1.56*x[11]*x[12])-0.95*x[11]*x[15]+1.05*x[11]*x[18]+0.37*x[11]*x[21]+0.61*x[2]+0.3*x[3]+0.55*x[4]+0.56*x[5]-0.23*x[6]+0.72*x[7]+0.84*x[8]-0.38*x[9]-0.06*x[10]-0.19*x[11]-0.15*x[12]+0.35*x[13]-0.49*x[14]-0.32*x[15]+0.83*x[16]+0.85*x[17]+0.88*x[18]-0.68*x[19]-0.47*x[20]+0.35*x[21] <= 54.25)
@NLconstraint(m, e6, 1.79*x[2]*x[12]-1.47*x[2]*x[13]+1.68*x[2]*x[15]+1.68*x[2]*x[17]+0.9*x[2]*x[20]+1.66*x[3]*x[13]-1.54*x[3]*x[14]+1.2*x[3]*x[15]+0.62*x[4]*x[12]-0.58*x[4]*x[13]+0.44*x[4]*x[14]-1.46*x[4]*x[16]-1.29*x[4]*x[17]-1.55*x[4]*x[18]+1.52*x[4]*x[20]+0.83*x[5]*x[14]-1.71*x[5]*x[13]-0.5*x[5]*x[15]-0.3*x[5]*x[17]+0.78*x[5]*x[19]-0.16*x[5]*x[20]-1.8*x[5]*x[21]+0.79*x[6]*x[12]+2*x[6]*x[13]-0.82*x[6]*x[17]+0.45*x[6]*x[19]+1.1*x[6]*x[20]+1.02*x[7]*x[17]-0.94*x[7]*x[14]-1.62*x[7]*x[18]+1.2*x[7]*x[19]+1.94*x[8]*x[14]-1.33*x[8]*x[12]-1.84*x[8]*x[15]+1.39*x[8]*x[19]+x[8]*x[20]-0.88*x[8]*x[21]+1.39*x[9]*x[13]-0.37*x[9]*x[14]-0.12*x[9]*x[15]+0.13*x[9]*x[18]+0.4*x[10]*x[16]-0.03*x[10]*x[15]+1.89*x[10]*x[19]+1.91*x[11]*x[12]+0.97*x[11]*x[13]-0.65*x[11]*x[15]+1.46*x[11]*x[16]+0.97*x[11]*x[17]+1.25*x[11]*x[18]-0.92*x[2]-0.61*x[3]+0.83*x[4]+0.15*x[5]-0.82*x[6]-0.66*x[7]-0.87*x[8]-0.98*x[9]+0.01*x[10]-0.76*x[11]-0.4*x[12]+0.46*x[13]+0.27*x[14]-0.8*x[15]-0.79*x[16]+0.21*x[17]-0.59*x[18]-0.2*x[19]-0.2*x[20]-0.74*x[21] <= 6.24)
@NLconstraint(m, e7, (-0.58*x[2]*x[12])-1.99*x[2]*x[13]-1.75*x[2]*x[17]+1.67*x[2]*x[21]+(-0.21*x[3]*x[13])-0.7*x[3]*x[15]+1.83*x[3]*x[19]+1.2*x[4]*x[13]-1.36*x[4]*x[14]-0.77*x[4]*x[15]+1.54*x[4]*x[16]-1.15*x[4]*x[17]-0.42*x[4]*x[19]+1.32*x[4]*x[21]+(-x[5]*x[13])-1.04*x[5]*x[14]+1.45*x[5]*x[15]-1.24*x[5]*x[17]+1.87*x[5]*x[20]+1.1*x[6]*x[13]-x[6]*x[12]+1.47*x[6]*x[14]-1.68*x[6]*x[15]+1.23*x[6]*x[16]+0.18*x[6]*x[17]+1.42*x[6]*x[19]-0.93*x[6]*x[21]+1.91*x[7]*x[16]-0.32*x[7]*x[15]-0.87*x[7]*x[17]+1.78*x[7]*x[20]+1.52*x[8]*x[13]+1.79*x[8]*x[16]-0.89*x[8]*x[17]+1.29*x[8]*x[18]-1.08*x[8]*x[19]+0.88*x[9]*x[12]+1.19*x[9]*x[14]+0.28*x[9]*x[16]-0.74*x[9]*x[18]+1.56*x[9]*x[19]+0.05*x[9]*x[20]+1.34*x[10]*x[15]+1.61*x[11]*x[12]-1.74*x[11]*x[14]+1.14*x[11]*x[16]+1.32*x[11]*x[17]+1.3*x[11]*x[18]-1.79*x[11]*x[19]+1.23*x[11]*x[21]+0.01*x[2]-0.73*x[3]-0.23*x[4]+0.11*x[5]+0.67*x[6]-0.34*x[7]+0.82*x[8]-0.23*x[9]+0.21*x[10]-0.31*x[11]-0.14*x[12]+0.88*x[13]-0.21*x[14]-0.6*x[15]+0.35*x[16]+0.86*x[17]+0.09*x[18]-0.33*x[19]+0.43*x[20]+0.78*x[21] <= 46.71)
@NLconstraint(m, e8, 1.75*x[2]*x[14]-1.29*x[2]*x[13]+0.93*x[2]*x[15]-1.98*x[2]*x[17]+1.46*x[2]*x[18]+0.29*x[2]*x[20]+1.34*x[2]*x[21]+1.06*x[3]*x[12]+0.61*x[3]*x[13]-1.53*x[3]*x[15]-0.2*x[3]*x[18]-1.67*x[3]*x[19]-1.2*x[3]*x[20]-0.48*x[3]*x[21]+1.18*x[4]*x[12]-0.3*x[4]*x[13]+1.85*x[4]*x[17]-1.62*x[4]*x[18]+0.36*x[4]*x[19]-1.63*x[4]*x[20]+0.23*x[4]*x[21]+0.8*x[5]*x[15]-0.64*x[5]*x[12]+0.81*x[5]*x[18]-1.39*x[5]*x[20]+1.68*x[6]*x[17]-1.02*x[6]*x[16]-0.57*x[6]*x[18]+0.72*x[6]*x[20]+1.14*x[7]*x[14]-1.24*x[7]*x[13]-0.75*x[7]*x[18]-2*x[7]*x[19]-0.51*x[7]*x[20]+0.28*x[7]*x[21]+0.97*x[8]*x[13]-1.81*x[8]*x[19]-2*x[8]*x[20]+1.89*x[8]*x[21]+1.01*x[9]*x[13]+1.87*x[9]*x[17]-0.15*x[9]*x[20]+(-0.91*x[10]*x[17])-0.72*x[10]*x[20]+0.07*x[10]*x[21]+(-0.89*x[11]*x[14])-0.19*x[11]*x[16]-0.75*x[11]*x[17]+0.43*x[11]*x[19]+0.19*x[11]*x[20]-0.39*x[2]+0.53*x[3]+0.82*x[4]+0.19*x[5]-0.16*x[6]-0.31*x[7]+0.9*x[8]-0.32*x[9]+0.05*x[10]+0.73*x[11]-0.52*x[12]-0.75*x[13]+0.82*x[14]-0.46*x[15]+0.51*x[16]-0.39*x[17]+0.53*x[18]-0.27*x[19]-0.84*x[20]-0.24*x[21] <= 46.13)
@NLconstraint(m, e9, 1.98*x[2]*x[21]+(-0.12*x[3]*x[14])-1.23*x[3]*x[16]+1.22*x[3]*x[17]-0.11*x[3]*x[20]+1.28*x[3]*x[21]+1.73*x[4]*x[12]-0.84*x[4]*x[13]+0.14*x[4]*x[16]-1.02*x[4]*x[18]-0.79*x[4]*x[19]+0.87*x[4]*x[20]+0.03*x[5]*x[14]-0.94*x[5]*x[17]-1.02*x[5]*x[18]-1.3*x[5]*x[20]-1.52*x[5]*x[21]+0.69*x[6]*x[15]-1.16*x[6]*x[12]+1.05*x[6]*x[16]+1.17*x[6]*x[17]+1.35*x[6]*x[19]+(-1.54*x[7]*x[12])-1.2*x[7]*x[14]+0.25*x[7]*x[17]+1.93*x[7]*x[18]-0.06*x[7]*x[19]-1.08*x[7]*x[20]+(-1.61*x[8]*x[13])-0.68*x[8]*x[14]+1.97*x[8]*x[16]+0.72*x[8]*x[18]+1.99*x[8]*x[19]+(-0.74*x[9]*x[13])-0.09*x[9]*x[14]+1.8*x[9]*x[15]-1.64*x[9]*x[16]+1.05*x[9]*x[17]+0.04*x[9]*x[19]+0.06*x[9]*x[20]+1.87*x[10]*x[18]-0.89*x[10]*x[13]-1.3*x[10]*x[19]+1.12*x[10]*x[21]+1.36*x[11]*x[13]+1.34*x[11]*x[17]+0.63*x[11]*x[18]-0.14*x[11]*x[19]-0.14*x[11]*x[20]-1.54*x[11]*x[21]-0.66*x[2]-0.71*x[3]+0.69*x[4]-0.88*x[5]-0.34*x[6]+0.65*x[7]+0.28*x[8]+0.42*x[9]-0.22*x[10]-0.67*x[11]+0.82*x[12]-0.05*x[13]+0.91*x[14]+0.34*x[15]-0.27*x[16]+0.26*x[17]-0.62*x[18]+0.03*x[19]+0.73*x[20]-0.91*x[21] <= 33.61)
@NLconstraint(m, e10, 0.38*x[2]*x[13]+1.58*x[2]*x[20]+1.69*x[3]*x[17]-1.04*x[3]*x[16]-0.94*x[3]*x[19]-0.35*x[3]*x[20]+(-1.74*x[4]*x[14])-1.18*x[4]*x[18]+0.98*x[4]*x[20]+1.3*x[5]*x[13]-0.23*x[5]*x[12]+1.31*x[5]*x[16]+0.78*x[5]*x[19]+(-0.57*x[6]*x[14])-0.76*x[6]*x[15]-1.82*x[6]*x[16]-1.73*x[6]*x[19]+1.73*x[6]*x[20]+0.59*x[6]*x[21]+0.43*x[7]*x[12]+1.48*x[7]*x[14]-0.4*x[7]*x[16]+1.41*x[7]*x[17]+0.94*x[7]*x[18]+1.73*x[7]*x[20]-1.83*x[7]*x[21]+0.03*x[8]*x[13]-1.32*x[8]*x[15]-1.95*x[8]*x[16]+0.22*x[8]*x[17]-0.93*x[8]*x[18]+0.23*x[8]*x[19]-0.18*x[8]*x[21]+0.95*x[9]*x[14]-1.44*x[9]*x[13]-1.68*x[9]*x[15]-1.71*x[9]*x[18]-0.58*x[9]*x[19]-0.23*x[9]*x[20]+0.44*x[9]*x[21]+x[10]*x[12]-0.85*x[10]*x[13]+1.52*x[10]*x[14]-1.35*x[10]*x[20]+1.25*x[11]*x[12]+0.23*x[11]*x[13]+0.93*x[11]*x[15]-0.15*x[11]*x[20]+0.35*x[11]*x[21]+0.77*x[2]+0.93*x[3]+0.05*x[4]-0.49*x[5]+0.27*x[6]+0.55*x[7]-0.03*x[8]-0.72*x[9]-0.16*x[10]-0.89*x[11]+0.8*x[12]+0.4*x[13]+0.63*x[14]+0.99*x[15]-0.89*x[16]+0.32*x[17]-0.45*x[18]+0.25*x[19]+0.59*x[20]+0.05*x[21] <= 39.1)
@NLconstraint(m, e11, 1.55*x[2]*x[13]+0.77*x[2]*x[15]+1.14*x[2]*x[16]-0.37*x[2]*x[17]-1.71*x[2]*x[18]-1.27*x[2]*x[19]+1.4*x[2]*x[21]+0.26*x[3]*x[13]-1.3*x[3]*x[12]+1.14*x[3]*x[14]+1.89*x[3]*x[15]+1.2*x[3]*x[19]+1.44*x[3]*x[20]+1.22*x[4]*x[15]-1.16*x[4]*x[13]-0.3*x[4]*x[17]+0.64*x[5]*x[12]+0.2*x[5]*x[13]+1.62*x[5]*x[15]+0.38*x[5]*x[16]-0.73*x[5]*x[20]+0.74*x[6]*x[17]-1.35*x[6]*x[14]-0.03*x[6]*x[18]-1.67*x[6]*x[20]+1.97*x[7]*x[17]-0.22*x[7]*x[14]-0.35*x[7]*x[21]+0.92*x[8]*x[12]-1.42*x[8]*x[13]-0.29*x[8]*x[14]-1.94*x[8]*x[16]+0.51*x[8]*x[17]+1.89*x[8]*x[20]-0.23*x[8]*x[21]+(-0.25*x[9]*x[16])-1.27*x[9]*x[17]-0.88*x[9]*x[18]+1.46*x[9]*x[20]+0.65*x[9]*x[21]+1.42*x[10]*x[12]+0.59*x[10]*x[15]+1.41*x[10]*x[17]-1.94*x[10]*x[19]+1.34*x[10]*x[20]+(-1.9*x[11]*x[14])-0.4*x[11]*x[15]-1.97*x[11]*x[18]+0.56*x[11]*x[19]-0.6*x[11]*x[20]+0.52*x[2]-0.61*x[3]+0.29*x[4]+0.89*x[5]-0.04*x[6]+0.57*x[7]-0.13*x[8]-0.32*x[9]+0.22*x[10]-0.63*x[11]+0.77*x[12]-0.6*x[13]-0.65*x[14]-0.37*x[15]-0.79*x[16]+0.59*x[17]+0.73*x[18]-0.71*x[19]+0.95*x[20]+0.39*x[21] <= 26.06)
@NLconstraint(m, e12, 0.97*x[2]*x[16]-1.97*x[2]*x[14]-1.14*x[2]*x[20]-0.04*x[2]*x[21]+0.68*x[3]*x[17]-0.77*x[3]*x[15]+0.77*x[3]*x[18]-1.67*x[3]*x[19]+0.94*x[3]*x[20]-1.25*x[3]*x[21]+(-1.72*x[4]*x[17])-0.87*x[4]*x[18]+(-1.72*x[5]*x[12])-1.09*x[5]*x[13]+0.77*x[5]*x[16]+1.83*x[5]*x[20]+0.57*x[5]*x[21]+1.78*x[6]*x[12]-1.09*x[6]*x[13]-1.1*x[6]*x[15]+0.28*x[6]*x[16]-0.69*x[6]*x[17]-0.2*x[6]*x[18]+0.49*x[6]*x[20]+1.23*x[6]*x[21]+1.77*x[7]*x[12]+0.09*x[7]*x[13]+1.59*x[7]*x[14]-1.42*x[7]*x[17]-0.2*x[7]*x[18]-1.09*x[7]*x[19]+0.25*x[7]*x[21]+(-1.16*x[8]*x[12])-0.93*x[8]*x[13]-1.74*x[8]*x[15]+0.74*x[8]*x[16]-0.75*x[8]*x[17]+0.84*x[9]*x[17]-0.1*x[9]*x[14]+(-1.72*x[10]*x[12])-1.15*x[10]*x[15]+0.17*x[10]*x[16]-1.3*x[10]*x[17]+1.04*x[10]*x[19]+(-1.33*x[11]*x[13])-0.22*x[11]*x[15]+0.36*x[11]*x[17]+0.43*x[11]*x[18]-0.86*x[11]*x[20]+1.54*x[11]*x[21]+0.38*x[2]-0.2*x[3]-0.56*x[4]-0.76*x[5]-0.05*x[6]+0.79*x[7]-0.08*x[8]-0.41*x[9]+0.82*x[11]+0.53*x[12]+0.92*x[13]+0.12*x[14]-0.87*x[15]-0.75*x[16]+0.18*x[17]+0.32*x[18]-0.35*x[19]-0.15*x[20]-0.48*x[21] <= 95.45)
@NLconstraint(m, e13, 0.4*x[2]*x[12]-0.47*x[2]*x[13]+1.12*x[2]*x[16]-1.24*x[2]*x[18]-1.47*x[2]*x[21]+(-0.15*x[3]*x[12])-0.54*x[3]*x[16]-1.77*x[3]*x[17]+1.75*x[3]*x[20]-0.47*x[3]*x[21]+1.39*x[4]*x[13]+1.92*x[4]*x[14]+1.9*x[4]*x[17]-0.78*x[4]*x[19]+0.01*x[4]*x[20]+1.01*x[5]*x[14]-0.93*x[5]*x[12]-0.09*x[5]*x[21]+1.65*x[6]*x[12]-0.39*x[6]*x[13]+1.79*x[6]*x[15]-1.9*x[6]*x[16]+0.23*x[6]*x[17]-0.19*x[6]*x[18]-1.88*x[6]*x[20]+0.9*x[6]*x[21]+(-1.57*x[7]*x[12])-0.77*x[7]*x[13]+0.73*x[7]*x[14]+0.81*x[7]*x[16]-1.61*x[7]*x[18]-0.43*x[7]*x[21]+1.29*x[8]*x[18]-0.09*x[8]*x[13]+1.1*x[8]*x[21]+0.53*x[9]*x[12]+1.17*x[9]*x[14]+0.57*x[9]*x[17]+0.64*x[9]*x[18]+0.91*x[10]*x[12]+0.25*x[10]*x[14]-1.17*x[10]*x[16]+1.34*x[10]*x[18]+1.82*x[10]*x[20]-1.42*x[10]*x[21]+1.88*x[11]*x[13]-0.4*x[11]*x[12]+0.49*x[11]*x[16]+0.71*x[11]*x[17]-1.75*x[11]*x[21]-0.32*x[2]+0.61*x[3]+0.03*x[4]-0.99*x[5]-0.44*x[6]-0.62*x[7]+0.87*x[8]+0.52*x[9]+0.16*x[10]-0.37*x[11]+0.18*x[12]-0.89*x[13]-0.36*x[14]-0.93*x[15]+0.47*x[16]+0.33*x[17]+0.51*x[18]+0.66*x[19]-0.27*x[20]+0.27*x[21] <= 55.26)
@NLconstraint(m, e14, (-1.64*x[2]*x[12])-0.63*x[2]*x[14]+(-0.54*x[3]*x[13])-0.44*x[3]*x[14]-0.49*x[3]*x[15]+0.47*x[3]*x[16]-0.65*x[3]*x[17]+1.06*x[3]*x[20]+0.85*x[3]*x[21]+0.61*x[4]*x[13]-0.26*x[4]*x[15]-0.5*x[4]*x[16]+1.22*x[4]*x[19]+1.35*x[4]*x[20]+0.25*x[5]*x[13]-1.72*x[5]*x[14]-0.78*x[5]*x[16]-1.01*x[5]*x[17]+1.12*x[5]*x[19]-1.36*x[5]*x[21]+0.97*x[6]*x[16]+0.18*x[6]*x[17]-1.9*x[6]*x[20]-1.04*x[6]*x[21]+1.15*x[7]*x[12]+0.62*x[7]*x[14]+0.28*x[7]*x[17]-1.36*x[7]*x[18]+1.33*x[7]*x[19]+1.2*x[7]*x[21]+1.53*x[8]*x[13]+0.15*x[8]*x[14]+1.91*x[8]*x[15]+0.09*x[8]*x[16]-0.66*x[8]*x[17]+1.26*x[8]*x[20]+1.17*x[9]*x[13]-1.83*x[9]*x[12]-1.67*x[9]*x[14]+0.95*x[9]*x[18]+0.56*x[10]*x[16]-1.74*x[10]*x[14]+1.23*x[10]*x[17]+0.84*x[10]*x[18]+1.63*x[10]*x[20]+1.43*x[11]*x[15]+1.44*x[11]*x[16]-1.38*x[11]*x[17]-1.76*x[11]*x[18]-1.65*x[11]*x[19]+0.58*x[2]-0.81*x[3]+0.34*x[4]-0.07*x[5]-0.78*x[6]+0.96*x[7]+0.6*x[8]-0.25*x[9]+0.11*x[10]+0.24*x[11]-0.75*x[12]+0.74*x[13]+0.24*x[14]-0.12*x[15]+0.44*x[16]-0.36*x[17]+0.92*x[18]-0.63*x[19]-0.1*x[20]+0.39*x[21] <= 19.51)
@NLconstraint(m, e15, 1.9*x[2]*x[12]-1.76*x[2]*x[13]+1.85*x[2]*x[17]+1.2*x[2]*x[21]+0.74*x[3]*x[14]-1.61*x[3]*x[12]+1.97*x[3]*x[15]-0.99*x[3]*x[17]-0.61*x[3]*x[20]+0.15*x[3]*x[21]+1.36*x[4]*x[12]+0.3*x[4]*x[13]+1.33*x[4]*x[18]+0.57*x[4]*x[20]+0.06*x[5]*x[14]-0.88*x[5]*x[13]+1.08*x[5]*x[16]-0.98*x[5]*x[19]+0.43*x[5]*x[20]+(-1.88*x[6]*x[12])-0.41*x[6]*x[15]-1.89*x[6]*x[18]-0.07*x[6]*x[21]+0.26*x[7]*x[13]+0.35*x[7]*x[14]+1.25*x[7]*x[16]+1.32*x[7]*x[17]+0.09*x[7]*x[20]-0.53*x[7]*x[21]+x[8]*x[12]+1.64*x[8]*x[15]+1.15*x[8]*x[17]-0.93*x[8]*x[19]-0.22*x[8]*x[21]+(-1.11*x[9]*x[12])-1.32*x[9]*x[13]+0.74*x[9]*x[14]+1.28*x[9]*x[19]+1.04*x[9]*x[20]+0.82*x[9]*x[21]+0.89*x[10]*x[12]-1.32*x[10]*x[14]+0.25*x[10]*x[18]-1.19*x[10]*x[19]-1.53*x[10]*x[20]+(-1.65*x[11]*x[12])-0.67*x[11]*x[13]-0.68*x[11]*x[14]+0.7*x[11]*x[18]-1.53*x[11]*x[19]+0.67*x[2]-0.74*x[3]+0.78*x[4]+0.16*x[5]-0.61*x[6]+0.06*x[7]+0.6*x[8]-0.11*x[9]-0.15*x[10]-0.41*x[11]+0.05*x[12]-0.96*x[13]+0.64*x[14]-0.05*x[15]+0.12*x[16]+0.97*x[17]-0.93*x[18]-0.49*x[19]+0.16*x[20]-0.11*x[21] <= 76.15)
@NLconstraint(m, e16, 0.92*x[2]*x[15]-0.57*x[2]*x[13]-1.27*x[2]*x[16]+1.83*x[2]*x[17]-0.67*x[2]*x[18]+0.34*x[2]*x[21]+(-1.51*x[3]*x[12])-1.32*x[3]*x[15]-0.68*x[3]*x[17]-0.19*x[3]*x[18]-0.27*x[3]*x[20]+1.05*x[4]*x[13]+0.96*x[4]*x[18]-0.87*x[4]*x[19]+0.17*x[5]*x[16]-1.55*x[5]*x[19]-1.29*x[5]*x[21]+1.18*x[6]*x[14]-1.93*x[6]*x[13]+1.74*x[6]*x[15]+1.31*x[6]*x[18]+1.47*x[6]*x[19]+1.39*x[7]*x[13]+0.8*x[7]*x[14]+1.12*x[7]*x[19]-1.93*x[7]*x[21]+(-0.28*x[8]*x[15])-0.62*x[8]*x[19]+1.45*x[8]*x[20]+1.38*x[9]*x[12]+0.88*x[9]*x[13]+1.02*x[9]*x[15]-0.53*x[9]*x[17]-0.25*x[9]*x[19]+1.93*x[9]*x[20]-0.74*x[9]*x[21]+1.49*x[10]*x[12]+1.67*x[10]*x[14]-0.23*x[10]*x[15]+0.46*x[10]*x[16]-1.92*x[10]*x[18]-1.66*x[10]*x[19]-1.49*x[10]*x[21]+(-0.24*x[11]*x[12])-0.65*x[11]*x[14]-0.97*x[11]*x[15]-0.01*x[11]*x[17]+0.87*x[11]*x[18]+0.46*x[11]*x[20]+1.54*x[11]*x[21]+0.24*x[2]-0.93*x[3]-0.49*x[4]+0.2*x[5]-0.81*x[6]-0.63*x[7]-0.96*x[8]+0.77*x[9]+0.4*x[10]-0.53*x[11]-0.72*x[12]-0.54*x[13]-0.46*x[14]-0.03*x[15]+0.91*x[16]+0.97*x[17]+0.07*x[18]-0.88*x[19]+0.59*x[20]-0.92*x[21] <= 37.7)
@NLconstraint(m, e17, 0.2*x[2]*x[14]+0.26*x[2]*x[15]-1.91*x[2]*x[17]+0.99*x[2]*x[18]+0.92*x[2]*x[19]+1.75*x[2]*x[20]+1.99*x[2]*x[21]+(-1.28*x[3]*x[13])-1.35*x[3]*x[16]+0.33*x[3]*x[19]-1.33*x[3]*x[20]+1.86*x[4]*x[12]-1.67*x[4]*x[13]+1.39*x[4]*x[15]-0.14*x[4]*x[17]-1.98*x[4]*x[21]+(-0.36*x[5]*x[13])-0.7*x[5]*x[14]-0.28*x[5]*x[16]+0.14*x[5]*x[17]-1.16*x[5]*x[18]+(-1.27*x[6]*x[12])-1.94*x[6]*x[14]+0.12*x[6]*x[15]+1.87*x[6]*x[18]-0.68*x[6]*x[19]+1.67*x[6]*x[21]+(-0.68*x[7]*x[13])-0.62*x[7]*x[15]+0.91*x[7]*x[16]+0.89*x[7]*x[20]+1.84*x[8]*x[13]+1.88*x[8]*x[14]-1.44*x[8]*x[15]-1.08*x[8]*x[18]+0.95*x[8]*x[19]+0.95*x[8]*x[20]+0.73*x[8]*x[21]+1.08*x[9]*x[14]-1.94*x[9]*x[15]-0.36*x[9]*x[19]+1.57*x[9]*x[21]+0.95*x[10]*x[12]-1.32*x[10]*x[14]-1.38*x[10]*x[19]+(-0.79*x[11]*x[13])-0.39*x[11]*x[15]-1.66*x[11]*x[16]-0.43*x[11]*x[17]-1.11*x[11]*x[21]-0.59*x[2]-0.22*x[3]+0.08*x[4]+0.48*x[5]-0.91*x[6]-0.08*x[7]-0.91*x[8]-0.56*x[9]+0.84*x[10]+0.52*x[11]-0.78*x[12]-0.65*x[13]+0.88*x[14]-0.69*x[15]+0.18*x[16]+x[17]+0.45*x[18]-0.16*x[19]+0.53*x[20]+0.08*x[21] <= 61.64)
@NLconstraint(m, e18, 1.49*x[2]*x[18]-0.89*x[2]*x[13]-1.43*x[2]*x[19]+1.27*x[2]*x[21]+1.16*x[3]*x[16]-0.76*x[3]*x[15]+0.28*x[3]*x[17]+1.67*x[3]*x[18]+1.4*x[4]*x[12]+0.58*x[4]*x[13]+0.7*x[4]*x[14]+0.86*x[4]*x[17]+0.7*x[5]*x[13]-1.94*x[5]*x[15]+0.84*x[5]*x[17]-1.37*x[5]*x[20]+1.63*x[5]*x[21]+1.62*x[6]*x[12]+0.22*x[6]*x[15]+0.62*x[6]*x[17]+0.16*x[6]*x[19]+1.63*x[6]*x[20]+(-1.14*x[7]*x[12])-0.66*x[7]*x[14]-1.45*x[7]*x[16]+1.99*x[7]*x[19]+0.22*x[7]*x[20]+0.65*x[8]*x[12]-1.67*x[8]*x[13]-0.02*x[8]*x[14]-0.42*x[8]*x[15]-0.23*x[8]*x[16]-1.66*x[8]*x[19]-1.46*x[8]*x[21]+0.4*x[9]*x[13]-0.7*x[9]*x[14]-0.98*x[9]*x[15]+1.42*x[9]*x[16]-1.57*x[9]*x[21]+1.91*x[10]*x[13]-0.32*x[10]*x[12]-0.35*x[10]*x[15]-0.15*x[10]*x[16]+1.2*x[10]*x[17]-0.19*x[10]*x[20]+1.94*x[11]*x[12]+1.21*x[11]*x[14]+1.01*x[11]*x[15]+0.96*x[11]*x[20]+1.83*x[11]*x[21]-0.09*x[2]-0.64*x[3]-0.33*x[4]+0.72*x[5]-0.49*x[6]+0.33*x[7]-0.8*x[8]+0.38*x[9]-0.15*x[10]+0.52*x[11]-0.25*x[12]-0.92*x[13]+0.05*x[14]-0.47*x[15]+0.14*x[16]+0.39*x[17]-0.15*x[18]-0.88*x[19]-0.69*x[20]+0.05*x[21] <= 15.21)
@NLconstraint(m, e19, (-1.79*x[2]*x[13])-1.78*x[2]*x[14]-0.22*x[2]*x[16]-0.45*x[2]*x[21]+1.02*x[3]*x[12]-1.99*x[3]*x[13]+1.14*x[3]*x[16]-0.65*x[3]*x[17]+1.14*x[3]*x[18]+0.01*x[3]*x[19]+0.29*x[4]*x[13]-0.96*x[4]*x[15]-0.28*x[4]*x[20]-0.4*x[4]*x[21]+(-1.96*x[5]*x[12])-0.49*x[5]*x[15]-1.07*x[5]*x[16]+0.66*x[5]*x[17]-0.4*x[5]*x[19]+0.12*x[5]*x[20]+1.29*x[6]*x[13]-0.35*x[6]*x[12]+0.48*x[6]*x[15]-0.97*x[6]*x[16]+1.29*x[6]*x[17]-1.76*x[6]*x[18]-1.7*x[6]*x[19]+(-1.19*x[7]*x[12])-0.63*x[7]*x[13]-1.57*x[7]*x[17]-1.29*x[7]*x[21]+0.87*x[8]*x[13]-1.51*x[8]*x[12]-1.54*x[8]*x[15]+1.71*x[8]*x[21]+(-0.2*x[9]*x[12])-1.23*x[9]*x[13]-1.36*x[9]*x[14]+1.22*x[9]*x[16]+1.75*x[9]*x[17]-0.16*x[9]*x[19]+1.81*x[9]*x[20]+0.92*x[10]*x[12]+0.81*x[10]*x[13]-1.78*x[10]*x[14]-1.56*x[10]*x[16]+0.61*x[11]*x[13]-0.26*x[11]*x[17]+0.84*x[11]*x[18]-1.86*x[11]*x[19]+0.04*x[2]+0.52*x[3]-0.23*x[4]-0.05*x[5]+0.74*x[6]+0.71*x[7]+0.5*x[8]+0.02*x[9]-0.84*x[10]+0.57*x[11]+0.02*x[12]-0.29*x[13]+0.75*x[14]+0.8*x[15]+0.69*x[16]+0.89*x[17]+0.04*x[18]+0.98*x[19]+0.5*x[20]+0.95*x[21] <= 95.07)
@NLconstraint(m, e20, (-1.1*x[2]*x[12])-0.9*x[2]*x[14]-0.22*x[2]*x[16]-0.73*x[2]*x[17]-1.47*x[2]*x[20]+1.46*x[2]*x[21]+1.22*x[3]*x[12]-0.14*x[3]*x[14]+0.08*x[3]*x[15]-1.52*x[3]*x[16]+1.48*x[3]*x[17]+0.74*x[3]*x[18]+1.21*x[3]*x[20]+1.02*x[4]*x[12]+0.98*x[4]*x[15]-1.19*x[4]*x[17]+1.53*x[4]*x[19]-0.28*x[4]*x[20]+1.16*x[5]*x[12]+1.73*x[5]*x[13]+0.55*x[5]*x[15]+0.47*x[5]*x[16]-1.22*x[5]*x[17]-0.17*x[5]*x[19]+0.84*x[6]*x[14]-0.3*x[6]*x[13]-1.08*x[6]*x[16]-1.98*x[6]*x[17]-1.12*x[6]*x[18]-1.45*x[6]*x[19]+0.01*x[6]*x[20]+0.07*x[6]*x[21]+1.68*x[7]*x[13]+0.06*x[7]*x[20]+1.4*x[8]*x[12]-0.68*x[8]*x[16]+1.7*x[8]*x[17]+0.04*x[8]*x[19]+1.25*x[8]*x[21]+(-0.44*x[9]*x[15])-1.54*x[9]*x[18]+1.41*x[10]*x[14]-1.19*x[10]*x[16]+0.37*x[10]*x[18]+0.48*x[11]*x[15]-1.95*x[11]*x[16]-1.65*x[11]*x[17]+0.23*x[11]*x[18]-1.86*x[11]*x[19]+1.11*x[11]*x[20]+0.79*x[2]-0.27*x[3]+0.91*x[4]-0.74*x[5]+0.3*x[6]-0.1*x[7]-0.39*x[8]-0.5*x[9]-0.67*x[10]+0.32*x[11]+0.53*x[12]+0.97*x[13]+0.98*x[14]-0.16*x[15]-0.9*x[16]-0.85*x[17]-0.5*x[18]+0.96*x[19]-0.48*x[20]-0.07*x[21] <= 31.76)
@NLconstraint(m, e21, (-0.99*x[2]*x[13])-0.46*x[2]*x[14]+1.24*x[2]*x[17]+1.77*x[2]*x[18]+1.7*x[2]*x[21]+1.74*x[3]*x[13]+1.62*x[3]*x[14]+0.97*x[3]*x[15]-0.81*x[3]*x[17]-1.14*x[3]*x[18]+0.35*x[3]*x[21]+1.83*x[4]*x[14]-0.88*x[4]*x[13]+0.12*x[4]*x[15]-0.89*x[4]*x[19]-1.64*x[4]*x[20]+0.44*x[5]*x[12]-1.84*x[5]*x[13]+1.15*x[5]*x[20]+0.93*x[5]*x[21]+(-1.39*x[6]*x[12])-1.07*x[6]*x[14]-1.24*x[6]*x[15]-0.13*x[6]*x[16]-0.41*x[6]*x[19]+1.44*x[7]*x[13]+0.86*x[7]*x[14]-1.86*x[7]*x[15]-1.76*x[7]*x[16]-0.04*x[7]*x[18]+1.38*x[7]*x[19]+(-0.24*x[8]*x[12])-1.78*x[8]*x[14]+1.78*x[8]*x[16]-0.9*x[8]*x[18]+1.73*x[8]*x[19]+0.1*x[8]*x[20]+0.69*x[8]*x[21]+0.05*x[9]*x[12]+1.84*x[9]*x[14]-0.67*x[9]*x[17]-0.31*x[9]*x[19]+1.76*x[9]*x[21]+0.99*x[10]*x[14]+0.9*x[10]*x[15]+1.99*x[10]*x[16]+(-1.99*x[11]*x[15])-1.55*x[11]*x[17]+1.87*x[11]*x[19]-0.48*x[11]*x[20]+0.11*x[2]+0.81*x[3]+0.17*x[4]+0.76*x[5]+0.07*x[6]-0.58*x[7]-0.19*x[8]-0.03*x[9]+0.81*x[10]+0.29*x[11]+0.74*x[12]-0.58*x[13]-0.7*x[14]-0.02*x[15]+0.42*x[16]-0.55*x[17]-0.03*x[18]+0.75*x[19]-0.57*x[20]+0.71*x[21] <= 26.97)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
