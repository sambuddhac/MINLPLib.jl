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
@NLconstraint(m, e1, -(0.4834*x[1]*x[2]-0.6853*x[1]*x[1]-0.9677*x[1]*x[3]+0.9793*x[1]*x[4]-0.3145*x[1]*x[5]+0.9356*x[1]*x[6]-0.651*x[1]*x[7]-0.7873*x[1]*x[8]+0.5914*x[1]*x[9]-0.82*x[1]*x[10]-0.8009*x[1]*x[11]-0.4826*x[1]*x[12]-0.2493*x[1]*x[13]+0.5075*x[1]*x[14]-0.6548*x[1]*x[15]-0.7159*x[1]*x[16]-0.7049*x[1]*x[17]-0.3438*x[1]*x[18]-0.1976*x[1]*x[19]+0.0079*x[1]*x[20]-0.8311*x[2]*x[2]+0.3371*x[2]*x[3]+0.6852*x[2]*x[4]+0.2669*x[2]*x[5]+0.3508*x[2]*x[6]-0.281*x[2]*x[7]-0.1383*x[2]*x[8]-0.5659*x[2]*x[9]+0.008*x[2]*x[10]-0.2438*x[2]*x[11]+0.8352*x[2]*x[12]-0.6792*x[2]*x[13]-0.505*x[2]*x[14]-0.117*x[2]*x[15]-0.3067*x[2]*x[16]-0.3803*x[2]*x[17]+0.7882*x[2]*x[18]+0.3372*x[2]*x[19]-0.919*x[2]*x[20]-0.7383*x[3]*x[3]+0.7541*x[3]*x[4]+0.5834*x[3]*x[5]+0.1474*x[3]*x[6]+0.0948*x[3]*x[7]-0.3359*x[3]*x[8]+0.165*x[3]*x[9]+0.3496*x[3]*x[10]+0.6279*x[3]*x[11]-0.6031*x[3]*x[12]+0.1115*x[3]*x[13]-0.7796*x[3]*x[14]-0.5661*x[3]*x[15]+0.1693*x[3]*x[16]+0.957*x[3]*x[17]+0.7301*x[3]*x[18]-0.1917*x[3]*x[19]+0.9096*x[3]*x[20]-0.2321*x[4]*x[4]-0.1408*x[4]*x[5]+0.9235*x[4]*x[6]-0.5794*x[4]*x[7]+0.227*x[4]*x[8]-0.3337*x[4]*x[9]-0.3646*x[4]*x[10]-0.4327*x[4]*x[11]-0.1094*x[4]*x[12]+0.3825*x[4]*x[13]+0.5071*x[4]*x[14]+0.8944*x[4]*x[15]-0.3627*x[4]*x[16]+0.065*x[4]*x[17]+0.7137*x[4]*x[18]+0.5367*x[4]*x[19]+0.1169*x[4]*x[20]+0.1142*x[5]*x[5]-0.814*x[5]*x[6]+0.7162*x[5]*x[7]+0.4038*x[5]*x[8]+0.3275*x[5]*x[9]-0.7578*x[5]*x[10]+0.2681*x[5]*x[11]+0.618*x[5]*x[12]+0.8112*x[5]*x[13]+0.652*x[5]*x[14]+0.5574*x[5]*x[15]+0.1105*x[5]*x[16]-0.685*x[5]*x[17]+0.2517*x[5]*x[18]-0.2113*x[5]*x[19]-0.9952*x[5]*x[20]-0.9702*x[6]*x[6]-0.3537*x[6]*x[7]+0.326*x[6]*x[8]-0.2615*x[6]*x[9]-0.1564*x[6]*x[10]+0.9175*x[6]*x[11]-0.5903*x[6]*x[12]+0.9029*x[6]*x[13]+0.3648*x[6]*x[14]-0.9126*x[6]*x[15]-0.644*x[6]*x[16]+0.7789*x[6]*x[17]+0.0203*x[6]*x[18]+0.8897*x[6]*x[19]-0.5469*x[6]*x[20]-0.2008*x[7]*x[7]+0.6762*x[7]*x[8]+0.3243*x[7]*x[9]-0.6903*x[7]*x[10]+0.2058*x[7]*x[11]+0.3876*x[7]*x[12]+0.3695*x[7]*x[13]+0.0322*x[7]*x[14]-0.502*x[7]*x[15]-0.9679*x[7]*x[16]+0.6939*x[7]*x[17]-0.7335*x[7]*x[18]-0.0071*x[7]*x[19]+0.7911*x[7]*x[20]-0.8217*x[8]*x[8]-0.6734*x[8]*x[9]+0.5343*x[8]*x[10]-0.6164*x[8]*x[11]-0.0679*x[8]*x[12]-0.3156*x[8]*x[13]-0.9986*x[8]*x[14]-0.0287*x[8]*x[15]+0.3193*x[8]*x[16]-0.92*x[8]*x[17]-0.147*x[8]*x[18]-0.9656*x[8]*x[19]-0.9044*x[8]*x[20]+0.9256*x[9]*x[9]-0.0849*x[9]*x[10]-0.2946*x[9]*x[11]+0.4543*x[9]*x[12]-0.6516*x[9]*x[13]-0.2951*x[9]*x[14]-0.5713*x[9]*x[15]+0.9107*x[9]*x[16]+0.5607*x[9]*x[17]+0.5813*x[9]*x[18]+0.1879*x[9]*x[19]+0.0879*x[9]*x[20]-0.1947*x[10]*x[10]-0.5199*x[10]*x[11]-0.661*x[10]*x[12]+0.7548*x[10]*x[13]-0.8094*x[10]*x[14]-0.8729*x[10]*x[15]+0.703*x[10]*x[16]-0.6193*x[10]*x[17]+0.863*x[10]*x[18]+0.3731*x[10]*x[19]+0.975*x[10]*x[20]-0.9151*x[11]*x[11]-0.1013*x[11]*x[12]-0.7563*x[11]*x[13]-0.9394*x[11]*x[14]-0.1056*x[11]*x[15]+0.5528*x[11]*x[16]-0.4469*x[11]*x[17]-0.6919*x[11]*x[18]+0.6454*x[11]*x[19]-0.7436*x[11]*x[20]-0.4406*x[12]*x[12]-0.6553*x[12]*x[13]+0.0815*x[12]*x[14]-0.2592*x[12]*x[15]-0.3449*x[12]*x[16]-0.723*x[12]*x[17]+0.7367*x[12]*x[18]-0.5166*x[12]*x[19]-0.6852*x[12]*x[20]+0.5099*x[13]*x[13]-0.1606*x[13]*x[14]-0.8887*x[13]*x[15]+0.499*x[13]*x[16]+0.6686*x[13]*x[17]+0.4415*x[13]*x[18]-0.2126*x[13]*x[19]-0.8338*x[13]*x[20]-0.8861*x[14]*x[14]-0.9484*x[14]*x[15]-0.2048*x[14]*x[16]-0.1835*x[14]*x[17]-0.2758*x[14]*x[18]-0.5844*x[14]*x[19]+0.3621*x[14]*x[20]+0.6829*x[15]*x[15]-0.5893*x[15]*x[16]+0.5491*x[15]*x[17]-0.8351*x[15]*x[18]+0.5027*x[15]*x[19]+0.7318*x[15]*x[20]-0.8597*x[16]*x[16]+0.7574*x[16]*x[17]-0.9517*x[16]*x[18]-0.6703*x[16]*x[19]+0.1705*x[16]*x[20]+0.3118*x[17]*x[17]-0.299*x[17]*x[18]+0.1919*x[17]*x[19]+0.2*x[17]*x[20]+0.0314*x[18]*x[18]-0.9798*x[18]*x[19]-0.4391*x[18]*x[20]+0.4177*x[19]*x[19]-0.3681*x[19]*x[20]-0.7607*x[20]*x[20]+0.6108*x[1]+0.9076*x[2]+0.3781*x[3]+0.4656*x[4]-0.965*x[5]-0.7647*x[6]-0.7166*x[7]-0.7744*x[8]-0.1137*x[9]+0.2768*x[10]-0.1211*x[11]-0.1007*x[12]-0.5326*x[13]+0.6566*x[14]+0.1937*x[15]-0.9996*x[16]-0.5367*x[17]-0.1918*x[18]-0.8802*x[19]-0.6497*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.0515*x[1]*x[2]-0.3399*x[1]*x[1]+0.8846*x[1]*x[3]+0.022*x[1]*x[4]+0.9133*x[1]*x[5]-0.7262*x[1]*x[6]-0.7918*x[1]*x[7]-0.6313*x[1]*x[8]+0.9966*x[1]*x[9]-0.6426*x[1]*x[10]-0.3197*x[1]*x[11]-0.2285*x[1]*x[12]+0.0003*x[1]*x[13]+0.8027*x[1]*x[14]+0.8966*x[1]*x[15]+0.6134*x[1]*x[16]+0.0598*x[1]*x[17]-0.9651*x[1]*x[18]+0.9353*x[1]*x[19]+0.8902*x[1]*x[20]-0.007*x[2]*x[2]+0.5675*x[2]*x[3]+0.8712*x[2]*x[4]+0.2321*x[2]*x[5]-0.3199*x[2]*x[6]+0.0664*x[2]*x[7]-0.3827*x[2]*x[8]+0.4324*x[2]*x[9]+0.9173*x[2]*x[10]+0.0144*x[2]*x[11]+0.0691*x[2]*x[12]-0.2872*x[2]*x[13]-0.8985*x[2]*x[14]+0.0914*x[2]*x[15]+0.1849*x[2]*x[16]-0.0897*x[2]*x[17]-0.7576*x[2]*x[18]-0.1726*x[2]*x[19]+0.9337*x[2]*x[20]+0.0318*x[3]*x[3]-0.2369*x[3]*x[4]+0.9287*x[3]*x[5]-0.9551*x[3]*x[6]-0.6268*x[3]*x[7]+0.4162*x[3]*x[8]+0.7695*x[3]*x[9]+0.615*x[3]*x[10]+0.4118*x[3]*x[11]-0.8214*x[3]*x[12]+0.1937*x[3]*x[13]+0.2846*x[3]*x[14]-0.1472*x[3]*x[15]+0.307*x[3]*x[16]+0.7698*x[3]*x[17]-0.6545*x[3]*x[18]-0.5534*x[3]*x[19]+0.0359*x[3]*x[20]+0.7667*x[4]*x[4]+0.0927*x[4]*x[5]-0.5321*x[4]*x[6]-0.4937*x[4]*x[7]+0.7388*x[4]*x[8]+0.9809*x[4]*x[9]+0.0004*x[4]*x[10]+0.695*x[4]*x[11]+0.5494*x[4]*x[12]+0.6195*x[4]*x[13]+0.2356*x[4]*x[14]-0.1412*x[4]*x[15]+0.7508*x[4]*x[16]-0.769*x[4]*x[17]-0.1995*x[4]*x[18]+0.7897*x[4]*x[19]-0.9464*x[4]*x[20]-0.0035*x[5]*x[5]+0.7893*x[5]*x[6]+0.2009*x[5]*x[7]+0.573*x[5]*x[8]+0.0687*x[5]*x[9]+0.3609*x[5]*x[10]+0.7069*x[5]*x[11]+0.3176*x[5]*x[12]-0.2025*x[5]*x[13]+0.9283*x[5]*x[14]+0.6098*x[5]*x[15]+0.6859*x[5]*x[16]-0.3653*x[5]*x[17]-0.406*x[5]*x[18]+0.6706*x[5]*x[19]-0.4475*x[5]*x[20]-0.1989*x[6]*x[6]-0.5974*x[6]*x[7]+0.4318*x[6]*x[8]+0.3654*x[6]*x[9]-0.2119*x[6]*x[10]-0.0018*x[6]*x[11]-0.9865*x[6]*x[12]-0.8902*x[6]*x[13]-0.6653*x[6]*x[14]+0.3769*x[6]*x[15]-0.2194*x[6]*x[16]+0.8789*x[6]*x[17]-0.7093*x[6]*x[18]+0.3827*x[6]*x[19]-0.0405*x[6]*x[20]+0.7626*x[7]*x[7]+0.4358*x[7]*x[8]+0.7368*x[7]*x[9]-0.0174*x[7]*x[10]-0.4531*x[7]*x[11]+0.3375*x[7]*x[12]-0.6891*x[7]*x[13]-0.416*x[7]*x[14]-0.4715*x[7]*x[15]+0.6858*x[7]*x[16]-0.4223*x[7]*x[17]+0.7652*x[7]*x[18]+0.7955*x[7]*x[19]+0.5377*x[7]*x[20]+0.9667*x[8]*x[8]-0.8157*x[8]*x[9]-0.9023*x[8]*x[10]-0.5467*x[8]*x[11]-0.3177*x[8]*x[12]-0.9398*x[8]*x[13]+0.2349*x[8]*x[14]+0.001*x[8]*x[15]+0.3641*x[8]*x[16]-0.9461*x[8]*x[17]+0.1124*x[8]*x[18]+0.0992*x[8]*x[19]+0.0372*x[8]*x[20]-0.6933*x[9]*x[9]+0.9793*x[9]*x[10]-0.2495*x[9]*x[11]-0.865*x[9]*x[12]-0.5344*x[9]*x[13]+0.3443*x[9]*x[14]+0.0946*x[9]*x[15]+0.99*x[9]*x[16]+0.1293*x[9]*x[17]-0.1439*x[9]*x[18]-0.1023*x[9]*x[19]+0.4527*x[9]*x[20]-0.9526*x[10]*x[10]-0.9404*x[10]*x[11]-0.4876*x[10]*x[12]-0.4892*x[10]*x[13]-0.8809*x[10]*x[14]+0.5844*x[10]*x[15]-0.5909*x[10]*x[16]+0.8432*x[10]*x[17]+0.4261*x[10]*x[18]-0.7159*x[10]*x[19]+0.6584*x[10]*x[20]+0.0654*x[11]*x[11]+0.9716*x[11]*x[12]+0.3374*x[11]*x[13]-0.6073*x[11]*x[14]-0.4237*x[11]*x[15]+0.4155*x[11]*x[16]+0.8152*x[11]*x[17]-0.6799*x[11]*x[18]-0.7925*x[11]*x[19]-0.3313*x[11]*x[20]-0.8543*x[12]*x[12]+0.6806*x[12]*x[13]-0.7313*x[12]*x[14]+0.7493*x[12]*x[15]-0.1795*x[12]*x[16]-0.6154*x[12]*x[17]+0.4774*x[12]*x[18]+0.2237*x[12]*x[19]+0.819*x[12]*x[20]-0.2799*x[13]*x[13]-0.4367*x[13]*x[14]-0.7202*x[13]*x[15]+0.7141*x[13]*x[16]+0.2112*x[13]*x[17]+0.7705*x[13]*x[18]+0.0843*x[13]*x[19]+0.3562*x[13]*x[20]+0.7516*x[14]*x[14]+0.6577*x[14]*x[15]+0.288*x[14]*x[16]+0.179*x[14]*x[17]+0.1567*x[14]*x[18]-0.3688*x[14]*x[19]+0.7408*x[14]*x[20]-0.4765*x[15]*x[15]+0.6741*x[15]*x[16]+0.112*x[15]*x[17]-0.8509*x[15]*x[18]+0.4165*x[15]*x[19]-0.9974*x[15]*x[20]-0.3871*x[16]*x[16]+0.6783*x[16]*x[17]+0.8508*x[16]*x[18]-0.7738*x[16]*x[19]+0.6638*x[16]*x[20]+0.5599*x[17]*x[17]+0.7158*x[17]*x[18]+0.1086*x[17]*x[19]-0.69*x[17]*x[20]-0.4714*x[18]*x[18]+0.6628*x[18]*x[19]+0.1565*x[18]*x[20]+0.2639*x[19]*x[19]-0.0214*x[19]*x[20]-0.6831*x[20]*x[20]-0.7759*x[1]+0.3236*x[2]-0.768*x[3]-0.4247*x[4]+0.4122*x[5]+0.4506*x[6]+0.3552*x[7]+0.446*x[8]+0.3144*x[9]+0.4965*x[10]-0.8063*x[11]-0.612*x[12]+0.7794*x[13]+0.834*x[14]+0.6108*x[15]+0.8644*x[16]-0.8542*x[17]-0.2302*x[18]-0.1178*x[19]-0.9046*x[20] <= 36.902)
@NLconstraint(m, e3, 0.6188*x[1]*x[2]-0.6183*x[1]*x[1]-0.0381*x[1]*x[3]-0.7188*x[1]*x[4]-0.1034*x[1]*x[5]+0.4047*x[1]*x[6]+0.0084*x[1]*x[7]-0.4031*x[1]*x[8]+0.702*x[1]*x[9]-0.8478*x[1]*x[10]+0.7782*x[1]*x[11]+0.7223*x[1]*x[12]+0.5405*x[1]*x[13]+0.7626*x[1]*x[14]-0.2324*x[1]*x[15]-0.6926*x[1]*x[16]-0.4473*x[1]*x[17]+0.5227*x[1]*x[18]-0.1544*x[1]*x[19]+0.1788*x[1]*x[20]-0.8851*x[2]*x[2]-0.397*x[2]*x[3]-0.8556*x[2]*x[4]+0.5239*x[2]*x[5]+0.0308*x[2]*x[6]-0.7734*x[2]*x[7]+0.3039*x[2]*x[8]-0.7162*x[2]*x[9]+0.3885*x[2]*x[10]-0.999*x[2]*x[11]-0.1183*x[2]*x[12]-0.1821*x[2]*x[13]+0.6174*x[2]*x[14]-0.854*x[2]*x[15]+0.5544*x[2]*x[16]+0.232*x[2]*x[17]-0.6641*x[2]*x[18]-0.3447*x[2]*x[19]+0.6963*x[2]*x[20]+0.1228*x[3]*x[3]+0.1779*x[3]*x[4]+0.973*x[3]*x[5]+0.1374*x[3]*x[6]-0.5653*x[3]*x[7]+0.3235*x[3]*x[8]-0.7351*x[3]*x[9]+0.1866*x[3]*x[10]-0.1166*x[3]*x[11]+0.6616*x[3]*x[12]+0.3928*x[3]*x[13]+0.4047*x[3]*x[14]-0.492*x[3]*x[15]+0.0233*x[3]*x[16]-0.0839*x[3]*x[17]+0.9802*x[3]*x[18]+0.2466*x[3]*x[19]+0.0186*x[3]*x[20]+0.761*x[4]*x[4]+0.1837*x[4]*x[5]+0.6049*x[4]*x[6]-0.782*x[4]*x[7]+0.8772*x[4]*x[8]+0.9354*x[4]*x[9]+0.5135*x[4]*x[10]+0.5527*x[4]*x[11]+0.5089*x[4]*x[12]-0.9858*x[4]*x[13]+0.7245*x[4]*x[14]-0.7463*x[4]*x[15]-0.5182*x[4]*x[16]-0.6181*x[4]*x[17]-0.815*x[4]*x[18]-0.1105*x[4]*x[19]-0.6992*x[4]*x[20]+0.2491*x[5]*x[5]+0.6866*x[5]*x[6]-0.7184*x[5]*x[7]+0.7077*x[5]*x[8]-0.8608*x[5]*x[9]-0.851*x[5]*x[10]+0.6374*x[5]*x[11]-0.0365*x[5]*x[12]+0.7884*x[5]*x[13]+0.6555*x[5]*x[14]-0.3754*x[5]*x[15]-0.0738*x[5]*x[16]+0.9879*x[5]*x[17]+0.0135*x[5]*x[18]-0.3498*x[5]*x[19]-0.0971*x[5]*x[20]+0.904*x[6]*x[6]-0.2376*x[6]*x[7]+0.2933*x[6]*x[8]-0.9793*x[6]*x[9]-0.2463*x[6]*x[10]+0.4602*x[6]*x[11]+0.2682*x[6]*x[12]-0.5987*x[6]*x[13]+0.5991*x[6]*x[14]-0.2997*x[6]*x[15]+0.4424*x[6]*x[16]-0.2551*x[6]*x[17]-0.4591*x[6]*x[18]+0.191*x[6]*x[19]+0.7592*x[6]*x[20]-0.4934*x[7]*x[7]-0.5187*x[7]*x[8]-0.1522*x[7]*x[9]-0.7995*x[7]*x[10]+0.2015*x[7]*x[11]+0.7515*x[7]*x[12]-0.3003*x[7]*x[13]-0.0052*x[7]*x[14]-0.2116*x[7]*x[15]-0.069*x[7]*x[16]+0.4125*x[7]*x[17]+0.1911*x[7]*x[18]+0.141*x[7]*x[19]-0.4838*x[7]*x[20]+0.0428*x[8]*x[8]-0.3545*x[8]*x[9]-0.836*x[8]*x[10]+0.9044*x[8]*x[11]+0.9537*x[8]*x[12]+0.0803*x[8]*x[13]-0.4248*x[8]*x[14]+0.9858*x[8]*x[15]+0.8136*x[8]*x[16]+0.6273*x[8]*x[17]+0.3116*x[8]*x[18]+0.5186*x[8]*x[19]+0.4613*x[8]*x[20]+0.5744*x[9]*x[9]-0.5661*x[9]*x[10]-0.7528*x[9]*x[11]-0.1247*x[9]*x[12]-0.5048*x[9]*x[13]+0.1487*x[9]*x[14]+0.6904*x[9]*x[15]-0.4091*x[9]*x[16]+0.8667*x[9]*x[17]+0.4524*x[9]*x[18]-0.4188*x[9]*x[19]-0.3955*x[9]*x[20]+0.3814*x[10]*x[10]-0.4766*x[10]*x[11]-0.2484*x[10]*x[12]+0.4225*x[10]*x[13]+0.9204*x[10]*x[14]+0.4425*x[10]*x[15]+0.8533*x[10]*x[16]-0.8434*x[10]*x[17]+0.3368*x[10]*x[18]-0.2922*x[10]*x[19]-0.674*x[10]*x[20]-0.506*x[11]*x[11]+0.45*x[11]*x[12]+0.9451*x[11]*x[13]-0.6033*x[11]*x[14]-0.5666*x[11]*x[15]-0.5187*x[11]*x[16]-0.2378*x[11]*x[17]-0.8728*x[11]*x[18]+0.2078*x[11]*x[19]-0.4754*x[11]*x[20]-0.0257*x[12]*x[12]-0.6292*x[12]*x[13]-0.3056*x[12]*x[14]+0.9041*x[12]*x[15]+0.9193*x[12]*x[16]+0.1786*x[12]*x[17]-0.8288*x[12]*x[18]+0.8871*x[12]*x[19]-0.5883*x[12]*x[20]-0.4245*x[13]*x[13]+0.2509*x[13]*x[14]-0.8896*x[13]*x[15]-0.7735*x[13]*x[16]+0.6383*x[13]*x[17]-0.7938*x[13]*x[18]-0.6181*x[13]*x[19]+0.0857*x[13]*x[20]-0.4053*x[14]*x[14]+0.2158*x[14]*x[15]-0.7104*x[14]*x[16]+0.1614*x[14]*x[17]-0.5585*x[14]*x[18]-0.0765*x[14]*x[19]-0.9573*x[14]*x[20]+0.744*x[15]*x[15]-0.1551*x[15]*x[16]+0.4025*x[15]*x[17]+0.9942*x[15]*x[18]-0.2869*x[15]*x[19]-0.6106*x[15]*x[20]+0.5482*x[16]*x[16]-0.5155*x[16]*x[17]+0.2689*x[16]*x[18]+0.291*x[16]*x[19]-0.6436*x[16]*x[20]-0.6477*x[17]*x[17]-0.0194*x[17]*x[18]-0.2997*x[17]*x[19]+0.7213*x[17]*x[20]-0.9991*x[18]*x[18]+0.8354*x[18]*x[19]+0.9739*x[18]*x[20]+0.9231*x[19]*x[19]-0.5433*x[19]*x[20]-0.5059*x[20]*x[20]+0.1579*x[1]+0.9595*x[2]-0.4744*x[3]-0.7872*x[4]+0.8894*x[5]+0.6219*x[6]-0.9093*x[7]+0.9121*x[8]+0.4676*x[9]-0.056*x[10]+0.7962*x[11]+0.2177*x[12]-0.1877*x[13]+0.2283*x[14]+0.5367*x[15]-0.594*x[16]+0.022*x[17]-0.9741*x[18]-0.7372*x[19]-0.0799*x[20] <= 80.529)
@NLconstraint(m, e4, 0.4631*x[1]*x[1]-0.7378*x[1]*x[2]-0.8125*x[1]*x[3]-0.4392*x[1]*x[4]-0.7147*x[1]*x[5]-0.974*x[1]*x[6]+0.9874*x[1]*x[7]+0.422*x[1]*x[8]+0.6878*x[1]*x[9]+0.12*x[1]*x[10]-0.8755*x[1]*x[11]-0.2555*x[1]*x[12]-0.5743*x[1]*x[13]-0.5735*x[1]*x[14]-0.6477*x[1]*x[15]+0.0007*x[1]*x[16]+0.0896*x[1]*x[17]+0.1403*x[1]*x[18]+0.0392*x[1]*x[19]-0.9063*x[1]*x[20]-0.3817*x[2]*x[2]+0.8622*x[2]*x[3]+0.0331*x[2]*x[4]-0.1539*x[2]*x[5]-0.684*x[2]*x[6]+0.8427*x[2]*x[7]+0.679*x[2]*x[8]-0.8744*x[2]*x[9]-0.5763*x[2]*x[10]+0.131*x[2]*x[11]+0.7207*x[2]*x[12]+0.2711*x[2]*x[13]+0.901*x[2]*x[14]-0.0142*x[2]*x[15]+0.7093*x[2]*x[16]-0.6987*x[2]*x[17]+0.591*x[2]*x[18]+0.7248*x[2]*x[19]-0.3342*x[2]*x[20]+0.2565*x[3]*x[3]+0.0506*x[3]*x[4]+0.1018*x[3]*x[5]+0.6964*x[3]*x[6]-0.3124*x[3]*x[7]-0.0906*x[3]*x[8]-0.4594*x[3]*x[9]-0.7137*x[3]*x[10]+0.6835*x[3]*x[11]-0.9256*x[3]*x[12]+0.8048*x[3]*x[13]-0.8525*x[3]*x[14]+0.6184*x[3]*x[15]+0.6039*x[3]*x[16]-0.1299*x[3]*x[17]+0.7409*x[3]*x[18]+0.7098*x[3]*x[19]-0.7156*x[3]*x[20]+0.7937*x[4]*x[4]-0.9671*x[4]*x[5]-0.8201*x[4]*x[6]-0.9828*x[4]*x[7]-0.2199*x[4]*x[8]-0.1975*x[4]*x[9]+0.6526*x[4]*x[10]+0.8052*x[4]*x[11]+0.2971*x[4]*x[12]+0.1198*x[4]*x[13]+0.217*x[4]*x[14]+0.0079*x[4]*x[15]-0.3018*x[4]*x[16]+0.9843*x[4]*x[17]-0.9696*x[4]*x[18]+0.8791*x[4]*x[19]-0.9214*x[4]*x[20]-0.6654*x[5]*x[5]+0.8961*x[5]*x[6]+0.7488*x[5]*x[7]-0.816*x[5]*x[8]+0.7283*x[5]*x[9]+0.7735*x[5]*x[10]+0.4313*x[5]*x[11]-0.8995*x[5]*x[12]-0.0242*x[5]*x[13]+0.1137*x[5]*x[14]-0.0807*x[5]*x[15]+0.3716*x[5]*x[16]-0.9041*x[5]*x[17]-0.0494*x[5]*x[18]+0.8577*x[5]*x[19]+0.4838*x[5]*x[20]+0.9976*x[6]*x[6]+0.7792*x[6]*x[7]-0.3619*x[6]*x[8]+0.9372*x[6]*x[9]-0.3207*x[6]*x[10]+0.8329*x[6]*x[11]-0.746*x[6]*x[12]+0.5825*x[6]*x[13]+0.9976*x[6]*x[14]-0.1785*x[6]*x[15]-0.0403*x[6]*x[16]-0.5285*x[6]*x[17]-0.3191*x[6]*x[18]+0.4136*x[6]*x[19]-0.4137*x[6]*x[20]+0.3309*x[7]*x[7]+0.8559*x[7]*x[8]+0.9334*x[7]*x[9]+0.1038*x[7]*x[10]-0.6685*x[7]*x[11]-0.2205*x[7]*x[12]+0.8979*x[7]*x[13]+0.9253*x[7]*x[14]-0.7958*x[7]*x[15]-0.2908*x[7]*x[16]-0.3804*x[7]*x[17]-0.2418*x[7]*x[18]+0.3039*x[7]*x[19]-0.0473*x[7]*x[20]-0.2491*x[8]*x[8]+0.9586*x[8]*x[9]-0.6003*x[8]*x[10]+0.5236*x[8]*x[11]-0.6153*x[8]*x[12]-0.4986*x[8]*x[13]-0.8059*x[8]*x[14]-0.5445*x[8]*x[15]+0.5581*x[8]*x[16]+0.821*x[8]*x[17]+0.9429*x[8]*x[18]-0.5765*x[8]*x[19]-0.3061*x[8]*x[20]+0.7112*x[9]*x[9]-0.9048*x[9]*x[10]+0.6349*x[9]*x[11]+0.5005*x[9]*x[12]-0.3052*x[9]*x[13]-0.7796*x[9]*x[14]-0.2323*x[9]*x[15]-0.1328*x[9]*x[16]+0.6701*x[9]*x[17]+0.6946*x[9]*x[18]+0.4003*x[9]*x[19]-0.6794*x[9]*x[20]+0.695*x[10]*x[10]-0.6787*x[10]*x[11]-0.7436*x[10]*x[12]+0.4042*x[10]*x[13]+0.3019*x[10]*x[14]-0.3193*x[10]*x[15]-0.4433*x[10]*x[16]-0.5216*x[10]*x[17]+0.8652*x[10]*x[18]+0.6401*x[10]*x[19]+0.0653*x[10]*x[20]-0.1219*x[11]*x[11]+0.8175*x[11]*x[12]+0.7173*x[11]*x[13]+0.0579*x[11]*x[14]+0.2197*x[11]*x[15]-0.1751*x[11]*x[16]-0.4539*x[11]*x[17]+0.6875*x[11]*x[18]+0.3553*x[11]*x[19]+0.3546*x[11]*x[20]+0.2915*x[12]*x[12]-0.1419*x[12]*x[13]+0.8974*x[12]*x[14]-0.7709*x[12]*x[15]+0.7025*x[12]*x[16]+0.2871*x[12]*x[17]-0.8686*x[12]*x[18]+0.2948*x[12]*x[19]-0.5289*x[12]*x[20]-0.7476*x[13]*x[13]+0.3785*x[13]*x[14]-0.8182*x[13]*x[15]+0.145*x[13]*x[16]+0.7848*x[13]*x[17]+0.329*x[13]*x[18]+0.4575*x[13]*x[19]+0.2925*x[13]*x[20]+0.6509*x[14]*x[14]-0.5194*x[14]*x[15]-0.5375*x[14]*x[16]-0.8567*x[14]*x[17]-0.7567*x[14]*x[18]+0.0559*x[14]*x[19]-0.5979*x[14]*x[20]-0.5328*x[15]*x[15]+0.4108*x[15]*x[16]-0.9746*x[15]*x[17]-0.8816*x[15]*x[18]-0.6054*x[15]*x[19]+0.8048*x[15]*x[20]-0.4608*x[16]*x[16]-0.5202*x[16]*x[17]-0.0126*x[16]*x[18]+0.4756*x[16]*x[19]-0.1092*x[16]*x[20]+0.3646*x[17]*x[17]-0.604*x[17]*x[18]+0.8765*x[17]*x[19]+0.5905*x[17]*x[20]-0.5705*x[18]*x[18]-0.5678*x[18]*x[19]-0.9959*x[18]*x[20]-0.0773*x[19]*x[19]-0.4033*x[19]*x[20]+0.5307*x[20]*x[20]+0.8639*x[1]+0.9249*x[2]+0.5844*x[3]-0.3302*x[4]-0.8971*x[5]+0.9343*x[6]-0.4812*x[7]-0.0224*x[8]-0.0381*x[9]-0.6702*x[10]+0.0765*x[11]-0.5192*x[12]+0.15*x[13]+0.7511*x[14]+0.2959*x[15]+0.6925*x[16]-0.7939*x[17]-0.4419*x[18]-0.4714*x[19]+0.0146*x[20] <= 98.13)
@NLconstraint(m, e5, 0.0541*x[1]*x[1]-0.7318*x[1]*x[2]-0.6666*x[1]*x[3]+0.6844*x[1]*x[4]+0.2667*x[1]*x[5]+0.9428*x[1]*x[6]-0.8373*x[1]*x[7]+0.1923*x[1]*x[8]+0.9925*x[1]*x[9]-0.9806*x[1]*x[10]-0.9013*x[1]*x[11]-0.7989*x[1]*x[12]+0.959*x[1]*x[13]+0.6824*x[1]*x[14]-0.0939*x[1]*x[15]+0.9649*x[1]*x[16]+0.887*x[1]*x[17]+0.1799*x[1]*x[18]-0.3306*x[1]*x[19]+0.3269*x[1]*x[20]+0.5563*x[2]*x[2]+0.0427*x[2]*x[3]-0.5169*x[2]*x[4]-0.1694*x[2]*x[5]-0.8772*x[2]*x[6]-0.6835*x[2]*x[7]+0.0361*x[2]*x[8]-0.4938*x[2]*x[9]-0.0824*x[2]*x[10]-0.803*x[2]*x[11]-0.1227*x[2]*x[12]+0.3447*x[2]*x[13]-0.5165*x[2]*x[14]+0.8204*x[2]*x[15]-0.0419*x[2]*x[16]+0.7291*x[2]*x[17]+0.1793*x[2]*x[18]-0.2906*x[2]*x[19]-0.4859*x[2]*x[20]+0.7745*x[3]*x[3]+0.5955*x[3]*x[4]-0.5433*x[3]*x[5]+0.0963*x[3]*x[6]+0.9131*x[3]*x[7]-0.9212*x[3]*x[8]-0.5989*x[3]*x[9]+0.3632*x[3]*x[10]+0.7655*x[3]*x[11]-0.2558*x[3]*x[12]-0.3053*x[3]*x[13]+0.1917*x[3]*x[14]+0.0578*x[3]*x[15]+0.5697*x[3]*x[16]+0.8762*x[3]*x[17]-0.1523*x[3]*x[18]-0.8181*x[3]*x[19]+0.0412*x[3]*x[20]-0.3223*x[4]*x[4]+0.8437*x[4]*x[5]-0.4429*x[4]*x[6]+0.4707*x[4]*x[7]-0.3139*x[4]*x[8]-0.9997*x[4]*x[9]-0.6852*x[4]*x[10]-0.4383*x[4]*x[11]+0.8332*x[4]*x[12]-0.9454*x[4]*x[13]-0.7802*x[4]*x[14]+0.1448*x[4]*x[15]-0.3755*x[4]*x[16]+0.4462*x[4]*x[17]+0.2352*x[4]*x[18]+0.1629*x[4]*x[19]+0.2847*x[4]*x[20]+0.6619*x[5]*x[5]-0.872*x[5]*x[6]+0.7458*x[5]*x[7]+0.7365*x[5]*x[8]+0.5659*x[5]*x[9]-0.0683*x[5]*x[10]-0.0005*x[5]*x[11]+0.1501*x[5]*x[12]+0.0566*x[5]*x[13]+0.5755*x[5]*x[14]-0.9551*x[5]*x[15]+0.9344*x[5]*x[16]+0.8458*x[5]*x[17]+0.4242*x[5]*x[18]+0.9027*x[5]*x[19]+0.2991*x[5]*x[20]-0.6408*x[6]*x[6]+0.2476*x[6]*x[7]-0.9189*x[6]*x[8]-0.9427*x[6]*x[9]-0.8452*x[6]*x[10]-0.6695*x[6]*x[11]+0.0036*x[6]*x[12]+0.289*x[6]*x[13]-0.8866*x[6]*x[14]-0.7705*x[6]*x[15]+0.0254*x[6]*x[16]+0.9054*x[6]*x[17]-0.6551*x[6]*x[18]+0.9365*x[6]*x[19]-0.4841*x[6]*x[20]+0.0731*x[7]*x[7]+0.4111*x[7]*x[8]+0.3022*x[7]*x[9]+0.3822*x[7]*x[10]+0.6491*x[7]*x[11]-0.5066*x[7]*x[12]-0.9413*x[7]*x[13]-0.365*x[7]*x[14]-0.7983*x[7]*x[15]+0.5997*x[7]*x[16]+0.3562*x[7]*x[17]-0.4208*x[7]*x[18]+0.8607*x[7]*x[19]-0.2785*x[7]*x[20]+0.0423*x[8]*x[8]-0.7908*x[8]*x[9]+0.5368*x[8]*x[10]-0.5704*x[8]*x[11]+0.3404*x[8]*x[12]-0.5106*x[8]*x[13]-0.7448*x[8]*x[14]+0.8469*x[8]*x[15]+0.3948*x[8]*x[16]-0.5077*x[8]*x[17]-0.5102*x[8]*x[18]-0.6086*x[8]*x[19]+0.7216*x[8]*x[20]-0.8522*x[9]*x[9]+0.0107*x[9]*x[10]-0.3292*x[9]*x[11]-0.1952*x[9]*x[12]+0.0335*x[9]*x[13]-0.8434*x[9]*x[14]-0.2529*x[9]*x[15]+0.9093*x[9]*x[16]+0.0643*x[9]*x[17]+0.2242*x[9]*x[18]+0.6056*x[9]*x[19]-0.3409*x[9]*x[20]+0.1815*x[10]*x[10]+0.6494*x[10]*x[11]-0.7341*x[10]*x[12]+0.8969*x[10]*x[13]-0.098*x[10]*x[14]-0.7681*x[10]*x[15]+0.4581*x[10]*x[16]-0.7326*x[10]*x[17]-0.3787*x[10]*x[18]+0.7903*x[10]*x[19]-0.5436*x[10]*x[20]-0.288*x[11]*x[11]-0.7333*x[11]*x[12]+0.8451*x[11]*x[13]+0.2767*x[11]*x[14]+0.4912*x[11]*x[15]-0.8079*x[11]*x[16]-0.7274*x[11]*x[17]+0.579*x[11]*x[18]+0.0744*x[11]*x[19]-0.4485*x[11]*x[20]+0.8597*x[12]*x[12]+0.7511*x[12]*x[13]-0.4916*x[12]*x[14]-0.7424*x[12]*x[15]+0.3622*x[12]*x[16]+0.3053*x[12]*x[17]+0.1912*x[12]*x[18]-0.066*x[12]*x[19]+0.095*x[12]*x[20]+0.3368*x[13]*x[13]+0.0471*x[13]*x[14]+0.4675*x[13]*x[15]+0.7806*x[13]*x[16]+0.6144*x[13]*x[17]-0.2238*x[13]*x[18]+0.935*x[13]*x[19]-0.0262*x[13]*x[20]-0.0278*x[14]*x[14]+0.0401*x[14]*x[15]+0.5186*x[14]*x[16]+0.5618*x[14]*x[17]+0.988*x[14]*x[18]-0.1372*x[14]*x[19]-0.224*x[14]*x[20]+0.87*x[15]*x[15]+0.0584*x[15]*x[16]+0.5312*x[15]*x[17]+0.4155*x[15]*x[18]+0.0551*x[15]*x[19]-0.717*x[15]*x[20]-0.6191*x[16]*x[16]-0.2601*x[16]*x[17]+0.4891*x[16]*x[18]+0.68*x[16]*x[19]+0.7469*x[16]*x[20]+0.7366*x[17]*x[17]+0.703*x[17]*x[18]+0.2404*x[17]*x[19]-0.279*x[17]*x[20]-0.5194*x[18]*x[18]+0.9109*x[18]*x[19]-0.6612*x[18]*x[20]+0.1988*x[19]*x[19]-0.9723*x[19]*x[20]+0.3193*x[20]*x[20]+0.1272*x[1]+0.0778*x[2]-0.4785*x[3]+0.1841*x[4]-0.4067*x[5]+0.1632*x[6]+0.8656*x[7]+0.1611*x[8]+0.3543*x[9]+0.9647*x[10]+0.9587*x[11]-0.0666*x[12]+0.4269*x[13]-0.9024*x[14]+0.6766*x[15]+0.5873*x[16]+0.0772*x[17]-0.0731*x[18]-0.2137*x[19]-0.7503*x[20] <= 31.523)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
