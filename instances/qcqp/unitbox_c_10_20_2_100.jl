using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[3], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-1.05*x[2]*x[3]-1.72*x[2]*x[4]-1.9*x[2]*x[5]-1.44*x[2]*x[6]+1.31*x[2]*x[7]+0.55*x[2]*x[8]-0.86*x[2]*x[9]-1.08*x[2]*x[10]+0.41*x[2]*x[11]+(-0.88*x[3]*x[4])-1.14*x[3]*x[5]-0.86*x[3]*x[6]+0.53*x[3]*x[7]-0.35*x[3]*x[8]+0.44*x[3]*x[9]-0.56*x[3]*x[10]+1.93*x[3]*x[11]+(-0.82*x[4]*x[5])-0.62*x[4]*x[6]-1.3*x[4]*x[7]+1.69*x[4]*x[8]-0.85*x[4]*x[9]-0.42*x[4]*x[10]-1.94*x[4]*x[11]+x[5]*x[6]+1.62*x[5]*x[7]-0.64*x[5]*x[8]+0.17*x[5]*x[9]-0.9*x[5]*x[10]-1.86*x[5]*x[11]+1.67*x[6]*x[7]-0.44*x[6]*x[8]+0.89*x[6]*x[9]+1.77*x[6]*x[10]-1.19*x[6]*x[11]+0.91*x[7]*x[9]-0.64*x[7]*x[8]+1.43*x[7]*x[10]+1.84*x[7]*x[11]+1.92*x[8]*x[10]-1.18*x[8]*x[9]-1.2*x[8]*x[11]+0.36*x[9]*x[11]-1.01*x[9]*x[10]-1.52*x[10]*x[11]+0.89*x[3]*x[3]-0.89*x[2]*x[2]+0.33*x[4]*x[4]+0.3*x[5]*x[5]-0.04*x[6]*x[6]-0.34*x[7]*x[7]+0.49*x[8]*x[8]-0.45*x[9]*x[9]+0.28*x[10]*x[10]-0.61*x[11]*x[11]+0.97*x[2]+0.46*x[3]+0.92*x[4]-0.64*x[5]-0.87*x[6]+0.1*x[7]-0.39*x[8]+0.37*x[9]-0.44*x[10]-0.87*x[11])+x[1] == 0.0)
@NLconstraint(m, e2, 0.3*x[2]*x[4]-0.33*x[2]*x[3]-0.78*x[2]*x[5]+0.08*x[2]*x[6]+0.62*x[2]*x[7]-0.96*x[2]*x[8]-0.67*x[2]*x[9]-1.51*x[2]*x[10]+1.02*x[2]*x[11]+0.2*x[3]*x[5]-0.98*x[3]*x[4]+0.74*x[3]*x[6]+0.5*x[3]*x[7]+0.36*x[3]*x[8]-0.34*x[3]*x[9]-0.69*x[3]*x[10]+1.22*x[3]*x[11]+(-1.78*x[4]*x[5])-0.47*x[4]*x[6]-0.51*x[4]*x[7]-0.97*x[4]*x[8]-0.35*x[4]*x[9]+1.21*x[4]*x[10]+1.39*x[4]*x[11]+1.44*x[5]*x[6]-0.61*x[5]*x[7]+0.79*x[5]*x[8]+1.16*x[5]*x[9]-1.88*x[5]*x[10]+1.9*x[5]*x[11]+1.62*x[6]*x[7]-0.32*x[6]*x[8]-1.14*x[6]*x[9]-0.58*x[6]*x[10]-0.79*x[6]*x[11]+1.59*x[7]*x[8]+0.92*x[7]*x[9]-1.92*x[7]*x[10]-0.15*x[7]*x[11]+1.09*x[8]*x[9]-0.16*x[8]*x[10]-0.26*x[8]*x[11]+0.59*x[9]*x[10]+0.29*x[9]*x[11]-0.33*x[10]*x[11]+0.29*x[2]*x[2]+0.22*x[3]*x[3]+0.29*x[4]*x[4]+0.24*x[5]*x[5]-0.43*x[6]*x[6]-0.39*x[7]*x[7]+0.95*x[8]*x[8]-0.03*x[9]*x[9]-0.82*x[10]*x[10]+0.31*x[11]*x[11]-0.6*x[2]+0.1*x[3]+0.5*x[4]+0.23*x[5]+0.99*x[6]-0.45*x[7]-0.59*x[8]-0.32*x[9]-0.57*x[10]+0.92*x[11] <= 14.82)
@NLconstraint(m, e3, 0.57*x[2]*x[3]+0.85*x[2]*x[4]-1.63*x[2]*x[5]-1.52*x[2]*x[6]+0.9*x[2]*x[7]+0.89*x[2]*x[8]-0.01*x[2]*x[9]+1.14*x[2]*x[10]-1.94*x[2]*x[11]+0.47*x[3]*x[4]-1.31*x[3]*x[5]-0.62*x[3]*x[6]-0.68*x[3]*x[7]+0.92*x[3]*x[8]-0.78*x[3]*x[9]+1.05*x[3]*x[10]+0.47*x[3]*x[11]+1.55*x[4]*x[5]+0.11*x[4]*x[6]-1.74*x[4]*x[7]-1.5*x[4]*x[8]-0.42*x[4]*x[9]+0.62*x[4]*x[10]-0.81*x[4]*x[11]+1.68*x[5]*x[6]-0.61*x[5]*x[7]+1.78*x[5]*x[8]-0.34*x[5]*x[9]+1.99*x[5]*x[10]+0.91*x[5]*x[11]+1.11*x[6]*x[8]-1.57*x[6]*x[7]+0.73*x[6]*x[9]-1.54*x[6]*x[10]-1.81*x[6]*x[11]+0.95*x[7]*x[8]-0.56*x[7]*x[9]-0.21*x[7]*x[10]+0.49*x[7]*x[11]+(-0.5*x[8]*x[9])-0.14*x[8]*x[10]+1.83*x[8]*x[11]+(-0.03*x[9]*x[10])-1.18*x[9]*x[11]-1.55*x[10]*x[11]+(-0.05*x[2]*x[2])-0.41*x[3]*x[3]+0.91*x[4]*x[4]-0.03*x[5]*x[5]+0.38*x[6]*x[6]-0.2*x[7]*x[7]-0.34*x[8]*x[8]+0.93*x[9]*x[9]+0.37*x[10]*x[10]+0.02*x[11]*x[11]+0.91*x[2]+0.56*x[3]+0.4*x[4]+0.2*x[5]-0.38*x[6]-0.01*x[7]+0.27*x[8]-0.43*x[9]+0.1*x[10]+0.27*x[11] <= 64.96)
@NLconstraint(m, e4, 0.03*x[2]*x[3]+1.63*x[2]*x[4]+0.62*x[2]*x[5]+0.01*x[2]*x[6]+1.87*x[2]*x[7]-0.22*x[2]*x[8]+1.39*x[2]*x[9]+1.18*x[2]*x[10]+1.04*x[2]*x[11]+(-1.24*x[3]*x[4])-0.23*x[3]*x[5]+0.88*x[3]*x[6]-1.9*x[3]*x[7]-0.58*x[3]*x[8]+1.4*x[3]*x[9]-0.17*x[3]*x[10]+0.61*x[3]*x[11]+1.86*x[4]*x[5]-0.34*x[4]*x[6]-0.79*x[4]*x[7]-1.68*x[4]*x[8]+0.33*x[4]*x[9]-0.6*x[4]*x[10]-1.48*x[4]*x[11]+0.16*x[5]*x[6]-1.66*x[5]*x[7]+1.85*x[5]*x[8]+1.28*x[5]*x[9]+1.26*x[5]*x[10]-0.41*x[5]*x[11]+1.85*x[6]*x[7]-0.15*x[6]*x[8]+0.27*x[6]*x[9]+1.8*x[6]*x[10]-0.56*x[6]*x[11]+0.09*x[7]*x[9]-1.52*x[7]*x[8]-1.87*x[7]*x[10]+0.58*x[7]*x[11]+(-0.03*x[8]*x[9])-0.5*x[8]*x[10]+0.2*x[8]*x[11]+0.29*x[9]*x[10]+0.31*x[9]*x[11]+0.71*x[10]*x[11]+0.45*x[2]*x[2]-0.97*x[3]*x[3]+0.13*x[4]*x[4]+0.67*x[5]*x[5]-0.85*x[6]*x[6]+0.19*x[7]*x[7]-0.38*x[8]*x[8]+0.97*x[9]*x[9]-0.18*x[10]*x[10]-0.98*x[11]*x[11]-0.84*x[2]-0.39*x[3]-0.2*x[4]-0.01*x[5]+0.4*x[6]+0.08*x[7]-0.39*x[8]+0.38*x[9]-0.14*x[10]+0.69*x[11] <= 51.67)
@NLconstraint(m, e5, 0.75*x[2]*x[4]-0.97*x[2]*x[3]+0.9*x[2]*x[5]+1.73*x[2]*x[6]+1.59*x[2]*x[7]+1.07*x[2]*x[8]+0.4*x[2]*x[9]+0.57*x[2]*x[10]+1.22*x[2]*x[11]+0.86*x[3]*x[4]+1.69*x[3]*x[5]+0.52*x[3]*x[6]+0.18*x[3]*x[7]+0.05*x[3]*x[8]+1.37*x[3]*x[9]+0.65*x[3]*x[10]+1.24*x[3]*x[11]+1.62*x[4]*x[5]-0.72*x[4]*x[6]+0.91*x[4]*x[7]-0.07*x[4]*x[8]-0.71*x[4]*x[9]-1.38*x[4]*x[10]+1.6*x[4]*x[11]+1.81*x[5]*x[7]-1.98*x[5]*x[6]-0.46*x[5]*x[8]-0.23*x[5]*x[9]-0.26*x[5]*x[10]+0.83*x[5]*x[11]+0.47*x[6]*x[7]-0.22*x[6]*x[8]-1.06*x[6]*x[9]-1.07*x[6]*x[10]+0.2*x[6]*x[11]+(-0.74*x[7]*x[8])-0.37*x[7]*x[9]-1.95*x[7]*x[10]-1.13*x[7]*x[11]+0.42*x[8]*x[10]-1.23*x[8]*x[9]+1.59*x[8]*x[11]+(-1.77*x[9]*x[10])-0.56*x[9]*x[11]-1.71*x[10]*x[11]+0.42*x[3]*x[3]-0.87*x[2]*x[2]+0.16*x[4]*x[4]+0.28*x[5]*x[5]+0.14*x[6]*x[6]+0.7*x[7]*x[7]-0.37*x[8]*x[8]+0.82*x[9]*x[9]-0.54*x[10]*x[10]+0.99*x[11]*x[11]-0.72*x[2]-0.01*x[3]+0.14*x[4]-0.5*x[5]+0.84*x[6]-0.45*x[7]-0.73*x[8]+0.07*x[9]+0.06*x[10]+0.35*x[11] <= 94.25)
@NLconstraint(m, e6, 0.13*x[2]*x[3]+0.11*x[2]*x[4]-0.08*x[2]*x[5]-0.1*x[2]*x[6]-1.55*x[2]*x[7]+0.26*x[2]*x[8]-0.53*x[2]*x[9]-0.72*x[2]*x[10]+1.24*x[2]*x[11]+(-0.6*x[3]*x[4])-0.91*x[3]*x[5]-1.49*x[3]*x[6]-0.64*x[3]*x[7]+0.98*x[3]*x[8]-0.57*x[3]*x[9]+0.39*x[3]*x[10]+0.5*x[3]*x[11]+0.15*x[4]*x[5]-1.04*x[4]*x[6]-0.75*x[4]*x[7]+1.03*x[4]*x[8]-0.41*x[4]*x[9]-1.85*x[4]*x[10]-1.83*x[4]*x[11]+0.76*x[5]*x[7]-0.92*x[5]*x[6]-0.68*x[5]*x[9]-1.76*x[5]*x[10]-0.94*x[5]*x[11]+1.07*x[6]*x[7]+0.47*x[6]*x[8]-1.19*x[6]*x[9]+1.54*x[6]*x[10]+0.05*x[6]*x[11]+1.83*x[7]*x[8]-0.21*x[7]*x[9]-0.13*x[7]*x[10]-0.5*x[7]*x[11]+0.94*x[8]*x[9]+1.78*x[8]*x[10]+0.02*x[8]*x[11]+(-1.21*x[9]*x[10])-1.35*x[9]*x[11]-1.57*x[10]*x[11]+0.95*x[2]*x[2]-0.91*x[3]*x[3]-0.75*x[4]*x[4]-0.09*x[5]*x[5]-0.66*x[6]*x[6]-0.4*x[7]*x[7]+0.32*x[8]*x[8]+0.84*x[9]*x[9]+0.48*x[10]*x[10]+0.35*x[11]*x[11]-0.11*x[2]+0.86*x[3]+0.94*x[4]+0.65*x[5]-0.52*x[6]-0.31*x[7]+0.45*x[8]+0.16*x[9]-0.77*x[10]+0.42*x[11] <= 89.22)
@NLconstraint(m, e7, (-1.84*x[2]*x[3])-0.03*x[2]*x[4]-0.61*x[2]*x[5]-1.71*x[2]*x[6]+1.39*x[2]*x[7]+1.53*x[2]*x[8]+1.91*x[2]*x[9]-1.72*x[2]*x[10]-1.18*x[2]*x[11]+0.59*x[3]*x[4]-1.95*x[3]*x[5]-0.7*x[3]*x[6]-1.89*x[3]*x[7]+0.41*x[3]*x[8]-1.5*x[3]*x[9]-0.89*x[3]*x[10]+0.12*x[3]*x[11]+0.74*x[4]*x[6]-1.51*x[4]*x[5]-0.43*x[4]*x[7]-1.26*x[4]*x[8]+0.29*x[4]*x[9]+1.18*x[4]*x[10]+0.63*x[4]*x[11]+1.95*x[5]*x[6]-0.11*x[5]*x[7]+0.22*x[5]*x[8]+1.32*x[5]*x[9]-1.17*x[5]*x[10]-1.61*x[5]*x[11]+(-0.96*x[6]*x[7])-1.72*x[6]*x[8]-0.54*x[6]*x[9]+1.76*x[6]*x[10]-0.75*x[6]*x[11]+1.14*x[7]*x[9]-0.7*x[7]*x[8]+1.58*x[7]*x[10]+0.28*x[7]*x[11]+1.12*x[8]*x[9]-0.28*x[8]*x[10]-0.22*x[8]*x[11]+(-1.42*x[9]*x[10])-0.73*x[9]*x[11]-0.17*x[10]*x[11]+0.94*x[2]*x[2]+0.05*x[3]*x[3]-0.63*x[4]*x[4]+0.24*x[5]*x[5]-0.61*x[6]*x[6]-0.03*x[7]*x[7]-0.4*x[8]*x[8]+0.75*x[9]*x[9]+0.45*x[10]*x[10]+0.24*x[11]*x[11]-0.19*x[2]-0.04*x[3]-0.52*x[4]+0.04*x[5]-0.8*x[6]-0.59*x[7]-0.9*x[8]+0.27*x[9]+0.51*x[10]-0.52*x[11] <= 62.07)
@NLconstraint(m, e8, 1.37*x[2]*x[3]+1.55*x[2]*x[4]-1.01*x[2]*x[5]-1.09*x[2]*x[6]+1.06*x[2]*x[7]-1.09*x[2]*x[8]+0.68*x[2]*x[9]-1.27*x[2]*x[10]+1.21*x[2]*x[11]+(-0.88*x[3]*x[4])-0.34*x[3]*x[5]+0.77*x[3]*x[6]-0.51*x[3]*x[7]+1.68*x[3]*x[8]+0.69*x[3]*x[9]-1.55*x[3]*x[10]-1.53*x[3]*x[11]+1.19*x[4]*x[5]+0.74*x[4]*x[6]+1.83*x[4]*x[7]-1.82*x[4]*x[8]+0.35*x[4]*x[9]-0.22*x[4]*x[10]-0.06*x[4]*x[11]+1.43*x[5]*x[6]-0.87*x[5]*x[7]-1.95*x[5]*x[8]-0.57*x[5]*x[9]-0.18*x[5]*x[10]+1.47*x[5]*x[11]+0.43*x[6]*x[7]+0.03*x[6]*x[8]-1.91*x[6]*x[9]-0.92*x[6]*x[10]+0.23*x[6]*x[11]+1.87*x[7]*x[8]+0.22*x[7]*x[9]+1.02*x[7]*x[10]-0.84*x[7]*x[11]+1.11*x[8]*x[9]-1.71*x[8]*x[10]-1.05*x[8]*x[11]+1.92*x[9]*x[10]-1.74*x[9]*x[11]+1.24*x[10]*x[11]+0.26*x[2]*x[2]+0.42*x[3]*x[3]+0.84*x[4]*x[4]-0.72*x[5]*x[5]+0.25*x[6]*x[6]+0.28*x[7]*x[7]-0.16*x[8]*x[8]-0.44*x[9]*x[9]+0.78*x[10]*x[10]-0.48*x[11]*x[11]+0.31*x[2]-0.96*x[3]-0.29*x[4]+0.55*x[5]-x[6]-0.96*x[7]-0.58*x[8]-0.99*x[9]+0.35*x[10]-0.86*x[11] <= 10.51)
@NLconstraint(m, e9, 0.16*x[2]*x[3]-1.05*x[2]*x[4]-0.41*x[2]*x[5]-1.47*x[2]*x[6]+0.73*x[2]*x[7]-1.54*x[2]*x[8]+1.01*x[2]*x[9]+1.86*x[2]*x[10]+1.46*x[2]*x[11]+1.28*x[3]*x[5]-0.87*x[3]*x[4]+1.62*x[3]*x[6]+0.12*x[3]*x[7]-1.93*x[3]*x[8]+1.73*x[3]*x[9]-0.52*x[3]*x[10]+1.97*x[3]*x[11]+0.96*x[4]*x[6]-0.64*x[4]*x[5]-1.84*x[4]*x[7]-0.76*x[4]*x[8]+0.96*x[4]*x[9]-0.45*x[4]*x[10]+1.58*x[4]*x[11]+(-1.73*x[5]*x[6])-0.78*x[5]*x[7]+0.61*x[5]*x[8]+1.63*x[5]*x[9]-0.07*x[5]*x[10]-0.88*x[5]*x[11]+0.23*x[6]*x[8]-0.54*x[6]*x[7]-1.98*x[6]*x[9]+1.87*x[6]*x[10]+1.5*x[6]*x[11]+1.78*x[7]*x[8]-0.01*x[7]*x[9]-0.62*x[7]*x[10]+1.99*x[7]*x[11]+(-0.46*x[8]*x[9])-0.12*x[8]*x[10]+1.44*x[8]*x[11]+0.59*x[9]*x[10]+0.34*x[9]*x[11]+0.79*x[2]*x[2]-0.84*x[3]*x[3]+0.39*x[4]*x[4]-0.66*x[5]*x[5]+0.94*x[6]*x[6]-0.27*x[7]*x[7]+0.24*x[8]*x[8]-0.75*x[9]*x[9]-0.62*x[10]*x[10]+0.26*x[11]*x[11]+0.43*x[2]-0.51*x[3]-0.77*x[4]+0.1*x[5]-0.15*x[6]-0.17*x[7]+0.95*x[8]+0.09*x[9]+0.23*x[10]-0.05*x[11] <= 32.58)
@NLconstraint(m, e10, 1.35*x[2]*x[3]+0.49*x[2]*x[4]+1.54*x[2]*x[5]-0.3*x[2]*x[6]-1.48*x[2]*x[7]+0.13*x[2]*x[8]+1.36*x[2]*x[9]-0.52*x[2]*x[10]-1.72*x[2]*x[11]+0.94*x[3]*x[5]-0.64*x[3]*x[4]-0.08*x[3]*x[6]-0.04*x[3]*x[7]-1.93*x[3]*x[8]-1.03*x[3]*x[9]+1.79*x[3]*x[10]-1.98*x[3]*x[11]+0.63*x[4]*x[5]+0.01*x[4]*x[6]-1.74*x[4]*x[7]-1.2*x[4]*x[8]-1.04*x[4]*x[9]+1.41*x[4]*x[10]+0.79*x[4]*x[11]+1.5*x[5]*x[7]-1.87*x[5]*x[6]-1.35*x[5]*x[8]+0.08*x[5]*x[9]+2*x[5]*x[10]-0.63*x[5]*x[11]+1.05*x[6]*x[8]-1.12*x[6]*x[7]+1.59*x[6]*x[9]-x[6]*x[10]+0.71*x[6]*x[11]+(-1.51*x[7]*x[8])-0.55*x[7]*x[9]+1.48*x[7]*x[10]+0.63*x[7]*x[11]+0.01*x[8]*x[9]+0.78*x[8]*x[10]+1.68*x[8]*x[11]+0.75*x[9]*x[10]+0.49*x[9]*x[11]-0.62*x[10]*x[11]+(-0.96*x[2]*x[2])-0.37*x[3]*x[3]-0.04*x[4]*x[4]+0.04*x[5]*x[5]-0.04*x[6]*x[6]+0.51*x[7]*x[7]+0.95*x[8]*x[8]+0.97*x[9]*x[9]+0.33*x[10]*x[10]-0.48*x[11]*x[11]-0.92*x[2]-0.12*x[3]-0.22*x[4]-0.5*x[5]+0.66*x[6]+0.93*x[7]+0.5*x[8]-0.47*x[9]+0.65*x[10]-0.07*x[11] <= 97.55)
@NLconstraint(m, e11, 0.64*x[2]*x[3]-0.45*x[2]*x[4]-1.88*x[2]*x[5]-0.36*x[2]*x[6]-0.94*x[2]*x[7]-1.91*x[2]*x[8]-0.06*x[2]*x[9]+1.05*x[2]*x[10]-0.2*x[2]*x[11]+(-1.33*x[3]*x[4])-0.11*x[3]*x[5]-1.43*x[3]*x[7]+1.9*x[3]*x[8]-1.84*x[3]*x[9]-0.61*x[3]*x[10]-1.3*x[3]*x[11]+0.31*x[4]*x[5]-0.4*x[4]*x[6]+1.31*x[4]*x[7]+1.82*x[4]*x[8]+0.45*x[4]*x[9]-1.28*x[4]*x[10]+1.5*x[4]*x[11]+1.38*x[5]*x[7]-1.03*x[5]*x[6]+0.3*x[5]*x[8]-1.75*x[5]*x[9]-0.42*x[5]*x[10]-1.13*x[5]*x[11]+(-0.4*x[6]*x[7])-0.17*x[6]*x[8]+1.46*x[6]*x[9]-1.82*x[6]*x[10]-1.44*x[6]*x[11]+(-1.42*x[7]*x[8])-1.19*x[7]*x[9]-0.75*x[7]*x[11]+0.23*x[8]*x[9]+1.15*x[8]*x[10]+0.71*x[8]*x[11]+(-0.29*x[9]*x[10])-0.6*x[9]*x[11]+1.57*x[10]*x[11]+0.65*x[2]*x[2]+0.32*x[3]*x[3]+0.98*x[4]*x[4]-0.43*x[5]*x[5]-0.57*x[6]*x[6]+0.18*x[7]*x[7]-0.15*x[8]*x[8]-0.65*x[9]*x[9]+0.94*x[10]*x[10]-0.63*x[11]*x[11]-0.59*x[2]+0.13*x[3]-0.68*x[4]-0.85*x[5]+0.87*x[6]-0.73*x[7]-0.88*x[8]-0.91*x[9]-0.42*x[10]-0.18*x[11] <= 48.01)
@NLconstraint(m, e12, 0.83*x[2]*x[4]-0.9*x[2]*x[3]+0.26*x[2]*x[5]+1.04*x[2]*x[6]-0.18*x[2]*x[7]+1.23*x[2]*x[8]+0.51*x[2]*x[9]+1.83*x[2]*x[10]+1.24*x[2]*x[11]+0.01*x[3]*x[4]+0.56*x[3]*x[5]-1.35*x[3]*x[6]+0.57*x[3]*x[7]-0.22*x[3]*x[8]+1.84*x[3]*x[9]+0.62*x[3]*x[10]-0.07*x[3]*x[11]+0.51*x[4]*x[5]+1.09*x[4]*x[6]+1.23*x[4]*x[7]+0.48*x[4]*x[8]-1.78*x[4]*x[9]+1.54*x[4]*x[10]-0.16*x[4]*x[11]+(-0.97*x[5]*x[6])-0.47*x[5]*x[7]+0.01*x[5]*x[8]+1.2*x[5]*x[9]-0.23*x[5]*x[10]+1.09*x[5]*x[11]+1.32*x[6]*x[7]-1.43*x[6]*x[8]-1.65*x[6]*x[9]+0.37*x[6]*x[10]-1.38*x[6]*x[11]+1.27*x[7]*x[8]+0.59*x[7]*x[9]+1.49*x[7]*x[10]+0.08*x[7]*x[11]+1.91*x[8]*x[10]-0.67*x[8]*x[9]+0.59*x[8]*x[11]+0.03*x[9]*x[11]-0.16*x[9]*x[10]+0.42*x[10]*x[11]+0.15*x[2]*x[2]+0.37*x[3]*x[3]-0.3*x[4]*x[4]+0.17*x[5]*x[5]-0.94*x[6]*x[6]+0.09*x[7]*x[7]-0.99*x[8]*x[8]+0.75*x[9]*x[9]+0.84*x[10]*x[10]+0.09*x[11]*x[11]+0.74*x[2]-0.5*x[3]-0.25*x[4]-0.96*x[5]-0.45*x[6]-0.58*x[7]+0.28*x[8]+0.03*x[9]+0.45*x[10]+0.17*x[11] <= 32.66)
@NLconstraint(m, e13, 0.97*x[2]*x[3]-1.15*x[2]*x[4]-0.57*x[2]*x[5]+1.2*x[2]*x[6]+1.13*x[2]*x[7]-1.22*x[2]*x[8]+1.51*x[2]*x[9]+1.72*x[2]*x[10]+0.6*x[2]*x[11]+1.94*x[3]*x[4]-0.97*x[3]*x[5]+1.51*x[3]*x[6]-1.87*x[3]*x[7]-1.74*x[3]*x[8]-0.88*x[3]*x[9]-0.79*x[3]*x[10]-0.01*x[3]*x[11]+1.32*x[4]*x[5]+1.11*x[4]*x[6]+0.33*x[4]*x[7]-0.71*x[4]*x[8]-0.97*x[4]*x[9]+1.37*x[4]*x[10]-0.32*x[4]*x[11]+0.2*x[5]*x[7]-1.15*x[5]*x[6]-1.35*x[5]*x[8]+1.02*x[5]*x[9]+0.73*x[5]*x[10]-1.67*x[5]*x[11]+0.79*x[6]*x[8]-1.02*x[6]*x[7]+1.89*x[6]*x[9]-1.13*x[6]*x[10]+0.36*x[6]*x[11]+0.88*x[7]*x[8]-1.5*x[7]*x[9]-0.97*x[7]*x[10]-0.63*x[7]*x[11]+1.2*x[8]*x[9]-0.5*x[8]*x[10]-0.41*x[8]*x[11]+1.34*x[9]*x[10]-1.69*x[9]*x[11]-1.46*x[10]*x[11]+0.47*x[2]*x[2]-0.32*x[3]*x[3]+0.36*x[4]*x[4]+0.79*x[5]*x[5]+0.83*x[6]*x[6]-0.32*x[7]*x[7]+0.26*x[8]*x[8]+0.67*x[9]*x[9]+0.52*x[10]*x[10]+0.96*x[11]*x[11]+0.25*x[2]+0.27*x[3]-0.49*x[4]+0.85*x[5]+0.98*x[6]+0.18*x[7]-0.35*x[8]+0.85*x[9]-0.98*x[10]+0.94*x[11] <= 33.95)
@NLconstraint(m, e14, (-1.27*x[2]*x[3])-0.91*x[2]*x[4]-1.97*x[2]*x[5]-0.6*x[2]*x[6]-0.77*x[2]*x[7]-0.33*x[2]*x[8]+0.52*x[2]*x[9]-0.06*x[2]*x[10]-1.62*x[2]*x[11]+(-1.91*x[3]*x[4])-x[3]*x[6]-0.12*x[3]*x[7]-0.05*x[3]*x[8]-0.95*x[3]*x[9]-1.4*x[3]*x[10]-0.36*x[3]*x[11]+1.01*x[4]*x[6]-0.41*x[4]*x[5]+1.59*x[4]*x[7]+0.66*x[4]*x[8]-0.35*x[4]*x[9]-1.62*x[4]*x[10]-1.36*x[4]*x[11]+0.72*x[5]*x[6]-1.6*x[5]*x[7]+1.44*x[5]*x[8]+0.24*x[5]*x[9]-1.54*x[5]*x[10]+1.17*x[5]*x[11]+0.78*x[6]*x[8]-0.98*x[6]*x[7]+1.28*x[6]*x[9]-0.83*x[6]*x[10]-1.1*x[6]*x[11]+(-1.2*x[7]*x[8])-0.92*x[7]*x[9]+1.26*x[7]*x[10]-1.57*x[7]*x[11]+1.93*x[8]*x[9]+0.39*x[8]*x[10]+0.21*x[8]*x[11]+(-1.54*x[9]*x[10])-0.98*x[9]*x[11]+0.26*x[10]*x[11]+(-0.59*x[2]*x[2])-0.86*x[3]*x[3]-0.48*x[4]*x[4]+0.84*x[5]*x[5]+0.63*x[6]*x[6]-0.45*x[7]*x[7]+0.67*x[8]*x[8]-0.95*x[9]*x[9]-0.09*x[10]*x[10]+0.2*x[11]*x[11]-0.08*x[2]-0.23*x[3]+0.5*x[4]+0.61*x[5]+0.67*x[6]-0.71*x[7]-0.48*x[8]+0.14*x[9]-0.53*x[10]-0.94*x[11] <= 50.14)
@NLconstraint(m, e15, (-0.97*x[2]*x[3])-1.31*x[2]*x[4]+1.34*x[2]*x[5]-0.5*x[2]*x[6]-0.49*x[2]*x[7]+1.3*x[2]*x[8]+1.64*x[2]*x[9]+1.4*x[2]*x[10]-0.74*x[2]*x[11]+1.58*x[3]*x[4]+1.32*x[3]*x[5]-0.69*x[3]*x[6]+0.71*x[3]*x[7]+0.17*x[3]*x[8]+1.93*x[3]*x[9]-0.88*x[3]*x[10]-0.61*x[3]*x[11]+1.99*x[4]*x[5]-0.77*x[4]*x[6]+1.12*x[4]*x[7]-0.38*x[4]*x[8]-0.15*x[4]*x[9]+1.79*x[4]*x[10]-0.41*x[4]*x[11]+1.73*x[5]*x[7]-1.85*x[5]*x[6]+0.12*x[5]*x[8]+0.65*x[5]*x[9]+1.59*x[5]*x[10]-0.6*x[5]*x[11]+(-1.01*x[6]*x[7])-0.3*x[6]*x[8]-0.55*x[6]*x[9]-1.65*x[6]*x[10]-1.86*x[6]*x[11]+1.61*x[7]*x[8]-1.41*x[7]*x[9]-1.05*x[7]*x[10]+0.93*x[7]*x[11]+0.81*x[8]*x[9]+0.86*x[8]*x[10]+1.93*x[8]*x[11]+0.79*x[9]*x[10]-1.57*x[9]*x[11]+0.49*x[10]*x[11]+0.87*x[2]*x[2]+0.26*x[3]*x[3]-0.73*x[4]*x[4]+0.14*x[5]*x[5]-0.56*x[6]*x[6]-0.08*x[7]*x[7]+0.48*x[8]*x[8]-0.91*x[9]*x[9]-0.38*x[10]*x[10]-0.23*x[11]*x[11]+0.19*x[2]+0.33*x[3]+0.41*x[4]-0.94*x[5]+0.37*x[6]+0.71*x[7]-0.27*x[8]+0.81*x[9]+0.75*x[10]+0.47*x[11] <= 89.49)
@NLconstraint(m, e16, 1.51*x[2]*x[3]+1.97*x[2]*x[4]+0.82*x[2]*x[5]+1.08*x[2]*x[6]-0.93*x[2]*x[7]-1.12*x[2]*x[8]+1.42*x[2]*x[9]-0.97*x[2]*x[10]-1.38*x[2]*x[11]+(-1.54*x[3]*x[4])-0.51*x[3]*x[5]-0.03*x[3]*x[6]-0.82*x[3]*x[7]-1.95*x[3]*x[8]-1.06*x[3]*x[9]-1.16*x[3]*x[10]+0.48*x[3]*x[11]+0.08*x[4]*x[5]-1.12*x[4]*x[6]+0.03*x[4]*x[7]-0.36*x[4]*x[8]+1.54*x[4]*x[9]-1.41*x[4]*x[10]-1.79*x[4]*x[11]+1.14*x[5]*x[6]+0.1*x[5]*x[7]+1.96*x[5]*x[8]+0.37*x[5]*x[9]+1.28*x[5]*x[10]-1.78*x[5]*x[11]+0.48*x[6]*x[7]+0.25*x[6]*x[8]+0.48*x[6]*x[9]+0.51*x[6]*x[10]+0.56*x[6]*x[11]+(-0.54*x[7]*x[8])-1.73*x[7]*x[9]-0.71*x[7]*x[10]-0.73*x[7]*x[11]+0.57*x[8]*x[10]-0.53*x[8]*x[9]-0.37*x[8]*x[11]+1.23*x[9]*x[10]-1.48*x[9]*x[11]-0.46*x[10]*x[11]+0.61*x[3]*x[3]-0.76*x[2]*x[2]-0.78*x[4]*x[4]+0.55*x[5]*x[5]-0.44*x[6]*x[6]-0.22*x[7]*x[7]-0.99*x[8]*x[8]+0.97*x[9]*x[9]+0.76*x[10]*x[10]-0.49*x[11]*x[11]+0.76*x[2]+0.52*x[3]+0.4*x[4]-0.85*x[5]+0.22*x[6]+0.5*x[7]+0.59*x[8]+0.94*x[9]+0.39*x[10]-0.57*x[11] <= 14.66)
@NLconstraint(m, e17, 1.64*x[2]*x[3]-1.49*x[2]*x[4]+1.64*x[2]*x[5]+1.64*x[2]*x[6]-0.05*x[2]*x[7]-1.84*x[2]*x[8]-0.61*x[2]*x[9]-1.79*x[2]*x[10]-0.8*x[2]*x[11]+(-0.96*x[3]*x[4])-1.51*x[3]*x[5]-1.73*x[3]*x[6]-1.77*x[3]*x[7]+0.48*x[3]*x[8]-1.89*x[3]*x[9]+1.78*x[3]*x[10]-0.87*x[3]*x[11]+0.28*x[4]*x[5]-0.3*x[4]*x[6]+0.76*x[4]*x[7]-1.83*x[4]*x[8]-1.57*x[4]*x[9]+0.69*x[4]*x[10]-1.53*x[4]*x[11]+(-0.43*x[5]*x[6])-0.61*x[5]*x[7]+0.08*x[5]*x[8]-1.23*x[5]*x[9]-0.31*x[5]*x[10]-1.66*x[5]*x[11]+0.58*x[6]*x[8]-1.97*x[6]*x[7]-1.02*x[6]*x[9]-0.15*x[6]*x[10]+1.33*x[6]*x[11]+(-1.26*x[7]*x[8])-0.61*x[7]*x[9]-0.81*x[7]*x[10]-1.97*x[7]*x[11]+(-1.31*x[8]*x[9])-1.8*x[8]*x[10]-0.36*x[8]*x[11]+(-1.35*x[9]*x[10])-0.85*x[9]*x[11]+0.48*x[10]*x[11]+0.18*x[2]*x[2]-0.75*x[3]*x[3]+0.66*x[4]*x[4]-0.3*x[5]*x[5]-0.11*x[6]*x[6]-0.15*x[7]*x[7]-0.18*x[8]*x[8]+0.97*x[9]*x[9]-0.25*x[10]*x[10]-0.68*x[11]*x[11]+0.89*x[2]+0.92*x[3]-0.66*x[4]+0.01*x[5]-0.99*x[6]-0.01*x[7]-0.69*x[8]-0.17*x[9]+0.45*x[10]-0.35*x[11] <= 23.96)
@NLconstraint(m, e18, (-0.94*x[2]*x[3])-1.68*x[2]*x[4]+0.47*x[2]*x[5]-1.52*x[2]*x[6]-1.25*x[2]*x[7]-1.42*x[2]*x[8]-0.27*x[2]*x[9]+0.34*x[2]*x[10]+0.37*x[2]*x[11]+0.23*x[3]*x[5]-0.17*x[3]*x[4]+1.75*x[3]*x[6]-1.83*x[3]*x[7]+1.21*x[3]*x[8]-1.04*x[3]*x[9]+0.81*x[3]*x[10]-1.4*x[3]*x[11]+(-1.43*x[4]*x[5])-0.46*x[4]*x[6]-1.87*x[4]*x[7]+0.64*x[4]*x[8]+0.19*x[4]*x[9]-0.67*x[4]*x[10]+1.46*x[4]*x[11]+0.3*x[5]*x[6]-0.77*x[5]*x[7]+0.87*x[5]*x[8]-1.9*x[5]*x[9]+0.42*x[5]*x[10]-0.92*x[5]*x[11]+0.69*x[6]*x[7]+0.27*x[6]*x[8]+0.36*x[6]*x[9]-0.96*x[6]*x[10]+1.28*x[6]*x[11]+0.66*x[7]*x[9]-1.51*x[7]*x[8]+1.28*x[7]*x[10]-1.14*x[7]*x[11]+(-0.33*x[8]*x[9])-x[8]*x[10]+0.81*x[8]*x[11]+(-0.18*x[9]*x[10])-1.05*x[9]*x[11]+0.63*x[10]*x[11]+0.87*x[3]*x[3]-0.11*x[2]*x[2]-0.54*x[4]*x[4]-0.45*x[5]*x[5]+0.27*x[6]*x[6]-0.23*x[7]*x[7]+0.63*x[8]*x[8]+0.69*x[9]*x[9]-0.74*x[10]*x[10]-0.45*x[11]*x[11]+0.47*x[2]+0.95*x[3]+0.2*x[4]+x[5]+0.77*x[6]-0.86*x[7]-0.66*x[8]+0.67*x[9]-0.71*x[10]-0.15*x[11] <= 80.06)
@NLconstraint(m, e19, (-0.26*x[2]*x[3])-1.9*x[2]*x[4]+1.45*x[2]*x[5]-1.21*x[2]*x[6]-1.14*x[2]*x[7]-1.32*x[2]*x[8]-1.18*x[2]*x[9]+1.33*x[2]*x[10]-1.21*x[2]*x[11]+1.06*x[3]*x[4]+1.29*x[3]*x[5]+1.5*x[3]*x[6]+0.5*x[3]*x[7]-1.67*x[3]*x[8]+1.84*x[3]*x[9]+1.89*x[3]*x[10]-1.49*x[3]*x[11]+0.51*x[4]*x[6]-0.84*x[4]*x[5]-1.77*x[4]*x[7]-0.17*x[4]*x[8]-0.49*x[4]*x[9]-0.5*x[4]*x[10]+0.88*x[4]*x[11]+0.68*x[5]*x[6]+1.68*x[5]*x[7]-1.89*x[5]*x[8]-0.04*x[5]*x[9]+1.29*x[5]*x[10]+1.28*x[5]*x[11]+0.89*x[6]*x[7]-0.52*x[6]*x[8]-1.3*x[6]*x[9]-0.22*x[6]*x[10]-0.06*x[6]*x[11]+0.17*x[7]*x[8]+0.54*x[7]*x[9]-0.93*x[7]*x[10]-1.24*x[7]*x[11]+0.22*x[8]*x[9]+0.18*x[8]*x[10]+0.43*x[8]*x[11]+(-1.78*x[9]*x[10])-0.77*x[9]*x[11]-0.3*x[10]*x[11]+0.28*x[2]*x[2]-0.42*x[3]*x[3]-0.57*x[4]*x[4]+0.95*x[5]*x[5]-0.89*x[6]*x[6]-0.78*x[7]*x[7]+0.43*x[8]*x[8]-0.69*x[9]*x[9]+0.12*x[10]*x[10]-0.52*x[11]*x[11]-0.14*x[2]+0.89*x[3]+0.77*x[4]+0.51*x[5]+0.93*x[6]+0.18*x[7]-0.49*x[8]-0.2*x[9]+0.65*x[10]-0.01*x[11] <= 17.04)
@NLconstraint(m, e20, 0.78*x[2]*x[4]-1.34*x[2]*x[3]-0.26*x[2]*x[5]+1.52*x[2]*x[6]-1.81*x[2]*x[7]+1.41*x[2]*x[8]+0.03*x[2]*x[9]-1.71*x[2]*x[10]+0.91*x[2]*x[11]+1.71*x[3]*x[4]-0.17*x[3]*x[5]+1.47*x[3]*x[6]+1.87*x[3]*x[7]-0.79*x[3]*x[8]-0.03*x[3]*x[9]-0.44*x[3]*x[10]-0.14*x[3]*x[11]+0.51*x[4]*x[6]-1.97*x[4]*x[5]-0.72*x[4]*x[7]+1.76*x[4]*x[8]+1.6*x[4]*x[9]-0.44*x[4]*x[10]+1.41*x[4]*x[11]+(-1.18*x[5]*x[6])-1.99*x[5]*x[7]-1.68*x[5]*x[8]-1.72*x[5]*x[9]+1.06*x[5]*x[10]+1.66*x[5]*x[11]+1.2*x[6]*x[8]-1.92*x[6]*x[7]-1.92*x[6]*x[9]+0.57*x[6]*x[10]-0.9*x[6]*x[11]+0.28*x[7]*x[9]-0.62*x[7]*x[8]-0.65*x[7]*x[10]+1.97*x[7]*x[11]+1.98*x[8]*x[10]-0.11*x[8]*x[9]+0.49*x[8]*x[11]+1.12*x[9]*x[11]-0.48*x[9]*x[10]+1.21*x[10]*x[11]+0.88*x[2]*x[2]-0.56*x[3]*x[3]+0.39*x[4]*x[4]-0.97*x[5]*x[5]+0.93*x[6]*x[6]-0.05*x[7]*x[7]-0.57*x[8]*x[8]+0.38*x[9]*x[9]-0.72*x[10]*x[10]-0.31*x[11]*x[11]+0.65*x[2]+0.23*x[3]-0.86*x[4]-0.54*x[5]-0.58*x[6]-0.22*x[7]+0.72*x[8]+0.7*x[9]-0.32*x[10]-0.44*x[11] <= 97.7)
@NLconstraint(m, e21, 1.82*x[2]*x[4]-1.93*x[2]*x[3]-1.19*x[2]*x[5]+1.29*x[2]*x[6]+0.72*x[2]*x[7]+0.39*x[2]*x[8]+0.34*x[2]*x[9]-1.95*x[2]*x[10]+1.4*x[2]*x[11]+1.72*x[3]*x[5]-0.22*x[3]*x[4]+1.75*x[3]*x[6]-1.32*x[3]*x[7]+1.05*x[3]*x[8]+0.7*x[3]*x[9]-1.08*x[3]*x[10]+0.09*x[3]*x[11]+1.07*x[4]*x[5]+1.27*x[4]*x[6]-0.46*x[4]*x[7]+0.04*x[4]*x[8]+1.29*x[4]*x[9]+0.19*x[4]*x[10]+1.18*x[4]*x[11]+1.31*x[5]*x[6]-0.66*x[5]*x[7]+0.02*x[5]*x[8]-0.35*x[5]*x[9]-1.97*x[5]*x[10]+0.81*x[5]*x[11]+0.25*x[6]*x[7]-1.25*x[6]*x[8]-1.97*x[6]*x[9]-1.14*x[6]*x[10]-1.56*x[6]*x[11]+0.66*x[7]*x[8]-0.11*x[7]*x[9]+0.54*x[7]*x[10]-1.49*x[7]*x[11]+1.92*x[8]*x[10]-0.84*x[8]*x[9]+1.37*x[8]*x[11]+0.48*x[9]*x[11]-2*x[9]*x[10]-1.7*x[10]*x[11]+0.21*x[2]*x[2]+0.03*x[3]*x[3]+0.71*x[4]*x[4]-0.3*x[5]*x[5]-0.89*x[6]*x[6]-0.46*x[7]*x[7]-0.7*x[8]*x[8]+0.78*x[9]*x[9]+0.82*x[10]*x[10]-0.91*x[11]*x[11]+0.83*x[2]+0.36*x[3]-0.4*x[4]+0.97*x[5]+0.98*x[6]-0.23*x[7]+0.1*x[8]+0.96*x[9]+0.07*x[10]+x[11] <= 29.78)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
