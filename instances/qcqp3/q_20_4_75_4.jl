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
@NLconstraint(m, e1, -(0.8953*x[1]*x[2]-0.6387*x[1]*x[1]+0.3568*x[1]*x[3]+0.3868*x[1]*x[4]+0.0001*x[1]*x[6]+0.3451*x[1]*x[7]+0.3544*x[1]*x[9]+0.8251*x[1]*x[10]+0.9724*x[1]*x[12]+0.4519*x[1]*x[14]+0.8044*x[1]*x[15]+0.2065*x[1]*x[17]+0.8035*x[1]*x[20]+0.7952*x[2]*x[2]+0.1898*x[2]*x[3]+0.3807*x[2]*x[8]+0.515*x[2]*x[10]-0.9422*x[2]*x[12]+0.8857*x[2]*x[13]+0.111*x[2]*x[14]+0.7327*x[2]*x[15]+0.3707*x[2]*x[16]-0.7071*x[2]*x[17]+0.2983*x[2]*x[18]-0.4011*x[2]*x[19]-0.3796*x[3]*x[3]-0.0159*x[3]*x[4]-0.573*x[3]*x[7]-0.2382*x[3]*x[8]+0.6875*x[3]*x[9]+0.0888*x[3]*x[10]+0.4852*x[3]*x[13]-0.789*x[3]*x[14]-0.3882*x[3]*x[16]+0.638*x[3]*x[17]+0.9547*x[3]*x[18]+0.4611*x[3]*x[19]+0.2125*x[3]*x[20]-0.068*x[4]*x[4]+0.0827*x[4]*x[6]-0.5224*x[4]*x[8]+0.2857*x[4]*x[9]-0.4035*x[4]*x[10]-0.9429*x[4]*x[12]+0.0974*x[4]*x[20]-0.1072*x[5]*x[8]+0.4912*x[5]*x[16]-0.6237*x[5]*x[17]+0.258*x[5]*x[20]+0.8852*x[6]*x[6]-0.7195*x[6]*x[9]+0.109*x[6]*x[11]-0.3064*x[6]*x[15]-0.8724*x[6]*x[16]+0.6374*x[6]*x[19]+0.6888*x[6]*x[20]+0.7616*x[7]*x[7]+0.3744*x[7]*x[8]+0.2082*x[7]*x[9]-0.5429*x[7]*x[11]+0.2575*x[7]*x[14]+0.0883*x[7]*x[16]+0.2126*x[8]*x[8]-0.6942*x[8]*x[11]+0.4579*x[8]*x[12]+0.7387*x[8]*x[13]-0.7579*x[8]*x[14]-0.0495*x[8]*x[15]+0.6321*x[8]*x[16]+0.0008*x[8]*x[17]-0.4398*x[8]*x[20]-0.2366*x[9]*x[9]-0.7161*x[9]*x[10]+0.9478*x[9]*x[11]-0.5196*x[9]*x[14]+0.0042*x[9]*x[17]+0.0651*x[9]*x[19]+0.4006*x[9]*x[20]-0.9599*x[10]*x[10]+0.3718*x[10]*x[11]+0.1411*x[10]*x[12]+0.2001*x[10]*x[15]+0.8509*x[10]*x[17]-0.4025*x[10]*x[18]+0.7677*x[10]*x[20]+0.4991*x[11]*x[14]-0.4967*x[11]*x[15]+0.1541*x[11]*x[19]+0.7379*x[11]*x[20]-0.3782*x[12]*x[12]+0.5223*x[12]*x[17]+0.9067*x[12]*x[18]+0.2293*x[12]*x[20]+0.4676*x[13]*x[13]-0.733*x[13]*x[20]-0.1891*x[14]*x[14]+0.9632*x[14]*x[17]+0.0381*x[15]*x[15]+0.8914*x[15]*x[16]-0.4873*x[15]*x[18]+0.7907*x[15]*x[20]-0.7313*x[16]*x[16]-0.7602*x[16]*x[18]+0.5532*x[16]*x[20]-0.6629*x[17]*x[19]+0.8645*x[18]*x[18]-0.0062*x[18]*x[20]-0.2134*x[19]*x[19]-0.8591*x[19]*x[20]+0.1544*x[20]*x[20]-0.756*x[1]-0.2826*x[2]-0.0514*x[3]-0.7589*x[4]-0.9586*x[5]+0.0071*x[6]-0.9469*x[7]-0.0097*x[8]-0.6799*x[9]-0.1562*x[10]-0.903*x[11]+0.8956*x[12]-0.6377*x[13]+0.0623*x[14]-0.5408*x[15]+0.9865*x[16]-0.5984*x[17]+0.9369*x[18]+0.8646*x[19]+0.2468*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.7802*x[1]*x[2]-0.5167*x[1]*x[1]+0.2428*x[1]*x[4]+0.426*x[1]*x[5]+0.5916*x[1]*x[6]+0.6954*x[1]*x[7]+0.8914*x[1]*x[8]+0.8239*x[1]*x[9]+0.3587*x[1]*x[10]-0.6082*x[1]*x[12]-0.6576*x[1]*x[15]-0.6347*x[1]*x[16]-0.4948*x[1]*x[17]-0.6727*x[1]*x[19]+0.0373*x[2]*x[2]-0.8048*x[2]*x[4]+0.3787*x[2]*x[5]-0.8016*x[2]*x[7]-0.242*x[2]*x[11]+0.8122*x[2]*x[12]-0.7342*x[2]*x[16]+0.7496*x[2]*x[17]-0.2772*x[2]*x[20]-0.7365*x[3]*x[3]-0.9665*x[3]*x[5]+0.4391*x[3]*x[7]+0.5016*x[3]*x[8]-0.7832*x[3]*x[9]+0.56*x[3]*x[13]+0.7463*x[3]*x[14]+0.4563*x[3]*x[15]+0.1012*x[4]*x[5]-0.5311*x[4]*x[8]+0.6508*x[4]*x[11]+0.385*x[4]*x[12]-0.5726*x[4]*x[13]+0.261*x[4]*x[17]-0.5473*x[4]*x[18]-0.2536*x[4]*x[19]-0.9189*x[4]*x[20]-0.6963*x[5]*x[8]+0.4*x[5]*x[9]+0.0414*x[5]*x[10]-0.2907*x[5]*x[13]+0.0446*x[5]*x[16]-0.7375*x[5]*x[17]+0.2151*x[5]*x[18]+0.563*x[5]*x[20]-0.7068*x[6]*x[6]+0.3817*x[6]*x[7]+0.0579*x[6]*x[9]-0.3878*x[6]*x[12]-0.456*x[6]*x[18]-0.1266*x[6]*x[19]-0.6643*x[7]*x[7]-0.5231*x[7]*x[8]+0.5156*x[7]*x[10]-0.5479*x[7]*x[12]+0.4946*x[7]*x[16]+0.8766*x[7]*x[17]+0.9412*x[7]*x[20]-0.3814*x[8]*x[8]+0.4317*x[8]*x[9]+0.7855*x[8]*x[10]-0.9883*x[8]*x[13]-0.4354*x[8]*x[14]-0.0687*x[8]*x[15]-0.9643*x[8]*x[17]+0.7034*x[8]*x[20]-0.4064*x[9]*x[9]-0.2343*x[9]*x[11]-0.6763*x[9]*x[13]+0.6846*x[9]*x[18]+0.9334*x[9]*x[20]-0.6254*x[10]*x[10]+0.9348*x[10]*x[13]-0.6663*x[10]*x[14]-0.6413*x[10]*x[15]-0.2235*x[10]*x[16]+0.8645*x[10]*x[18]-0.6643*x[10]*x[20]-0.1999*x[11]*x[11]-0.7258*x[11]*x[16]-0.7233*x[11]*x[18]+0.7456*x[11]*x[19]+0.4285*x[11]*x[20]-0.7403*x[12]*x[14]-0.0219*x[12]*x[15]+0.3124*x[12]*x[16]-0.4897*x[12]*x[20]-0.3725*x[13]*x[14]-0.0549*x[13]*x[15]-0.6272*x[14]*x[14]-0.5046*x[14]*x[17]-0.9397*x[14]*x[18]+0.2058*x[14]*x[19]+0.9399*x[14]*x[20]+0.361*x[15]*x[15]+0.017*x[15]*x[16]+0.6321*x[15]*x[17]-0.0924*x[15]*x[18]+0.5396*x[16]*x[19]-0.8179*x[16]*x[20]+0.5916*x[17]*x[17]-0.174*x[17]*x[20]-0.7632*x[18]*x[18]+0.4464*x[18]*x[20]+0.3816*x[19]*x[19]+0.8258*x[19]*x[20]+0.6814*x[20]*x[20]+0.5022*x[1]+0.3228*x[2]+0.1633*x[3]+0.9017*x[4]+0.3344*x[5]+0.0707*x[6]+0.6542*x[7]-0.0503*x[8]+0.4622*x[9]+0.0659*x[10]+0.1075*x[11]+0.6404*x[12]-0.9382*x[13]+0.6695*x[14]+0.4683*x[15]+0.2586*x[16]-0.8063*x[17]-0.5563*x[18]-0.1988*x[19]+0.6008*x[20] <= 0.932)
@NLconstraint(m, e3, 0.1747*x[1]*x[1]+0.7777*x[1]*x[3]-0.7912*x[1]*x[4]+0.8751*x[1]*x[5]-0.7533*x[1]*x[7]-0.3339*x[1]*x[10]-0.9514*x[1]*x[12]+0.2213*x[1]*x[14]+0.8273*x[1]*x[15]+0.6502*x[1]*x[16]+0.5733*x[1]*x[19]-0.674*x[1]*x[20]-0.53*x[2]*x[2]-0.7951*x[2]*x[3]+0.5705*x[2]*x[9]-0.7144*x[2]*x[11]-0.137*x[2]*x[12]+0.3128*x[2]*x[13]+0.1111*x[2]*x[14]+0.6411*x[2]*x[15]-0.1264*x[2]*x[18]-0.4205*x[3]*x[3]+0.2327*x[3]*x[8]+0.4034*x[3]*x[10]+0.4531*x[3]*x[11]+0.2786*x[3]*x[15]+0.5105*x[3]*x[16]+0.0058*x[3]*x[17]-0.0251*x[3]*x[19]+0.0189*x[3]*x[20]-0.0467*x[4]*x[4]+0.8008*x[4]*x[5]+0.3626*x[4]*x[6]-0.4023*x[4]*x[7]+0.3196*x[4]*x[10]+0.1292*x[4]*x[12]-0.345*x[4]*x[14]-0.9455*x[4]*x[18]+0.6196*x[4]*x[19]-0.3309*x[4]*x[20]-0.6374*x[5]*x[5]-0.6004*x[5]*x[6]+0.0882*x[5]*x[9]+0.9549*x[5]*x[13]-0.6273*x[5]*x[14]+0.182*x[5]*x[18]-0.4531*x[5]*x[19]-0.1208*x[5]*x[20]+0.8046*x[6]*x[6]-0.794*x[6]*x[7]+0.8876*x[6]*x[8]-0.7547*x[6]*x[10]-0.7755*x[6]*x[11]-0.6487*x[6]*x[13]+0.8219*x[6]*x[14]-0.939*x[6]*x[16]-0.6507*x[6]*x[17]-0.2498*x[6]*x[18]-0.1048*x[6]*x[20]+0.0875*x[7]*x[7]-0.2541*x[7]*x[13]-0.2915*x[7]*x[14]+0.49*x[7]*x[15]-0.3685*x[7]*x[16]+0.5508*x[7]*x[18]-0.3432*x[7]*x[20]-0.8968*x[8]*x[10]-0.9094*x[8]*x[11]+0.1387*x[8]*x[13]-0.5574*x[8]*x[14]+0.8792*x[8]*x[16]-0.2314*x[8]*x[19]-0.4063*x[9]*x[11]+0.2312*x[9]*x[12]-0.9366*x[9]*x[14]+0.6531*x[9]*x[15]-0.3668*x[10]*x[11]+0.4111*x[10]*x[15]+0.6731*x[10]*x[16]+0.5564*x[10]*x[18]-0.2401*x[10]*x[20]+0.6451*x[11]*x[11]-0.1355*x[11]*x[14]-0.0068*x[11]*x[17]-0.6715*x[11]*x[19]-0.0453*x[12]*x[13]+0.5161*x[12]*x[14]+0.844*x[12]*x[15]-0.6752*x[12]*x[18]+0.1329*x[13]*x[13]+0.4734*x[13]*x[14]-0.0558*x[13]*x[16]+0.7392*x[13]*x[17]+0.2092*x[13]*x[18]+0.7007*x[14]*x[17]+0.4583*x[14]*x[18]+0.9127*x[15]*x[17]-0.7508*x[15]*x[19]-0.4758*x[15]*x[20]+0.7285*x[16]*x[16]+0.9056*x[16]*x[19]+0.9032*x[17]*x[17]-0.4735*x[17]*x[18]+0.7171*x[17]*x[19]-0.3948*x[17]*x[20]+0.4252*x[18]*x[19]+0.8443*x[18]*x[20]+0.9576*x[19]*x[19]+0.7579*x[19]*x[20]+0.8637*x[20]*x[20]+0.7655*x[1]-0.3751*x[2]-0.9375*x[3]+0.1722*x[4]+0.9625*x[5]-0.104*x[6]+0.0244*x[7]-0.6325*x[8]-0.4639*x[9]+0.1059*x[10]-0.2745*x[11]+0.8564*x[12]-0.5653*x[13]+0.5187*x[14]+0.2491*x[15]-0.6465*x[16]-0.2353*x[17]+0.0343*x[18]+0.0752*x[19]-0.8944*x[20] <= 79.471)
@NLconstraint(m, e4, 0.6863*x[1]*x[3]-0.4329*x[1]*x[1]+0.4901*x[1]*x[6]-0.4103*x[1]*x[7]+0.3792*x[1]*x[8]-0.7852*x[1]*x[9]+0.3661*x[1]*x[10]-0.4386*x[1]*x[11]-0.2315*x[1]*x[13]+0.4227*x[1]*x[14]+0.2241*x[1]*x[15]-0.1825*x[1]*x[16]-0.4632*x[1]*x[17]-0.6035*x[1]*x[19]+0.1008*x[1]*x[20]+0.9895*x[2]*x[6]-0.9036*x[2]*x[7]-0.6317*x[2]*x[9]+0.4729*x[2]*x[10]-0.559*x[2]*x[11]+0.7571*x[2]*x[12]-0.2198*x[2]*x[13]+0.9797*x[2]*x[14]-0.0695*x[2]*x[15]+0.3148*x[2]*x[19]+0.3282*x[2]*x[20]+0.0742*x[3]*x[3]-0.5517*x[3]*x[6]-0.8655*x[3]*x[8]-0.5276*x[3]*x[10]+0.1205*x[3]*x[11]+0.5673*x[3]*x[12]-0.4733*x[3]*x[16]+0.9339*x[3]*x[18]-0.2615*x[3]*x[19]-0.8921*x[3]*x[20]-0.9045*x[4]*x[5]+0.1383*x[4]*x[6]-0.7392*x[4]*x[8]-0.5785*x[4]*x[9]-0.8913*x[4]*x[10]-0.1961*x[4]*x[15]+0.425*x[4]*x[19]+0.0611*x[4]*x[20]-0.767*x[5]*x[5]-0.5925*x[5]*x[6]-0.5909*x[5]*x[7]+0.2244*x[5]*x[8]+0.0229*x[5]*x[9]-0.4235*x[5]*x[12]+0.061*x[5]*x[14]-0.6407*x[5]*x[16]-0.801*x[5]*x[17]+0.0897*x[5]*x[20]-0.6056*x[6]*x[7]+0.8974*x[6]*x[9]+0.7053*x[6]*x[11]-0.0932*x[6]*x[12]+0.6822*x[6]*x[13]+0.5184*x[6]*x[18]+0.6262*x[6]*x[20]-0.7109*x[7]*x[7]+0.323*x[7]*x[8]-0.321*x[7]*x[10]-0.0244*x[7]*x[12]+0.0999*x[7]*x[16]-0.642*x[7]*x[18]-0.5983*x[7]*x[20]+0.0495*x[8]*x[8]+0.4789*x[8]*x[11]+0.3427*x[8]*x[12]-0.2211*x[8]*x[13]+0.82*x[8]*x[15]-0.8025*x[8]*x[20]+0.0741*x[9]*x[9]+0.6985*x[9]*x[10]-0.0656*x[9]*x[11]+0.2794*x[9]*x[13]-0.4231*x[9]*x[14]+0.0006*x[9]*x[15]-0.3288*x[9]*x[16]-0.1795*x[10]*x[10]+0.6345*x[10]*x[15]-0.7073*x[10]*x[16]+0.275*x[10]*x[17]-0.4026*x[11]*x[12]+0.3866*x[11]*x[13]+0.695*x[11]*x[15]-0.29*x[11]*x[16]+0.9495*x[11]*x[20]-0.3459*x[12]*x[12]-0.1863*x[12]*x[15]+0.0891*x[12]*x[20]+0.9144*x[13]*x[13]-0.9632*x[13]*x[14]+0.7519*x[13]*x[16]-0.3963*x[13]*x[17]-0.0491*x[13]*x[18]+0.9241*x[14]*x[16]-0.2807*x[14]*x[20]-0.6359*x[15]*x[15]+0.9124*x[15]*x[17]+0.6008*x[15]*x[18]+0.9007*x[15]*x[19]-0.6731*x[16]*x[16]-0.3894*x[16]*x[17]-0.2257*x[17]*x[17]-0.7549*x[17]*x[20]+0.1911*x[18]*x[19]+0.9663*x[18]*x[20]-0.5739*x[1]-0.6995*x[2]+0.0242*x[3]-0.4462*x[4]+0.3482*x[5]+0.3343*x[6]+0.0505*x[7]+0.4626*x[8]+0.2719*x[9]-0.9273*x[10]+0.5019*x[11]-0.4407*x[12]-0.214*x[13]-0.5117*x[14]+0.0364*x[15]-0.957*x[16]-0.6156*x[17]+0.6705*x[18]-0.5714*x[19]+0.6198*x[20] <= 40.134)
@NLconstraint(m, e5, 0.6114*x[1]*x[4]-0.7466*x[1]*x[1]-0.0986*x[1]*x[6]-0.6401*x[1]*x[8]+0.5109*x[1]*x[9]-0.3975*x[1]*x[12]+0.9224*x[1]*x[14]-0.1887*x[1]*x[15]+0.3296*x[1]*x[17]-0.6068*x[1]*x[19]+0.3322*x[1]*x[20]+0.3751*x[2]*x[3]+0.9182*x[2]*x[4]+0.7991*x[2]*x[6]-0.7129*x[2]*x[10]+0.0514*x[2]*x[11]-0.0496*x[2]*x[13]+0.1102*x[2]*x[14]-0.2869*x[2]*x[16]-0.9206*x[2]*x[18]+0.4177*x[2]*x[19]+0.2739*x[3]*x[3]+0.2746*x[3]*x[5]+0.1927*x[3]*x[6]+0.5994*x[3]*x[9]+0.4533*x[3]*x[11]-0.2373*x[3]*x[16]-0.8223*x[3]*x[17]+0.7372*x[3]*x[20]-0.2406*x[4]*x[4]-0.0916*x[4]*x[6]+0.2571*x[4]*x[10]+0.0591*x[4]*x[14]+0.7816*x[4]*x[15]+0.1587*x[4]*x[16]+0.2114*x[4]*x[17]+0.2091*x[4]*x[18]-0.8053*x[4]*x[19]+0.8965*x[4]*x[20]+0.761*x[5]*x[5]-0.1055*x[5]*x[6]+0.1688*x[5]*x[8]+0.0746*x[5]*x[12]+0.1599*x[5]*x[13]+0.0232*x[5]*x[14]-0.2367*x[5]*x[17]+0.2952*x[5]*x[20]-0.9825*x[6]*x[6]+0.6823*x[6]*x[10]-0.9401*x[6]*x[11]+0.2494*x[6]*x[12]-0.3754*x[6]*x[13]+0.4822*x[6]*x[16]+0.1921*x[6]*x[19]+0.6205*x[7]*x[8]-0.2894*x[7]*x[10]+0.2471*x[7]*x[13]+0.1924*x[7]*x[14]-0.0308*x[7]*x[15]-0.1908*x[7]*x[16]-0.5095*x[7]*x[17]-0.4513*x[7]*x[19]-0.5954*x[7]*x[20]-0.1586*x[8]*x[11]-0.192*x[8]*x[12]+0.8229*x[8]*x[14]+0.5559*x[8]*x[16]+0.3626*x[8]*x[17]-0.8884*x[8]*x[18]-0.1425*x[8]*x[19]+0.9635*x[8]*x[20]-0.1137*x[9]*x[9]-0.8752*x[9]*x[11]+0.6729*x[9]*x[16]+0.752*x[9]*x[17]+0.7575*x[9]*x[20]-0.0596*x[10]*x[13]+0.6569*x[10]*x[15]-0.5916*x[10]*x[16]+0.612*x[10]*x[17]+0.1003*x[10]*x[18]-0.9562*x[10]*x[20]+0.1344*x[11]*x[11]+0.2901*x[11]*x[13]-0.5136*x[11]*x[14]+0.0387*x[11]*x[17]-0.6076*x[11]*x[18]-0.8728*x[11]*x[19]+0.0686*x[11]*x[20]-0.9648*x[12]*x[12]+0.4918*x[12]*x[20]+0.1907*x[13]*x[13]+0.876*x[13]*x[15]-0.1934*x[13]*x[18]+0.5408*x[14]*x[14]+0.8822*x[14]*x[16]+0.6712*x[14]*x[18]+0.5809*x[15]*x[16]-0.1352*x[15]*x[19]+0.0392*x[15]*x[20]-0.7098*x[16]*x[16]-0.6195*x[16]*x[18]-0.8108*x[16]*x[19]-0.8606*x[16]*x[20]-0.5747*x[17]*x[17]-0.9661*x[17]*x[18]-0.8677*x[17]*x[19]+0.3344*x[17]*x[20]+0.4234*x[19]*x[20]+0.5472*x[20]*x[20]+0.7187*x[1]+0.212*x[2]-0.7857*x[3]+0.2113*x[4]-0.587*x[5]-0.0016*x[6]+0.8113*x[7]+0.2103*x[8]-0.721*x[9]-0.3228*x[10]-0.5868*x[11]-0.9445*x[12]-0.07*x[13]+0.8126*x[14]-0.3954*x[15]-0.575*x[16]-0.5267*x[17]-0.3536*x[18]+0.1759*x[19]-0.3574*x[20] <= 91.104)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
