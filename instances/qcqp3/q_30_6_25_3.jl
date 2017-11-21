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
@NLconstraint(m, e1, -(1.7423*x[1]*x[8]-0.835*x[1]*x[3]-1.8084*x[1]*x[20]-0.2223*x[1]*x[25]+0.6787*x[1]*x[27]+1.0554*x[2]*x[16]+1.7271*x[2]*x[18]-1.9767*x[2]*x[19]+0.2306*x[2]*x[23]-1.1224*x[2]*x[24]-0.2135*x[3]*x[3]-1.4752*x[3]*x[8]+1.5102*x[3]*x[9]-0.3128*x[3]*x[20]-1.2448*x[3]*x[25]+1.967*x[3]*x[26]-1.3651*x[3]*x[27]+1.4481*x[3]*x[28]+0.1305*x[4]*x[5]-1.9245*x[4]*x[13]+1.9302*x[4]*x[14]-0.734*x[4]*x[19]+0.5151*x[4]*x[21]+0.8667*x[4]*x[22]+0.8375*x[4]*x[25]-1.8005*x[5]*x[20]-1.2422*x[5]*x[23]+0.488*x[5]*x[27]+0.0153*x[5]*x[30]-1.1239*x[6]*x[6]-1.7036*x[6]*x[12]-1.1617*x[6]*x[16]+1.9497*x[6]*x[17]-1.0215*x[6]*x[24]+1.4993*x[6]*x[28]+1.9276*x[7]*x[12]+0.7022*x[7]*x[17]+1.6989*x[7]*x[22]+0.8902*x[7]*x[27]-0.3919*x[8]*x[10]-0.7117*x[8]*x[12]-1.2866*x[8]*x[14]-0.1367*x[8]*x[15]-0.4977*x[8]*x[16]+0.4373*x[8]*x[22]-0.1506*x[8]*x[24]-1.0943*x[8]*x[26]+1.0466*x[9]*x[10]-1.4684*x[9]*x[13]+1.8105*x[9]*x[14]+1.6346*x[9]*x[20]-0.7825*x[9]*x[26]-1.8417*x[9]*x[28]-1.7664*x[10]*x[15]+0.564*x[10]*x[21]-1.5621*x[10]*x[22]+1.5416*x[10]*x[23]+1.3803*x[11]*x[12]-1.8958*x[11]*x[13]+1.6178*x[11]*x[15]-1.5477*x[11]*x[18]-1.8785*x[11]*x[19]-0.5485*x[11]*x[23]-1.1706*x[12]*x[13]-1.2081*x[12]*x[14]-1.0298*x[12]*x[15]+1.7914*x[12]*x[17]+0.8874*x[12]*x[20]-1.7672*x[12]*x[26]-0.9717*x[12]*x[28]-1.7834*x[13]*x[13]-1.1125*x[13]*x[18]-0.7694*x[13]*x[22]-0.3779*x[13]*x[25]-0.1208*x[13]*x[28]-0.2401*x[14]*x[14]-0.3616*x[14]*x[15]+1.1814*x[14]*x[18]+0.4484*x[14]*x[19]-0.0599*x[14]*x[20]+1.147*x[14]*x[24]-0.515*x[14]*x[27]-0.6111*x[14]*x[30]+0.307*x[15]*x[17]-0.132*x[15]*x[21]+0.7897*x[15]*x[23]-1.4379*x[15]*x[25]-0.6194*x[15]*x[30]+0.4392*x[16]*x[19]-1.6997*x[16]*x[23]+0.2994*x[16]*x[24]+0.0351*x[16]*x[30]+1.6199*x[17]*x[21]+0.4537*x[17]*x[22]-0.3462*x[17]*x[26]+1.3236*x[17]*x[29]+1.2088*x[18]*x[21]-0.4738*x[18]*x[24]+1.6903*x[18]*x[25]+1.2583*x[19]*x[20]-0.6415*x[19]*x[26]+1.5984*x[19]*x[29]+0.9294*x[20]*x[23]+0.8635*x[20]*x[28]-1.8642*x[21]*x[24]-0.9661*x[21]*x[27]+1.9184*x[21]*x[28]-1.18*x[22]*x[24]-0.6699*x[22]*x[25]-0.0173*x[22]*x[27]+1.522*x[23]*x[25]-1.0156*x[23]*x[28]-1.503*x[24]*x[26]+1.7655*x[25]*x[30]-1.9001*x[27]*x[30]-0.1883*x[28]*x[29]-0.7001*x[1]+0.2143*x[2]-0.4193*x[3]+0.7964*x[4]-0.3125*x[5]-0.9895*x[6]+0.9544*x[7]-0.9451*x[8]+0.188*x[9]+0.625*x[10]+0.6788*x[11]-0.5179*x[12]+0.2132*x[13]-0.6344*x[14]+0.0813*x[15]-0.7783*x[16]-0.5175*x[17]+0.1427*x[18]+0.2631*x[19]-0.5929*x[20]+0.7394*x[21]-0.5374*x[22]-0.1051*x[23]+0.2477*x[24]-0.0076*x[25]+0.6243*x[26]+0.7406*x[27]-0.1626*x[28]+0.8408*x[29]-0.9828*x[30])+x[31] == 0.0)
@NLconstraint(m, e2, (-1.1845*x[1]*x[3])-0.6497*x[1]*x[6]+0.433*x[1]*x[19]+1.1008*x[1]*x[21]+0.3934*x[1]*x[28]+0.0143*x[2]*x[4]+1.0152*x[2]*x[5]+0.3879*x[2]*x[9]+1.6808*x[2]*x[12]+1.7913*x[2]*x[13]-0.6801*x[2]*x[14]-1.3599*x[2]*x[15]-0.2143*x[2]*x[17]+0.415*x[2]*x[19]-0.4386*x[2]*x[21]+1.958*x[3]*x[10]-1.5633*x[3]*x[13]-1.5119*x[3]*x[18]+1.0448*x[3]*x[20]-0.2045*x[4]*x[5]+1.276*x[4]*x[10]-1.0281*x[4]*x[16]-1.3259*x[4]*x[24]+0.3392*x[4]*x[25]-1.0861*x[4]*x[28]-0.6403*x[5]*x[7]-0.627*x[5]*x[8]-0.8003*x[5]*x[9]-1.9175*x[5]*x[11]+1.2641*x[5]*x[15]+1.4359*x[5]*x[19]+0.2695*x[5]*x[21]-0.3781*x[5]*x[22]-0.3686*x[5]*x[24]+0.6736*x[5]*x[25]-1.3377*x[5]*x[28]-1.0392*x[5]*x[29]-1.0268*x[6]*x[7]-0.3655*x[6]*x[10]+1.2033*x[6]*x[11]+0.6847*x[6]*x[13]-1.0816*x[6]*x[16]+0.5161*x[6]*x[23]+0.4659*x[6]*x[24]+0.7137*x[6]*x[28]+0.7251*x[6]*x[30]-1.1633*x[7]*x[10]-0.4763*x[7]*x[15]-1.53*x[7]*x[22]+1.8738*x[7]*x[30]+1.6336*x[8]*x[17]-0.8069*x[8]*x[20]-1.4625*x[8]*x[27]-1.0999*x[9]*x[11]-1.8359*x[9]*x[14]-0.4731*x[9]*x[16]-1.2216*x[9]*x[19]+1.5405*x[9]*x[20]+0.2157*x[9]*x[28]+0.0383*x[10]*x[13]+0.418*x[10]*x[19]-0.7593*x[10]*x[20]+0.9423*x[10]*x[22]-1.9015*x[10]*x[26]-0.9289*x[10]*x[28]+0.1343*x[10]*x[29]+0.4432*x[11]*x[15]-1.7448*x[11]*x[17]+0.5179*x[12]*x[13]-1.2975*x[12]*x[14]+1.244*x[12]*x[22]-0.1926*x[12]*x[25]-0.0493*x[13]*x[18]+1.9855*x[13]*x[26]+1.039*x[14]*x[17]-0.1944*x[14]*x[28]+0.1653*x[15]*x[19]-0.2609*x[15]*x[21]+1.5375*x[15]*x[25]-0.4268*x[15]*x[28]-1.3182*x[16]*x[16]-1.0715*x[16]*x[18]+0.6902*x[16]*x[21]+0.1107*x[16]*x[26]+1.7829*x[16]*x[29]+0.0682*x[17]*x[18]-0.1079*x[17]*x[19]+0.9705*x[17]*x[25]+1.4654*x[17]*x[28]+0.3507*x[18]*x[21]-0.7565*x[18]*x[26]-0.8051*x[18]*x[28]-0.698*x[18]*x[29]-1.0859*x[19]*x[21]+1.7525*x[19]*x[22]-0.3925*x[19]*x[24]-1.2222*x[19]*x[25]-1.2345*x[19]*x[28]-0.9902*x[20]*x[21]+1.6845*x[20]*x[27]+0.1152*x[20]*x[28]+0.1228*x[21]*x[22]-1.8844*x[21]*x[23]+1.9448*x[21]*x[27]-1.0878*x[22]*x[26]+0.413*x[22]*x[27]+0.9135*x[22]*x[29]-0.9934*x[23]*x[27]+0.4587*x[23]*x[29]-1.3906*x[24]*x[27]-0.8309*x[24]*x[29]+1.5231*x[25]*x[25]-1.2212*x[25]*x[27]-0.7297*x[25]*x[28]-0.7568*x[25]*x[29]+0.3796*x[27]*x[27]+0.1586*x[1]-0.1863*x[2]-0.9372*x[3]-0.2394*x[4]-0.8627*x[5]+0.3131*x[6]-0.1544*x[7]+0.8563*x[8]-0.4901*x[9]-0.7055*x[10]+0.678*x[11]-0.0102*x[12]+0.7557*x[13]+0.6252*x[14]+0.2769*x[15]+0.2594*x[16]-0.7851*x[17]-0.073*x[18]-0.5702*x[19]-0.4147*x[20]+0.7438*x[21]+0.8717*x[22]+0.1625*x[23]+0.6724*x[24]-0.7331*x[25]+0.3401*x[26]-0.726*x[27]-0.4789*x[28]+0.4111*x[29]-0.9605*x[30] <= 95.169)
@NLconstraint(m, e3, 0.1267*x[1]*x[13]+1.2314*x[1]*x[16]-0.403*x[1]*x[20]+0.3455*x[1]*x[30]+0.8001*x[2]*x[5]+0.4116*x[2]*x[8]+1.2352*x[2]*x[13]+0.9367*x[2]*x[25]+1.7755*x[2]*x[26]-0.3339*x[2]*x[28]-0.0168*x[3]*x[3]-1.2725*x[3]*x[17]+0.4531*x[3]*x[21]-1.9029*x[3]*x[27]-1.325*x[4]*x[5]+1.7575*x[4]*x[14]+1.3119*x[4]*x[16]-1.1127*x[4]*x[19]-0.4839*x[4]*x[21]-1.328*x[4]*x[23]+1.0905*x[4]*x[24]+0.5072*x[4]*x[28]+0.7131*x[4]*x[29]+1.9043*x[5]*x[6]-1.9329*x[5]*x[11]-1.4465*x[5]*x[13]-1.6145*x[5]*x[16]-0.9135*x[5]*x[17]+1.1261*x[5]*x[19]-1.0783*x[5]*x[20]+0.1158*x[5]*x[21]+1.4992*x[5]*x[27]-1.3455*x[6]*x[8]+1.5061*x[6]*x[10]+1.8993*x[6]*x[23]-1.2827*x[6]*x[29]+1.8219*x[7]*x[8]+1.1575*x[7]*x[16]-1.3152*x[7]*x[21]+0.5832*x[8]*x[14]+1.5604*x[8]*x[16]+1.3016*x[8]*x[17]-0.5072*x[8]*x[19]-1.225*x[8]*x[21]-1.5975*x[8]*x[22]+0.9893*x[8]*x[23]-1.9898*x[8]*x[29]-0.2532*x[9]*x[10]-0.7888*x[9]*x[15]-1.176*x[9]*x[22]-0.4186*x[9]*x[24]-1.3526*x[10]*x[12]-1.2543*x[10]*x[15]+0.5026*x[10]*x[16]+1.3316*x[10]*x[17]-0.9847*x[10]*x[21]+1.0101*x[10]*x[23]-1.0938*x[10]*x[24]-1.1753*x[10]*x[29]-1.4978*x[11]*x[13]+0.0892*x[11]*x[16]+1.7744*x[11]*x[17]-1.301*x[11]*x[21]+0.1204*x[11]*x[26]-1.1516*x[11]*x[29]+1.9921*x[12]*x[12]-1.1601*x[12]*x[17]-1.0495*x[12]*x[25]+0.3002*x[12]*x[27]-1.3285*x[12]*x[28]-1.0813*x[13]*x[19]-1.5264*x[13]*x[24]-1.2435*x[13]*x[28]-1.2965*x[14]*x[17]+0.4091*x[14]*x[18]-0.1265*x[14]*x[23]-0.9868*x[14]*x[25]+1.5443*x[15]*x[18]-0.9794*x[15]*x[20]+0.1319*x[15]*x[22]-0.7137*x[16]*x[17]-0.7003*x[16]*x[22]+1.3084*x[16]*x[27]-1.7075*x[16]*x[29]+1.3924*x[17]*x[20]+0.1138*x[17]*x[22]-0.4597*x[17]*x[25]-1.9065*x[17]*x[26]+0.396*x[17]*x[28]-1.0147*x[18]*x[20]-1.6873*x[18]*x[26]+0.6687*x[18]*x[29]+0.5773*x[18]*x[30]+1.1831*x[19]*x[22]+0.2878*x[19]*x[25]-0.9051*x[19]*x[26]+1.2553*x[19]*x[28]-0.8815*x[20]*x[22]+1.6858*x[20]*x[23]-0.9233*x[20]*x[24]+0.4121*x[20]*x[26]-0.2158*x[21]*x[22]-0.2278*x[21]*x[23]+0.1724*x[21]*x[24]+0.0341*x[21]*x[29]-1.5664*x[22]*x[23]-1.4806*x[22]*x[26]-1.9766*x[22]*x[27]-0.9407*x[23]*x[29]-0.9687*x[24]*x[24]+0.9127*x[24]*x[26]-1.0817*x[24]*x[28]-0.586*x[25]*x[27]-1.2509*x[25]*x[29]+1.6477*x[26]*x[28]-0.7627*x[28]*x[29]+0.4212*x[1]+0.3303*x[2]+0.966*x[3]-0.3034*x[4]-0.2663*x[5]+0.1311*x[6]+0.7783*x[7]+0.8329*x[8]-0.1869*x[9]-0.7059*x[10]+0.1605*x[11]+0.6545*x[12]+0.4327*x[13]-0.3022*x[14]+0.2808*x[15]-0.7054*x[16]-0.9825*x[17]-0.8996*x[18]+0.3813*x[19]-0.0663*x[20]+0.5773*x[21]+0.7552*x[22]-0.1506*x[23]-0.6707*x[24]+0.3395*x[25]+0.5829*x[26]-0.9721*x[27]+0.0334*x[28]+0.8749*x[29]-0.1543*x[30] <= 97.271)
@NLconstraint(m, e4, 1.6765*x[1]*x[2]-0.5898*x[1]*x[20]-1.1*x[2]*x[6]+1.2392*x[2]*x[10]-1.8188*x[2]*x[11]-0.5618*x[2]*x[12]+1.2637*x[2]*x[15]+1.6546*x[2]*x[19]-1.9655*x[2]*x[23]+1.7106*x[2]*x[28]-1.0936*x[3]*x[4]-0.7552*x[3]*x[5]-0.7768*x[3]*x[9]+0.732*x[3]*x[10]-0.8187*x[3]*x[15]-0.7468*x[3]*x[24]+0.7521*x[3]*x[25]-0.1937*x[3]*x[26]-0.5385*x[3]*x[30]+1.1063*x[4]*x[8]+0.4424*x[4]*x[13]+0.3935*x[4]*x[15]+1.7215*x[4]*x[21]+1.7501*x[4]*x[27]-1.5645*x[5]*x[9]+1.0187*x[5]*x[11]-0.2739*x[5]*x[24]-0.6024*x[5]*x[26]+1.4065*x[5]*x[27]-1.551*x[5]*x[28]-1.2009*x[6]*x[11]-0.2095*x[6]*x[12]-0.5733*x[6]*x[16]+0.9468*x[6]*x[17]-0.4707*x[6]*x[19]-0.0288*x[6]*x[24]-1.878*x[6]*x[27]-0.1524*x[7]*x[7]-0.2543*x[7]*x[13]+1.781*x[7]*x[14]-0.4251*x[7]*x[18]+0.0532*x[7]*x[20]+0.7451*x[7]*x[25]+0.2671*x[7]*x[26]+1.0375*x[7]*x[28]-0.8237*x[8]*x[12]+1.0869*x[8]*x[13]+1.8116*x[8]*x[25]-1.4432*x[8]*x[26]-1.4738*x[8]*x[28]-0.3661*x[9]*x[13]+0.4654*x[9]*x[14]-0.549*x[9]*x[17]-0.5365*x[9]*x[18]+1.9543*x[9]*x[20]-1.8814*x[9]*x[21]-0.7897*x[9]*x[26]+0.9854*x[10]*x[12]-1.8587*x[10]*x[13]+1.2721*x[10]*x[16]+0.2585*x[10]*x[20]+1.1016*x[10]*x[23]+1.7647*x[10]*x[25]+1.2916*x[11]*x[21]-1.352*x[11]*x[25]+1.851*x[12]*x[14]-0.583*x[12]*x[17]-0.4317*x[12]*x[24]-1.4202*x[12]*x[25]-0.8125*x[12]*x[28]-0.6722*x[13]*x[25]+1.9147*x[13]*x[28]-1.6792*x[13]*x[30]-1.343*x[14]*x[15]+1.9844*x[14]*x[17]-1.588*x[14]*x[27]-0.1709*x[15]*x[16]+1.2594*x[15]*x[18]-0.3005*x[15]*x[19]-1.6857*x[15]*x[22]+1.6881*x[15]*x[23]+0.4183*x[15]*x[26]-1.8041*x[15]*x[28]+0.538*x[15]*x[29]-1.7888*x[16]*x[17]-0.0501*x[16]*x[23]+1.8951*x[16]*x[27]-0.6617*x[16]*x[30]-0.7801*x[17]*x[18]+1.2822*x[17]*x[20]+0.8105*x[17]*x[21]+0.9271*x[17]*x[23]-1.2058*x[17]*x[26]-1.2546*x[17]*x[29]-1.73*x[18]*x[28]-0.208*x[18]*x[29]-1.9481*x[19]*x[19]+1.1469*x[19]*x[22]-0.4271*x[19]*x[29]+0.7781*x[21]*x[21]+0.5572*x[21]*x[22]+1.1128*x[21]*x[25]+1.642*x[21]*x[26]-0.4985*x[21]*x[27]-1.3679*x[22]*x[24]+1.8254*x[22]*x[26]+0.2208*x[22]*x[27]+1.9152*x[22]*x[28]-0.1046*x[23]*x[25]+1.7057*x[23]*x[27]-1.348*x[24]*x[25]+0.9008*x[24]*x[28]+1.531*x[26]*x[28]+1.8063*x[26]*x[29]-1.6766*x[27]*x[27]-1.9075*x[27]*x[29]-0.4928*x[1]+0.5289*x[2]+0.8437*x[3]+0.9803*x[4]-0.3441*x[5]+0.6732*x[6]-0.3603*x[7]+0.2267*x[8]-0.4839*x[9]+0.3173*x[10]-0.2133*x[11]-0.8561*x[12]-0.9956*x[13]-0.7008*x[14]+0.3533*x[15]+0.4395*x[16]-0.0406*x[17]+0.1996*x[18]+0.1182*x[19]+0.2674*x[20]-0.7855*x[21]+0.5012*x[22]-0.7145*x[23]+0.2032*x[24]+0.8976*x[25]-0.1587*x[26]-0.1052*x[27]-0.4683*x[28]-0.532*x[29]+0.9235*x[30] <= 59.628)
@NLconstraint(m, e5, 1.541*x[1]*x[2]+0.6684*x[1]*x[7]+1.4928*x[2]*x[3]-1.3314*x[2]*x[4]+0.0088*x[2]*x[6]-1.6131*x[2]*x[24]-0.7927*x[2]*x[26]-1.0899*x[2]*x[28]-1.5548*x[3]*x[6]-1.809*x[3]*x[12]+0.8501*x[3]*x[13]+0.1935*x[3]*x[29]-1.7138*x[4]*x[6]+1.3822*x[4]*x[13]-0.57*x[4]*x[14]-1.185*x[4]*x[16]+1.5799*x[4]*x[17]-0.8772*x[4]*x[21]-1.5183*x[4]*x[22]+0.1482*x[4]*x[27]-0.088*x[5]*x[12]-0.8923*x[5]*x[16]-1.1569*x[5]*x[18]-0.8052*x[5]*x[19]+1.6639*x[5]*x[20]+1.0002*x[5]*x[23]+1.226*x[6]*x[6]+0.099*x[6]*x[7]+1.8123*x[6]*x[16]+0.8839*x[6]*x[19]-1.118*x[6]*x[22]-0.6606*x[6]*x[26]+1.2016*x[6]*x[29]-1.9704*x[7]*x[11]-0.6068*x[7]*x[13]+1.7948*x[7]*x[17]+0.0458*x[7]*x[19]-0.9651*x[7]*x[22]+1.8831*x[7]*x[24]-1.1428*x[7]*x[25]+1.9497*x[7]*x[28]-0.8176*x[8]*x[15]-1.914*x[8]*x[16]-1.7309*x[8]*x[17]-0.902*x[8]*x[23]-1.8648*x[9]*x[10]-1.2069*x[9]*x[13]-0.178*x[9]*x[16]+1.5446*x[9]*x[18]-0.428*x[9]*x[23]+1.8678*x[9]*x[24]+0.8438*x[9]*x[25]+1.3725*x[9]*x[26]+0.7831*x[9]*x[29]+1.7156*x[9]*x[30]+0.3917*x[10]*x[11]-1.5099*x[10]*x[12]-1.5349*x[10]*x[16]+0.1473*x[10]*x[18]+1.5877*x[10]*x[22]+0.7584*x[10]*x[23]+0.8322*x[10]*x[27]+1.8778*x[10]*x[29]+1.269*x[11]*x[13]+0.1998*x[11]*x[15]+0.8419*x[11]*x[20]+1.0785*x[11]*x[21]+1.8337*x[11]*x[25]-0.3966*x[12]*x[15]-0.8867*x[12]*x[18]+0.4482*x[12]*x[22]+0.9952*x[12]*x[24]+1.9594*x[12]*x[26]+0.7637*x[12]*x[27]-0.0391*x[12]*x[29]+1.5662*x[13]*x[14]+1.8287*x[13]*x[17]+1.3772*x[13]*x[18]-1.875*x[13]*x[20]-0.9572*x[13]*x[21]+1.5963*x[13]*x[24]-1.4121*x[13]*x[26]-0.5746*x[13]*x[30]+0.6565*x[14]*x[20]+1.7347*x[14]*x[21]+1.3643*x[14]*x[26]+0.7187*x[14]*x[28]+0.5588*x[15]*x[26]-0.5615*x[15]*x[29]+1.8464*x[16]*x[18]-0.1831*x[16]*x[21]+0.1011*x[16]*x[28]-0.2311*x[17]*x[17]-1.4724*x[17]*x[19]-1.9207*x[17]*x[26]-0.2837*x[17]*x[27]-1.8073*x[17]*x[30]+0.927*x[18]*x[20]-1.1478*x[18]*x[30]-1.8546*x[19]*x[22]+0.3673*x[19]*x[23]+0.8909*x[19]*x[26]-0.5643*x[19]*x[28]+0.101*x[20]*x[21]-0.4423*x[20]*x[22]+1.6096*x[20]*x[24]+1.8117*x[20]*x[25]+1.6393*x[20]*x[27]+0.7569*x[21]*x[22]+0.1284*x[21]*x[25]-0.58*x[21]*x[26]-0.9235*x[22]*x[28]-0.9189*x[23]*x[23]+1.8985*x[23]*x[25]+1.2341*x[25]*x[27]+0.6813*x[29]*x[30]-0.3021*x[1]-0.488*x[2]+0.4032*x[3]+0.3024*x[4]-0.6762*x[5]+0.0188*x[6]+0.8075*x[7]+0.7659*x[8]+0.1478*x[9]+0.3169*x[10]+0.435*x[11]-0.4588*x[12]+0.3038*x[13]+0.6569*x[14]-0.7166*x[15]-0.8306*x[16]-0.2722*x[17]-0.8239*x[18]+0.1461*x[19]+0.2314*x[20]-0.2461*x[21]+0.2606*x[22]+0.7304*x[23]-0.8823*x[24]-0.802*x[25]+0.936*x[26]+0.805*x[27]-0.4283*x[28]-0.9095*x[29]+0.9922*x[30] <= 54.042)
@NLconstraint(m, e6, 0.6687*x[1]*x[3]-0.4318*x[1]*x[24]-0.7988*x[1]*x[28]+1.8814*x[2]*x[6]+1.6302*x[2]*x[10]-1.1802*x[2]*x[13]+0.9372*x[2]*x[15]-0.0375*x[2]*x[16]+0.5802*x[2]*x[17]-1.6858*x[2]*x[18]+0.5478*x[2]*x[22]+0.4988*x[2]*x[25]-1.1494*x[3]*x[4]-0.5433*x[3]*x[7]+0.5924*x[3]*x[12]+1.798*x[3]*x[14]+1.7337*x[3]*x[15]-1.9296*x[3]*x[16]-1.5112*x[3]*x[19]-0.6332*x[3]*x[23]+1.504*x[3]*x[25]-0.7398*x[4]*x[6]-0.4303*x[4]*x[10]+1.7929*x[4]*x[19]+1.6025*x[4]*x[20]+1.1994*x[4]*x[21]+0.4485*x[4]*x[30]+0.491*x[5]*x[9]-0.3701*x[5]*x[14]-1.239*x[5]*x[16]+0.1028*x[5]*x[27]+0.3958*x[5]*x[29]-1.5184*x[6]*x[8]-1.1483*x[6]*x[10]+1.0062*x[6]*x[19]-0.3672*x[6]*x[23]+1.9241*x[6]*x[29]-1.0534*x[7]*x[10]-1.889*x[7]*x[11]+0.855*x[7]*x[13]-1.7403*x[7]*x[14]-0.0032*x[7]*x[19]-1.9437*x[7]*x[20]+0.2007*x[7]*x[24]+1.2179*x[7]*x[25]-1.7753*x[7]*x[27]-1.1908*x[8]*x[9]+0.0254*x[8]*x[13]-1.2152*x[8]*x[16]-1.3973*x[8]*x[29]+1.6562*x[9]*x[9]-0.305*x[9]*x[10]+0.391*x[9]*x[11]+0.3072*x[9]*x[13]+1.8076*x[9]*x[17]+1.9995*x[9]*x[18]+1.6503*x[9]*x[21]-1.0989*x[10]*x[13]-0.2602*x[10]*x[15]-0.5545*x[10]*x[16]-0.7148*x[10]*x[18]+0.3842*x[10]*x[22]+1.8449*x[10]*x[23]+1.3136*x[11]*x[15]+1.7215*x[11]*x[16]+0.6359*x[11]*x[21]-1.1809*x[11]*x[23]+0.4941*x[11]*x[24]-0.0824*x[11]*x[26]-0.5626*x[12]*x[13]-0.0387*x[12]*x[14]-1.965*x[12]*x[20]-1.6446*x[12]*x[22]-1.4904*x[12]*x[23]-0.1832*x[12]*x[26]+1.6459*x[13]*x[13]-0.765*x[13]*x[15]-0.3173*x[13]*x[17]+1.7913*x[13]*x[20]+0.5317*x[13]*x[21]+1.7644*x[13]*x[23]-0.2274*x[13]*x[29]-1.2802*x[14]*x[24]+0.6753*x[14]*x[26]+0.3375*x[14]*x[27]-0.5719*x[15]*x[15]-0.5737*x[15]*x[17]-0.3816*x[15]*x[18]+1.3138*x[15]*x[26]+0.1747*x[15]*x[28]+1.5685*x[16]*x[18]+1.5633*x[16]*x[19]+1.8634*x[16]*x[23]+1.7629*x[16]*x[27]+0.0465*x[17]*x[18]+1.6099*x[17]*x[19]-1.9984*x[17]*x[20]-1.7144*x[17]*x[22]-1.9107*x[17]*x[24]+1.1987*x[18]*x[19]+1.752*x[18]*x[23]-1.8173*x[19]*x[24]-1.442*x[19]*x[27]-1.7768*x[21]*x[24]-1.2492*x[21]*x[26]+1.9838*x[21]*x[29]+1.4375*x[22]*x[23]+0.3821*x[22]*x[24]+1.6201*x[22]*x[26]-1.804*x[22]*x[27]-0.416*x[22]*x[28]-1.4932*x[23]*x[23]-0.2703*x[24]*x[25]+0.9883*x[24]*x[26]+0.8299*x[27]*x[29]+0.4958*x[29]*x[29]+0.3522*x[1]-0.6512*x[2]-0.2236*x[3]-0.5792*x[4]+0.062*x[5]+0.1517*x[6]+0.3085*x[7]-0.5717*x[8]-0.0166*x[9]+0.3993*x[10]+0.4148*x[11]-0.6206*x[12]-0.0255*x[13]+0.7975*x[14]-0.6697*x[15]+0.5939*x[16]+0.7959*x[17]-0.4757*x[18]-0.4011*x[19]+0.6824*x[20]-0.8618*x[21]+0.9699*x[22]-0.433*x[23]+0.2254*x[24]+0.9915*x[25]-0.1732*x[26]-0.5746*x[27]-0.8154*x[28]+0.0332*x[29]+0.8464*x[30] <= 61.605)
@NLconstraint(m, e7, 1.0579*x[1]*x[4]+1.5136*x[1]*x[8]+1.7538*x[1]*x[25]+0.9864*x[2]*x[8]-1.5403*x[2]*x[10]+1.0517*x[2]*x[13]-1.0338*x[2]*x[16]-1.2178*x[2]*x[18]-0.9895*x[2]*x[19]+1.1488*x[2]*x[29]+0.4574*x[3]*x[4]-0.821*x[3]*x[5]+0.6958*x[3]*x[6]+0.5626*x[3]*x[8]+1.9511*x[3]*x[10]+0.9703*x[3]*x[23]-1.7359*x[3]*x[25]+0.1727*x[3]*x[26]-1.2746*x[3]*x[28]-1.2569*x[4]*x[9]-1.534*x[4]*x[11]+0.5111*x[4]*x[16]-0.0136*x[4]*x[17]-1.9818*x[4]*x[19]-1.8542*x[4]*x[24]+1.8312*x[4]*x[26]+0.2132*x[4]*x[29]+0.9671*x[5]*x[11]+1.6719*x[5]*x[12]+1.4882*x[5]*x[17]+1.2178*x[5]*x[26]+1.3979*x[6]*x[10]+1.9837*x[6]*x[12]-0.5709*x[6]*x[19]+1.0194*x[6]*x[22]-1.2395*x[6]*x[24]-1.6944*x[7]*x[14]+0.7755*x[7]*x[17]-0.8632*x[7]*x[20]+1.9874*x[7]*x[26]-1.5655*x[7]*x[28]-0.2095*x[7]*x[29]-1.8043*x[8]*x[12]+1.0205*x[8]*x[16]+0.6163*x[8]*x[17]-0.9109*x[8]*x[19]-1.95*x[8]*x[26]+1.198*x[9]*x[9]-0.5091*x[9]*x[20]+1.9407*x[9]*x[21]-0.0173*x[9]*x[24]-0.4609*x[9]*x[26]-1.6854*x[10]*x[10]+1.4087*x[10]*x[16]-0.736*x[10]*x[21]-0.8804*x[10]*x[25]-1.1889*x[11]*x[12]-1.9029*x[11]*x[15]+0.4222*x[11]*x[20]+1.6293*x[11]*x[23]-1.5283*x[11]*x[29]-1.0938*x[12]*x[13]-1.8727*x[12]*x[29]+1.6422*x[13]*x[14]-1.2249*x[13]*x[21]-1.5197*x[13]*x[23]+1.5008*x[13]*x[25]+0.7272*x[13]*x[28]+1.5047*x[13]*x[29]-0.0694*x[13]*x[30]+0.7568*x[14]*x[16]+1.1761*x[14]*x[20]+0.661*x[14]*x[21]-1.3548*x[14]*x[23]+0.8181*x[14]*x[27]-1.9742*x[15]*x[17]-0.8891*x[15]*x[18]-1.253*x[15]*x[21]-0.4243*x[15]*x[23]+0.8014*x[15]*x[30]+1.7986*x[16]*x[17]+0.2895*x[16]*x[19]+0.1527*x[16]*x[20]+1.0222*x[16]*x[21]+1.8754*x[16]*x[30]-0.1997*x[17]*x[19]-1.8929*x[17]*x[21]-0.0136*x[17]*x[22]-0.1522*x[17]*x[29]+0.1925*x[18]*x[23]+0.6878*x[18]*x[30]-1.3725*x[19]*x[21]+1.0574*x[19]*x[23]+1.5524*x[19]*x[24]+0.6417*x[19]*x[29]+0.8911*x[20]*x[20]-0.4288*x[20]*x[21]-0.1415*x[20]*x[23]-1.5754*x[20]*x[26]+1.1662*x[20]*x[29]+0.5252*x[21]*x[23]+0.1821*x[21]*x[26]-0.1195*x[21]*x[27]-0.5306*x[22]*x[22]+1.6954*x[22]*x[25]+1.4072*x[23]*x[24]+1.7774*x[24]*x[25]-1.7102*x[24]*x[26]+1.8842*x[25]*x[28]+0.2429*x[25]*x[29]-0.3523*x[26]*x[27]-1.891*x[27]*x[28]+1.2739*x[27]*x[29]+0.6766*x[28]*x[28]-1.8288*x[28]*x[29]-1.7036*x[29]*x[30]+0.5958*x[1]+0.5911*x[2]-0.7475*x[3]+0.0727*x[4]+0.6228*x[5]+0.4411*x[6]-0.9254*x[7]-0.0408*x[8]-0.4167*x[9]-0.0542*x[10]+0.5535*x[11]+0.9732*x[12]+0.134*x[13]+0.7583*x[14]-0.0997*x[15]+0.7644*x[16]-0.9054*x[17]+0.8093*x[18]-0.2236*x[19]-0.7726*x[20]-0.9654*x[21]+0.6256*x[22]+0.2652*x[23]-0.1934*x[24]-0.4438*x[25]+0.6454*x[26]+0.3046*x[27]-0.3753*x[28]+0.5854*x[29]+0.3157*x[30] <= 15.644)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script. 
