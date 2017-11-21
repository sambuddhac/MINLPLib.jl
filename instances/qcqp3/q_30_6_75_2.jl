using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[28], 0.0)
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
setupperbound(x[21], 1.0)
setupperbound(x[22], 1.0)
setupperbound(x[23], 1.0)
setupperbound(x[24], 1.0)
setupperbound(x[25], 1.0)
setupperbound(x[26], 1.0)
setupperbound(x[27], 1.0)
setupperbound(x[28], 1.0)
setupperbound(x[29], 1.0)
setupperbound(x[30], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.6846*x[1]*x[1]+0.9334*x[1]*x[2]-0.6254*x[1]*x[3]+0.9348*x[1]*x[5]-0.6663*x[1]*x[6]-0.6413*x[1]*x[8]-0.2235*x[1]*x[10]+0.8645*x[1]*x[11]-0.6643*x[1]*x[12]-0.1999*x[1]*x[13]-0.7258*x[1]*x[14]-0.7233*x[1]*x[15]+0.7456*x[1]*x[16]+0.4285*x[1]*x[17]-0.7403*x[1]*x[18]-0.0219*x[1]*x[21]+0.3124*x[1]*x[24]-0.4897*x[1]*x[25]-0.3725*x[1]*x[26]-0.0549*x[1]*x[29]-0.6272*x[2]*x[2]-0.5046*x[2]*x[3]-0.9397*x[2]*x[4]+0.2058*x[2]*x[6]+0.9399*x[2]*x[7]+0.361*x[2]*x[8]+0.017*x[2]*x[17]+0.6321*x[2]*x[18]-0.0924*x[2]*x[19]+0.5396*x[2]*x[22]-0.8179*x[2]*x[24]+0.5916*x[2]*x[25]-0.174*x[2]*x[26]-0.7632*x[2]*x[29]+0.4464*x[2]*x[30]+0.3816*x[3]*x[3]+0.8258*x[3]*x[5]+0.6814*x[3]*x[6]+0.5022*x[3]*x[7]+0.3228*x[3]*x[9]+0.1633*x[3]*x[10]+0.9017*x[3]*x[12]+0.3344*x[3]*x[13]+0.0707*x[3]*x[14]+0.6542*x[3]*x[15]-0.0503*x[3]*x[19]+0.4622*x[3]*x[22]+0.0659*x[3]*x[23]+0.1075*x[3]*x[24]+0.6404*x[3]*x[25]-0.9382*x[3]*x[27]+0.6695*x[3]*x[28]+0.4683*x[3]*x[30]+0.2586*x[4]*x[4]-0.8063*x[4]*x[5]-0.5563*x[4]*x[7]-0.1988*x[4]*x[9]+0.6008*x[4]*x[11]-0.9814*x[4]*x[12]+0.0504*x[4]*x[13]+0.6157*x[4]*x[17]-0.9827*x[4]*x[19]-0.1651*x[4]*x[20]+0.0633*x[4]*x[22]+0.6162*x[4]*x[26]-0.3617*x[4]*x[28]-0.5469*x[4]*x[30]-0.7401*x[5]*x[5]+0.1212*x[5]*x[10]-0.4567*x[5]*x[12]-0.949*x[5]*x[18]-0.7009*x[5]*x[23]-0.8673*x[5]*x[24]-0.8753*x[5]*x[30]-0.0084*x[6]*x[9]+0.9609*x[6]*x[10]+0.1484*x[6]*x[15]+0.8639*x[6]*x[18]-0.8969*x[6]*x[26]-0.1669*x[6]*x[27]+0.9644*x[6]*x[29]+0.502*x[6]*x[30]-0.4704*x[7]*x[7]-0.806*x[7]*x[10]-0.7132*x[7]*x[12]-0.6625*x[7]*x[13]+0.2461*x[7]*x[14]+0.6212*x[7]*x[17]+0.1439*x[7]*x[19]+0.1524*x[7]*x[20]-0.0034*x[7]*x[23]+0.7722*x[7]*x[24]+0.4273*x[7]*x[25]+0.2621*x[7]*x[26]+0.1019*x[7]*x[27]-0.8839*x[7]*x[28]-0.6363*x[7]*x[30]-0.5308*x[8]*x[8]+0.0694*x[8]*x[10]-0.1111*x[8]*x[12]+0.6837*x[8]*x[13]+0.2329*x[8]*x[14]-0.1403*x[8]*x[24]-0.5406*x[8]*x[26]-0.2758*x[9]*x[9]-0.271*x[9]*x[13]+0.996*x[9]*x[17]+0.4212*x[9]*x[18]+0.3303*x[9]*x[21]+0.966*x[9]*x[23]-0.3034*x[9]*x[25]-0.2663*x[9]*x[26]+0.1311*x[9]*x[27]+0.7783*x[9]*x[29]+0.8329*x[9]*x[30]-0.1869*x[10]*x[11]-0.7059*x[10]*x[12]+0.1605*x[10]*x[14]+0.6545*x[10]*x[15]+0.4327*x[10]*x[18]-0.3022*x[10]*x[20]+0.2808*x[10]*x[24]-0.7054*x[10]*x[25]-0.9825*x[10]*x[30]-0.8996*x[11]*x[11]+0.3813*x[11]*x[12]-0.0663*x[11]*x[18]+0.5773*x[11]*x[19]+0.7552*x[11]*x[20]-0.1506*x[11]*x[21]-0.6707*x[11]*x[22]+0.3395*x[11]*x[23]+0.5829*x[11]*x[24]-0.9721*x[11]*x[25]+0.0334*x[11]*x[26]+0.8749*x[11]*x[27]-0.1543*x[11]*x[29]+0.9454*x[11]*x[30]+0.1531*x[12]*x[12]+0.1297*x[12]*x[16]-0.3901*x[12]*x[18]-0.3874*x[12]*x[19]+0.0409*x[12]*x[20]+0.636*x[12]*x[21]-0.0122*x[12]*x[23]-0.8205*x[12]*x[26]+0.1967*x[12]*x[29]-0.2602*x[12]*x[30]-0.4015*x[13]*x[13]+0.4927*x[13]*x[14]+0.6012*x[13]*x[15]-0.8411*x[13]*x[16]-0.3734*x[13]*x[17]+0.7734*x[13]*x[19]+0.5113*x[13]*x[21]+0.8528*x[13]*x[22]-0.4535*x[13]*x[23]+0.2824*x[13]*x[25]+0.9772*x[13]*x[27]-0.2552*x[13]*x[29]+0.6695*x[13]*x[30]-0.7101*x[14]*x[14]+0.4476*x[14]*x[19]+0.5876*x[14]*x[20]-0.6839*x[14]*x[24]-0.8763*x[14]*x[26]+0.7053*x[14]*x[27]-0.0968*x[14]*x[30]-0.1453*x[15]*x[15]-0.8017*x[15]*x[16]+0.2212*x[15]*x[18]+0.6663*x[15]*x[19]-0.3547*x[15]*x[20]+0.8824*x[15]*x[22]-0.0574*x[15]*x[23]-0.9518*x[15]*x[26]+0.6319*x[15]*x[27]-0.503*x[15]*x[28]-0.8189*x[15]*x[29]+0.5532*x[15]*x[30]-0.8619*x[16]*x[16]-0.0524*x[16]*x[17]-0.4094*x[16]*x[20]-0.7088*x[16]*x[22]-0.2809*x[16]*x[23]+0.5093*x[16]*x[24]-0.5647*x[16]*x[27]-0.5639*x[16]*x[28]-0.0762*x[16]*x[30]+0.8391*x[17]*x[17]+0.5634*x[17]*x[20]+0.4504*x[17]*x[24]+0.4463*x[17]*x[27]-0.0006*x[17]*x[29]-0.8429*x[17]*x[30]+0.8194*x[18]*x[22]+0.0096*x[18]*x[23]+0.9475*x[18]*x[24]+0.3195*x[18]*x[30]-0.9747*x[19]*x[21]-0.2949*x[19]*x[23]+0.2336*x[19]*x[27]+0.4817*x[19]*x[29]+0.5734*x[19]*x[30]-0.5373*x[20]*x[20]+0.7049*x[20]*x[22]-0.7216*x[20]*x[25]-0.04*x[20]*x[28]+0.1976*x[20]*x[29]+0.6297*x[21]*x[22]+0.9984*x[21]*x[28]-0.1875*x[21]*x[29]-0.8396*x[21]*x[30]+0.4083*x[22]*x[22]-0.8136*x[22]*x[23]+0.8608*x[22]*x[24]+0.3651*x[22]*x[25]-0.4698*x[22]*x[28]-0.9407*x[23]*x[23]-0.4487*x[23]*x[24]-0.2008*x[23]*x[25]-0.183*x[23]*x[26]+0.5386*x[23]*x[30]+0.085*x[24]*x[25]+0.4636*x[24]*x[27]+0.8798*x[24]*x[30]+0.1846*x[25]*x[28]-0.865*x[25]*x[30]-0.4645*x[26]*x[26]-0.7063*x[26]*x[27]-0.7823*x[26]*x[29]-0.5641*x[26]*x[30]+0.7346*x[27]*x[29]+0.1335*x[27]*x[30]+0.0123*x[28]*x[28]-0.0584*x[28]*x[29]-0.0854*x[28]*x[30]-0.4365*x[29]*x[29]-0.8309*x[29]*x[30]-0.3884*x[30]*x[30]-0.9136*x[1]-0.2656*x[2]-0.2809*x[3]+0.7583*x[4]-0.7486*x[5]-0.3012*x[6]-0.5737*x[7]-0.1023*x[8]+0.8905*x[9]+0.4395*x[10]+0.7836*x[11]+0.1104*x[12]+0.1256*x[13]+0.3862*x[14]+0.4052*x[15]-0.2286*x[16]-0.1094*x[17]+0.9255*x[18]+0.2511*x[19]+0.2186*x[20]-0.9741*x[21]-0.4509*x[22]+0.1805*x[23]-0.2683*x[24]+0.6358*x[25]-0.1496*x[26]-0.3361*x[27]+0.6589*x[28]-0.6188*x[29]+0.3725*x[30])+x[31] == 0.0)
@NLconstraint(m, e2, 0.2176*x[1]*x[1]+0.4455*x[1]*x[3]-0.7685*x[1]*x[4]+0.113*x[1]*x[6]+0.7899*x[1]*x[8]-0.1457*x[1]*x[9]+0.2776*x[1]*x[10]-0.9375*x[1]*x[11]-0.9581*x[1]*x[12]+0.8377*x[1]*x[13]-0.545*x[1]*x[14]-0.0961*x[1]*x[15]-0.7688*x[1]*x[16]-0.285*x[1]*x[18]-0.702*x[1]*x[19]-0.2304*x[1]*x[20]-0.044*x[1]*x[21]-0.3021*x[1]*x[22]-0.488*x[1]*x[23]+0.4032*x[1]*x[24]+0.3024*x[1]*x[25]-0.6762*x[1]*x[26]+0.0188*x[1]*x[28]+0.8075*x[1]*x[29]+0.7659*x[1]*x[30]+0.1478*x[2]*x[2]+0.3169*x[2]*x[5]+0.435*x[2]*x[9]-0.4588*x[2]*x[12]+0.3038*x[2]*x[13]+0.6569*x[2]*x[14]-0.7166*x[2]*x[15]-0.8306*x[2]*x[20]-0.2722*x[2]*x[21]-0.8239*x[2]*x[22]+0.1461*x[2]*x[23]+0.2314*x[2]*x[25]-0.2461*x[2]*x[28]+0.2606*x[2]*x[29]+0.7304*x[2]*x[30]-0.8823*x[3]*x[3]-0.802*x[3]*x[6]+0.936*x[3]*x[7]+0.805*x[3]*x[9]-0.4283*x[3]*x[11]-0.9095*x[3]*x[14]+0.9922*x[3]*x[15]+0.0808*x[3]*x[16]-0.5678*x[3]*x[17]+0.3035*x[3]*x[18]-0.9718*x[3]*x[20]-0.5353*x[3]*x[21]-0.1919*x[3]*x[22]+0.0127*x[3]*x[23]-0.5702*x[3]*x[27]+0.6812*x[3]*x[28]+0.609*x[3]*x[29]+0.0729*x[3]*x[30]-0.4155*x[4]*x[4]+0.9038*x[4]*x[8]-0.604*x[4]*x[10]-0.8751*x[4]*x[11]-0.2716*x[4]*x[12]-0.0438*x[4]*x[14]-0.3023*x[4]*x[15]+0.6568*x[4]*x[16]+0.171*x[4]*x[18]-0.4814*x[4]*x[19]+0.9998*x[4]*x[20]+0.0097*x[4]*x[26]+0.1656*x[4]*x[29]+0.7843*x[4]*x[30]-0.4655*x[5]*x[5]-0.3294*x[5]*x[6]+0.1955*x[5]*x[11]-0.7698*x[5]*x[13]+0.3101*x[5]*x[15]+0.8013*x[5]*x[16]+0.8409*x[5]*x[17]-0.0683*x[5]*x[22]+0.0873*x[5]*x[24]-0.4183*x[5]*x[29]-0.758*x[5]*x[30]+0.2455*x[6]*x[13]-0.2314*x[6]*x[14]-0.1136*x[6]*x[17]-0.0194*x[6]*x[18]-0.1579*x[6]*x[20]-0.3598*x[6]*x[22]-0.5494*x[6]*x[23]-0.8974*x[6]*x[25]+0.0272*x[6]*x[30]-0.0187*x[7]*x[7]-0.6505*x[7]*x[8]+0.2734*x[7]*x[10]+0.5031*x[7]*x[12]-0.1449*x[7]*x[14]-0.5971*x[7]*x[15]+0.4275*x[7]*x[20]+0.7374*x[7]*x[21]+0.4339*x[7]*x[23]+0.8101*x[7]*x[27]-0.802*x[7]*x[30]+0.9938*x[8]*x[8]+0.2243*x[8]*x[10]+0.3037*x[8]*x[11]+0.1215*x[8]*x[13]-0.9992*x[8]*x[16]-0.7556*x[8]*x[18]-0.103*x[8]*x[19]-0.1851*x[8]*x[21]-0.9536*x[8]*x[22]-0.0535*x[8]*x[24]+0.4686*x[8]*x[25]-0.3083*x[8]*x[26]+0.5459*x[8]*x[27]-0.5904*x[8]*x[30]+0.5982*x[9]*x[9]+0.074*x[9]*x[10]-0.9553*x[9]*x[11]+0.0271*x[9]*x[12]+0.8259*x[9]*x[15]+0.8814*x[9]*x[17]-0.1356*x[9]*x[20]-0.8887*x[9]*x[22]+0.899*x[9]*x[24]+0.9348*x[9]*x[27]-0.5395*x[9]*x[30]-0.6986*x[10]*x[10]-0.1108*x[10]*x[11]-0.8792*x[10]*x[14]-0.1001*x[10]*x[21]-0.6118*x[10]*x[24]-0.8701*x[10]*x[28]-0.4194*x[10]*x[29]-0.4248*x[10]*x[30]+0.8281*x[11]*x[11]+0.4013*x[11]*x[12]-0.4361*x[11]*x[14]+0.8252*x[11]*x[15]-0.8113*x[11]*x[17]-0.6734*x[11]*x[18]-0.3699*x[11]*x[19]-0.1898*x[11]*x[24]-0.4625*x[11]*x[26]+0.1536*x[11]*x[30]-0.1386*x[12]*x[16]-0.2346*x[12]*x[19]-0.2813*x[12]*x[21]+0.1221*x[12]*x[23]+0.4302*x[12]*x[25]-0.8572*x[12]*x[28]-0.8944*x[13]*x[13]-0.0239*x[13]*x[14]+0.8668*x[13]*x[16]+0.3528*x[13]*x[20]+0.7102*x[13]*x[21]-0.6246*x[13]*x[22]+0.4816*x[13]*x[24]+0.5934*x[13]*x[25]+0.191*x[13]*x[30]-0.808*x[14]*x[14]-0.4111*x[14]*x[15]-0.2151*x[14]*x[18]-0.9108*x[14]*x[19]+0.1382*x[14]*x[20]-0.8429*x[14]*x[22]+0.7363*x[14]*x[23]+0.4576*x[14]*x[24]-0.4074*x[14]*x[29]-0.4544*x[15]*x[15]-0.1525*x[15]*x[21]+0.8007*x[15]*x[22]+0.4716*x[15]*x[24]-0.902*x[15]*x[27]-0.0568*x[15]*x[30]-0.022*x[16]*x[18]-0.286*x[16]*x[19]-0.8568*x[16]*x[20]+0.222*x[16]*x[23]-0.7556*x[16]*x[24]-0.6305*x[16]*x[26]-0.9198*x[16]*x[29]+0.9407*x[16]*x[30]+0.2738*x[17]*x[17]+0.1161*x[17]*x[18]+0.805*x[17]*x[21]-0.7546*x[17]*x[23]+0.9338*x[17]*x[25]+0.1979*x[17]*x[27]+0.9418*x[17]*x[28]+0.9065*x[18]*x[18]+0.2479*x[18]*x[19]+0.4113*x[18]*x[21]-0.8099*x[18]*x[22]+0.5997*x[18]*x[24]+0.3113*x[18]*x[25]-0.1636*x[19]*x[19]+0.8957*x[19]*x[20]-0.9233*x[19]*x[21]-0.1486*x[19]*x[22]-0.5901*x[19]*x[24]+0.8338*x[19]*x[25]-0.9892*x[19]*x[28]-0.3994*x[20]*x[24]+0.5486*x[20]*x[25]+0.0309*x[20]*x[26]+0.9317*x[20]*x[27]+0.2629*x[20]*x[28]+0.117*x[20]*x[29]-0.0517*x[20]*x[30]-0.3685*x[21]*x[24]-0.1301*x[21]*x[29]+0.572*x[21]*x[30]-0.9826*x[22]*x[22]-0.2159*x[22]*x[23]-0.2469*x[22]*x[24]-0.1331*x[22]*x[25]-0.6728*x[22]*x[26]-0.3988*x[22]*x[27]-0.5742*x[23]*x[23]-0.3814*x[23]*x[26]-0.9603*x[23]*x[27]+0.8151*x[23]*x[30]+0.9564*x[24]*x[24]+0.3892*x[24]*x[26]+0.9919*x[24]*x[28]+0.5012*x[24]*x[30]+0.5256*x[25]*x[25]-0.7466*x[25]*x[26]+0.6114*x[25]*x[28]-0.0986*x[25]*x[30]-0.6401*x[26]*x[26]+0.5109*x[26]*x[27]-0.3975*x[26]*x[28]+0.9224*x[26]*x[30]-0.1887*x[27]*x[29]+0.3296*x[27]*x[30]-0.6068*x[28]*x[29]+0.3322*x[30]*x[30]+0.3751*x[1]+0.9182*x[2]+0.7991*x[3]-0.7129*x[4]+0.0514*x[5]-0.0496*x[6]+0.1102*x[7]-0.2869*x[8]-0.9206*x[9]+0.4177*x[10]+0.2739*x[11]+0.2746*x[12]+0.1927*x[13]+0.5994*x[14]+0.4533*x[15]-0.2373*x[16]-0.8223*x[17]+0.7372*x[18]-0.2406*x[19]-0.0916*x[20]+0.2571*x[21]+0.0591*x[22]+0.7816*x[23]+0.1587*x[24]+0.2114*x[25]+0.2091*x[26]-0.8053*x[27]+0.8965*x[28]+0.761*x[29]-0.1055*x[30] <= 58.439)
@NLconstraint(m, e3, (-0.9628*x[1]*x[1])-0.1807*x[1]*x[4]+0.5259*x[1]*x[5]+0.0929*x[1]*x[6]+0.9494*x[1]*x[9]-0.0761*x[1]*x[10]+0.5958*x[1]*x[11]+0.5911*x[1]*x[12]-0.7475*x[1]*x[13]+0.0727*x[1]*x[14]+0.6228*x[1]*x[15]+0.4411*x[1]*x[16]-0.9254*x[1]*x[17]-0.0408*x[1]*x[18]-0.4167*x[1]*x[21]-0.0542*x[1]*x[22]+0.5535*x[1]*x[24]+0.9732*x[1]*x[26]+0.134*x[1]*x[27]+0.7583*x[1]*x[28]-0.0997*x[1]*x[29]+0.7644*x[1]*x[30]-0.9054*x[2]*x[2]+0.8093*x[2]*x[3]-0.2236*x[2]*x[5]-0.7726*x[2]*x[6]-0.9654*x[2]*x[9]+0.6256*x[2]*x[14]+0.2652*x[2]*x[15]-0.1934*x[2]*x[18]-0.4438*x[2]*x[19]+0.6454*x[2]*x[20]+0.3046*x[2]*x[22]-0.3753*x[2]*x[26]+0.5854*x[2]*x[28]+0.3157*x[2]*x[30]-0.6871*x[3]*x[6]-0.9081*x[3]*x[8]+0.8298*x[3]*x[9]-0.0225*x[3]*x[12]-0.9964*x[3]*x[15]+0.6129*x[3]*x[16]-0.7879*x[3]*x[17]+0.4638*x[3]*x[18]+0.3171*x[3]*x[19]-0.1587*x[3]*x[22]+0.9851*x[3]*x[27]+0.9417*x[3]*x[30]-0.9307*x[4]*x[5]-0.7287*x[4]*x[6]+0.9189*x[4]*x[8]+0.7652*x[4]*x[11]-0.3855*x[4]*x[12]-0.438*x[4]*x[13]+0.2844*x[4]*x[18]-0.8319*x[4]*x[20]-0.7533*x[4]*x[22]+0.3408*x[4]*x[27]+0.3324*x[4]*x[28]+0.1421*x[4]*x[30]+0.0069*x[5]*x[5]+0.0519*x[5]*x[6]-0.5176*x[5]*x[8]-0.0887*x[5]*x[13]+0.505*x[5]*x[14]-0.2367*x[5]*x[15]+0.537*x[5]*x[16]-0.2031*x[5]*x[17]-0.065*x[5]*x[18]-0.5557*x[5]*x[19]+0.6699*x[5]*x[20]-0.5075*x[5]*x[21]+0.2491*x[5]*x[22]-0.9693*x[5]*x[23]+0.6006*x[5]*x[24]-0.6685*x[5]*x[25]-0.9098*x[5]*x[29]+0.0293*x[5]*x[30]+0.4692*x[6]*x[6]-0.534*x[6]*x[9]+0.2257*x[6]*x[15]+0.1063*x[6]*x[16]-0.4401*x[6]*x[17]+0.4478*x[6]*x[18]-0.4159*x[6]*x[19]-0.9193*x[6]*x[25]-0.7436*x[6]*x[30]+0.2203*x[7]*x[7]+0.8192*x[7]*x[8]-0.4547*x[7]*x[9]-0.6656*x[7]*x[12]-0.5293*x[7]*x[14]+0.3135*x[7]*x[17]+0.7765*x[7]*x[19]+0.0526*x[7]*x[23]-0.3414*x[7]*x[25]+0.7681*x[7]*x[26]-0.9527*x[7]*x[30]+0.3339*x[8]*x[8]+0.926*x[8]*x[11]+0.6285*x[8]*x[12]-0.1234*x[8]*x[13]+0.8456*x[8]*x[14]-0.6399*x[8]*x[15]-0.5893*x[8]*x[18]-0.3475*x[8]*x[20]+0.1948*x[8]*x[21]-0.7998*x[8]*x[22]-0.1667*x[8]*x[24]-0.8085*x[8]*x[25]+0.4686*x[8]*x[27]+0.234*x[8]*x[28]+0.303*x[8]*x[29]-0.0644*x[9]*x[11]+0.6208*x[9]*x[12]+0.2065*x[9]*x[13]+0.3819*x[9]*x[14]-0.3439*x[9]*x[15]+0.0265*x[9]*x[16]+0.2796*x[9]*x[17]-0.9591*x[9]*x[18]-0.7979*x[9]*x[22]-0.4688*x[9]*x[23]+0.7559*x[9]*x[25]-0.832*x[9]*x[27]+0.7425*x[9]*x[28]+0.8678*x[10]*x[12]-0.4048*x[10]*x[13]+0.6371*x[10]*x[14]-0.2944*x[10]*x[15]-0.6178*x[10]*x[17]+0.3568*x[10]*x[20]-0.1999*x[10]*x[22]-0.5244*x[10]*x[23]+0.4673*x[10]*x[24]-0.9547*x[10]*x[25]+0.8005*x[10]*x[27]-0.0392*x[10]*x[28]-0.5612*x[10]*x[29]+0.184*x[10]*x[30]-0.9276*x[11]*x[11]+0.4032*x[11]*x[12]+0.5001*x[11]*x[13]+0.9891*x[11]*x[14]-0.6274*x[11]*x[15]-0.9296*x[11]*x[16]-0.2556*x[11]*x[17]-0.673*x[11]*x[18]+0.6934*x[11]*x[19]-0.5011*x[11]*x[21]+0.8031*x[11]*x[22]-0.7708*x[11]*x[25]+0.4034*x[11]*x[27]-0.5956*x[11]*x[30]-0.9819*x[12]*x[12]+0.5453*x[12]*x[14]-0.8814*x[12]*x[18]+0.6073*x[12]*x[21]-0.579*x[12]*x[24]-0.3412*x[12]*x[25]-0.5654*x[12]*x[26]+0.4835*x[12]*x[27]+0.281*x[12]*x[28]+0.2617*x[13]*x[13]+0.6342*x[13]*x[18]+0.6766*x[13]*x[19]-0.4103*x[13]*x[20]+0.2143*x[13]*x[22]-0.7927*x[13]*x[24]-0.2862*x[14]*x[14]-0.4738*x[14]*x[17]-0.1791*x[14]*x[18]-0.7984*x[14]*x[22]-0.677*x[14]*x[25]+0.4559*x[14]*x[28]+0.962*x[14]*x[30]-0.3406*x[15]*x[15]+0.367*x[15]*x[16]+0.8352*x[15]*x[19]+0.5493*x[15]*x[20]-0.89*x[15]*x[23]-0.6474*x[15]*x[24]+0.5031*x[15]*x[29]-0.4546*x[16]*x[16]-0.3308*x[16]*x[17]+0.4766*x[16]*x[18]+0.6998*x[16]*x[20]+0.718*x[16]*x[24]+0.3503*x[16]*x[25]+0.016*x[16]*x[26]+0.4784*x[16]*x[27]+0.7638*x[16]*x[28]-0.1308*x[16]*x[29]-0.7673*x[16]*x[30]-0.2202*x[17]*x[17]-0.887*x[17]*x[22]-0.5057*x[17]*x[23]+0.8278*x[17]*x[24]+0.2213*x[17]*x[27]+0.5807*x[17]*x[28]-0.7942*x[17]*x[30]+0.1869*x[18]*x[18]-0.2705*x[18]*x[21]-0.0034*x[18]*x[24]-0.7362*x[18]*x[25]-0.0029*x[18]*x[26]+0.3473*x[18]*x[27]-0.2757*x[18]*x[28]+0.718*x[18]*x[29]+0.7158*x[19]*x[19]-0.2389*x[19]*x[22]+0.2344*x[19]*x[25]-0.7464*x[20]*x[20]+0.2897*x[20]*x[25]+0.4408*x[20]*x[27]+0.3929*x[20]*x[30]+0.8672*x[21]*x[21]-0.372*x[21]*x[29]+0.5234*x[21]*x[30]-0.016*x[22]*x[24]+0.8508*x[22]*x[25]+0.7222*x[22]*x[26]+0.2099*x[22]*x[27]+0.2753*x[22]*x[29]-0.0376*x[22]*x[30]-0.2478*x[23]*x[26]+0.3003*x[23]*x[27]+0.8704*x[23]*x[29]+0.5421*x[23]*x[30]-0.7168*x[24]*x[24]-0.5864*x[24]*x[28]-0.872*x[24]*x[29]-0.6573*x[24]*x[30]+0.7287*x[25]*x[25]+0.6232*x[25]*x[29]+0.3768*x[25]*x[30]-0.3045*x[27]*x[27]-0.8243*x[27]*x[30]-0.9695*x[28]*x[28]+0.0245*x[30]*x[30]+0.7578*x[1]+0.136*x[2]-0.9606*x[3]-0.8254*x[4]-0.8313*x[5]+0.5186*x[6]+0.9094*x[7]-0.4794*x[8]+0.1516*x[9]+0.7775*x[10]+0.136*x[11]+0.0367*x[12]-0.6688*x[13]-0.3935*x[14]+0.4194*x[15]-0.4538*x[16]+0.075*x[17]-0.3988*x[18]-0.3406*x[19]-0.5948*x[20]-0.3929*x[21]+0.6553*x[22]-0.8243*x[23]+0.8822*x[24]+0.1895*x[25]-0.6292*x[26]-0.3081*x[27]+0.9673*x[28]-0.9131*x[29]-0.0957*x[30] <= 70.278)
@NLconstraint(m, e4, 0.7654*x[1]*x[1]-0.7032*x[1]*x[2]+0.9756*x[1]*x[3]+0.2781*x[1]*x[4]+0.811*x[1]*x[5]-0.0389*x[1]*x[6]-0.7396*x[1]*x[8]+0.8305*x[1]*x[9]+0.0989*x[1]*x[10]+0.4188*x[1]*x[11]+0.747*x[1]*x[12]-0.1078*x[1]*x[14]+0.4753*x[1]*x[15]+0.6449*x[1]*x[16]-0.1086*x[1]*x[18]-0.6278*x[1]*x[19]-0.4633*x[1]*x[21]+0.591*x[1]*x[23]-0.543*x[1]*x[27]-0.9792*x[1]*x[28]+0.0437*x[1]*x[30]-0.1713*x[2]*x[3]-0.4294*x[2]*x[8]-0.4316*x[2]*x[9]+0.8657*x[2]*x[12]+0.8975*x[2]*x[13]+0.3276*x[2]*x[15]+0.7106*x[2]*x[16]-0.5273*x[2]*x[18]-0.3441*x[2]*x[21]+0.7902*x[2]*x[23]+0.1017*x[2]*x[24]-0.7156*x[2]*x[26]-0.7493*x[3]*x[4]+0.3125*x[3]*x[9]+0.9622*x[3]*x[10]+0.5407*x[3]*x[12]+0.8247*x[3]*x[16]+0.1749*x[3]*x[17]+0.9047*x[3]*x[18]+0.699*x[3]*x[19]+0.5983*x[3]*x[22]+0.9217*x[3]*x[23]+0.3898*x[3]*x[24]+0.1108*x[3]*x[25]-0.1213*x[3]*x[26]+0.1705*x[3]*x[30]-0.2378*x[4]*x[6]+0.887*x[4]*x[8]+0.5003*x[4]*x[9]+0.5925*x[4]*x[11]-0.1486*x[4]*x[14]-0.8145*x[4]*x[15]+0.9327*x[4]*x[17]-0.5991*x[4]*x[18]-0.7058*x[4]*x[19]+0.2455*x[4]*x[22]+0.5071*x[4]*x[24]+0.8182*x[4]*x[26]+0.9732*x[4]*x[30]-0.2947*x[5]*x[7]-0.3268*x[5]*x[8]-0.4542*x[5]*x[10]-0.1269*x[5]*x[11]-0.2646*x[5]*x[13]-0.0607*x[5]*x[14]-0.2083*x[5]*x[15]-0.6514*x[5]*x[16]-0.4649*x[5]*x[18]-0.4155*x[5]*x[20]+0.9292*x[5]*x[23]+0.377*x[5]*x[25]+0.4854*x[5]*x[27]-0.6441*x[5]*x[29]-0.4305*x[6]*x[12]-0.6723*x[6]*x[18]-0.1193*x[6]*x[19]-0.2367*x[6]*x[21]+0.2664*x[6]*x[25]+0.114*x[6]*x[27]-0.7*x[6]*x[29]-0.9083*x[6]*x[30]-0.3719*x[7]*x[7]-0.1932*x[7]*x[9]+0.7819*x[7]*x[16]+0.0174*x[7]*x[17]+0.3878*x[7]*x[19]-0.3222*x[7]*x[21]-0.1684*x[7]*x[23]+0.7622*x[7]*x[24]-0.6897*x[7]*x[25]+0.533*x[7]*x[27]-0.9165*x[7]*x[28]-0.8575*x[7]*x[30]+0.8913*x[8]*x[8]-0.3884*x[8]*x[9]+0.3379*x[8]*x[11]+0.0915*x[8]*x[12]+0.1937*x[8]*x[15]-0.9349*x[8]*x[16]+0.5827*x[8]*x[20]+0.6633*x[8]*x[23]-0.5997*x[8]*x[26]+0.7406*x[8]*x[28]+0.8833*x[8]*x[30]-0.0639*x[9]*x[9]+0.7093*x[9]*x[12]+0.4285*x[9]*x[13]+0.6178*x[9]*x[14]+0.8015*x[9]*x[15]-0.3*x[9]*x[16]-0.858*x[9]*x[18]+0.0251*x[9]*x[19]+0.1727*x[9]*x[20]-0.1656*x[9]*x[21]-0.7663*x[9]*x[22]-0.9996*x[9]*x[25]-0.4905*x[9]*x[27]-0.6694*x[9]*x[28]-0.4286*x[10]*x[14]+0.2862*x[10]*x[16]+0.0247*x[10]*x[18]-0.9652*x[10]*x[24]-0.8352*x[10]*x[25]-0.5099*x[10]*x[28]-0.6331*x[10]*x[30]+0.8321*x[11]*x[12]+0.0951*x[11]*x[13]+0.7352*x[11]*x[15]-0.6864*x[11]*x[17]-0.0386*x[11]*x[18]-0.99*x[11]*x[19]-0.2603*x[11]*x[22]-0.8459*x[11]*x[23]-0.118*x[11]*x[27]+0.7679*x[11]*x[28]+0.2016*x[12]*x[12]+0.8604*x[12]*x[13]+0.9474*x[12]*x[15]-0.6858*x[12]*x[16]+0.4481*x[12]*x[20]+0.7099*x[12]*x[21]+0.798*x[12]*x[23]-0.3159*x[12]*x[24]+0.5596*x[12]*x[25]+0.2071*x[12]*x[26]-0.2917*x[12]*x[29]+0.948*x[12]*x[30]+0.868*x[13]*x[13]-0.3007*x[13]*x[14]+0.4229*x[13]*x[16]-0.3115*x[13]*x[17]+0.4712*x[13]*x[19]+0.0306*x[13]*x[20]-0.1532*x[13]*x[23]+0.5391*x[13]*x[25]+0.8638*x[13]*x[29]-0.4371*x[13]*x[30]-0.3952*x[14]*x[15]-0.3578*x[14]*x[16]+0.2803*x[14]*x[18]-0.5994*x[14]*x[19]+0.1987*x[14]*x[21]-0.5984*x[14]*x[22]-0.6414*x[14]*x[23]+0.1849*x[14]*x[24]+0.4192*x[14]*x[25]+0.3054*x[14]*x[26]-0.3732*x[14]*x[28]-0.876*x[14]*x[30]-0.8766*x[15]*x[15]-0.9306*x[15]*x[19]+0.0994*x[15]*x[20]+0.9439*x[15]*x[21]+0.1365*x[15]*x[23]-0.7992*x[15]*x[24]-0.694*x[15]*x[25]+0.9646*x[15]*x[26]+0.7605*x[15]*x[28]-0.4248*x[16]*x[18]+0.9537*x[16]*x[20]+0.2575*x[16]*x[21]-0.0251*x[16]*x[22]-0.2024*x[16]*x[28]-0.7663*x[16]*x[30]-0.925*x[17]*x[19]-0.6804*x[17]*x[20]+0.1988*x[17]*x[21]-0.9651*x[17]*x[22]-0.7238*x[17]*x[23]-0.7036*x[17]*x[24]-0.4961*x[17]*x[25]-0.7315*x[17]*x[27]-0.5924*x[17]*x[29]-0.5411*x[17]*x[30]+0.9245*x[18]*x[19]+0.7388*x[18]*x[22]-0.1304*x[18]*x[23]+0.151*x[18]*x[27]-0.0506*x[18]*x[29]+0.9126*x[18]*x[30]-0.0086*x[19]*x[20]+0.9128*x[19]*x[22]-0.4122*x[19]*x[30]-0.646*x[20]*x[21]+0.2933*x[20]*x[22]-0.2271*x[20]*x[25]-0.5639*x[20]*x[27]+0.5472*x[20]*x[30]+0.4298*x[21]*x[24]-0.7718*x[21]*x[28]-0.4099*x[21]*x[29]+0.3039*x[21]*x[30]+0.973*x[22]*x[22]-0.4335*x[22]*x[25]-0.7831*x[22]*x[26]-0.8783*x[22]*x[27]+0.0931*x[22]*x[28]-0.1678*x[22]*x[30]+0.2904*x[23]*x[23]-0.6145*x[23]*x[24]-0.7762*x[23]*x[28]+0.6637*x[23]*x[29]+0.3243*x[23]*x[30]-0.9179*x[24]*x[30]-0.2024*x[25]*x[25]-0.3614*x[25]*x[26]+0.6923*x[25]*x[27]-0.6987*x[25]*x[29]-0.3324*x[25]*x[30]+0.2958*x[26]*x[26]+0.3663*x[26]*x[29]-0.6154*x[27]*x[27]+0.6713*x[27]*x[28]-0.9334*x[27]*x[30]-0.8831*x[28]*x[28]-0.2644*x[28]*x[29]-0.2765*x[28]*x[30]+0.3136*x[29]*x[29]-0.8821*x[30]*x[30]-0.6316*x[1]+0.6725*x[2]+0.7384*x[3]-0.861*x[4]+0.524*x[5]-0.8582*x[6]+0.1261*x[7]+0.8785*x[8]-0.2596*x[9]-0.5394*x[10]+0.3786*x[11]+0.0628*x[12]-0.083*x[13]-0.6291*x[14]-0.4044*x[15]+0.1358*x[16]+0.3728*x[17]-0.8762*x[18]+0.6831*x[19]-0.3086*x[20]+0.7038*x[21]+0.6758*x[22]-0.7117*x[23]-0.9976*x[24]+0.1912*x[25]+0.4003*x[26]+0.8938*x[27]-0.9682*x[28]+0.8728*x[29]+0.2088*x[30] <= 2.507)
@NLconstraint(m, e5, (-0.9516*x[1]*x[1])-0.295*x[1]*x[2]-0.951*x[1]*x[4]-0.4727*x[1]*x[5]-0.6344*x[1]*x[6]-0.3975*x[1]*x[9]-0.301*x[1]*x[10]+0.5635*x[1]*x[11]-0.2842*x[1]*x[12]-0.116*x[1]*x[14]-0.1462*x[1]*x[15]-0.2319*x[1]*x[19]+0.8065*x[1]*x[20]-0.0609*x[1]*x[22]+0.4969*x[1]*x[25]+0.1676*x[1]*x[28]+0.343*x[1]*x[29]-0.3814*x[1]*x[30]-0.5666*x[2]*x[4]-0.4479*x[2]*x[7]-0.4534*x[2]*x[9]-0.4299*x[2]*x[10]-0.3536*x[2]*x[12]-0.027*x[2]*x[15]-0.617*x[2]*x[18]-0.1404*x[2]*x[20]-0.6837*x[2]*x[21]-0.6283*x[2]*x[22]-0.0052*x[2]*x[23]-0.6866*x[2]*x[24]-0.0587*x[2]*x[25]-0.2268*x[2]*x[27]+0.3763*x[2]*x[28]-0.9163*x[2]*x[29]+0.1718*x[3]*x[4]-0.4213*x[3]*x[9]-0.1506*x[3]*x[10]-0.7394*x[3]*x[12]-0.847*x[3]*x[14]+0.233*x[3]*x[15]-0.6011*x[3]*x[18]-0.0542*x[3]*x[20]-0.5228*x[3]*x[21]+0.2948*x[3]*x[22]+0.1721*x[3]*x[23]-0.9292*x[3]*x[26]+0.0286*x[3]*x[28]+0.8565*x[3]*x[30]-0.2486*x[4]*x[4]-0.735*x[4]*x[5]-0.9361*x[4]*x[8]+0.349*x[4]*x[9]+0.6213*x[4]*x[10]-0.687*x[4]*x[14]-0.1701*x[4]*x[15]-0.2069*x[4]*x[16]+0.3074*x[4]*x[20]+0.4355*x[4]*x[25]-0.5565*x[4]*x[30]-0.4757*x[5]*x[6]-0.6595*x[5]*x[8]+0.8551*x[5]*x[9]+0.2598*x[5]*x[10]+0.2991*x[5]*x[13]+0.7713*x[5]*x[17]+0.6393*x[5]*x[18]+0.4431*x[5]*x[20]+0.2587*x[5]*x[22]+0.9124*x[5]*x[23]+0.4403*x[5]*x[25]-0.1176*x[5]*x[28]-0.5188*x[5]*x[29]+0.2199*x[5]*x[30]+0.1739*x[6]*x[6]-0.7619*x[6]*x[7]+0.9214*x[6]*x[10]-0.5654*x[6]*x[11]-0.5123*x[6]*x[12]+0.3028*x[6]*x[15]-0.4821*x[6]*x[19]+0.0992*x[6]*x[28]-0.5495*x[6]*x[29]-0.1516*x[6]*x[30]+0.0552*x[7]*x[8]+0.1698*x[7]*x[11]+0.0587*x[7]*x[12]+0.0251*x[7]*x[14]+0.5065*x[7]*x[15]+0.4927*x[7]*x[16]+0.7646*x[7]*x[17]-0.033*x[7]*x[22]+0.2539*x[7]*x[24]+0.8036*x[7]*x[26]+0.2007*x[7]*x[27]-0.2712*x[7]*x[29]-0.54*x[8]*x[8]+0.2736*x[8]*x[10]-0.2302*x[8]*x[14]+0.6089*x[8]*x[17]-0.4403*x[8]*x[18]+0.3156*x[8]*x[20]-0.5526*x[8]*x[21]+0.3085*x[8]*x[23]-0.4298*x[8]*x[24]-0.88*x[8]*x[26]+0.6517*x[8]*x[30]+0.1074*x[9]*x[9]+0.3319*x[9]*x[10]+0.5873*x[9]*x[13]-0.6974*x[9]*x[14]-0.409*x[9]*x[15]+0.7691*x[9]*x[16]+0.1721*x[9]*x[17]+0.4355*x[9]*x[18]-0.6468*x[9]*x[22]-0.803*x[9]*x[23]-0.2987*x[9]*x[25]-0.0141*x[9]*x[26]-0.9192*x[9]*x[28]+0.0179*x[9]*x[29]-0.6329*x[9]*x[30]+0.7607*x[10]*x[18]-0.5257*x[10]*x[20]-0.4387*x[10]*x[24]+0.5897*x[10]*x[25]+0.125*x[10]*x[26]-0.9142*x[10]*x[27]+0.17*x[10]*x[29]+0.1844*x[10]*x[30]-0.5919*x[11]*x[12]+0.7415*x[11]*x[13]+0.926*x[11]*x[16]+0.655*x[11]*x[17]+0.2011*x[11]*x[18]-0.0345*x[11]*x[19]+0.6536*x[11]*x[23]-0.5373*x[11]*x[25]+0.4171*x[11]*x[26]+0.644*x[11]*x[29]-0.0094*x[12]*x[12]+0.7144*x[12]*x[13]+0.8568*x[12]*x[14]-0.5651*x[12]*x[15]+0.5814*x[12]*x[18]-0.387*x[12]*x[19]-0.7873*x[12]*x[21]-0.7411*x[12]*x[23]+0.5872*x[12]*x[25]+0.0472*x[12]*x[26]-0.6265*x[12]*x[27]+0.1814*x[12]*x[30]+0.8491*x[13]*x[13]-0.0356*x[13]*x[14]-0.438*x[13]*x[16]-0.4114*x[13]*x[21]-0.028*x[13]*x[23]-0.2375*x[13]*x[24]-0.4261*x[13]*x[25]-0.6649*x[13]*x[28]-0.0893*x[13]*x[30]+0.7281*x[14]*x[14]+0.2049*x[14]*x[16]-0.1061*x[14]*x[22]-0.6559*x[14]*x[25]-0.1431*x[14]*x[26]+0.3594*x[14]*x[28]+0.8482*x[15]*x[15]-0.8526*x[15]*x[16]-0.0431*x[15]*x[19]-0.9681*x[15]*x[20]-0.7252*x[15]*x[23]+0.4149*x[15]*x[29]+0.1281*x[16]*x[16]-0.9034*x[16]*x[18]+0.018*x[16]*x[19]+0.868*x[16]*x[21]+0.4418*x[16]*x[30]+0.3382*x[17]*x[17]-0.7909*x[17]*x[18]+0.7786*x[17]*x[20]+0.3928*x[17]*x[21]+0.0044*x[17]*x[22]+0.7433*x[17]*x[23]+0.3477*x[17]*x[24]-0.3039*x[17]*x[25]+0.3882*x[17]*x[26]-0.0914*x[17]*x[27]+0.0397*x[17]*x[28]+0.0008*x[17]*x[29]-0.3633*x[17]*x[30]+0.0846*x[18]*x[19]+0.4594*x[18]*x[21]-0.8689*x[18]*x[22]-0.6626*x[18]*x[24]+0.5856*x[18]*x[25]-0.623*x[18]*x[29]-0.016*x[19]*x[19]+0.9364*x[19]*x[20]+0.9747*x[19]*x[22]-0.3833*x[19]*x[23]-0.3762*x[19]*x[25]-0.4204*x[19]*x[26]+0.5752*x[19]*x[27]-0.3039*x[19]*x[28]+0.9119*x[19]*x[30]+0.5263*x[20]*x[21]+0.5171*x[20]*x[24]+0.2254*x[20]*x[26]+0.2626*x[20]*x[29]+0.9724*x[20]*x[30]+0.9211*x[21]*x[26]-0.621*x[21]*x[27]-0.6409*x[21]*x[30]+0.8131*x[22]*x[24]-0.4137*x[22]*x[30]-0.3309*x[23]*x[24]-0.3602*x[23]*x[25]-0.449*x[23]*x[27]-0.0073*x[23]*x[28]-0.7678*x[23]*x[30]-0.5749*x[24]*x[24]-0.057*x[24]*x[27]+0.9975*x[24]*x[28]-0.1986*x[24]*x[29]-0.9265*x[25]*x[25]+0.9708*x[25]*x[26]+0.4361*x[25]*x[28]+0.4051*x[25]*x[29]-0.3126*x[25]*x[30]-0.6433*x[26]*x[26]+0.2847*x[26]*x[28]-0.5907*x[26]*x[29]+0.7683*x[26]*x[30]+0.4331*x[27]*x[27]-0.4155*x[27]*x[30]-0.3377*x[28]*x[28]-0.5832*x[28]*x[30]-0.2014*x[29]*x[29]+0.4879*x[29]*x[30]+0.5476*x[30]*x[30]+0.1181*x[1]-0.2513*x[2]+0.9569*x[3]-0.446*x[4]-0.7721*x[5]-0.4754*x[6]-0.7266*x[7]+0.6942*x[8]-0.7298*x[9]+0.292*x[10]+0.1635*x[11]-0.0461*x[12]+0.7451*x[13]+0.0617*x[14]+0.7842*x[15]-0.5663*x[16]+0.9344*x[17]+0.3566*x[18]+0.3905*x[19]-0.9515*x[20]+0.9567*x[21]+0.0516*x[22]+0.2965*x[23]-0.5407*x[24]+0.231*x[25]+0.9578*x[26]+0.8015*x[27]-0.4605*x[28]-0.3356*x[29]+0.3896*x[30] <= 79.392)
@NLconstraint(m, e6, 0.018*x[1]*x[2]-0.5569*x[1]*x[4]+0.9767*x[1]*x[6]-0.9575*x[1]*x[7]+0.6433*x[1]*x[8]-0.9945*x[1]*x[12]+0.0862*x[1]*x[13]+0.3517*x[1]*x[14]+0.0765*x[1]*x[16]-0.9034*x[1]*x[17]-0.1131*x[1]*x[18]+0.3747*x[1]*x[20]-0.0152*x[1]*x[21]+0.5453*x[1]*x[22]+0.1923*x[1]*x[23]+0.9583*x[1]*x[24]-0.7245*x[1]*x[27]+0.7426*x[1]*x[28]+0.9635*x[1]*x[29]-0.7258*x[1]*x[30]+0.2082*x[2]*x[2]+0.6186*x[2]*x[4]+0.9263*x[2]*x[6]+0.6404*x[2]*x[9]-0.5521*x[2]*x[10]-0.0183*x[2]*x[11]+0.7031*x[2]*x[13]+0.5594*x[2]*x[17]+0.87*x[2]*x[18]-0.0829*x[2]*x[20]-0.8454*x[2]*x[21]-0.6636*x[2]*x[23]-0.1734*x[2]*x[28]+0.0238*x[2]*x[30]+0.7343*x[3]*x[3]+0.0453*x[3]*x[5]-0.9489*x[3]*x[8]-0.8114*x[3]*x[9]-0.7661*x[3]*x[11]+0.3234*x[3]*x[12]-0.6979*x[3]*x[15]+0.5845*x[3]*x[17]+0.1422*x[3]*x[20]+0.6488*x[3]*x[21]+0.9435*x[3]*x[26]+0.2894*x[3]*x[28]-0.3963*x[3]*x[29]+0.5059*x[3]*x[30]+0.3171*x[4]*x[5]-0.7448*x[4]*x[8]-0.576*x[4]*x[10]-0.9915*x[4]*x[11]-0.6308*x[4]*x[13]+0.9265*x[4]*x[14]+0.7724*x[4]*x[16]+0.0246*x[4]*x[20]-0.3316*x[4]*x[21]+0.3403*x[4]*x[24]+0.7956*x[4]*x[26]+0.5064*x[4]*x[29]+0.2033*x[4]*x[30]+0.5909*x[5]*x[5]+0.6436*x[5]*x[7]+0.3433*x[5]*x[8]-0.6141*x[5]*x[9]+0.7861*x[5]*x[10]-0.5046*x[5]*x[13]-0.2539*x[5]*x[18]+0.8556*x[5]*x[21]+0.0273*x[5]*x[26]-0.0524*x[5]*x[27]-0.3206*x[5]*x[29]-0.4081*x[5]*x[30]+0.9513*x[6]*x[6]+0.7632*x[6]*x[8]-0.3629*x[6]*x[10]+0.496*x[6]*x[12]+0.6856*x[6]*x[14]+0.2743*x[6]*x[17]+0.5467*x[6]*x[20]+0.9104*x[6]*x[22]-0.2424*x[6]*x[26]+0.7695*x[6]*x[27]-0.4518*x[6]*x[28]+0.2658*x[6]*x[29]-0.7137*x[6]*x[30]-0.2917*x[7]*x[7]-0.8266*x[7]*x[9]-0.2051*x[7]*x[14]+0.011*x[7]*x[15]+0.9451*x[7]*x[17]+0.0556*x[7]*x[20]-0.4301*x[7]*x[24]-0.0284*x[7]*x[26]-0.9861*x[7]*x[28]-0.9309*x[7]*x[29]-0.3811*x[7]*x[30]-0.7245*x[8]*x[8]-0.4963*x[8]*x[9]+0.8912*x[8]*x[10]+0.7631*x[8]*x[12]+0.7902*x[8]*x[13]-0.6818*x[8]*x[14]+0.276*x[8]*x[15]-0.7009*x[8]*x[16]+0.433*x[8]*x[17]-0.1963*x[8]*x[19]-0.895*x[8]*x[20]+0.4326*x[8]*x[21]-0.5557*x[8]*x[22]-0.9291*x[8]*x[24]+0.1746*x[8]*x[26]-0.5153*x[8]*x[29]-0.1046*x[8]*x[30]-0.4605*x[9]*x[9]+0.2194*x[9]*x[16]+0.1701*x[9]*x[17]-0.5308*x[9]*x[18]+0.6269*x[9]*x[19]-0.0502*x[9]*x[20]-0.8864*x[9]*x[21]-0.2146*x[9]*x[22]-0.9408*x[9]*x[23]+0.7589*x[9]*x[26]+0.968*x[9]*x[27]-0.7075*x[10]*x[12]+0.625*x[10]*x[18]-0.4637*x[10]*x[20]+0.118*x[10]*x[21]+0.7119*x[10]*x[22]+0.8647*x[10]*x[25]-0.0852*x[11]*x[11]+0.1836*x[11]*x[12]-0.0694*x[11]*x[13]-0.8141*x[11]*x[15]+0.2591*x[11]*x[16]-0.0808*x[11]*x[17]-0.0045*x[11]*x[20]+0.4826*x[11]*x[22]+0.3111*x[11]*x[23]-0.9509*x[11]*x[26]-0.0438*x[11]*x[27]+0.8331*x[11]*x[28]-0.9889*x[11]*x[29]+0.9126*x[12]*x[12]+0.6761*x[12]*x[16]+0.2671*x[12]*x[17]-0.7506*x[12]*x[21]-0.8292*x[12]*x[23]+0.2607*x[12]*x[25]-0.4902*x[12]*x[28]+0.524*x[12]*x[29]-0.5517*x[13]*x[13]-0.8026*x[13]*x[15]-0.8154*x[13]*x[17]+0.9087*x[13]*x[18]-0.0154*x[13]*x[20]-0.2893*x[13]*x[22]+0.3063*x[13]*x[23]+0.8629*x[13]*x[27]+0.9207*x[13]*x[28]+0.0005*x[13]*x[29]+0.3409*x[13]*x[30]-0.4837*x[14]*x[14]+0.6091*x[14]*x[16]+0.1442*x[14]*x[18]+0.5282*x[14]*x[19]+0.8207*x[14]*x[22]-0.0278*x[14]*x[27]-0.8686*x[14]*x[28]-0.0206*x[14]*x[29]+0.6724*x[15]*x[16]+0.6373*x[15]*x[17]+0.2669*x[15]*x[19]+0.6286*x[15]*x[21]+0.124*x[15]*x[26]-0.2017*x[15]*x[27]-0.9937*x[15]*x[28]+0.6273*x[15]*x[29]-0.453*x[15]*x[30]-0.3084*x[16]*x[17]+0.4526*x[16]*x[19]-0.9071*x[16]*x[21]-0.7743*x[16]*x[29]+0.5958*x[17]*x[17]-0.621*x[17]*x[26]+0.0218*x[18]*x[18]+0.0857*x[18]*x[20]-0.5649*x[18]*x[21]-0.1723*x[18]*x[22]+0.503*x[18]*x[25]-0.2249*x[18]*x[30]-0.5367*x[19]*x[19]+0.0748*x[19]*x[20]+0.2134*x[19]*x[21]+0.5769*x[19]*x[22]+0.7081*x[19]*x[23]-0.7169*x[19]*x[26]+0.3156*x[19]*x[27]-0.5824*x[19]*x[28]+0.7025*x[19]*x[29]-0.3368*x[19]*x[30]+0.6524*x[20]*x[20]+0.8659*x[20]*x[22]-0.164*x[20]*x[24]-0.6978*x[20]*x[25]-0.5811*x[20]*x[30]-0.8959*x[21]*x[22]-0.2712*x[21]*x[26]+0.5164*x[21]*x[28]-0.4987*x[21]*x[29]+0.5685*x[22]*x[22]+0.8459*x[22]*x[24]-0.4939*x[22]*x[25]+0.7103*x[22]*x[29]-0.1494*x[22]*x[30]+0.2988*x[23]*x[23]-0.3184*x[23]*x[26]+0.2382*x[23]*x[29]+0.1255*x[23]*x[30]-0.4368*x[24]*x[24]+0.088*x[24]*x[25]-0.0375*x[24]*x[28]+0.1367*x[24]*x[29]-0.4245*x[24]*x[30]-0.8563*x[25]*x[25]+0.9734*x[25]*x[26]-0.8621*x[25]*x[28]+0.8093*x[25]*x[30]-0.4073*x[26]*x[26]-0.4602*x[26]*x[27]-0.3231*x[26]*x[28]+0.6664*x[26]*x[29]-0.2386*x[26]*x[30]+0.0139*x[27]*x[28]+0.2215*x[27]*x[30]-0.5233*x[28]*x[28]+0.2472*x[28]*x[29]+0.3995*x[29]*x[30]-0.8717*x[30]*x[30]-0.9085*x[1]-0.3246*x[2]+0.1355*x[3]-0.0199*x[4]+0.5916*x[5]+0.7127*x[6]-0.4791*x[7]-0.4204*x[8]-0.7198*x[9]-0.6757*x[10]-0.9703*x[11]+0.2443*x[12]-0.4939*x[13]-0.0778*x[14]-0.2829*x[15]-0.407*x[16]-0.2477*x[17]+0.4317*x[18]+0.052*x[19]-0.0273*x[20]+0.0506*x[21]-0.6998*x[22]-0.9529*x[23]+0.6391*x[24]-0.1489*x[25]-0.8308*x[26]-0.53*x[27]+0.1918*x[28]+0.3782*x[29]-0.1127*x[30] <= 67.698)
@NLconstraint(m, e7, 0.224*x[1]*x[1]+0.037*x[1]*x[2]+0.4225*x[1]*x[3]+0.6674*x[1]*x[4]+0.943*x[1]*x[5]+0.4825*x[1]*x[8]-0.4823*x[1]*x[9]+0.7298*x[1]*x[11]-0.6023*x[1]*x[12]-0.2197*x[1]*x[13]+0.3643*x[1]*x[14]+0.0617*x[1]*x[15]+0.8802*x[1]*x[16]-0.5319*x[1]*x[17]+0.882*x[1]*x[18]-0.8119*x[1]*x[19]-0.4526*x[1]*x[20]+0.115*x[1]*x[21]-0.5469*x[1]*x[24]+0.3604*x[1]*x[25]-0.0389*x[1]*x[26]-0.0144*x[1]*x[28]+0.1802*x[1]*x[30]+0.6302*x[2]*x[2]-0.612*x[2]*x[3]+0.1426*x[2]*x[5]+0.7966*x[2]*x[6]+0.6726*x[2]*x[8]+0.2245*x[2]*x[9]+0.7345*x[2]*x[10]+0.1683*x[2]*x[13]+0.4788*x[2]*x[15]+0.4353*x[2]*x[17]+0.2422*x[2]*x[18]-0.8417*x[2]*x[19]-0.1912*x[2]*x[24]-0.7699*x[2]*x[25]+0.0437*x[2]*x[29]-0.5081*x[2]*x[30]+0.119*x[3]*x[3]-0.1827*x[3]*x[4]-0.6465*x[3]*x[5]+0.1986*x[3]*x[9]+0.3016*x[3]*x[10]-0.2978*x[3]*x[11]-0.6954*x[3]*x[12]+0.6358*x[3]*x[14]+0.1614*x[3]*x[15]+0.353*x[3]*x[16]+0.2334*x[3]*x[17]+0.8917*x[3]*x[18]-0.6568*x[3]*x[20]-0.2405*x[3]*x[21]-0.2903*x[3]*x[24]-0.8406*x[3]*x[27]-0.5185*x[3]*x[30]-0.4159*x[4]*x[4]+0.5383*x[4]*x[5]-0.0398*x[4]*x[11]-0.5767*x[4]*x[14]+0.3778*x[4]*x[16]+0.4308*x[4]*x[17]+0.7277*x[4]*x[19]+0.5075*x[4]*x[20]-0.3966*x[4]*x[21]-0.0815*x[4]*x[24]+0.581*x[4]*x[30]-0.2994*x[5]*x[5]-0.9042*x[5]*x[6]-0.4434*x[5]*x[8]-0.0118*x[5]*x[11]+0.6903*x[5]*x[12]-0.8103*x[5]*x[13]+0.0718*x[5]*x[16]-0.0664*x[5]*x[17]-0.2272*x[5]*x[19]+0.2314*x[5]*x[23]+0.0241*x[5]*x[24]-0.7036*x[6]*x[6]+0.4119*x[6]*x[7]-0.6398*x[6]*x[8]-0.2828*x[6]*x[11]+0.5813*x[6]*x[15]-0.8951*x[6]*x[17]+0.2725*x[6]*x[18]+0.3622*x[6]*x[19]-0.5905*x[6]*x[22]-0.8776*x[6]*x[23]-0.9904*x[6]*x[24]+0.5019*x[6]*x[25]+0.789*x[6]*x[27]-0.1884*x[6]*x[29]+0.0164*x[7]*x[9]+0.4326*x[7]*x[12]-0.8391*x[7]*x[14]-0.2009*x[7]*x[18]+0.369*x[7]*x[19]-0.359*x[7]*x[25]+0.8959*x[7]*x[27]+0.8198*x[7]*x[28]+0.8175*x[8]*x[9]-0.5078*x[8]*x[10]-0.0982*x[8]*x[11]+0.3094*x[8]*x[14]+0.7618*x[8]*x[15]-0.5361*x[8]*x[16]+0.6962*x[8]*x[18]+0.0777*x[8]*x[21]-0.2381*x[8]*x[22]-0.1625*x[8]*x[28]-0.953*x[9]*x[9]-0.9273*x[9]*x[10]-0.6738*x[9]*x[11]-0.6053*x[9]*x[12]+0.9901*x[9]*x[13]-0.065*x[9]*x[14]+0.4609*x[9]*x[16]-0.5684*x[9]*x[20]-0.591*x[9]*x[21]-0.3831*x[9]*x[22]+0.4142*x[9]*x[23]-0.4454*x[9]*x[24]-0.3968*x[9]*x[30]-0.8883*x[10]*x[11]+0.9223*x[10]*x[15]+0.8947*x[10]*x[17]-0.1242*x[10]*x[19]+0.5406*x[10]*x[24]+0.4109*x[10]*x[25]-0.6351*x[10]*x[28]+0.4734*x[10]*x[30]-0.9397*x[11]*x[11]+0.9497*x[11]*x[13]-0.5849*x[11]*x[17]-0.506*x[11]*x[19]+0.0759*x[11]*x[21]+0.4833*x[11]*x[22]-0.2194*x[11]*x[24]-0.108*x[11]*x[25]-0.2282*x[11]*x[26]-0.9304*x[11]*x[27]-0.1327*x[11]*x[29]-0.6725*x[12]*x[12]+0.1265*x[12]*x[18]+0.2*x[12]*x[20]+0.5426*x[12]*x[23]-0.1083*x[12]*x[24]-0.8261*x[12]*x[27]+0.0167*x[12]*x[29]-0.9332*x[12]*x[30]-0.689*x[13]*x[17]-0.2232*x[13]*x[18]-0.5419*x[13]*x[21]-0.1072*x[13]*x[22]+0.4768*x[13]*x[28]+0.4089*x[14]*x[14]+0.1921*x[14]*x[18]-0.8674*x[14]*x[21]-0.9942*x[14]*x[22]+0.2037*x[14]*x[24]-0.9823*x[14]*x[25]+0.1056*x[14]*x[26]+0.9265*x[14]*x[28]+0.8755*x[14]*x[29]+0.4723*x[14]*x[30]-0.0353*x[15]*x[15]-0.6448*x[15]*x[17]-0.5335*x[15]*x[20]-0.955*x[15]*x[25]+0.8317*x[15]*x[26]+0.9931*x[15]*x[27]+0.875*x[15]*x[28]+0.4609*x[16]*x[17]-0.8436*x[16]*x[18]+0.1344*x[16]*x[19]-0.4408*x[16]*x[20]+0.0105*x[16]*x[21]+0.5093*x[16]*x[22]-0.1996*x[16]*x[23]-0.5271*x[16]*x[24]-0.7231*x[16]*x[26]-0.4163*x[16]*x[27]-0.5883*x[16]*x[28]-0.6152*x[17]*x[21]-0.4232*x[17]*x[22]-0.3533*x[17]*x[23]+0.8336*x[17]*x[27]-0.1828*x[17]*x[28]+0.8694*x[17]*x[29]+0.4025*x[18]*x[18]+0.5695*x[18]*x[19]-0.3786*x[18]*x[20]+0.6278*x[18]*x[21]-0.2893*x[18]*x[22]-0.9007*x[18]*x[24]+0.8352*x[18]*x[26]-0.0356*x[18]*x[27]-0.9549*x[18]*x[28]+0.6866*x[18]*x[29]+0.3086*x[18]*x[30]-0.1925*x[19]*x[20]-0.553*x[19]*x[21]-0.6458*x[19]*x[27]+0.4325*x[19]*x[28]-0.2427*x[19]*x[30]-0.5621*x[20]*x[20]-0.2479*x[20]*x[23]+0.7563*x[20]*x[26]+0.4603*x[20]*x[29]+0.2355*x[20]*x[30]+0.7211*x[21]*x[21]+0.4588*x[21]*x[22]-0.7696*x[21]*x[28]+0.0288*x[21]*x[29]+0.7588*x[21]*x[30]-0.442*x[22]*x[22]+0.0575*x[22]*x[24]-0.7299*x[22]*x[25]+0.3737*x[22]*x[30]-0.8247*x[23]*x[25]+0.4965*x[23]*x[27]+0.4369*x[23]*x[28]+0.4685*x[23]*x[29]+0.2405*x[23]*x[30]+0.0127*x[24]*x[24]+0.0694*x[24]*x[25]+0.5182*x[24]*x[28]-0.3606*x[25]*x[25]+0.9468*x[25]*x[26]+0.2377*x[25]*x[30]+0.5885*x[26]*x[26]+0.4903*x[26]*x[27]+0.7551*x[26]*x[29]-0.7769*x[27]*x[27]-0.0142*x[27]*x[28]+0.279*x[27]*x[29]+0.9225*x[28]*x[29]+0.4072*x[29]*x[29]+0.2467*x[29]*x[30]-0.5806*x[30]*x[30]-0.6181*x[1]-0.9622*x[2]-0.9429*x[3]-0.1114*x[4]+0.962*x[5]+0.7218*x[6]-0.0212*x[7]-0.2319*x[8]-0.2535*x[9]+0.8032*x[10]-0.7033*x[11]-0.0389*x[12]+0.3013*x[13]-0.584*x[14]+0.7894*x[15]-0.6639*x[16]+0.6767*x[17]-0.4846*x[18]+0.559*x[19]+0.7687*x[20]+0.2254*x[21]+0.0569*x[22]+0.6504*x[23]+0.8787*x[24]-0.8287*x[25]-0.8521*x[26]-0.5959*x[27]-0.0468*x[28]+0.9325*x[29]-0.4888*x[30] <= 80.468)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script. 
