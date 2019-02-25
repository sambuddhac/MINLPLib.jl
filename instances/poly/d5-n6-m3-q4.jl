using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, 0.89*x[1]-0.6*x[2]+x[3]-0.4*x[4]-0.1*x[5]+0.05*x[6] == 0.42)
@constraint(m, e2, 0.32*x[1]+0.52*x[2]-0.65*x[3]-0.79*x[4]+0.52*x[5]-0.07*x[6] == -0.08)
@constraint(m, e3, -0.47*x[1]+0.77*x[2]+0.91*x[3]-0.9*x[4]+0.17*x[5]-0.07*x[6] == 0.2)
@constraint(m, e4, 0.39*x[6] >= 0.19)
@NLconstraint(m, e5, 0.37*x[1]*x[4]-0.41*x[1]*x[3]-0.92*x[2]*x[3]-0.68*x[2]*x[5]+0.88*x[3]*x[5]+0.36*x[4]*x[5]-0.14*x[5]*x[5] >= -0.31)
@NLconstraint(m, e6, (-0.56*x[1]*x[1])-0.45*x[1]*x[2]+0.53*x[1]*x[4]-0.66*x[1]*x[5]+0.33*x[4]*x[4]-0.67*x[1]*x[1]*x[2]-0.06*x[1]*x[1]*x[4]-0.64*x[1]*x[1]*x[5]-0.59*x[1]*x[2]*x[5]-0.01*x[1]*x[3]*x[4]+0.27*x[1]*x[3]*x[5]+0.21*x[1]*x[5]*x[6]+0.74*x[6]-0.51*x[2]*x[3]*x[6]+0.83*x[2]*x[5]*x[5]-0.66*x[2]*x[5]*x[6]+0.29*x[2]*x[6]*x[6]-0.27*x[3]*x[3]*x[3]+0.81*x[3]*x[3]*x[4]+0.06*x[3]*x[5]*x[6]+0.85*x[4]*x[4]*x[4] >= -0.19)
@NLconstraint(m, e7, 0.92*x[1]-0.98*x[1]*x[6]-0.91*x[3]*x[5]-0.79*x[4]*x[5]-0.65*x[4]*x[6]-0.43*x[5]*x[6]+0.77*x[1]*x[1]*x[2]+0.95*x[1]*x[1]*x[3]-0.77*x[1]*x[1]*x[4]+0.58*x[1]*x[2]*x[3]-0.27*x[1]*x[3]*x[3]+0.21*x[1]*x[3]*x[4]+0.45*x[1]*x[3]*x[6]-0.26*x[1]*x[4]*x[4]+0.59*x[1]*x[6]*x[6]-0.61*x[2]*x[2]*x[2]-0.94*x[2]*x[2]*x[5]-0.71*x[2]*x[5]*x[6]-0.21*x[3]*x[3]*x[4]+0.67*x[3]*x[3]*x[5]-0.42*x[3]*x[3]*x[6]+0.01*x[3]*x[4]*x[4]+0.45*x[3]*x[5]*x[5]-0.76*x[4]*x[4]*x[6]-0.32*x[4]*x[5]*x[5]+0.18*x[4]*x[5]*x[6]-0.56*x[1]*x[1]*x[1]*x[4]+0.04*x[1]*x[1]*x[1]*x[6]-0.45*x[1]*x[2]*x[2]*x[3]+0.2*x[1]*x[2]*x[2]*x[5]+0.62*x[1]*x[2]*x[6]*x[6]-0.48*x[1]*x[3]*x[3]*x[3]+0.55*x[1]*x[3]*x[3]*x[6]+0.15*x[1]*x[3]*x[4]*x[4]+0.24*x[1]*x[3]*x[5]*x[5]+0.85*x[1]*x[3]*x[6]*x[6]+0.12*x[1]*x[4]*x[6]*x[6]+0.24*x[1]*x[5]*x[6]*x[6]-0.72*x[2]*x[2]*x[2]*x[4]-0.52*x[2]*x[2]*x[2]*x[5]+0.72*x[2]*x[2]*x[2]*x[6]-0.47*x[2]*x[2]*x[3]*x[4]+0.94*x[2]*x[4]*x[4]*x[4]+0.45*x[2]*x[4]*x[4]*x[6]-0.57*x[3]*x[4]*x[5]*x[5]-0.56*x[3]*x[4]*x[5]*x[6]+0.64*x[3]*x[4]*x[6]*x[6]+0.71*x[3]*x[5]*x[5]*x[6]+0.49*x[4]*x[4]*x[4]*x[5]-0.6*x[4]*x[5]*x[5]*x[6]-x[5]*x[5]*x[5]*x[6]-0.09*x[5]*x[6]*x[6]*x[6] >= -1.44)
@NLconstraint(m, e8, -(0.21*x[1]*x[1]+0.6*x[1]+0.46*x[1]*x[2]-0.24*x[2]+0.58*x[1]*x[3]-0.45*x[3]-0.14*x[1]*x[4]+0.49*x[4]-0.79*x[1]*x[5]-0.98*x[5]+0.17*x[1]*x[6]+0.98*x[6]-0.76*x[2]*x[2]+0.18*x[2]*x[3]-0.41*x[2]*x[4]-0.57*x[2]*x[5]+0.72*x[2]*x[6]-0.1*x[3]*x[3]-0.16*x[3]*x[4]+0.47*x[3]*x[5]+0.83*x[3]*x[6]-0.92*x[4]*x[4]-0.8*x[4]*x[5]+0.37*x[4]*x[6]+0.41*x[5]*x[5]-0.67*x[5]*x[6]-0.08*x[6]*x[6]-0.94*x[1]*x[1]*x[1]-0.66*x[1]*x[1]*x[2]+0.34*x[1]*x[1]*x[3]+0.54*x[1]*x[1]*x[4]-0.59*x[1]*x[1]*x[5]-0.24*x[1]*x[1]*x[6]+0.25*x[1]*x[2]*x[2]+0.61*x[1]*x[2]*x[3]+0.18*x[1]*x[2]*x[4]-0.22*x[1]*x[2]*x[5]-0.26*x[1]*x[2]*x[6]+0.95*x[1]*x[3]*x[3]+0.28*x[1]*x[3]*x[4]+0.79*x[1]*x[3]*x[5]-0.49*x[1]*x[3]*x[6]+0.61*x[1]*x[4]*x[4]+0.96*x[1]*x[4]*x[5]+0.6*x[1]*x[4]*x[6]-0.67*x[1]*x[5]*x[5]-0.2*x[1]*x[5]*x[6]+0.54*x[1]*x[6]*x[6]-0.02*x[2]*x[2]*x[2]+0.94*x[2]*x[2]*x[3]-0.64*x[2]*x[2]*x[4]-0.42*x[2]*x[2]*x[5]-0.2*x[2]*x[2]*x[6]-0.34*x[2]*x[3]*x[3]+0.48*x[2]*x[3]*x[4]-0.22*x[2]*x[3]*x[5]+0.28*x[2]*x[3]*x[6]+0.61*x[2]*x[4]*x[4]+0.54*x[2]*x[4]*x[5]-0.41*x[2]*x[4]*x[6]+0.53*x[2]*x[5]*x[5]+0.58*x[2]*x[5]*x[6]-0.87*x[2]*x[6]*x[6]+0.84*x[3]*x[3]*x[3]+0.91*x[3]*x[3]*x[4]-0.87*x[3]*x[3]*x[5]+0.59*x[3]*x[3]*x[6]-0.97*x[3]*x[4]*x[4]-0.67*x[3]*x[4]*x[5]+0.11*x[3]*x[4]*x[6]-0.85*x[3]*x[5]*x[5]-0.64*x[3]*x[5]*x[6]+0.56*x[3]*x[6]*x[6]-0.36*x[4]*x[4]*x[4]+0.29*x[4]*x[4]*x[5]+0.9*x[4]*x[4]*x[6]+0.35*x[4]*x[5]*x[5]-0.06*x[4]*x[5]*x[6]-0.36*x[4]*x[6]*x[6]+0.73*x[5]*x[5]*x[5]-0.04*x[5]*x[5]*x[6]+0.04*x[5]*x[6]*x[6]+0.79*x[6]*x[6]*x[6]-0.47*x[1]*x[1]*x[1]*x[1]+0.65*x[1]*x[1]*x[1]*x[2]+0.07*x[1]*x[1]*x[1]*x[3]-0.57*x[1]*x[1]*x[1]*x[4]+0.35*x[1]*x[1]*x[1]*x[5]+0.85*x[1]*x[1]*x[1]*x[6]+0.37*x[1]*x[1]*x[2]*x[2]-0.9*x[1]*x[1]*x[2]*x[3]+0.29*x[1]*x[1]*x[2]*x[4]-0.32*x[1]*x[1]*x[2]*x[5]-0.56*x[1]*x[1]*x[2]*x[6]+0.2*x[1]*x[1]*x[3]*x[3]+0.25*x[1]*x[1]*x[3]*x[4]-0.27*x[1]*x[1]*x[3]*x[5]+0.62*x[1]*x[1]*x[3]*x[6]-0.82*x[1]*x[1]*x[4]*x[4]+0.24*x[1]*x[1]*x[4]*x[5]-0.73*x[1]*x[1]*x[4]*x[6]+0.1*x[1]*x[1]*x[5]*x[5]-0.54*x[1]*x[1]*x[5]*x[6]+0.3*x[1]*x[1]*x[6]*x[6]-0.21*x[1]*x[2]*x[2]*x[2]+0.33*x[1]*x[2]*x[2]*x[3]+0.39*x[1]*x[2]*x[2]*x[4]+0.61*x[1]*x[2]*x[2]*x[5]-0.44*x[1]*x[2]*x[2]*x[6]-0.87*x[1]*x[2]*x[3]*x[3]-0.01*x[1]*x[2]*x[3]*x[4]-0.05*x[1]*x[2]*x[3]*x[5]+0.52*x[1]*x[2]*x[3]*x[6]-0.83*x[1]*x[2]*x[4]*x[4]+x[1]*x[2]*x[4]*x[5]-0.25*x[1]*x[2]*x[4]*x[6]-0.41*x[1]*x[2]*x[5]*x[5]+0.34*x[1]*x[2]*x[5]*x[6]+0.43*x[1]*x[2]*x[6]*x[6]-0.55*x[1]*x[3]*x[3]*x[3]+0.01*x[1]*x[3]*x[3]*x[4]+0.94*x[1]*x[3]*x[3]*x[5]-0.16*x[1]*x[3]*x[3]*x[6]+0.94*x[1]*x[3]*x[4]*x[4]+0.8*x[1]*x[3]*x[4]*x[5]+0.97*x[1]*x[3]*x[4]*x[6]+0.86*x[1]*x[3]*x[5]*x[5]-0.27*x[1]*x[3]*x[5]*x[6]-0.14*x[1]*x[3]*x[6]*x[6]-0.79*x[1]*x[4]*x[4]*x[4]+0.65*x[1]*x[4]*x[4]*x[5]+0.89*x[1]*x[4]*x[4]*x[6]+0.46*x[1]*x[4]*x[5]*x[5]-0.09*x[1]*x[4]*x[5]*x[6]-0.08*x[1]*x[4]*x[6]*x[6]+0.08*x[1]*x[5]*x[5]*x[5]+0.23*x[1]*x[5]*x[5]*x[6]+0.75*x[1]*x[5]*x[6]*x[6]-0.34*x[1]*x[6]*x[6]*x[6]+0.25*x[2]*x[2]*x[2]*x[2]-0.97*x[2]*x[2]*x[2]*x[3]+0.91*x[2]*x[2]*x[2]*x[4]+0.68*x[2]*x[2]*x[2]*x[5]-0.44*x[2]*x[2]*x[2]*x[6]-0.34*x[2]*x[2]*x[3]*x[3]-0.47*x[2]*x[2]*x[3]*x[4]+0.57*x[2]*x[2]*x[3]*x[5]-0.92*x[2]*x[2]*x[3]*x[6]+0.34*x[2]*x[2]*x[4]*x[4]-0.64*x[2]*x[2]*x[4]*x[5]+0.83*x[2]*x[2]*x[4]*x[6]-0.66*x[2]*x[2]*x[5]*x[5]-0.84*x[2]*x[2]*x[5]*x[6]+0.07*x[2]*x[2]*x[6]*x[6]+0.21*x[2]*x[3]*x[3]*x[3]-0.31*x[2]*x[3]*x[3]*x[4]+0.37*x[2]*x[3]*x[3]*x[5]+0.73*x[2]*x[3]*x[3]*x[6]-0.59*x[2]*x[3]*x[4]*x[4]-0.33*x[2]*x[3]*x[4]*x[5]+0.49*x[2]*x[3]*x[4]*x[6]-0.46*x[2]*x[3]*x[5]*x[5]-0.33*x[2]*x[3]*x[5]*x[6]+0.33*x[2]*x[3]*x[6]*x[6]-0.55*x[2]*x[4]*x[4]*x[4]+0.21*x[2]*x[4]*x[4]*x[5]+0.93*x[2]*x[4]*x[4]*x[6]-0.8*x[2]*x[4]*x[5]*x[5]-0.23*x[2]*x[4]*x[5]*x[6]-0.78*x[2]*x[4]*x[6]*x[6]-0.51*x[2]*x[5]*x[5]*x[5]-0.51*x[2]*x[5]*x[5]*x[6]-0.67*x[2]*x[5]*x[6]*x[6]-0.26*x[2]*x[6]*x[6]*x[6]-0.31*x[3]*x[3]*x[3]*x[3]-0.86*x[3]*x[3]*x[3]*x[4]+0.55*x[3]*x[3]*x[3]*x[5]-0.94*x[3]*x[3]*x[3]*x[6]+0.71*x[3]*x[3]*x[4]*x[4]+0.18*x[3]*x[3]*x[4]*x[5]-x[3]*x[3]*x[4]*x[6]-0.76*x[3]*x[3]*x[5]*x[5]-0.91*x[3]*x[3]*x[5]*x[6]+0.53*x[3]*x[3]*x[6]*x[6]+0.53*x[3]*x[4]*x[4]*x[4]-0.29*x[3]*x[4]*x[4]*x[5]-0.87*x[3]*x[4]*x[4]*x[6]-0.82*x[3]*x[4]*x[5]*x[5]+0.12*x[3]*x[4]*x[5]*x[6]-0.08*x[3]*x[4]*x[6]*x[6]+0.52*x[3]*x[5]*x[5]*x[5]+0.93*x[3]*x[5]*x[5]*x[6]+0.44*x[3]*x[5]*x[6]*x[6]+0.48*x[3]*x[6]*x[6]*x[6]-0.02*x[4]*x[4]*x[4]*x[4]-0.53*x[4]*x[4]*x[4]*x[5]+0.38*x[4]*x[4]*x[4]*x[6]+0.9*x[4]*x[4]*x[5]*x[5]+0.96*x[4]*x[4]*x[5]*x[6]-0.34*x[4]*x[4]*x[6]*x[6]-0.02*x[4]*x[5]*x[5]*x[5]-0.34*x[4]*x[5]*x[5]*x[6]+0.15*x[4]*x[5]*x[6]*x[6]+0.6*x[4]*x[6]*x[6]*x[6]+0.96*x[5]*x[5]*x[5]*x[5]-0.3*x[5]*x[5]*x[5]*x[6]-0.24*x[5]*x[5]*x[6]*x[6]+0.33*x[5]*x[6]*x[6]*x[6]-0.37*x[6]*x[6]*x[6]*x[6]+0.97*x[1]*x[1]*x[1]*x[1]*x[1]+0.53*x[1]*x[1]*x[1]*x[1]*x[2]+0.26*x[1]*x[1]*x[1]*x[1]*x[3]+0.56*x[1]*x[1]*x[1]*x[1]*x[4]+0.76*x[1]*x[1]*x[1]*x[1]*x[5]+0.26*x[1]*x[1]*x[1]*x[1]*x[6]+0.03*x[1]*x[1]*x[1]*x[2]*x[2]+0.46*x[1]*x[1]*x[1]*x[2]*x[3]-0.92*x[1]*x[1]*x[1]*x[2]*x[4]+0.84*x[1]*x[1]*x[1]*x[2]*x[5]-0.48*x[1]*x[1]*x[1]*x[2]*x[6]+0.77*x[1]*x[1]*x[1]*x[3]*x[3]-0.52*x[1]*x[1]*x[1]*x[3]*x[4]-0.19*x[1]*x[1]*x[1]*x[3]*x[5]-0.58*x[1]*x[1]*x[1]*x[3]*x[6]-0.27*x[1]*x[1]*x[1]*x[4]*x[4]-0.48*x[1]*x[1]*x[1]*x[4]*x[5]+0.79*x[1]*x[1]*x[1]*x[4]*x[6]+0.98*x[1]*x[1]*x[1]*x[5]*x[5]-0.96*x[1]*x[1]*x[1]*x[5]*x[6]-0.86*x[1]*x[1]*x[1]*x[6]*x[6]+0.43*x[1]*x[1]*x[2]*x[2]*x[2]-0.6*x[1]*x[1]*x[2]*x[2]*x[3]+0.53*x[1]*x[1]*x[2]*x[2]*x[4]-0.13*x[1]*x[1]*x[2]*x[2]*x[5]+0.43*x[1]*x[1]*x[2]*x[2]*x[6]+0.27*x[1]*x[1]*x[2]*x[3]*x[3]-0.88*x[1]*x[1]*x[2]*x[3]*x[4]-0.66*x[1]*x[1]*x[2]*x[3]*x[5]+0.21*x[1]*x[1]*x[2]*x[3]*x[6]+0.86*x[1]*x[1]*x[2]*x[4]*x[4]+0.14*x[1]*x[1]*x[2]*x[4]*x[5]-0.11*x[1]*x[1]*x[2]*x[4]*x[6]+0.05*x[1]*x[1]*x[2]*x[5]*x[5]+0.9*x[1]*x[1]*x[2]*x[5]*x[6]+0.89*x[1]*x[1]*x[2]*x[6]*x[6]+0.98*x[1]*x[1]*x[3]*x[3]*x[3]+0.85*x[1]*x[1]*x[3]*x[3]*x[4]-0.09*x[1]*x[1]*x[3]*x[3]*x[5]+0.15*x[1]*x[1]*x[3]*x[3]*x[6]+0.06*x[1]*x[1]*x[3]*x[4]*x[4]-0.75*x[1]*x[1]*x[3]*x[4]*x[5]+0.79*x[1]*x[1]*x[3]*x[4]*x[6]-0.72*x[1]*x[1]*x[3]*x[5]*x[5]-0.84*x[1]*x[1]*x[3]*x[5]*x[6]+0.57*x[1]*x[1]*x[3]*x[6]*x[6]+0.83*x[1]*x[1]*x[4]*x[4]*x[4]-0.42*x[1]*x[1]*x[4]*x[4]*x[5]+0.88*x[1]*x[1]*x[4]*x[4]*x[6]-0.6*x[1]*x[1]*x[4]*x[5]*x[5]-0.7*x[1]*x[1]*x[4]*x[5]*x[6]+0.97*x[1]*x[1]*x[4]*x[6]*x[6]-0.06*x[1]*x[1]*x[5]*x[5]*x[5]-0.03*x[1]*x[1]*x[5]*x[5]*x[6]-0.51*x[1]*x[1]*x[5]*x[6]*x[6]-0.87*x[1]*x[1]*x[6]*x[6]*x[6]+0.65*x[1]*x[2]*x[2]*x[2]*x[2]+0.42*x[1]*x[2]*x[2]*x[2]*x[3]-0.79*x[1]*x[2]*x[2]*x[2]*x[4]-0.17*x[1]*x[2]*x[2]*x[2]*x[5]-0.28*x[1]*x[2]*x[2]*x[2]*x[6]-0.39*x[1]*x[2]*x[2]*x[3]*x[3]+0.54*x[1]*x[2]*x[2]*x[3]*x[4]+0.38*x[1]*x[2]*x[2]*x[3]*x[5]-0.65*x[1]*x[2]*x[2]*x[3]*x[6]+0.19*x[1]*x[2]*x[2]*x[4]*x[4]+0.4*x[1]*x[2]*x[2]*x[4]*x[5]-0.48*x[1]*x[2]*x[2]*x[4]*x[6]-0.05*x[1]*x[2]*x[2]*x[5]*x[5]+0.05*x[1]*x[2]*x[2]*x[5]*x[6]+0.65*x[1]*x[2]*x[2]*x[6]*x[6]+0.27*x[1]*x[2]*x[3]*x[3]*x[3]+0.58*x[1]*x[2]*x[3]*x[3]*x[4]+0.13*x[1]*x[2]*x[3]*x[3]*x[5]-0.8*x[1]*x[2]*x[3]*x[3]*x[6]-x[1]*x[2]*x[3]*x[4]*x[4]-0.12*x[1]*x[2]*x[3]*x[4]*x[5]+x[1]*x[2]*x[3]*x[4]*x[6]+0.27*x[1]*x[2]*x[3]*x[5]*x[5]-0.49*x[1]*x[2]*x[3]*x[5]*x[6]+0.89*x[1]*x[2]*x[3]*x[6]*x[6]-0.34*x[1]*x[2]*x[4]*x[4]*x[4]-0.24*x[1]*x[2]*x[4]*x[4]*x[5]+0.74*x[1]*x[2]*x[4]*x[4]*x[6]+0.78*x[1]*x[2]*x[4]*x[5]*x[5]+0.84*x[1]*x[2]*x[4]*x[5]*x[6]+0.03*x[1]*x[2]*x[4]*x[6]*x[6]+0.31*x[1]*x[2]*x[5]*x[5]*x[5]-0.16*x[1]*x[2]*x[5]*x[5]*x[6]+0.1*x[1]*x[2]*x[5]*x[6]*x[6]-0.99*x[1]*x[2]*x[6]*x[6]*x[6]+0.19*x[1]*x[3]*x[3]*x[3]*x[3]+0.37*x[1]*x[3]*x[3]*x[3]*x[4]+0.33*x[1]*x[3]*x[3]*x[3]*x[5]+0.44*x[1]*x[3]*x[3]*x[3]*x[6]+0.77*x[1]*x[3]*x[3]*x[4]*x[4]-0.68*x[1]*x[3]*x[3]*x[4]*x[5]+0.78*x[1]*x[3]*x[3]*x[4]*x[6]+0.57*x[1]*x[3]*x[3]*x[5]*x[5]-0.49*x[1]*x[3]*x[3]*x[5]*x[6]-0.87*x[1]*x[3]*x[3]*x[6]*x[6]-0.65*x[1]*x[3]*x[4]*x[4]*x[4]+0.69*x[1]*x[3]*x[4]*x[4]*x[5]-0.68*x[1]*x[3]*x[4]*x[4]*x[6]-0.15*x[1]*x[3]*x[4]*x[5]*x[5]+0.4*x[1]*x[3]*x[4]*x[5]*x[6]+0.08*x[1]*x[3]*x[4]*x[6]*x[6]-0.32*x[1]*x[3]*x[5]*x[5]*x[5]+0.71*x[1]*x[3]*x[5]*x[5]*x[6]-0.26*x[1]*x[3]*x[5]*x[6]*x[6]-0.49*x[1]*x[3]*x[6]*x[6]*x[6]-0.22*x[1]*x[4]*x[4]*x[4]*x[4]-0.48*x[1]*x[4]*x[4]*x[4]*x[5]-0.78*x[1]*x[4]*x[4]*x[4]*x[6]-0.69*x[1]*x[4]*x[4]*x[5]*x[5]-0.27*x[1]*x[4]*x[4]*x[5]*x[6]-0.56*x[1]*x[4]*x[4]*x[6]*x[6]-0.36*x[1]*x[4]*x[5]*x[5]*x[5]-0.15*x[1]*x[4]*x[5]*x[5]*x[6]-0.24*x[1]*x[4]*x[5]*x[6]*x[6]-0.71*x[1]*x[4]*x[6]*x[6]*x[6]-0.36*x[1]*x[5]*x[5]*x[5]*x[5]+0.19*x[1]*x[5]*x[5]*x[5]*x[6]+0.96*x[1]*x[5]*x[5]*x[6]*x[6]-0.41*x[1]*x[5]*x[6]*x[6]*x[6]+0.01*x[1]*x[6]*x[6]*x[6]*x[6]+0.71*x[2]*x[2]*x[2]*x[2]*x[2]-0.14*x[2]*x[2]*x[2]*x[2]*x[3]+0.08*x[2]*x[2]*x[2]*x[2]*x[4]-0.56*x[2]*x[2]*x[2]*x[2]*x[5]+0.76*x[2]*x[2]*x[2]*x[2]*x[6]-0.75*x[2]*x[2]*x[2]*x[3]*x[3]-0.63*x[2]*x[2]*x[2]*x[3]*x[4]-0.86*x[2]*x[2]*x[2]*x[3]*x[5]+0.22*x[2]*x[2]*x[2]*x[3]*x[6]+0.35*x[2]*x[2]*x[2]*x[4]*x[4]+0.21*x[2]*x[2]*x[2]*x[4]*x[5]-0.91*x[2]*x[2]*x[2]*x[4]*x[6]+0.74*x[2]*x[2]*x[2]*x[5]*x[5]-0.03*x[2]*x[2]*x[2]*x[5]*x[6]-0.22*x[2]*x[2]*x[2]*x[6]*x[6]+0.51*x[2]*x[2]*x[3]*x[3]*x[3]+0.15*x[2]*x[2]*x[3]*x[3]*x[4]-0.53*x[2]*x[2]*x[3]*x[3]*x[5]+0.42*x[2]*x[2]*x[3]*x[3]*x[6]+0.63*x[2]*x[2]*x[3]*x[4]*x[4]+0.65*x[2]*x[2]*x[3]*x[4]*x[5]-0.19*x[2]*x[2]*x[3]*x[4]*x[6]+0.23*x[2]*x[2]*x[3]*x[5]*x[5]-0.47*x[2]*x[2]*x[3]*x[5]*x[6]-0.91*x[2]*x[2]*x[3]*x[6]*x[6]+0.25*x[2]*x[2]*x[4]*x[4]*x[4]-0.14*x[2]*x[2]*x[4]*x[4]*x[5]-0.98*x[2]*x[2]*x[4]*x[4]*x[6]+0.28*x[2]*x[2]*x[4]*x[5]*x[5]+0.18*x[2]*x[2]*x[4]*x[5]*x[6]-0.2*x[2]*x[2]*x[4]*x[6]*x[6]+0.79*x[2]*x[2]*x[5]*x[5]*x[5]+0.5*x[2]*x[2]*x[5]*x[5]*x[6]+0.46*x[2]*x[2]*x[5]*x[6]*x[6]+0.5*x[2]*x[2]*x[6]*x[6]*x[6]-0.18*x[2]*x[3]*x[3]*x[3]*x[3]-0.85*x[2]*x[3]*x[3]*x[3]*x[4]-0.73*x[2]*x[3]*x[3]*x[3]*x[5]-0.8*x[2]*x[3]*x[3]*x[3]*x[6]-0.27*x[2]*x[3]*x[3]*x[4]*x[4]+0.28*x[2]*x[3]*x[3]*x[4]*x[5]-0.44*x[2]*x[3]*x[3]*x[4]*x[6]-0.98*x[2]*x[3]*x[3]*x[5]*x[5]+0.89*x[2]*x[3]*x[3]*x[5]*x[6]+0.41*x[2]*x[3]*x[3]*x[6]*x[6]-0.15*x[2]*x[3]*x[4]*x[4]*x[4]-0.59*x[2]*x[3]*x[4]*x[4]*x[5]+0.33*x[2]*x[3]*x[4]*x[4]*x[6]-0.92*x[2]*x[3]*x[4]*x[5]*x[5]+0.47*x[2]*x[3]*x[4]*x[5]*x[6]-0.24*x[2]*x[3]*x[4]*x[6]*x[6]-0.47*x[2]*x[3]*x[5]*x[5]*x[5]-0.29*x[2]*x[3]*x[5]*x[5]*x[6]+0.81*x[2]*x[3]*x[5]*x[6]*x[6]-0.9*x[2]*x[3]*x[6]*x[6]*x[6]+0.49*x[2]*x[4]*x[4]*x[4]*x[4]-0.35*x[2]*x[4]*x[4]*x[4]*x[5]+0.06*x[2]*x[4]*x[4]*x[4]*x[6]-0.06*x[2]*x[4]*x[4]*x[5]*x[5]+0.68*x[2]*x[4]*x[4]*x[5]*x[6]-0.65*x[2]*x[4]*x[4]*x[6]*x[6]-0.18*x[2]*x[4]*x[5]*x[5]*x[5]-0.77*x[2]*x[4]*x[5]*x[5]*x[6]-0.46*x[2]*x[4]*x[5]*x[6]*x[6]-0.99*x[2]*x[4]*x[6]*x[6]*x[6]-0.89*x[2]*x[5]*x[5]*x[5]*x[5]-0.37*x[2]*x[5]*x[5]*x[5]*x[6]+0.18*x[2]*x[5]*x[5]*x[6]*x[6]+0.26*x[2]*x[5]*x[6]*x[6]*x[6]+0.55*x[2]*x[6]*x[6]*x[6]*x[6]+0.12*x[3]*x[3]*x[3]*x[3]*x[3]-0.88*x[3]*x[3]*x[3]*x[3]*x[4]+0.95*x[3]*x[3]*x[3]*x[3]*x[5]+0.26*x[3]*x[3]*x[3]*x[3]*x[6]-0.46*x[3]*x[3]*x[3]*x[4]*x[4]-0.51*x[3]*x[3]*x[3]*x[4]*x[5]+0.28*x[3]*x[3]*x[3]*x[4]*x[6]-0.34*x[3]*x[3]*x[3]*x[5]*x[5]+0.01*x[3]*x[3]*x[3]*x[5]*x[6]-0.7*x[3]*x[3]*x[3]*x[6]*x[6]+0.5*x[3]*x[3]*x[4]*x[4]*x[4]+0.27*x[3]*x[3]*x[4]*x[4]*x[5]-0.27*x[3]*x[3]*x[4]*x[4]*x[6]+0.8*x[3]*x[3]*x[4]*x[5]*x[5]-0.27*x[3]*x[3]*x[4]*x[5]*x[6]+0.09*x[3]*x[3]*x[4]*x[6]*x[6]-0.95*x[3]*x[3]*x[5]*x[5]*x[5]+0.11*x[3]*x[3]*x[5]*x[5]*x[6]+0.57*x[3]*x[3]*x[5]*x[6]*x[6]+0.56*x[3]*x[3]*x[6]*x[6]*x[6]+0.86*x[3]*x[4]*x[4]*x[4]*x[4]-0.04*x[3]*x[4]*x[4]*x[4]*x[5]-0.25*x[3]*x[4]*x[4]*x[4]*x[6]-0.96*x[3]*x[4]*x[4]*x[5]*x[5]+0.46*x[3]*x[4]*x[4]*x[5]*x[6]-0.19*x[3]*x[4]*x[4]*x[6]*x[6]-0.4*x[3]*x[4]*x[5]*x[5]*x[5]+0.72*x[3]*x[4]*x[5]*x[5]*x[6]-0.9*x[3]*x[4]*x[5]*x[6]*x[6]-0.01*x[3]*x[4]*x[6]*x[6]*x[6]+0.92*x[3]*x[5]*x[5]*x[5]*x[5]+x[3]*x[5]*x[5]*x[5]*x[6]-0.64*x[3]*x[5]*x[5]*x[6]*x[6]+0.12*x[3]*x[5]*x[6]*x[6]*x[6]-0.32*x[3]*x[6]*x[6]*x[6]*x[6]+0.26*x[4]*x[4]*x[4]*x[4]*x[4]+0.43*x[4]*x[4]*x[4]*x[4]*x[5]+0.81*x[4]*x[4]*x[4]*x[4]*x[6]+0.03*x[4]*x[4]*x[4]*x[5]*x[5]-0.93*x[4]*x[4]*x[4]*x[5]*x[6]+0.95*x[4]*x[4]*x[4]*x[6]*x[6]-0.02*x[4]*x[4]*x[5]*x[5]*x[5]+0.63*x[4]*x[4]*x[5]*x[5]*x[6]-0.3*x[4]*x[4]*x[5]*x[6]*x[6]+0.62*x[4]*x[4]*x[6]*x[6]*x[6]-0.04*x[4]*x[5]*x[5]*x[5]*x[5]-0.8*x[4]*x[5]*x[5]*x[5]*x[6]-0.63*x[4]*x[5]*x[5]*x[6]*x[6]+0.07*x[4]*x[5]*x[6]*x[6]*x[6]+0.47*x[4]*x[6]*x[6]*x[6]*x[6]+0.69*x[5]*x[5]*x[5]*x[5]*x[5]-0.78*x[5]*x[5]*x[5]*x[5]*x[6]-0.72*x[5]*x[5]*x[5]*x[6]*x[6]-0.59*x[5]*x[5]*x[6]*x[6]*x[6]+0.53*x[5]*x[6]*x[6]*x[6]*x[6]-0.17*x[6]*x[6]*x[6]*x[6]*x[6])+x[7] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[7])

m = m 		 # model get returned when including this script.