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
@NLconstraint(m, e1, -(1.9849*x[1]*x[18]-0.7422*x[1]*x[10]-1.6597*x[2]*x[10]-1.8801*x[2]*x[11]+0.2754*x[2]*x[13]-0.4247*x[2]*x[14]-0.5252*x[2]*x[17]+0.1853*x[3]*x[5]+0.776*x[3]*x[7]-0.3369*x[3]*x[8]+1.8904*x[3]*x[10]+1.2302*x[3]*x[11]-1.151*x[4]*x[8]+0.7605*x[4]*x[18]+1.5869*x[5]*x[7]+0.5772*x[5]*x[8]-0.7101*x[5]*x[10]-1.2917*x[5]*x[13]+0.1548*x[5]*x[14]-0.8453*x[5]*x[18]-0.979*x[6]*x[11]+0.931*x[6]*x[17]+0.4065*x[6]*x[18]-0.5738*x[6]*x[20]-0.1673*x[7]*x[7]-0.1795*x[7]*x[8]+1.3766*x[7]*x[12]-1.5423*x[7]*x[14]+1.9105*x[7]*x[15]+1.8247*x[8]*x[17]+0.2244*x[8]*x[18]-1.7621*x[9]*x[11]+1.7286*x[9]*x[16]+1.6268*x[9]*x[17]+1.5214*x[10]*x[10]+1.7239*x[11]*x[17]+0.9097*x[11]*x[19]-0.4086*x[11]*x[20]-1.2111*x[12]*x[18]-1.1484*x[12]*x[19]-0.8999*x[13]*x[14]+0.6846*x[14]*x[16]+0.7669*x[14]*x[18]+1.4336*x[15]*x[16]-1.0082*x[16]*x[16]+1.3278*x[16]*x[17]-1.9447*x[16]*x[19]+1.1612*x[16]*x[20]-0.7978*x[18]*x[19]-1.3413*x[18]*x[20]+1.4132*x[19]*x[20]+1.4015*x[20]*x[20]+0.4342*x[1]+0.2648*x[2]+0.3778*x[3]-0.8064*x[4]+0.6143*x[5]+0.0073*x[6]-0.385*x[7]-0.1292*x[8]+0.0795*x[9]-0.3467*x[10]+0.4255*x[11]+0.5645*x[12]-0.6424*x[13]+0.0119*x[14]-0.6729*x[15]+0.5847*x[16]+0.7055*x[17]+0.325*x[18]+0.2792*x[19]+0.0091*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.4656*x[1]*x[9]-1.5573*x[1]*x[14]+1.4011*x[1]*x[16]+0.4627*x[2]*x[6]-0.6004*x[2]*x[7]+1.4361*x[2]*x[8]+1.9414*x[2]*x[9]-0.2828*x[2]*x[10]-1.8128*x[2]*x[11]+0.6512*x[2]*x[12]-0.9379*x[2]*x[15]+1.4431*x[2]*x[17]+1.5009*x[3]*x[7]+1.4998*x[3]*x[11]+1.9059*x[3]*x[12]-0.7397*x[3]*x[14]-1.2632*x[3]*x[19]-1.5212*x[4]*x[7]-1.9292*x[4]*x[13]-1.8985*x[4]*x[14]-1.9679*x[4]*x[16]+0.3315*x[5]*x[5]-0.2592*x[5]*x[6]+1.548*x[5]*x[14]+0.8375*x[5]*x[15]+1.2862*x[6]*x[12]-1.5987*x[6]*x[17]+1.6614*x[6]*x[18]-0.3752*x[7]*x[11]+1.9885*x[7]*x[12]+1.3313*x[7]*x[16]+1.5711*x[8]*x[9]-1.112*x[8]*x[10]-0.594*x[8]*x[12]+0.2501*x[8]*x[15]+1.8038*x[8]*x[17]+0.8508*x[9]*x[15]+0.5099*x[9]*x[16]-0.0888*x[9]*x[18]+1.9758*x[10]*x[15]-0.6317*x[11]*x[17]+1.3531*x[11]*x[20]+1.9501*x[12]*x[14]+1.4304*x[12]*x[15]+0.2512*x[13]*x[14]-0.6316*x[13]*x[19]+1.5141*x[14]*x[14]+1.7806*x[14]*x[16]-1.9892*x[14]*x[17]+0.2468*x[14]*x[18]-1.3099*x[15]*x[17]+1.6535*x[15]*x[19]+0.3158*x[1]-0.8643*x[2]-0.8024*x[3]-0.6817*x[4]-0.9275*x[5]+0.5669*x[6]-0.8213*x[7]+0.3068*x[8]+0.9216*x[9]+0.8245*x[10]-0.387*x[11]+0.2332*x[12]-0.2114*x[13]-0.5222*x[14]-0.1285*x[15]+0.2733*x[16]-0.5025*x[17]-0.3684*x[18]-0.1281*x[19]+0.7043*x[20] <= 73.762)
@NLconstraint(m, e3, 1.7072*x[2]*x[3]-0.5981*x[2]*x[2]-0.1473*x[2]*x[5]-0.2227*x[2]*x[6]-0.7106*x[2]*x[10]+1.0185*x[3]*x[10]+1.1676*x[3]*x[13]-1.4461*x[3]*x[14]-0.5971*x[3]*x[15]+1.5812*x[3]*x[18]-1.8326*x[3]*x[19]+1.246*x[4]*x[7]+0.2409*x[4]*x[13]+0.6126*x[5]*x[7]+0.399*x[5]*x[8]-0.0226*x[5]*x[11]-1.5469*x[5]*x[15]-1.5069*x[5]*x[16]+0.5165*x[5]*x[17]+1.0804*x[6]*x[8]-1.9462*x[6]*x[15]+0.1036*x[6]*x[18]-0.9589*x[7]*x[12]+0.4197*x[7]*x[13]-0.375*x[7]*x[14]-0.0996*x[7]*x[15]+0.1926*x[7]*x[17]-1.5107*x[7]*x[18]-0.9088*x[7]*x[20]+1.025*x[8]*x[11]+0.0529*x[8]*x[15]-1.7584*x[8]*x[19]-1.3801*x[9]*x[9]+0.5746*x[9]*x[12]+1.8695*x[9]*x[13]-1.2551*x[10]*x[10]+0.2848*x[10]*x[12]-0.9121*x[10]*x[15]-0.9378*x[11]*x[11]+0.281*x[11]*x[14]+1.2343*x[11]*x[15]-1.4986*x[11]*x[18]+0.3209*x[12]*x[14]-0.4454*x[12]*x[15]-0.5305*x[12]*x[17]+0.7354*x[12]*x[18]+0.1581*x[12]*x[19]-1.9165*x[13]*x[20]+1.1686*x[15]*x[16]+1.5495*x[16]*x[17]-1.7831*x[18]*x[19]+1.4247*x[19]*x[19]+0.7428*x[2]+0.6871*x[3]-0.2774*x[4]+0.1942*x[5]-0.0372*x[6]+0.9036*x[7]+0.9891*x[8]+0.2623*x[9]+0.4058*x[10]+0.2905*x[11]+0.8707*x[12]-0.6906*x[13]+0.0175*x[14]+0.7644*x[15]+0.1747*x[16]-0.3217*x[17]-0.3756*x[18]-0.4446*x[19]-0.5191*x[20]+0.3384*x[1] <= 91.145)
@NLconstraint(m, e4, (-1.9403*x[1]*x[8])-1.8088*x[1]*x[9]-0.6291*x[1]*x[20]+1.5083*x[2]*x[3]+0.3386*x[3]*x[5]-1.3106*x[3]*x[6]-1.8787*x[3]*x[10]+1.4323*x[3]*x[12]+1.3703*x[3]*x[14]-1.6017*x[3]*x[16]-1.3468*x[3]*x[18]-1.4099*x[4]*x[4]+0.5034*x[4]*x[12]+0.9667*x[4]*x[13]-0.5901*x[4]*x[15]-0.0141*x[4]*x[17]+0.0405*x[4]*x[18]-1.5747*x[4]*x[19]+0.016*x[5]*x[9]+0.2231*x[5]*x[16]+1.7261*x[5]*x[17]+0.4541*x[5]*x[19]+1.0149*x[6]*x[8]-0.6133*x[6]*x[9]-1.9358*x[6]*x[11]-0.8654*x[7]*x[7]+0.0159*x[7]*x[9]+0.6992*x[7]*x[12]-0.5229*x[7]*x[14]+0.6745*x[7]*x[18]+0.13*x[7]*x[19]-1.9973*x[8]*x[10]-0.6898*x[8]*x[11]-1.3584*x[8]*x[18]-0.2815*x[8]*x[19]-1.0398*x[9]*x[11]+1.0142*x[9]*x[14]-0.8937*x[9]*x[16]+0.6486*x[9]*x[17]-1.1806*x[9]*x[19]-1.84*x[10]*x[14]+0.4329*x[10]*x[18]-0.5892*x[10]*x[19]+0.1897*x[12]*x[16]-0.5621*x[13]*x[14]+1.6224*x[13]*x[16]-1.5156*x[14]*x[14]-1.8253*x[14]*x[19]-1.8303*x[14]*x[20]+0.3758*x[16]*x[16]+0.2338*x[16]*x[17]-0.3835*x[17]*x[20]-0.723*x[1]+0.7367*x[2]-0.5166*x[3]-0.6852*x[4]+0.5099*x[5]-0.1606*x[6]-0.8887*x[7]+0.499*x[8]+0.6686*x[9]+0.4415*x[10]-0.2126*x[11]-0.8338*x[12]-0.8861*x[13]-0.9484*x[14]-0.2048*x[15]-0.1835*x[16]-0.2758*x[17]-0.5844*x[18]+0.3621*x[19]+0.6829*x[20] <= 20.533)
@NLconstraint(m, e5, 0.3411*x[1]*x[4]-1.4331*x[1]*x[3]-1.7804*x[1]*x[10]+1.7805*x[1]*x[19]-1.0934*x[2]*x[3]+0.4698*x[2]*x[7]+0.3697*x[2]*x[11]+0.1984*x[2]*x[12]+1.5148*x[2]*x[17]-0.0071*x[2]*x[18]-1.2627*x[3]*x[4]+0.5535*x[3]*x[9]-0.3452*x[3]*x[10]+1.0055*x[3]*x[16]-0.3991*x[3]*x[18]+0.1031*x[4]*x[7]-0.4389*x[4]*x[14]+0.7654*x[4]*x[19]-0.6393*x[4]*x[20]-1.7604*x[5]*x[9]+1.5334*x[5]*x[11]+1.5389*x[5]*x[14]+1.3717*x[6]*x[7]-0.7362*x[6]*x[14]+1.9619*x[6]*x[18]+0.1329*x[7]*x[13]+1.8346*x[7]*x[15]-0.8949*x[7]*x[17]+1.6054*x[8]*x[11]+0.3839*x[8]*x[13]-1.9103*x[8]*x[19]-1.0653*x[9]*x[10]+1.8566*x[9]*x[14]+1.7424*x[10]*x[16]-0.9062*x[10]*x[17]+0.8717*x[10]*x[18]-0.5744*x[11]*x[11]-1.9596*x[11]*x[12]+1.4138*x[11]*x[14]+1.0989*x[11]*x[17]+1.8265*x[11]*x[19]-0.2944*x[12]*x[13]-1.9992*x[12]*x[17]+1.146*x[12]*x[18]-0.2823*x[13]*x[16]-1.309*x[13]*x[18]-0.4237*x[14]*x[15]-1.6428*x[14]*x[16]+0.9312*x[14]*x[19]-0.7306*x[16]*x[17]+1.9334*x[16]*x[18]+0.1197*x[16]*x[19]+0.0372*x[1]-0.6933*x[2]+0.9793*x[3]-0.2495*x[4]-0.865*x[5]-0.5344*x[6]+0.3443*x[7]+0.0946*x[8]+0.99*x[9]+0.1293*x[10]-0.1439*x[11]-0.1023*x[12]+0.4527*x[13]-0.9526*x[14]-0.9404*x[15]-0.4876*x[16]-0.4892*x[17]-0.8809*x[18]+0.5844*x[19]-0.5909*x[20] <= 92.159)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
