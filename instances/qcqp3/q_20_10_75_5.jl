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
@NLconstraint(m, e1, -(0.836*x[1]*x[1]-0.1114*x[1]*x[2]+0.1073*x[1]*x[3]-0.1027*x[1]*x[4]-0.9937*x[1]*x[5]-0.6872*x[1]*x[6]+0.933*x[1]*x[8]+0.524*x[1]*x[9]+0.5201*x[1]*x[10]-0.2494*x[1]*x[11]-0.6886*x[1]*x[13]+0.0282*x[1]*x[15]-0.2903*x[1]*x[16]-0.8605*x[1]*x[18]+0.5363*x[1]*x[19]-0.8471*x[2]*x[3]-0.4862*x[2]*x[4]-0.3276*x[2]*x[7]-0.7702*x[2]*x[8]+0.9829*x[2]*x[9]+0.7115*x[2]*x[11]+0.8868*x[2]*x[13]+0.7672*x[2]*x[15]+0.5982*x[2]*x[16]+0.3319*x[2]*x[17]-0.2376*x[2]*x[18]-0.2064*x[2]*x[19]+0.2245*x[2]*x[20]-0.2781*x[3]*x[3]+0.6123*x[3]*x[7]+0.2613*x[3]*x[8]-0.0359*x[3]*x[9]+0.2036*x[3]*x[10]+0.6228*x[3]*x[13]+0.0243*x[3]*x[15]-0.6309*x[3]*x[16]-0.2907*x[3]*x[18]+0.6061*x[4]*x[4]-0.6375*x[4]*x[5]+0.339*x[4]*x[7]-0.9173*x[4]*x[8]-0.7695*x[4]*x[14]+0.2167*x[4]*x[16]+0.5787*x[4]*x[19]-0.7987*x[5]*x[5]-0.4803*x[5]*x[6]+0.0038*x[5]*x[9]-0.8226*x[5]*x[11]-0.6717*x[5]*x[13]-0.5208*x[5]*x[14]+0.6231*x[5]*x[15]+0.4192*x[5]*x[16]-0.0849*x[6]*x[6]-0.755*x[6]*x[7]+0.8824*x[6]*x[12]+0.9265*x[6]*x[16]-0.1015*x[6]*x[18]-0.2032*x[7]*x[7]-0.7009*x[7]*x[8]-0.2949*x[7]*x[11]-0.5893*x[7]*x[12]-0.7408*x[7]*x[15]-0.6599*x[7]*x[19]+0.7304*x[7]*x[20]+0.492*x[8]*x[8]+0.1053*x[8]*x[10]+0.0185*x[8]*x[12]-0.0171*x[8]*x[13]+0.2565*x[8]*x[14]-0.8988*x[8]*x[15]-0.9351*x[8]*x[16]-0.6765*x[8]*x[17]+0.4905*x[8]*x[18]-0.3778*x[9]*x[9]+0.8266*x[9]*x[12]-0.3213*x[9]*x[13]-0.4021*x[9]*x[16]-0.9058*x[9]*x[17]+0.851*x[9]*x[20]-0.3195*x[10]*x[10]+0.5256*x[10]*x[13]-0.2214*x[10]*x[14]-0.8294*x[10]*x[17]+0.493*x[10]*x[18]+0.6132*x[10]*x[19]+0.3399*x[10]*x[20]+0.4701*x[11]*x[12]+0.0236*x[11]*x[18]-0.6796*x[12]*x[13]-0.9552*x[12]*x[15]-0.4406*x[12]*x[20]-0.6552*x[13]*x[13]-0.7558*x[13]*x[14]-0.0511*x[13]*x[15]-0.0387*x[13]*x[17]-0.8519*x[13]*x[18]+0.2865*x[13]*x[20]+0.9777*x[14]*x[14]+0.1329*x[14]*x[17]+0.9096*x[14]*x[19]-0.0513*x[14]*x[20]+0.7383*x[15]*x[17]-0.3744*x[15]*x[19]-0.1165*x[16]*x[16]+0.2898*x[16]*x[19]-0.8786*x[17]*x[18]+0.886*x[18]*x[18]+0.0173*x[18]*x[19]-0.009*x[19]*x[19]+0.228*x[20]*x[20]-0.4074*x[1]+0.0666*x[2]-0.1034*x[3]-0.1514*x[4]+0.1138*x[5]-0.8078*x[6]-0.4814*x[7]+0.2904*x[8]+0.9007*x[9]+0.0822*x[10]-0.3413*x[11]+0.0979*x[12]+0.6824*x[13]-0.8972*x[14]-0.8838*x[15]+0.3834*x[16]-0.6455*x[17]+0.8224*x[18]-0.1821*x[19]-0.7738*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.693*x[1]*x[1]-0.4195*x[1]*x[3]-0.3825*x[1]*x[4]-0.2211*x[1]*x[6]+0.7856*x[1]*x[7]+0.8429*x[1]*x[9]-0.3005*x[1]*x[10]-0.2265*x[1]*x[12]-0.3509*x[1]*x[14]+0.6469*x[1]*x[15]+0.3731*x[1]*x[18]+0.1932*x[1]*x[19]+0.9454*x[2]*x[2]+0.1262*x[2]*x[5]+0.0117*x[2]*x[7]+0.0363*x[2]*x[9]+0.8975*x[2]*x[10]-0.6092*x[2]*x[11]+0.0546*x[2]*x[12]-0.9794*x[2]*x[13]-0.7259*x[2]*x[14]-0.4556*x[2]*x[15]-0.9702*x[2]*x[16]-0.6675*x[2]*x[17]-0.9632*x[2]*x[18]+0.105*x[2]*x[19]+0.603*x[2]*x[20]+0.7221*x[3]*x[4]-0.7818*x[3]*x[5]+0.4377*x[3]*x[8]+0.9201*x[3]*x[9]-0.8001*x[3]*x[10]+0.1377*x[3]*x[11]+0.3694*x[3]*x[12]+0.9422*x[3]*x[18]-0.3503*x[3]*x[20]+0.3575*x[4]*x[5]-0.9325*x[4]*x[6]+0.7377*x[4]*x[8]+0.6835*x[4]*x[9]+0.6576*x[4]*x[13]-0.4333*x[4]*x[14]-0.4877*x[4]*x[16]+0.2619*x[4]*x[20]+0.6732*x[5]*x[9]+0.2482*x[5]*x[12]+0.7801*x[5]*x[15]-0.8355*x[5]*x[17]-0.8444*x[6]*x[6]-0.608*x[6]*x[7]-0.9823*x[6]*x[8]-0.4701*x[6]*x[10]-0.1965*x[6]*x[12]+0.1051*x[6]*x[15]+0.1475*x[6]*x[17]+0.0369*x[6]*x[19]-0.1982*x[6]*x[20]-0.8809*x[7]*x[13]-0.4424*x[7]*x[14]-0.4707*x[7]*x[15]-0.2621*x[7]*x[18]-0.8413*x[7]*x[20]+0.0589*x[8]*x[10]-0.0023*x[8]*x[11]-0.6515*x[8]*x[12]+0.3059*x[8]*x[15]+0.877*x[8]*x[16]-0.6256*x[8]*x[17]-0.257*x[8]*x[18]-0.1793*x[8]*x[19]-0.6084*x[8]*x[20]+0.0742*x[9]*x[12]+0.7606*x[9]*x[13]-0.8245*x[9]*x[14]-0.9415*x[9]*x[15]-0.9652*x[9]*x[16]+0.7628*x[9]*x[19]-0.2855*x[10]*x[10]+0.3746*x[10]*x[11]-0.988*x[10]*x[17]-0.2345*x[10]*x[20]-0.2256*x[11]*x[11]+0.4709*x[11]*x[12]-0.3679*x[11]*x[13]+0.7593*x[11]*x[15]-0.3091*x[11]*x[16]+0.9491*x[12]*x[12]+0.9249*x[12]*x[16]+0.307*x[12]*x[17]+0.0507*x[12]*x[19]-0.8355*x[13]*x[14]-0.8129*x[13]*x[15]-0.002*x[13]*x[16]-0.6894*x[13]*x[19]+0.1989*x[14]*x[15]-0.4184*x[14]*x[17]+0.0385*x[14]*x[19]-0.5056*x[14]*x[20]+0.6497*x[15]*x[16]-0.9428*x[15]*x[17]+0.2777*x[15]*x[18]-0.3002*x[16]*x[20]+0.856*x[17]*x[18]-0.1346*x[17]*x[19]-0.9428*x[17]*x[20]+0.2709*x[18]*x[19]-0.3782*x[18]*x[20]-0.4701*x[19]*x[19]-0.7721*x[19]*x[20]-0.8898*x[20]*x[20]-0.6175*x[1]-0.341*x[2]-0.721*x[3]+0.7536*x[4]-0.8222*x[5]+0.7964*x[6]+0.3735*x[7]+0.3368*x[8]-0.0123*x[9]-0.8843*x[10]+0.5454*x[11]+0.3603*x[12]-0.4166*x[13]+0.9504*x[14]-0.0999*x[15]+0.1527*x[16]-0.1428*x[17]+0.6931*x[18]+0.6496*x[19]-0.5233*x[20] <= 87.553)
@NLconstraint(m, e3, (-0.1299*x[1]*x[1])-0.7062*x[1]*x[2]+0.4027*x[1]*x[4]+0.286*x[1]*x[6]+0.3614*x[1]*x[7]+0.6332*x[1]*x[10]-0.915*x[1]*x[11]+0.2279*x[1]*x[12]+0.372*x[1]*x[13]-0.8097*x[1]*x[14]-0.1336*x[1]*x[16]+0.3163*x[1]*x[17]-0.5567*x[1]*x[20]+0.3383*x[2]*x[2]+0.2287*x[2]*x[3]+0.8611*x[2]*x[4]-0.3198*x[2]*x[5]+0.7601*x[2]*x[7]-0.6078*x[2]*x[11]-0.2679*x[2]*x[12]-0.8493*x[2]*x[16]+0.5965*x[2]*x[17]-0.7349*x[2]*x[18]+0.3718*x[2]*x[20]-0.936*x[3]*x[3]-0.8946*x[3]*x[5]-0.1059*x[3]*x[7]+0.2389*x[3]*x[8]+0.6595*x[3]*x[11]-0.7849*x[3]*x[13]-0.6798*x[3]*x[14]-0.1533*x[3]*x[15]+0.362*x[3]*x[17]-0.7188*x[4]*x[4]-0.4563*x[4]*x[5]+0.4272*x[4]*x[6]+0.0457*x[4]*x[7]-0.0547*x[4]*x[8]-0.9908*x[4]*x[9]+0.76*x[4]*x[10]-0.3866*x[4]*x[12]+0.8988*x[4]*x[13]-0.0073*x[4]*x[15]-0.0564*x[4]*x[16]-0.3349*x[4]*x[17]-0.914*x[4]*x[19]-0.4018*x[5]*x[7]+0.2424*x[5]*x[9]-0.2584*x[5]*x[10]-0.21*x[5]*x[12]+0.378*x[5]*x[19]-0.2989*x[6]*x[6]+0.3084*x[6]*x[7]+0.5613*x[6]*x[13]+0.3811*x[6]*x[14]+0.1155*x[6]*x[18]-0.5704*x[7]*x[10]-0.3108*x[7]*x[13]-0.8772*x[7]*x[15]-0.9486*x[7]*x[20]-0.1642*x[8]*x[8]-0.8812*x[8]*x[10]+0.4628*x[8]*x[16]-0.2895*x[8]*x[20]-0.8054*x[9]*x[9]+0.4652*x[9]*x[10]+0.1168*x[9]*x[13]+0.3987*x[9]*x[15]-0.0883*x[9]*x[16]-0.1989*x[10]*x[12]+0.3012*x[10]*x[13]+0.3771*x[10]*x[14]-0.6986*x[10]*x[16]+0.1201*x[10]*x[17]+0.8028*x[10]*x[20]+0.2907*x[11]*x[11]-0.1346*x[11]*x[12]+0.4451*x[11]*x[13]-0.8029*x[11]*x[14]-0.7211*x[11]*x[15]-0.9812*x[11]*x[16]-0.852*x[11]*x[17]+0.1922*x[11]*x[18]-0.861*x[12]*x[12]+0.2722*x[12]*x[14]+0.1012*x[12]*x[17]+0.3344*x[12]*x[19]-0.587*x[12]*x[20]-0.5269*x[13]*x[13]+0.1569*x[13]*x[17]+0.315*x[13]*x[19]+0.5218*x[13]*x[20]+0.4919*x[14]*x[14]-0.0737*x[14]*x[15]+0.9334*x[14]*x[16]-0.0088*x[14]*x[19]-0.6584*x[14]*x[20]+0.4117*x[15]*x[15]+0.0512*x[15]*x[16]+0.2245*x[15]*x[20]+0.5118*x[16]*x[16]-0.2796*x[16]*x[17]+0.2254*x[16]*x[19]+0.0065*x[16]*x[20]+0.0293*x[17]*x[19]-0.9904*x[18]*x[18]-0.5853*x[18]*x[19]+0.8069*x[18]*x[20]-0.8448*x[19]*x[20]+0.7952*x[20]*x[20]+0.3214*x[1]+0.7437*x[2]-0.2634*x[3]+0.7435*x[4]-0.4667*x[5]-0.6213*x[6]-0.8529*x[7]+0.8115*x[8]-0.1523*x[9]-0.5391*x[10]+0.7077*x[11]+0.9654*x[12]+0.5246*x[13]+0.5846*x[14]+0.0286*x[15]-0.0709*x[16]-0.7024*x[17]+0.2482*x[18]+0.9246*x[19]-0.2218*x[20] <= 11.873)
@NLconstraint(m, e4, 0.8341*x[1]*x[1]-0.4921*x[1]*x[7]+0.821*x[1]*x[8]-0.199*x[1]*x[12]+0.2648*x[1]*x[13]-0.0052*x[1]*x[14]-0.9311*x[1]*x[15]+0.4723*x[1]*x[16]+0.2144*x[1]*x[17]-0.7689*x[1]*x[18]-0.2704*x[1]*x[20]+0.9908*x[2]*x[2]-0.5185*x[2]*x[3]-0.7759*x[2]*x[10]+0.9491*x[2]*x[11]+0.8987*x[2]*x[13]+0.6061*x[2]*x[15]+0.5135*x[2]*x[16]+0.7935*x[2]*x[18]+0.1909*x[2]*x[20]-0.4131*x[3]*x[7]+0.4716*x[3]*x[8]+0.2649*x[3]*x[10]+0.1872*x[3]*x[11]-0.0817*x[3]*x[12]+0.1376*x[3]*x[16]+0.3835*x[3]*x[20]-0.3463*x[4]*x[4]+0.5589*x[4]*x[5]-0.856*x[4]*x[8]+0.8075*x[4]*x[9]+0.9022*x[4]*x[10]-0.711*x[4]*x[14]+0.3059*x[4]*x[15]-0.4525*x[4]*x[16]+0.825*x[4]*x[19]+0.9171*x[4]*x[20]-0.2118*x[5]*x[5]-0.5351*x[5]*x[6]-0.5506*x[5]*x[8]-0.1047*x[5]*x[9]-0.8336*x[5]*x[11]-0.6739*x[5]*x[12]-0.9899*x[5]*x[13]+0.9241*x[5]*x[14]+0.1777*x[5]*x[15]-0.85*x[5]*x[16]-0.0018*x[5]*x[18]-0.8707*x[6]*x[6]+0.9023*x[6]*x[11]-0.0523*x[6]*x[15]+0.6262*x[6]*x[17]-0.3754*x[6]*x[19]-0.5653*x[6]*x[20]+0.6871*x[7]*x[10]+0.3788*x[7]*x[11]-0.5583*x[7]*x[13]+0.2391*x[7]*x[15]-0.5802*x[7]*x[17]+0.559*x[8]*x[8]-0.9418*x[8]*x[10]+0.1783*x[8]*x[12]-0.7312*x[8]*x[14]+0.686*x[8]*x[18]+0.1056*x[8]*x[19]+0.8627*x[8]*x[20]+0.2122*x[9]*x[9]-0.5013*x[9]*x[10]-0.9014*x[9]*x[13]+0.6065*x[9]*x[17]-0.2764*x[9]*x[19]-0.072*x[10]*x[10]-0.4309*x[10]*x[11]+0.7153*x[10]*x[13]-0.9585*x[10]*x[15]+0.9872*x[10]*x[16]-0.7354*x[10]*x[18]+0.3121*x[10]*x[19]+0.3462*x[11]*x[11]-0.6054*x[11]*x[13]-0.6808*x[11]*x[16]+0.564*x[11]*x[17]+0.8549*x[11]*x[18]-0.2255*x[11]*x[19]+0.0153*x[11]*x[20]+0.7478*x[12]*x[12]+0.0664*x[12]*x[15]+0.921*x[12]*x[16]-0.5011*x[12]*x[18]+0.7348*x[12]*x[20]+0.1988*x[13]*x[13]-0.8325*x[13]*x[15]+0.9131*x[13]*x[17]-0.3844*x[13]*x[19]+0.2254*x[13]*x[20]-0.4381*x[14]*x[16]+0.0362*x[14]*x[17]-0.8734*x[14]*x[18]+0.3218*x[14]*x[20]-0.1389*x[15]*x[15]+0.9425*x[15]*x[17]-0.5643*x[15]*x[20]-0.1296*x[16]*x[16]+0.0535*x[16]*x[17]-0.1266*x[16]*x[20]+0.2591*x[17]*x[17]+0.296*x[17]*x[19]+0.3598*x[17]*x[20]-0.9684*x[18]*x[18]+0.856*x[20]*x[20]-0.8668*x[1]-0.2064*x[2]+0.1934*x[3]+0.4705*x[4]-0.4814*x[5]+0.2486*x[6]-0.5316*x[7]+0.7204*x[8]-0.0136*x[9]+0.9864*x[10]-0.7359*x[11]+0.4676*x[12]+0.628*x[13]-0.8657*x[14]-0.3989*x[15]+0.1086*x[16]-0.3351*x[17]-0.0755*x[18]-0.5727*x[19]-0.6892*x[20] <= 35.963)
@NLconstraint(m, e5, 0.8222*x[1]*x[2]-0.9496*x[1]*x[1]-0.7053*x[1]*x[3]-0.481*x[1]*x[5]+0.3118*x[1]*x[7]-0.1085*x[1]*x[8]-0.5715*x[1]*x[9]+0.4158*x[1]*x[11]+0.8092*x[1]*x[12]+0.6833*x[1]*x[16]-0.4717*x[1]*x[17]-0.3555*x[1]*x[18]+0.9405*x[1]*x[19]+0.1861*x[1]*x[20]+0.1401*x[2]*x[2]+0.6989*x[2]*x[3]-0.5765*x[2]*x[6]-0.388*x[2]*x[8]+0.9754*x[2]*x[11]+0.5561*x[2]*x[13]-0.2387*x[2]*x[14]+0.7094*x[2]*x[17]+0.6913*x[2]*x[19]-0.4773*x[2]*x[20]-0.3294*x[3]*x[3]-0.3995*x[3]*x[5]+0.6763*x[3]*x[11]+0.3385*x[3]*x[17]-0.8502*x[3]*x[20]-0.1396*x[4]*x[9]+0.1953*x[4]*x[11]-0.2683*x[4]*x[15]-0.8114*x[4]*x[18]-0.8959*x[4]*x[20]+0.7917*x[5]*x[5]-0.7895*x[5]*x[6]+0.4422*x[5]*x[12]-0.7204*x[5]*x[19]+0.9258*x[5]*x[20]+0.8418*x[6]*x[6]-0.553*x[6]*x[7]-0.2478*x[6]*x[9]-0.7706*x[6]*x[10]+0.4843*x[6]*x[12]+0.3327*x[6]*x[17]+0.8396*x[6]*x[18]-0.0792*x[6]*x[19]-0.5861*x[6]*x[20]-0.8637*x[7]*x[8]+0.3249*x[7]*x[9]-0.3015*x[7]*x[13]+0.6287*x[7]*x[15]-0.9279*x[7]*x[16]+0.0928*x[7]*x[19]-0.8847*x[8]*x[8]+0.2447*x[8]*x[9]+0.5811*x[8]*x[11]+0.3884*x[8]*x[13]+0.7645*x[8]*x[14]-0.7216*x[8]*x[15]-0.6639*x[8]*x[17]-0.444*x[8]*x[18]-0.5776*x[8]*x[20]-0.1249*x[9]*x[9]-0.6406*x[9]*x[10]+0.3209*x[9]*x[11]-0.9818*x[9]*x[13]+0.6974*x[9]*x[14]+0.0511*x[9]*x[16]+0.1497*x[9]*x[18]+0.5106*x[9]*x[19]+0.6406*x[9]*x[20]+0.903*x[10]*x[10]+0.6483*x[10]*x[11]-0.4474*x[10]*x[14]-0.485*x[10]*x[16]+0.8121*x[11]*x[12]-0.6134*x[11]*x[14]-0.5538*x[11]*x[15]+0.2278*x[11]*x[18]-0.6665*x[12]*x[12]-0.348*x[12]*x[14]+0.6411*x[12]*x[15]-0.4908*x[12]*x[17]+0.7725*x[12]*x[18]-0.2702*x[12]*x[20]+0.4839*x[13]*x[15]-0.6452*x[13]*x[17]+0.089*x[13]*x[19]+0.023*x[13]*x[20]+0.3791*x[14]*x[14]+0.5737*x[14]*x[15]+0.369*x[14]*x[18]+0.8422*x[14]*x[19]+0.6019*x[14]*x[20]-0.8238*x[15]*x[15]+0.8021*x[15]*x[19]-0.3225*x[15]*x[20]-0.7659*x[16]*x[16]-0.6993*x[16]*x[17]+0.2363*x[16]*x[18]-0.2564*x[17]*x[18]+0.4405*x[17]*x[19]+0.3341*x[17]*x[20]-0.6404*x[18]*x[18]-0.0747*x[18]*x[19]+0.3435*x[18]*x[20]+0.733*x[19]*x[19]-0.3162*x[19]*x[20]+0.2713*x[20]*x[20]+0.5158*x[1]-0.954*x[2]-0.4765*x[3]+0.6043*x[4]+0.6981*x[5]-0.7637*x[6]-0.1875*x[7]+0.0567*x[8]+0.2298*x[9]-0.9243*x[10]-0.093*x[11]+0.2013*x[12]-0.5079*x[13]-0.6712*x[14]-0.6563*x[15]-0.2643*x[16]-0.5689*x[17]-0.0074*x[18]-0.047*x[19]-0.0263*x[20] <= 64.702)
@NLconstraint(m, e6, 0.7914*x[1]*x[3]-0.5951*x[1]*x[2]+0.017*x[1]*x[4]-0.3121*x[1]*x[5]+0.1233*x[1]*x[6]-0.6417*x[1]*x[8]-0.0101*x[1]*x[9]+0.9552*x[1]*x[10]+0.6923*x[1]*x[11]-0.7327*x[1]*x[12]-0.1369*x[1]*x[13]-0.3323*x[1]*x[14]+0.116*x[1]*x[15]-0.4644*x[1]*x[16]-0.6279*x[1]*x[17]-0.4293*x[1]*x[19]-0.26*x[1]*x[20]-0.2396*x[2]*x[2]+0.9857*x[2]*x[3]+0.8309*x[2]*x[5]+0.3428*x[2]*x[7]+0.7324*x[2]*x[13]+0.7295*x[2]*x[15]+0.8335*x[2]*x[16]-0.8287*x[2]*x[18]-0.7129*x[2]*x[20]-0.1301*x[3]*x[3]-0.7226*x[3]*x[6]+0.2078*x[3]*x[8]+0.3278*x[3]*x[9]-0.8682*x[3]*x[11]-0.0566*x[3]*x[15]+0.1285*x[3]*x[16]+0.1923*x[3]*x[17]+0.2029*x[3]*x[19]+0.8201*x[4]*x[4]-0.1257*x[4]*x[9]+0.5449*x[4]*x[11]-0.8081*x[4]*x[12]+0.1553*x[4]*x[15]-0.093*x[4]*x[16]-0.2554*x[4]*x[18]+0.2364*x[4]*x[20]-0.5465*x[5]*x[5]-0.8732*x[5]*x[7]+0.4791*x[5]*x[8]+0.6999*x[5]*x[12]-0.3482*x[5]*x[14]-0.5833*x[5]*x[18]-0.234*x[5]*x[19]-0.9675*x[6]*x[6]+0.9697*x[6]*x[8]-0.5434*x[6]*x[13]-0.4397*x[6]*x[14]+0.692*x[6]*x[19]-0.1811*x[7]*x[7]+0.9207*x[7]*x[9]+0.9503*x[7]*x[11]+0.9326*x[7]*x[12]+0.8119*x[7]*x[20]+0.0075*x[8]*x[8]-0.0491*x[8]*x[12]-0.2858*x[8]*x[13]-0.8833*x[8]*x[15]+0.7314*x[8]*x[16]+0.7672*x[8]*x[17]+0.1579*x[8]*x[18]+0.8723*x[8]*x[19]+0.2373*x[9]*x[11]-0.2206*x[9]*x[13]+0.0543*x[9]*x[14]-0.5607*x[9]*x[15]+0.9532*x[9]*x[16]+0.7351*x[9]*x[18]+0.4121*x[9]*x[19]+0.9756*x[9]*x[20]-0.5804*x[10]*x[11]-0.8704*x[10]*x[13]-0.922*x[10]*x[14]-0.0936*x[10]*x[18]-0.0882*x[10]*x[20]+0.7797*x[11]*x[11]-0.2369*x[11]*x[14]-0.6114*x[11]*x[17]-0.7993*x[11]*x[18]+0.5631*x[12]*x[12]-0.9456*x[12]*x[14]+0.4758*x[12]*x[16]+0.8449*x[12]*x[18]-0.9276*x[12]*x[20]+0.7095*x[13]*x[13]+0.2665*x[13]*x[15]+0.4953*x[14]*x[15]-0.8391*x[14]*x[18]+0.428*x[14]*x[19]+0.0037*x[14]*x[20]+0.3188*x[15]*x[15]-0.5103*x[15]*x[16]+0.9419*x[15]*x[18]+0.529*x[15]*x[20]-0.8378*x[16]*x[16]+0.9071*x[16]*x[18]+0.6103*x[16]*x[19]-0.8163*x[16]*x[20]+0.0756*x[17]*x[18]-0.9556*x[17]*x[20]+0.0633*x[18]*x[18]+0.7947*x[19]*x[19]+0.7811*x[19]*x[20]-0.702*x[20]*x[20]+0.8027*x[1]-0.5748*x[2]+0.8764*x[3]-0.6659*x[4]-0.5334*x[5]-0.0032*x[6]+0.5943*x[7]+0.0134*x[8]+0.2414*x[9]+0.2141*x[10]+0.1599*x[11]-0.3197*x[12]-0.7634*x[13]+0.2799*x[14]+0.8816*x[15]-0.3096*x[16]+0.7448*x[17]+0.6217*x[18]+0.4596*x[19]+0.8201*x[20] <= 58.317)
@NLconstraint(m, e7, 0.2126*x[1]*x[3]-0.8042*x[1]*x[2]-0.5521*x[1]*x[4]-0.6773*x[1]*x[6]+0.6527*x[1]*x[7]+0.0924*x[1]*x[9]-0.0892*x[1]*x[10]+0.4242*x[1]*x[11]+0.5851*x[1]*x[12]+0.4418*x[1]*x[13]+0.8451*x[1]*x[17]-0.3541*x[1]*x[18]-0.9237*x[1]*x[19]-0.907*x[2]*x[4]-0.0524*x[2]*x[10]-0.963*x[2]*x[13]+0.53*x[2]*x[15]+0.4664*x[2]*x[16]+0.8136*x[2]*x[19]+0.9649*x[2]*x[20]-0.8699*x[3]*x[5]-0.6003*x[3]*x[6]-0.3661*x[3]*x[7]-0.9375*x[3]*x[9]+0.6207*x[3]*x[10]-0.078*x[3]*x[11]-0.8814*x[3]*x[13]+0.4058*x[3]*x[15]+0.8669*x[3]*x[18]+0.0358*x[3]*x[19]-0.2623*x[3]*x[20]-0.0943*x[4]*x[7]-0.1255*x[4]*x[8]+0.632*x[4]*x[14]+0.481*x[4]*x[16]+0.8411*x[4]*x[17]+0.6462*x[4]*x[18]-0.7341*x[4]*x[19]-0.055*x[5]*x[6]+0.3576*x[5]*x[7]+0.8143*x[5]*x[9]-0.4444*x[5]*x[13]-0.792*x[5]*x[14]-0.0273*x[5]*x[17]-0.7181*x[5]*x[18]+0.3337*x[5]*x[19]+0.9394*x[5]*x[20]+0.5209*x[6]*x[6]-0.5674*x[6]*x[8]-0.1835*x[6]*x[11]+0.0103*x[6]*x[12]-0.1459*x[6]*x[14]-0.8821*x[6]*x[16]-0.4612*x[6]*x[19]-0.0397*x[7]*x[7]+0.5505*x[7]*x[8]-0.1979*x[7]*x[10]-0.0009*x[7]*x[14]+0.9745*x[7]*x[16]-0.2837*x[7]*x[17]+0.7493*x[7]*x[18]-0.3653*x[7]*x[20]-0.007*x[8]*x[8]+0.134*x[8]*x[9]-0.8795*x[8]*x[11]+0.7645*x[8]*x[12]+0.7998*x[8]*x[14]-0.6341*x[8]*x[15]-0.7152*x[8]*x[20]+0.5719*x[9]*x[9]+0.6266*x[9]*x[11]+0.2617*x[9]*x[12]+0.4345*x[9]*x[13]+0.5158*x[9]*x[15]-0.1297*x[9]*x[16]-0.1274*x[9]*x[17]-0.7117*x[9]*x[18]+0.184*x[9]*x[20]+0.9048*x[10]*x[10]-0.3189*x[10]*x[13]+0.8173*x[10]*x[15]+0.5297*x[10]*x[19]-0.3527*x[10]*x[20]+0.2652*x[11]*x[11]-0.9346*x[11]*x[13]+0.4759*x[11]*x[16]+0.8738*x[11]*x[18]-0.1075*x[11]*x[20]+0.7776*x[12]*x[12]+0.1163*x[12]*x[13]+0.4229*x[12]*x[15]-0.7096*x[12]*x[18]-0.1362*x[12]*x[19]+0.7648*x[12]*x[20]+0.4371*x[13]*x[13]+0.1027*x[13]*x[14]-0.6376*x[13]*x[19]-0.397*x[13]*x[20]-0.0505*x[14]*x[14]-0.9207*x[14]*x[15]+0.014*x[14]*x[16]+0.7442*x[15]*x[15]+0.1839*x[15]*x[16]+0.9156*x[15]*x[20]-0.1284*x[16]*x[20]-0.8249*x[17]*x[17]+0.1905*x[18]*x[18]+0.3632*x[18]*x[20]+0.3833*x[19]*x[19]-0.9387*x[20]*x[20]+0.2297*x[1]-0.4234*x[2]-0.2062*x[3]+0.696*x[4]+0.8989*x[5]-0.9968*x[6]-0.6102*x[7]+0.402*x[8]+0.5401*x[9]+0.1296*x[10]-0.0533*x[11]-0.4699*x[12]+0.1773*x[13]+0.4278*x[14]+0.2492*x[15]-0.6537*x[16]+0.1027*x[17]+0.7909*x[18]-0.5429*x[19]+0.148*x[20] <= 96.772)
@NLconstraint(m, e8, 0.9866*x[1]*x[6]+0.3378*x[1]*x[7]+0.1116*x[1]*x[8]-0.9774*x[1]*x[10]-0.749*x[1]*x[11]-0.4737*x[1]*x[12]+0.9297*x[1]*x[13]-0.3972*x[1]*x[14]+0.1328*x[1]*x[15]+0.5611*x[1]*x[16]+0.9742*x[1]*x[17]+0.363*x[1]*x[19]+0.7604*x[1]*x[20]+0.8742*x[2]*x[3]-0.8171*x[2]*x[4]+0.3133*x[2]*x[11]-0.3009*x[2]*x[13]-0.6775*x[2]*x[15]-0.5197*x[2]*x[17]-0.5532*x[2]*x[19]+0.8058*x[2]*x[20]+0.5568*x[3]*x[3]+0.4216*x[3]*x[6]-0.0973*x[3]*x[7]-0.4109*x[3]*x[14]+0.0301*x[3]*x[15]+0.3182*x[3]*x[16]-0.7935*x[3]*x[17]+0.4334*x[3]*x[18]+0.4018*x[3]*x[19]-0.9728*x[4]*x[4]+0.0152*x[4]*x[5]+0.7085*x[4]*x[6]+0.5269*x[4]*x[8]+0.827*x[4]*x[9]-0.793*x[4]*x[10]+0.7996*x[4]*x[17]-0.3091*x[4]*x[18]+0.8628*x[4]*x[20]-0.2313*x[5]*x[5]+0.1136*x[5]*x[7]-0.7916*x[5]*x[9]+0.2725*x[5]*x[11]+0.1921*x[5]*x[13]-0.2961*x[5]*x[17]+0.4283*x[5]*x[20]-0.4723*x[6]*x[7]+0.2194*x[6]*x[9]-0.9971*x[6]*x[10]-0.3716*x[6]*x[11]+0.0632*x[6]*x[13]-0.5826*x[6]*x[15]-0.7692*x[6]*x[17]-0.3095*x[6]*x[18]-0.7225*x[6]*x[19]-0.6566*x[6]*x[20]-0.2147*x[7]*x[8]+0.522*x[7]*x[9]-0.1201*x[7]*x[11]+0.6536*x[7]*x[12]-0.2856*x[7]*x[15]-0.8092*x[7]*x[16]-0.1699*x[7]*x[17]+0.4572*x[7]*x[19]+0.5165*x[8]*x[8]+0.1388*x[8]*x[9]+0.727*x[8]*x[11]+0.1501*x[8]*x[12]-0.9699*x[8]*x[13]+0.932*x[8]*x[17]-0.0166*x[8]*x[19]+0.3318*x[9]*x[11]-0.2619*x[9]*x[12]-0.7333*x[9]*x[20]-0.5679*x[10]*x[10]+0.2343*x[10]*x[12]+0.8787*x[10]*x[13]+0.7436*x[10]*x[14]+0.0069*x[10]*x[15]+0.1899*x[10]*x[16]-0.8321*x[11]*x[11]+0.6712*x[11]*x[12]-0.4167*x[11]*x[14]-0.8268*x[11]*x[16]+0.2814*x[11]*x[19]+0.7763*x[12]*x[12]+0.8681*x[12]*x[14]+0.9622*x[12]*x[15]-0.6596*x[12]*x[17]+0.4316*x[12]*x[19]+0.1894*x[12]*x[20]-0.6872*x[13]*x[13]-0.0322*x[13]*x[15]-0.4364*x[13]*x[16]-0.3272*x[13]*x[20]+0.0732*x[14]*x[14]+0.0109*x[14]*x[17]+0.5689*x[14]*x[20]-0.7547*x[15]*x[15]+0.362*x[15]*x[18]-0.2366*x[15]*x[20]+0.8579*x[16]*x[16]+0.2429*x[16]*x[17]-0.9373*x[16]*x[18]+0.9326*x[16]*x[20]-0.8859*x[17]*x[17]-0.603*x[17]*x[19]+0.4162*x[17]*x[20]-0.7105*x[18]*x[19]+0.7454*x[19]*x[20]-0.8807*x[1]-0.7253*x[2]-0.2535*x[3]-0.174*x[4]-0.3317*x[5]-0.5808*x[6]-0.8707*x[7]+0.4587*x[8]+0.1319*x[9]+0.8437*x[10]-0.2302*x[11]+0.2514*x[12]+0.5345*x[13]+0.1119*x[14]+0.4501*x[15]-0.2267*x[16]-0.5967*x[17]+0.1807*x[18]-0.6845*x[19]+0.0232*x[20] <= 76.184)
@NLconstraint(m, e9, 0.6902*x[1]*x[2]+0.5411*x[1]*x[5]+0.1273*x[1]*x[6]+0.8409*x[1]*x[7]-0.0694*x[1]*x[8]+0.7476*x[1]*x[9]+0.286*x[1]*x[10]+0.3846*x[1]*x[11]-0.5273*x[1]*x[13]+0.5599*x[1]*x[14]-0.8701*x[1]*x[15]-0.5049*x[1]*x[16]+0.8814*x[1]*x[18]-0.1827*x[1]*x[20]+0.0329*x[2]*x[3]-0.4617*x[2]*x[4]+0.9164*x[2]*x[5]-0.1395*x[2]*x[11]-0.1776*x[2]*x[12]+0.9028*x[2]*x[13]+0.3241*x[2]*x[14]+0.8005*x[2]*x[16]+0.1118*x[3]*x[3]-0.6148*x[3]*x[4]+0.6826*x[3]*x[5]-0.5692*x[3]*x[6]-0.2539*x[3]*x[8]+0.6132*x[3]*x[9]-0.1176*x[3]*x[11]+0.215*x[3]*x[12]+0.3028*x[3]*x[13]+0.9708*x[3]*x[14]-0.3913*x[3]*x[18]+0.2855*x[4]*x[4]-0.2287*x[4]*x[6]+0.2225*x[4]*x[7]-0.9418*x[4]*x[9]+0.9223*x[4]*x[10]+0.5386*x[4]*x[11]-0.847*x[4]*x[12]-0.3872*x[4]*x[14]-0.1502*x[4]*x[17]+0.5077*x[4]*x[20]+0.0304*x[5]*x[5]+0.9783*x[5]*x[6]+0.1779*x[5]*x[8]-0.7164*x[5]*x[9]+0.0612*x[5]*x[12]+0.7956*x[5]*x[13]-0.9359*x[5]*x[16]+0.916*x[5]*x[18]+0.6705*x[5]*x[19]+0.7077*x[5]*x[20]-0.6391*x[6]*x[6]-0.3963*x[6]*x[7]+0.8627*x[6]*x[8]-0.8338*x[6]*x[11]-0.5416*x[6]*x[12]-0.8688*x[6]*x[13]-0.6614*x[6]*x[16]-0.3653*x[6]*x[20]-0.7474*x[7]*x[7]-0.1906*x[7]*x[12]-0.5892*x[7]*x[17]+0.7356*x[7]*x[18]-0.8721*x[7]*x[19]-0.2635*x[7]*x[20]-0.1336*x[8]*x[8]+0.4805*x[8]*x[10]-0.1286*x[8]*x[11]+0.6269*x[8]*x[13]-0.769*x[8]*x[15]+0.2814*x[9]*x[9]-0.4023*x[9]*x[12]+0.1028*x[9]*x[16]+0.8339*x[9]*x[19]-0.4078*x[9]*x[20]-0.4328*x[10]*x[10]+0.2045*x[10]*x[11]+0.3949*x[10]*x[13]-0.2627*x[10]*x[16]+0.8844*x[10]*x[17]+0.4037*x[10]*x[20]-0.9775*x[11]*x[11]-0.5909*x[11]*x[12]+0.3133*x[11]*x[17]+0.3739*x[11]*x[19]+0.8247*x[11]*x[20]-0.0419*x[12]*x[12]-0.9866*x[12]*x[17]-0.6835*x[12]*x[18]+0.1548*x[13]*x[14]-0.9705*x[13]*x[17]+0.3516*x[13]*x[19]+0.0013*x[13]*x[20]-0.114*x[14]*x[14]+0.6694*x[14]*x[19]+0.8987*x[14]*x[20]-0.2785*x[15]*x[15]+0.1879*x[15]*x[17]+0.5328*x[15]*x[20]-0.1592*x[16]*x[16]+0.6652*x[16]*x[17]+0.2892*x[16]*x[18]-0.2944*x[16]*x[19]+0.7848*x[17]*x[18]-0.8924*x[17]*x[20]+0.9419*x[18]*x[20]+0.752*x[19]*x[20]-0.4397*x[20]*x[20]+0.2122*x[1]-0.9588*x[2]-0.0876*x[3]-0.5009*x[4]+0.5146*x[5]-0.6671*x[6]-0.7338*x[7]-0.8352*x[8]+0.8649*x[9]-0.0247*x[10]-0.4753*x[11]-0.8048*x[12]-0.7216*x[13]+0.4142*x[14]+0.0985*x[15]-0.4276*x[16]-0.8205*x[17]-0.0675*x[18]-0.5999*x[19]+0.2707*x[20] <= 81.855)
@NLconstraint(m, e10, 0.408*x[1]*x[1]-0.8432*x[1]*x[2]+0.3939*x[1]*x[3]-0.8887*x[1]*x[4]+0.2384*x[1]*x[5]+0.9642*x[1]*x[7]-0.9307*x[1]*x[8]-0.1755*x[1]*x[10]+0.7829*x[1]*x[11]+0.4943*x[1]*x[12]+0.559*x[1]*x[13]-0.1403*x[1]*x[15]+0.284*x[1]*x[16]+0.0267*x[1]*x[20]-0.2197*x[2]*x[2]-0.469*x[2]*x[3]-0.6903*x[2]*x[5]+0.4266*x[2]*x[7]+0.7435*x[2]*x[9]-0.7908*x[2]*x[11]+0.4706*x[2]*x[12]+0.2816*x[2]*x[14]+0.4392*x[2]*x[15]+0.3125*x[3]*x[6]+0.4939*x[3]*x[9]+0.7518*x[3]*x[10]-0.3042*x[3]*x[13]+0.8395*x[3]*x[14]+0.9628*x[3]*x[17]-0.5567*x[3]*x[19]+0.945*x[4]*x[4]+0.8931*x[4]*x[5]-0.9811*x[4]*x[9]-0.2845*x[4]*x[11]-0.7016*x[4]*x[13]-0.1804*x[4]*x[18]+0.1272*x[5]*x[5]-0.4609*x[5]*x[6]+0.1728*x[5]*x[7]+0.2762*x[5]*x[8]-0.3047*x[5]*x[10]+0.042*x[5]*x[11]-0.3966*x[5]*x[13]+0.3707*x[5]*x[14]-0.2648*x[5]*x[15]-0.9009*x[5]*x[20]-0.644*x[6]*x[7]+0.9781*x[6]*x[10]+0.4169*x[6]*x[11]-0.6076*x[6]*x[14]-0.2686*x[6]*x[17]+0.108*x[6]*x[20]+0.3418*x[7]*x[7]+0.2002*x[7]*x[9]+0.0724*x[7]*x[10]-0.074*x[7]*x[12]+0.7069*x[7]*x[13]+0.2183*x[7]*x[15]-0.0449*x[7]*x[18]+0.0272*x[7]*x[20]+0.747*x[8]*x[8]-0.5198*x[8]*x[9]+0.748*x[8]*x[11]-0.45*x[8]*x[12]-0.7807*x[8]*x[15]-0.1629*x[8]*x[16]+0.0623*x[9]*x[10]+0.2746*x[9]*x[12]-0.1405*x[9]*x[13]+0.7518*x[9]*x[20]-0.9449*x[10]*x[10]+0.9494*x[10]*x[12]-0.9515*x[10]*x[14]+0.3494*x[10]*x[15]+0.4547*x[10]*x[17]-0.8152*x[10]*x[20]-0.4954*x[11]*x[11]+0.3839*x[11]*x[13]-0.7156*x[11]*x[17]+0.7024*x[11]*x[18]-0.4737*x[11]*x[19]+0.4658*x[11]*x[20]+0.8738*x[12]*x[13]-0.0665*x[12]*x[17]-0.7744*x[12]*x[19]+0.1856*x[13]*x[13]+0.6028*x[13]*x[15]-0.4755*x[13]*x[16]+0.8935*x[13]*x[18]-0.0689*x[13]*x[19]-0.9655*x[13]*x[20]+0.2362*x[14]*x[14]-0.6425*x[14]*x[15]+0.416*x[14]*x[16]-0.6543*x[14]*x[18]-0.403*x[14]*x[20]+0.7337*x[15]*x[15]-0.7709*x[15]*x[17]+0.1285*x[15]*x[18]+0.5274*x[16]*x[16]+0.3646*x[16]*x[17]+0.03*x[16]*x[20]-0.6175*x[17]*x[17]-0.7196*x[17]*x[18]-0.4588*x[17]*x[19]-0.8316*x[17]*x[20]+0.6398*x[18]*x[18]+0.9401*x[18]*x[19]+0.5096*x[19]*x[19]+0.3523*x[19]*x[20]-0.1918*x[1]-0.5268*x[2]+0.0592*x[3]-0.6065*x[4]+0.3003*x[5]-0.3101*x[6]-0.9303*x[7]+0.5211*x[8]-0.7319*x[9]+0.1461*x[10]+0.8423*x[11]+0.7675*x[12]-0.3384*x[13]+0.6303*x[14]-0.5384*x[15]-0.759*x[16]+0.5167*x[17]-0.4279*x[18]+0.8214*x[19]+0.0917*x[20] <= 47.715)
@NLconstraint(m, e11, 0.5315*x[1]*x[1]+0.0438*x[1]*x[2]+0.9929*x[1]*x[3]+0.0328*x[1]*x[4]-0.7385*x[1]*x[5]-0.8763*x[1]*x[6]-0.6053*x[1]*x[7]+0.0427*x[1]*x[8]-0.3831*x[1]*x[9]+0.0797*x[1]*x[12]+0.9257*x[1]*x[14]+0.499*x[1]*x[15]+0.4953*x[1]*x[17]+0.8633*x[1]*x[18]-0.1368*x[1]*x[20]-0.8057*x[2]*x[2]+0.7719*x[2]*x[3]-0.1274*x[2]*x[5]+0.4895*x[2]*x[7]-0.8192*x[2]*x[9]+0.9326*x[2]*x[10]-0.5058*x[2]*x[11]-0.1845*x[2]*x[12]-0.973*x[2]*x[17]-0.43*x[2]*x[20]+0.9658*x[3]*x[5]+0.2966*x[3]*x[6]+0.3141*x[3]*x[12]+0.3923*x[3]*x[13]+0.7676*x[3]*x[15]+0.0235*x[3]*x[20]+0.2432*x[4]*x[5]-0.4351*x[4]*x[6]+0.0084*x[4]*x[8]+0.679*x[4]*x[11]-0.8298*x[4]*x[12]+0.5675*x[4]*x[13]+0.8887*x[4]*x[14]+0.3364*x[4]*x[19]-0.4676*x[4]*x[20]-0.0857*x[5]*x[5]-0.3377*x[5]*x[6]-0.2541*x[5]*x[7]+0.3156*x[5]*x[8]-0.8241*x[5]*x[10]+0.1959*x[5]*x[11]-0.9339*x[5]*x[12]+0.6206*x[5]*x[13]-0.622*x[5]*x[17]-0.9434*x[5]*x[20]+0.4677*x[6]*x[10]+0.7032*x[6]*x[12]-0.1254*x[6]*x[14]+0.4976*x[6]*x[18]+0.6977*x[6]*x[20]-0.0975*x[7]*x[7]-0.5853*x[7]*x[8]-0.74*x[7]*x[10]-0.6278*x[7]*x[13]-0.5368*x[7]*x[14]+0.1543*x[7]*x[15]-0.5558*x[7]*x[20]+0.0021*x[8]*x[8]+0.8625*x[8]*x[9]+0.6139*x[8]*x[13]-0.278*x[8]*x[15]+0.7475*x[8]*x[17]-0.3659*x[8]*x[20]-0.6538*x[9]*x[9]+0.883*x[9]*x[10]+0.4606*x[9]*x[11]+0.7032*x[9]*x[12]-0.8281*x[9]*x[14]+0.5102*x[9]*x[15]+0.9394*x[9]*x[17]-0.6209*x[9]*x[18]-0.5313*x[9]*x[19]-0.6175*x[9]*x[20]+0.3322*x[10]*x[11]+0.642*x[10]*x[12]+0.9814*x[10]*x[13]-0.5331*x[10]*x[17]-0.9719*x[10]*x[20]+0.6774*x[11]*x[11]-0.8404*x[11]*x[14]-0.4808*x[11]*x[15]-0.8928*x[11]*x[16]+0.1957*x[11]*x[18]-0.7846*x[11]*x[19]+0.3724*x[11]*x[20]+0.951*x[12]*x[12]+0.9252*x[12]*x[14]+0.1529*x[12]*x[15]-0.3025*x[12]*x[16]+0.821*x[12]*x[17]-0.6915*x[13]*x[14]-0.9369*x[13]*x[15]-0.0226*x[14]*x[16]-0.5354*x[14]*x[17]-0.1392*x[14]*x[18]+0.3668*x[14]*x[19]+0.0099*x[14]*x[20]-0.984*x[15]*x[15]+0.4263*x[15]*x[17]+0.9185*x[15]*x[20]-0.247*x[16]*x[17]+0.293*x[16]*x[18]+0.7454*x[16]*x[20]+0.4981*x[18]*x[19]-0.4727*x[20]*x[20]+0.7687*x[1]+0.3613*x[2]+0.4185*x[3]+0.7752*x[4]-0.0802*x[5]-0.2766*x[6]+0.7283*x[7]-0.8287*x[8]-0.2402*x[9]-0.166*x[10]-0.6598*x[11]+0.2959*x[12]-0.9375*x[13]+0.5521*x[14]-0.5534*x[15]+0.8789*x[16]-0.6375*x[17]+0.1482*x[18]+0.7678*x[19]+0.344*x[20] <= 1.112)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
