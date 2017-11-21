using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, x[x_Idx])
setlowerbound(x[1], 1.0)
setupperbound(x[1], 2.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(2.5* (x[1])^2-500*x[1]+1.666666666* (x[1])^3+1.25* (x[1])^4+ (x[1])^5+0.8333333* (x[1])^6+0.714285714* (x[1])^7+0.625* (x[1])^8+0.555555555* (x[1])^9+ (x[1])^10-43.6363636* (x[1])^11+0.41666666* (x[1])^12+0.384615384* (x[1])^13+0.357142857* (x[1])^14+0.3333333* (x[1])^15+0.3125* (x[1])^16+0.294117647* (x[1])^17+0.277777777* (x[1])^18+0.263157894* (x[1])^19+0.25* (x[1])^20+0.238095238* (x[1])^21+0.227272727* (x[1])^22+0.217391304* (x[1])^23+0.208333333* (x[1])^24+0.2* (x[1])^25+0.192307692* (x[1])^26+0.185185185* (x[1])^27+0.178571428* (x[1])^28+0.344827586* (x[1])^29+0.6666666* (x[1])^30-15.48387097* (x[1])^31+0.15625* (x[1])^32+0.1515151* (x[1])^33+0.14705882* (x[1])^34+0.14285712* (x[1])^35+0.138888888* (x[1])^36+0.135135135* (x[1])^37+0.131578947* (x[1])^38+0.128205128* (x[1])^39+0.125* (x[1])^40+0.121951219* (x[1])^41+0.119047619* (x[1])^42+0.116279069* (x[1])^43+0.113636363* (x[1])^44+0.1111111* (x[1])^45+0.108695652* (x[1])^46+0.106382978* (x[1])^47+0.208333333* (x[1])^48+0.408163265* (x[1])^49+0.8* (x[1])^50)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
