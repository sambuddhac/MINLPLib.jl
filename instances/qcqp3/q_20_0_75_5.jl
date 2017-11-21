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
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[1], 1.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.9667*x[1]*x[1]-0.328*x[1]*x[3]+0.185*x[1]*x[4]-0.1588*x[1]*x[5]-0.6343*x[1]*x[8]+0.7847*x[1]*x[9]+0.2423*x[1]*x[10]-0.357*x[1]*x[13]-0.2066*x[1]*x[16]-0.1247*x[1]*x[17]-0.9086*x[1]*x[18]-0.4053*x[1]*x[20]-0.6526*x[2]*x[2]-0.7753*x[2]*x[3]+0.6139*x[2]*x[4]+0.0606*x[2]*x[6]-0.4917*x[2]*x[8]+0.82*x[2]*x[9]-0.8487*x[2]*x[11]-0.4958*x[2]*x[13]-0.4949*x[2]*x[18]+0.7862*x[3]*x[3]+0.7091*x[3]*x[4]-0.6288*x[3]*x[5]+0.7083*x[3]*x[7]+0.4814*x[3]*x[8]+0.1703*x[3]*x[17]+0.511*x[3]*x[19]+0.9122*x[3]*x[20]+0.1772*x[4]*x[4]+0.6143*x[4]*x[5]+0.0351*x[4]*x[6]-0.6117*x[4]*x[9]+0.6903*x[4]*x[10]+0.8105*x[4]*x[11]+0.3583*x[4]*x[13]+0.296*x[4]*x[15]+0.6876*x[4]*x[16]-0.393*x[4]*x[19]-0.3819*x[4]*x[20]-0.3434*x[5]*x[5]+0.498*x[5]*x[7]+0.3344*x[5]*x[8]-0.6604*x[5]*x[9]+0.1448*x[5]*x[11]-0.2679*x[5]*x[13]-0.9699*x[5]*x[14]+0.4874*x[5]*x[20]-0.2642*x[6]*x[7]+0.0611*x[6]*x[8]+0.1584*x[6]*x[11]-0.3937*x[6]*x[12]+0.9029*x[6]*x[14]-0.3443*x[6]*x[16]+0.1484*x[6]*x[17]+0.4433*x[6]*x[18]+0.3218*x[6]*x[19]-0.2226*x[7]*x[9]+0.3904*x[7]*x[13]+0.6146*x[7]*x[15]-0.8245*x[7]*x[16]+0.8728*x[7]*x[17]-0.3059*x[8]*x[8]+0.8877*x[8]*x[9]+0.1024*x[8]*x[13]+0.1653*x[8]*x[16]-0.3166*x[8]*x[19]+0.13*x[8]*x[20]-0.4146*x[9]*x[9]-0.0127*x[9]*x[12]+0.4993*x[9]*x[17]+0.6925*x[9]*x[18]-0.0677*x[9]*x[20]-0.2175*x[10]*x[11]+0.828*x[10]*x[13]-0.1967*x[10]*x[14]+0.4211*x[10]*x[17]-0.2497*x[11]*x[15]+0.462*x[11]*x[19]-0.7244*x[11]*x[20]+0.5054*x[12]*x[12]-0.6719*x[12]*x[13]+0.2062*x[12]*x[14]+0.4854*x[12]*x[15]-0.8001*x[12]*x[17]+0.4813*x[12]*x[19]-0.2475*x[13]*x[14]+0.659*x[13]*x[17]-0.8335*x[13]*x[18]+0.2203*x[14]*x[14]+0.8903*x[14]*x[15]-0.7647*x[14]*x[16]+0.5881*x[14]*x[17]-0.3864*x[14]*x[18]-0.5257*x[14]*x[19]-0.5672*x[14]*x[20]-0.0589*x[15]*x[16]-0.1993*x[15]*x[18]-0.4537*x[15]*x[19]+0.7725*x[16]*x[16]+0.1709*x[16]*x[17]-0.0676*x[16]*x[19]-0.6013*x[17]*x[17]+0.8428*x[17]*x[19]-0.6915*x[17]*x[20]+0.8838*x[18]*x[18]+0.9223*x[18]*x[19]+0.5193*x[18]*x[20]+0.3182*x[19]*x[19]-0.221*x[20]*x[20]+0.6815*x[1]-0.0966*x[2]-0.1797*x[3]-0.7994*x[4]+0.6868*x[5]+0.4518*x[6]+0.8514*x[7]+0.6759*x[8]-0.6871*x[9]+0.6584*x[10]-0.2458*x[11]+0.6472*x[12]-0.3359*x[13]-0.863*x[14]+0.1233*x[15]+0.6612*x[16]+0.2013*x[17]+0.6938*x[18]-0.7642*x[19]+0.3951*x[20])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
