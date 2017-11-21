using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[3], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.5295*x[1]*x[2]-0.5874*x[1]*x[3]-0.9963*x[1]*x[4]-0.6875*x[1]*x[5]-0.6238*x[1]*x[6]+0.0738*x[1]*x[7]+0.3122*x[1]*x[8]+0.9116*x[1]*x[9]-0.7073*x[1]*x[10]+0.3956*x[2]*x[3]+0.6408*x[2]*x[4]+0.906*x[2]*x[5]+0.4384*x[2]*x[6]-0.0051*x[2]*x[7]+0.689*x[2]*x[8]+0.8015*x[2]*x[9]-0.1671*x[2]*x[10]+0.1501*x[3]*x[4]-0.6129*x[3]*x[5]-0.4673*x[3]*x[6]-0.2172*x[3]*x[7]+0.5448*x[3]*x[8]+0.5743*x[3]*x[9]-0.2467*x[3]*x[10]+0.8448*x[4]*x[5]-0.784*x[4]*x[6]-0.2975*x[4]*x[7]-0.9803*x[4]*x[8]+0.9786*x[4]*x[9]+0.1967*x[4]*x[10]-0.9423*x[5]*x[6]-0.4481*x[5]*x[7]-0.0269*x[5]*x[8]-0.1364*x[5]*x[9]-0.9192*x[5]*x[10]+0.5189*x[6]*x[7]+0.3404*x[6]*x[8]+0.1516*x[6]*x[9]+0.4074*x[6]*x[10]-0.3842*x[7]*x[8]+0.4361*x[7]*x[9]-0.6147*x[7]*x[10]-0.8*x[8]*x[9]+0.1892*x[8]*x[10]-0.8637*x[9]*x[10]+0.3065*x[1]+0.2325*x[2]+0.2648*x[3]+0.3826*x[4]+0.6438*x[5]-0.5217*x[6]+0.3787*x[7]+0.7293*x[8]-0.1202*x[9]+0.5314*x[10]+(-0.5587*x[1]*x[2]*x[3])-0.1261*x[1]*x[2]*x[4]+0.8603*x[1]*x[2]*x[5]+0.1445*x[1]*x[2]*x[6]-0.773*x[1]*x[2]*x[7]+0.1692*x[1]*x[2]*x[8]+0.8432*x[1]*x[2]*x[9]+0.8133*x[1]*x[2]*x[10]+0.1169*x[1]*x[3]*x[4]-0.1312*x[1]*x[3]*x[5]+0.9717*x[1]*x[3]*x[6]+0.3126*x[1]*x[3]*x[7]+0.4154*x[1]*x[3]*x[8]-0.0105*x[1]*x[3]*x[9]+0.4772*x[1]*x[3]*x[10]+0.1875*x[1]*x[4]*x[5]+0.9525*x[1]*x[4]*x[6]-0.3099*x[1]*x[4]*x[7]-0.239*x[1]*x[4]*x[8]+0.5059*x[1]*x[4]*x[9]+0.466*x[1]*x[4]*x[10]-0.334*x[1]*x[5]*x[6]+0.8077*x[1]*x[5]*x[7]+0.3148*x[1]*x[5]*x[8]-0.4982*x[1]*x[5]*x[9]+0.2499*x[1]*x[5]*x[10]-0.4484*x[1]*x[6]*x[7]+0.0002*x[1]*x[6]*x[8]+0.9242*x[1]*x[6]*x[9]-0.3877*x[1]*x[6]*x[10]-0.776*x[1]*x[7]*x[8]-0.4047*x[1]*x[7]*x[9]-0.8727*x[1]*x[7]*x[10]-0.014*x[1]*x[8]*x[9]-0.9627*x[1]*x[8]*x[10]-0.15*x[1]*x[9]*x[10]-0.7809*x[2]*x[3]*x[4]-0.4473*x[2]*x[3]*x[5]+0.4151*x[2]*x[3]*x[6]+0.0728*x[2]*x[3]*x[7]-0.2027*x[2]*x[3]*x[8]-0.4616*x[2]*x[3]*x[9]+0.1176*x[2]*x[3]*x[10]+0.108*x[2]*x[4]*x[5]+0.3765*x[2]*x[4]*x[6]+0.305*x[2]*x[4]*x[7]-0.5298*x[2]*x[4]*x[8]-0.0275*x[2]*x[4]*x[9]-0.8101*x[2]*x[4]*x[10]-0.4449*x[2]*x[5]*x[6]-0.8782*x[2]*x[5]*x[7]-0.6795*x[2]*x[5]*x[8]-0.8655*x[2]*x[5]*x[9]-0.6457*x[2]*x[5]*x[10]+0.8807*x[2]*x[6]*x[7]-0.7634*x[2]*x[6]*x[8]+0.217*x[2]*x[6]*x[9]-0.0549*x[2]*x[6]*x[10]-0.9422*x[2]*x[7]*x[8]-0.9389*x[2]*x[7]*x[9]-0.2805*x[2]*x[7]*x[10]-0.3906*x[2]*x[8]*x[9]+0.8925*x[2]*x[8]*x[10]+0.359*x[2]*x[9]*x[10]-0.3714*x[3]*x[4]*x[5]-0.5488*x[3]*x[4]*x[6]+0.1483*x[3]*x[4]*x[7]+0.225*x[3]*x[4]*x[8]+0.7272*x[3]*x[4]*x[9]-0.8881*x[3]*x[4]*x[10]-0.0211*x[3]*x[5]*x[6]-0.4108*x[3]*x[5]*x[7]-0.0434*x[3]*x[5]*x[8]-0.7799*x[3]*x[5]*x[9]-0.4614*x[3]*x[5]*x[10]-0.0865*x[3]*x[6]*x[7]+0.3207*x[3]*x[6]*x[8]+0.0431*x[3]*x[6]*x[9]+0.8559*x[3]*x[6]*x[10]-0.2257*x[3]*x[7]*x[8]-0.1022*x[3]*x[7]*x[9]-0.5768*x[3]*x[7]*x[10]-0.8797*x[3]*x[8]*x[9]+0.3955*x[3]*x[8]*x[10]+0.7964*x[3]*x[9]*x[10]+0.2734*x[4]*x[5]*x[6]+0.0895*x[4]*x[5]*x[7]-0.4146*x[4]*x[5]*x[8]+0.9077*x[4]*x[5]*x[9]-0.1895*x[4]*x[5]*x[10]+0.994*x[4]*x[6]*x[7]-0.6899*x[4]*x[6]*x[8]+0.9394*x[4]*x[6]*x[9]-0.2503*x[4]*x[6]*x[10]-0.2187*x[4]*x[7]*x[8]-0.1793*x[4]*x[7]*x[9]+0.9029*x[4]*x[7]*x[10]+0.1218*x[4]*x[8]*x[9]+0.2453*x[4]*x[8]*x[10]+0.7306*x[4]*x[9]*x[10]-0.2001*x[5]*x[6]*x[7]+0.7936*x[5]*x[6]*x[8]-0.7984*x[5]*x[6]*x[9]-0.589*x[5]*x[6]*x[10]+0.6958*x[5]*x[7]*x[8]-0.0455*x[5]*x[7]*x[9]-0.267*x[5]*x[7]*x[10]+0.8622*x[5]*x[8]*x[9]-0.5897*x[5]*x[8]*x[10]+0.1178*x[5]*x[9]*x[10]+0.8772*x[6]*x[7]*x[8]-0.7239*x[6]*x[7]*x[9]+0.8153*x[6]*x[7]*x[10]+0.9875*x[6]*x[8]*x[9]+0.0661*x[6]*x[8]*x[10]+0.0747*x[6]*x[9]*x[10]-0.9466*x[7]*x[8]*x[9]+0.9993*x[7]*x[8]*x[10]+0.4921*x[7]*x[9]*x[10]+0.1736*x[8]*x[9]*x[10])+x[11] == 0.0)
@NLconstraint(m, e2, 0.1766*x[1]*x[2]+0.472*x[1]*x[3]-0.1445*x[1]*x[4]-0.1965*x[1]*x[5]+0.5678*x[1]*x[6]+0.8256*x[1]*x[7]-0.0288*x[1]*x[8]-0.0473*x[1]*x[9]+0.1173*x[1]*x[10]+0.6063*x[2]*x[3]-0.8786*x[2]*x[4]+0.8495*x[2]*x[5]+0.1714*x[2]*x[6]+0.4934*x[2]*x[7]-0.7093*x[2]*x[8]-0.5405*x[2]*x[9]+0.7902*x[2]*x[10]-0.333*x[3]*x[4]+0.9342*x[3]*x[5]+0.6046*x[3]*x[6]-0.7882*x[3]*x[7]+0.4245*x[3]*x[8]-0.3577*x[3]*x[9]-0.6746*x[3]*x[10]-0.1915*x[4]*x[5]-0.0401*x[4]*x[6]-0.9931*x[4]*x[7]+0.0294*x[4]*x[8]+0.5066*x[4]*x[9]+0.9387*x[4]*x[10]+0.4504*x[5]*x[6]-0.8174*x[5]*x[7]-0.1996*x[5]*x[8]+0.3514*x[5]*x[9]+0.316*x[5]*x[10]+0.6336*x[6]*x[7]-0.5032*x[6]*x[8]-0.4267*x[6]*x[9]-0.9986*x[6]*x[10]-0.5176*x[7]*x[8]-0.9889*x[7]*x[9]-0.2244*x[7]*x[10]-0.1486*x[8]*x[9]+0.4237*x[8]*x[10]+0.7526*x[9]*x[10]+0.3702*x[1]-0.0792*x[2]+0.3093*x[3]-0.3792*x[4]+0.5826*x[5]-0.027*x[6]+0.2429*x[7]+0.4158*x[8]-0.5107*x[9]-0.3875*x[10]+0.2886*x[1]*x[2]*x[3]-0.4004*x[1]*x[2]*x[4]-0.3376*x[1]*x[2]*x[5]-0.9079*x[1]*x[2]*x[6]-0.4125*x[1]*x[2]*x[7]+0.8876*x[1]*x[2]*x[8]+0.3379*x[1]*x[2]*x[9]-0.2619*x[1]*x[2]*x[10]-0.7405*x[1]*x[3]*x[4]+0.1524*x[1]*x[3]*x[5]+0.8941*x[1]*x[3]*x[6]+0.2131*x[1]*x[3]*x[7]-0.3442*x[1]*x[3]*x[8]+0.5042*x[1]*x[3]*x[9]-0.931*x[1]*x[3]*x[10]+0.6521*x[1]*x[4]*x[5]-0.3237*x[1]*x[4]*x[6]+0.27*x[1]*x[4]*x[7]+0.2362*x[1]*x[4]*x[8]+0.5923*x[1]*x[4]*x[9]+0.986*x[1]*x[4]*x[10]-0.0644*x[1]*x[5]*x[6]+0.6635*x[1]*x[5]*x[7]-0.7397*x[1]*x[5]*x[8]+0.942*x[1]*x[5]*x[9]-0.6956*x[1]*x[5]*x[10]+0.7189*x[1]*x[6]*x[7]+0.2027*x[1]*x[6]*x[8]+0.7485*x[1]*x[6]*x[9]+0.4619*x[1]*x[6]*x[10]+0.0043*x[1]*x[7]*x[8]+0.8381*x[1]*x[7]*x[9]-0.8394*x[1]*x[7]*x[10]-0.7701*x[1]*x[8]*x[9]-0.3017*x[1]*x[8]*x[10]-0.2722*x[1]*x[9]*x[10]+0.4795*x[2]*x[3]*x[4]+0.3531*x[2]*x[3]*x[5]+0.2825*x[2]*x[3]*x[6]+0.3274*x[2]*x[3]*x[7]-0.4461*x[2]*x[3]*x[8]+0.2588*x[2]*x[3]*x[9]+0.5324*x[2]*x[3]*x[10]-0.6424*x[2]*x[4]*x[5]-0.573*x[2]*x[4]*x[6]+0.6427*x[2]*x[4]*x[7]+0.1464*x[2]*x[4]*x[8]+0.7913*x[2]*x[4]*x[9]+0.0191*x[2]*x[4]*x[10]+0.6857*x[2]*x[5]*x[6]+0.3674*x[2]*x[5]*x[7]-0.7488*x[2]*x[5]*x[8]-0.9634*x[2]*x[5]*x[9]-0.2154*x[2]*x[5]*x[10]+0.9814*x[2]*x[6]*x[7]+0.3058*x[2]*x[6]*x[8]-0.5648*x[2]*x[6]*x[9]+0.043*x[2]*x[6]*x[10]+0.3748*x[2]*x[7]*x[8]-0.1711*x[2]*x[7]*x[9]+0.1803*x[2]*x[7]*x[10]-0.3642*x[2]*x[8]*x[9]+0.4124*x[2]*x[8]*x[10]+0.2058*x[2]*x[9]*x[10]+0.2026*x[3]*x[4]*x[5]+0.3626*x[3]*x[4]*x[6]+0.5458*x[3]*x[4]*x[7]-0.0222*x[3]*x[4]*x[8]-0.7975*x[3]*x[4]*x[9]-0.5112*x[3]*x[4]*x[10]+0.0613*x[3]*x[5]*x[6]+0.769*x[3]*x[5]*x[7]+0.701*x[3]*x[5]*x[8]-0.7641*x[3]*x[5]*x[9]+0.3574*x[3]*x[5]*x[10]-0.0437*x[3]*x[6]*x[7]+0.7193*x[3]*x[6]*x[8]+0.4535*x[3]*x[6]*x[9]+0.5978*x[3]*x[6]*x[10]+0.0133*x[3]*x[7]*x[8]+0.8512*x[3]*x[7]*x[9]-0.6772*x[3]*x[7]*x[10]+0.5878*x[3]*x[8]*x[9]-0.3585*x[3]*x[8]*x[10]+0.1872*x[3]*x[9]*x[10]+0.0589*x[4]*x[5]*x[6]-0.3317*x[4]*x[5]*x[7]+0.7479*x[4]*x[5]*x[8]-0.9671*x[4]*x[5]*x[9]+0.9391*x[4]*x[5]*x[10]+0.9018*x[4]*x[6]*x[7]+0.32*x[4]*x[6]*x[8]+0.6027*x[4]*x[6]*x[9]-0.6141*x[4]*x[6]*x[10]+0.531*x[4]*x[7]*x[8]+0.2639*x[4]*x[7]*x[9]+0.3663*x[4]*x[7]*x[10]-0.233*x[4]*x[8]*x[9]+0.4189*x[4]*x[8]*x[10]+0.4041*x[4]*x[9]*x[10]+0.304*x[5]*x[6]*x[7]+0.3126*x[5]*x[6]*x[8]+0.0481*x[5]*x[6]*x[9]-0.5275*x[5]*x[6]*x[10]-0.1305*x[5]*x[7]*x[8]-0.6678*x[5]*x[7]*x[9]-0.5155*x[5]*x[7]*x[10]+0.5784*x[5]*x[8]*x[9]+0.0016*x[5]*x[8]*x[10]-0.1111*x[5]*x[9]*x[10]-0.3946*x[6]*x[7]*x[8]-0.98*x[6]*x[7]*x[9]-0.1806*x[6]*x[7]*x[10]+0.988*x[6]*x[8]*x[9]-0.6747*x[6]*x[8]*x[10]-0.3078*x[6]*x[9]*x[10]+0.2953*x[7]*x[8]*x[9]-0.8559*x[7]*x[8]*x[10]+0.3771*x[7]*x[9]*x[10]-0.6117*x[8]*x[9]*x[10] <= 8.767)
@NLconstraint(m, e3, (-0.1824*x[1]*x[2])-0.8383*x[1]*x[3]-0.6698*x[1]*x[4]+0.0278*x[1]*x[5]-0.6996*x[1]*x[6]-0.3721*x[1]*x[7]-0.0097*x[1]*x[8]-0.1389*x[1]*x[9]-0.1557*x[1]*x[10]+0.3259*x[2]*x[3]+0.2066*x[2]*x[4]+0.4973*x[2]*x[5]-0.0794*x[2]*x[6]+0.9822*x[2]*x[7]+0.9661*x[2]*x[8]-0.7344*x[2]*x[9]+0.5813*x[2]*x[10]-0.0259*x[3]*x[4]-0.8178*x[3]*x[5]+0.1696*x[3]*x[6]+0.0474*x[3]*x[7]-0.6102*x[3]*x[8]+0.3413*x[3]*x[9]-0.0321*x[3]*x[10]+0.3867*x[4]*x[5]-0.9594*x[4]*x[6]-0.0941*x[4]*x[7]+0.2824*x[4]*x[8]+0.2279*x[4]*x[9]-0.2678*x[4]*x[10]+0.8357*x[5]*x[6]-0.1385*x[5]*x[7]-0.0028*x[5]*x[8]+0.6343*x[5]*x[9]+0.6558*x[5]*x[10]-0.3929*x[6]*x[7]+0.5754*x[6]*x[8]+0.5376*x[6]*x[9]-0.9033*x[6]*x[10]-0.3758*x[7]*x[8]+0.0538*x[7]*x[9]+0.5201*x[7]*x[10]+0.0502*x[8]*x[9]+0.6526*x[8]*x[10]+0.3788*x[9]*x[10]-0.2957*x[1]+0.2894*x[2]-0.7789*x[3]-0.7901*x[4]+0.4762*x[5]+0.4641*x[6]+0.4006*x[7]+0.9277*x[8]+0.1455*x[9]-0.2138*x[10]+(-0.1237*x[1]*x[2]*x[3])-0.9108*x[1]*x[2]*x[4]+0.8865*x[1]*x[2]*x[5]-0.2339*x[1]*x[2]*x[6]-0.3238*x[1]*x[2]*x[7]+0.3171*x[1]*x[2]*x[8]-0.7991*x[1]*x[2]*x[9]+0.8642*x[1]*x[2]*x[10]-0.3354*x[1]*x[3]*x[4]-0.9854*x[1]*x[3]*x[5]+0.6736*x[1]*x[3]*x[6]+0.9472*x[1]*x[3]*x[7]-0.6774*x[1]*x[3]*x[8]+0.2819*x[1]*x[3]*x[9]-0.8312*x[1]*x[3]*x[10]+0.9588*x[1]*x[4]*x[5]+0.6607*x[1]*x[4]*x[6]-0.7955*x[1]*x[4]*x[7]-0.3957*x[1]*x[4]*x[8]-0.7523*x[1]*x[4]*x[9]-0.232*x[1]*x[4]*x[10]+0.7743*x[1]*x[5]*x[6]-0.4182*x[1]*x[5]*x[7]-0.8409*x[1]*x[5]*x[8]+0.2953*x[1]*x[5]*x[9]-0.6522*x[1]*x[5]*x[10]+0.2996*x[1]*x[6]*x[7]-0.319*x[1]*x[6]*x[8]+0.092*x[1]*x[6]*x[9]-0.9485*x[1]*x[6]*x[10]+0.7382*x[1]*x[7]*x[8]-0.1359*x[1]*x[7]*x[9]+0.3935*x[1]*x[7]*x[10]+0.8373*x[1]*x[8]*x[9]+0.8982*x[1]*x[8]*x[10]-0.5906*x[1]*x[9]*x[10]-0.1772*x[2]*x[3]*x[4]+0.834*x[2]*x[3]*x[5]-0.6971*x[2]*x[3]*x[6]-0.5593*x[2]*x[3]*x[7]+0.5782*x[2]*x[3]*x[8]-0.0524*x[2]*x[3]*x[9]+0.3458*x[2]*x[3]*x[10]-0.5235*x[2]*x[4]*x[5]-0.1639*x[2]*x[4]*x[6]+0.8372*x[2]*x[4]*x[7]+0.6061*x[2]*x[4]*x[8]-0.0421*x[2]*x[4]*x[9]+0.0078*x[2]*x[4]*x[10]+0.992*x[2]*x[5]*x[6]-0.9383*x[2]*x[5]*x[7]+0.3232*x[2]*x[5]*x[8]-0.1077*x[2]*x[5]*x[9]-0.6034*x[2]*x[5]*x[10]+0.5167*x[2]*x[6]*x[7]+0.5893*x[2]*x[6]*x[8]+0.3498*x[2]*x[6]*x[9]+0.9897*x[2]*x[6]*x[10]-0.4292*x[2]*x[7]*x[8]+0.6811*x[2]*x[7]*x[9]-0.9318*x[2]*x[7]*x[10]-0.628*x[2]*x[8]*x[9]-0.7347*x[2]*x[8]*x[10]-0.6338*x[2]*x[9]*x[10]-0.0089*x[3]*x[4]*x[5]+0.435*x[3]*x[4]*x[6]-0.9752*x[3]*x[4]*x[7]+0.7921*x[3]*x[4]*x[8]-0.6234*x[3]*x[4]*x[9]-0.2596*x[3]*x[4]*x[10]+0.038*x[3]*x[5]*x[6]+0.7493*x[3]*x[5]*x[7]+0.0256*x[3]*x[5]*x[8]-0.457*x[3]*x[5]*x[9]-0.3738*x[3]*x[5]*x[10]+0.2854*x[3]*x[6]*x[7]-0.4543*x[3]*x[6]*x[8]-0.03*x[3]*x[6]*x[9]-0.9105*x[3]*x[6]*x[10]-0.7535*x[3]*x[7]*x[8]-0.1891*x[3]*x[7]*x[9]+0.6336*x[3]*x[7]*x[10]+0.1559*x[3]*x[8]*x[9]-0.3327*x[3]*x[8]*x[10]-0.0413*x[3]*x[9]*x[10]-0.3352*x[4]*x[5]*x[6]-0.9197*x[4]*x[5]*x[7]-0.3498*x[4]*x[5]*x[8]-0.3321*x[4]*x[5]*x[9]+0.3069*x[4]*x[5]*x[10]-0.6815*x[4]*x[6]*x[7]-0.9023*x[4]*x[6]*x[8]-0.3243*x[4]*x[6]*x[9]-0.7002*x[4]*x[6]*x[10]+0.8733*x[4]*x[7]*x[8]+0.7257*x[4]*x[7]*x[9]+0.807*x[4]*x[7]*x[10]-0.3247*x[4]*x[8]*x[9]+0.751*x[4]*x[8]*x[10]-0.1371*x[4]*x[9]*x[10]+0.3378*x[5]*x[6]*x[7]+0.4854*x[5]*x[6]*x[8]+0.6818*x[5]*x[6]*x[9]-0.2154*x[5]*x[6]*x[10]+0.9713*x[5]*x[7]*x[8]+0.0508*x[5]*x[7]*x[9]-0.0821*x[5]*x[7]*x[10]-0.2744*x[5]*x[8]*x[9]+0.3301*x[5]*x[8]*x[10]+0.0977*x[5]*x[9]*x[10]+0.7447*x[6]*x[7]*x[8]+0.152*x[6]*x[7]*x[9]+0.6629*x[6]*x[7]*x[10]-0.8393*x[6]*x[8]*x[9]+0.1067*x[6]*x[8]*x[10]-0.9084*x[6]*x[9]*x[10]+0.761*x[7]*x[8]*x[9]+0.5597*x[7]*x[8]*x[10]-0.2003*x[7]*x[9]*x[10]-0.9542*x[8]*x[9]*x[10] <= 76.406)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script. 
