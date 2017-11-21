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
@NLconstraint(m, e1, -(-0.9963*x[1]*x[2]-0.6875*x[1]*x[3]-0.6238*x[1]*x[4]+0.0738*x[1]*x[5]+0.3122*x[1]*x[6]+0.9116*x[1]*x[7]-0.7073*x[1]*x[8]+0.3956*x[1]*x[9]+0.6408*x[1]*x[10]+0.906*x[2]*x[3]+0.4384*x[2]*x[4]-0.0051*x[2]*x[5]+0.689*x[2]*x[6]+0.8015*x[2]*x[7]-0.1671*x[2]*x[8]+0.1501*x[2]*x[9]-0.6129*x[2]*x[10]-0.4673*x[3]*x[4]-0.2172*x[3]*x[5]+0.5448*x[3]*x[6]+0.5743*x[3]*x[7]-0.2467*x[3]*x[8]+0.8448*x[3]*x[9]-0.784*x[3]*x[10]-0.2975*x[4]*x[5]-0.9803*x[4]*x[6]+0.9786*x[4]*x[7]+0.1967*x[4]*x[8]-0.9423*x[4]*x[9]-0.4481*x[4]*x[10]-0.0269*x[5]*x[6]-0.1364*x[5]*x[7]-0.9192*x[5]*x[8]+0.5189*x[5]*x[9]+0.3404*x[5]*x[10]+0.1516*x[6]*x[7]+0.4074*x[6]*x[8]-0.3842*x[6]*x[9]+0.4361*x[6]*x[10]-0.6147*x[7]*x[8]-0.8*x[7]*x[9]+0.1892*x[7]*x[10]-0.8637*x[8]*x[9]+0.3065*x[8]*x[10]+0.2325*x[9]*x[10]+0.2648*x[1]+0.3826*x[2]+0.6438*x[3]-0.5217*x[4]+0.3787*x[5]+0.7293*x[6]-0.1202*x[7]+0.5314*x[8]+0.2886*x[9]-0.4004*x[10]+0.8603*x[1]*x[2]*x[3]+0.1445*x[1]*x[2]*x[4]-0.773*x[1]*x[2]*x[5]+0.1692*x[1]*x[2]*x[6]+0.8432*x[1]*x[2]*x[7]+0.8133*x[1]*x[2]*x[8]+0.1169*x[1]*x[2]*x[9]-0.1312*x[1]*x[2]*x[10]+0.9717*x[1]*x[3]*x[4]+0.3126*x[1]*x[3]*x[5]+0.4154*x[1]*x[3]*x[6]-0.0105*x[1]*x[3]*x[7]+0.4772*x[1]*x[3]*x[8]+0.1875*x[1]*x[3]*x[9]+0.9525*x[1]*x[3]*x[10]-0.3099*x[1]*x[4]*x[5]-0.239*x[1]*x[4]*x[6]+0.5059*x[1]*x[4]*x[7]+0.466*x[1]*x[4]*x[8]-0.334*x[1]*x[4]*x[9]+0.8077*x[1]*x[4]*x[10]+0.3148*x[1]*x[5]*x[6]-0.4982*x[1]*x[5]*x[7]+0.2499*x[1]*x[5]*x[8]-0.4484*x[1]*x[5]*x[9]+0.0002*x[1]*x[5]*x[10]+0.9242*x[1]*x[6]*x[7]-0.3877*x[1]*x[6]*x[8]-0.776*x[1]*x[6]*x[9]-0.4047*x[1]*x[6]*x[10]-0.8727*x[1]*x[7]*x[8]-0.014*x[1]*x[7]*x[9]-0.9627*x[1]*x[7]*x[10]-0.15*x[1]*x[8]*x[9]-0.7809*x[1]*x[8]*x[10]-0.4473*x[1]*x[9]*x[10]+0.4151*x[2]*x[3]*x[4]+0.0728*x[2]*x[3]*x[5]-0.2027*x[2]*x[3]*x[6]-0.4616*x[2]*x[3]*x[7]+0.1176*x[2]*x[3]*x[8]+0.108*x[2]*x[3]*x[9]+0.3765*x[2]*x[3]*x[10]+0.305*x[2]*x[4]*x[5]-0.5298*x[2]*x[4]*x[6]-0.0275*x[2]*x[4]*x[7]-0.8101*x[2]*x[4]*x[8]-0.4449*x[2]*x[4]*x[9]-0.8782*x[2]*x[4]*x[10]-0.6795*x[2]*x[5]*x[6]-0.8655*x[2]*x[5]*x[7]-0.6457*x[2]*x[5]*x[8]+0.8807*x[2]*x[5]*x[9]-0.7634*x[2]*x[5]*x[10]+0.217*x[2]*x[6]*x[7]-0.0549*x[2]*x[6]*x[8]-0.9422*x[2]*x[6]*x[9]-0.9389*x[2]*x[6]*x[10]-0.2805*x[2]*x[7]*x[8]-0.3906*x[2]*x[7]*x[9]+0.8925*x[2]*x[7]*x[10]+0.359*x[2]*x[8]*x[9]-0.3714*x[2]*x[8]*x[10]-0.5488*x[2]*x[9]*x[10]+0.1483*x[3]*x[4]*x[5]+0.225*x[3]*x[4]*x[6]+0.7272*x[3]*x[4]*x[7]-0.8881*x[3]*x[4]*x[8]-0.0211*x[3]*x[4]*x[9]-0.4108*x[3]*x[4]*x[10]-0.0434*x[3]*x[5]*x[6]-0.7799*x[3]*x[5]*x[7]-0.4614*x[3]*x[5]*x[8]-0.0865*x[3]*x[5]*x[9]+0.3207*x[3]*x[5]*x[10]+0.0431*x[3]*x[6]*x[7]+0.8559*x[3]*x[6]*x[8]-0.2257*x[3]*x[6]*x[9]-0.1022*x[3]*x[6]*x[10]-0.5768*x[3]*x[7]*x[8]-0.8797*x[3]*x[7]*x[9]+0.3955*x[3]*x[7]*x[10]+0.7964*x[3]*x[8]*x[9]+0.2734*x[3]*x[8]*x[10]+0.0895*x[3]*x[9]*x[10]-0.4146*x[4]*x[5]*x[6]+0.9077*x[4]*x[5]*x[7]-0.1895*x[4]*x[5]*x[8]+0.994*x[4]*x[5]*x[9]-0.6899*x[4]*x[5]*x[10]+0.9394*x[4]*x[6]*x[7]-0.2503*x[4]*x[6]*x[8]-0.2187*x[4]*x[6]*x[9]-0.1793*x[4]*x[6]*x[10]+0.9029*x[4]*x[7]*x[8]+0.1218*x[4]*x[7]*x[9]+0.2453*x[4]*x[7]*x[10]+0.7306*x[4]*x[8]*x[9]-0.2001*x[4]*x[8]*x[10]+0.7936*x[4]*x[9]*x[10]-0.7984*x[5]*x[6]*x[7]-0.589*x[5]*x[6]*x[8]+0.6958*x[5]*x[6]*x[9]-0.0455*x[5]*x[6]*x[10]-0.267*x[5]*x[7]*x[8]+0.8622*x[5]*x[7]*x[9]-0.5897*x[5]*x[7]*x[10]+0.1178*x[5]*x[8]*x[9]+0.8772*x[5]*x[8]*x[10]-0.7239*x[5]*x[9]*x[10]+0.8153*x[6]*x[7]*x[8]+0.9875*x[6]*x[7]*x[9]+0.0661*x[6]*x[7]*x[10]+0.0747*x[6]*x[8]*x[9]-0.9466*x[6]*x[8]*x[10]+0.9993*x[6]*x[9]*x[10]+0.4921*x[7]*x[8]*x[9]+0.1736*x[7]*x[8]*x[10]-0.5295*x[7]*x[9]*x[10]-0.5874*x[8]*x[9]*x[10])+x[11] == 0.0)
@NLconstraint(m, e2, (-0.1445*x[1]*x[2])-0.1965*x[1]*x[3]+0.5678*x[1]*x[4]+0.8256*x[1]*x[5]-0.0288*x[1]*x[6]-0.0473*x[1]*x[7]+0.1173*x[1]*x[8]+0.6063*x[1]*x[9]-0.8786*x[1]*x[10]+0.8495*x[2]*x[3]+0.1714*x[2]*x[4]+0.4934*x[2]*x[5]-0.7093*x[2]*x[6]-0.5405*x[2]*x[7]+0.7902*x[2]*x[8]-0.333*x[2]*x[9]+0.9342*x[2]*x[10]+0.6046*x[3]*x[4]-0.7882*x[3]*x[5]+0.4245*x[3]*x[6]-0.3577*x[3]*x[7]-0.6746*x[3]*x[8]-0.1915*x[3]*x[9]-0.0401*x[3]*x[10]-0.9931*x[4]*x[5]+0.0294*x[4]*x[6]+0.5066*x[4]*x[7]+0.9387*x[4]*x[8]+0.4504*x[4]*x[9]-0.8174*x[4]*x[10]-0.1996*x[5]*x[6]+0.3514*x[5]*x[7]+0.316*x[5]*x[8]+0.6336*x[5]*x[9]-0.5032*x[5]*x[10]-0.4267*x[6]*x[7]-0.9986*x[6]*x[8]-0.5176*x[6]*x[9]-0.9889*x[6]*x[10]-0.2244*x[7]*x[8]-0.1486*x[7]*x[9]+0.4237*x[7]*x[10]+0.7526*x[8]*x[9]+0.3702*x[8]*x[10]-0.0792*x[9]*x[10]+0.3093*x[1]-0.3792*x[2]+0.5826*x[3]-0.027*x[4]+0.2429*x[5]+0.4158*x[6]-0.5107*x[7]-0.3875*x[8]-0.8247*x[9]-0.1237*x[10]+(-0.3376*x[1]*x[2]*x[3])-0.9079*x[1]*x[2]*x[4]-0.4125*x[1]*x[2]*x[5]+0.8876*x[1]*x[2]*x[6]+0.3379*x[1]*x[2]*x[7]-0.2619*x[1]*x[2]*x[8]-0.7405*x[1]*x[2]*x[9]+0.1524*x[1]*x[2]*x[10]+0.8941*x[1]*x[3]*x[4]+0.2131*x[1]*x[3]*x[5]-0.3442*x[1]*x[3]*x[6]+0.5042*x[1]*x[3]*x[7]-0.931*x[1]*x[3]*x[8]+0.6521*x[1]*x[3]*x[9]-0.3237*x[1]*x[3]*x[10]+0.27*x[1]*x[4]*x[5]+0.2362*x[1]*x[4]*x[6]+0.5923*x[1]*x[4]*x[7]+0.986*x[1]*x[4]*x[8]-0.0644*x[1]*x[4]*x[9]+0.6635*x[1]*x[4]*x[10]-0.7397*x[1]*x[5]*x[6]+0.942*x[1]*x[5]*x[7]-0.6956*x[1]*x[5]*x[8]+0.7189*x[1]*x[5]*x[9]+0.2027*x[1]*x[5]*x[10]+0.7485*x[1]*x[6]*x[7]+0.4619*x[1]*x[6]*x[8]+0.0043*x[1]*x[6]*x[9]+0.8381*x[1]*x[6]*x[10]-0.8394*x[1]*x[7]*x[8]-0.7701*x[1]*x[7]*x[9]-0.3017*x[1]*x[7]*x[10]-0.2722*x[1]*x[8]*x[9]+0.4795*x[1]*x[8]*x[10]+0.3531*x[1]*x[9]*x[10]+0.2825*x[2]*x[3]*x[4]+0.3274*x[2]*x[3]*x[5]-0.4461*x[2]*x[3]*x[6]+0.2588*x[2]*x[3]*x[7]+0.5324*x[2]*x[3]*x[8]-0.6424*x[2]*x[3]*x[9]-0.573*x[2]*x[3]*x[10]+0.6427*x[2]*x[4]*x[5]+0.1464*x[2]*x[4]*x[6]+0.7913*x[2]*x[4]*x[7]+0.0191*x[2]*x[4]*x[8]+0.6857*x[2]*x[4]*x[9]+0.3674*x[2]*x[4]*x[10]-0.7488*x[2]*x[5]*x[6]-0.9634*x[2]*x[5]*x[7]-0.2154*x[2]*x[5]*x[8]+0.9814*x[2]*x[5]*x[9]+0.3058*x[2]*x[5]*x[10]-0.5648*x[2]*x[6]*x[7]+0.043*x[2]*x[6]*x[8]+0.3748*x[2]*x[6]*x[9]-0.1711*x[2]*x[6]*x[10]+0.1803*x[2]*x[7]*x[8]-0.3642*x[2]*x[7]*x[9]+0.4124*x[2]*x[7]*x[10]+0.2058*x[2]*x[8]*x[9]+0.2026*x[2]*x[8]*x[10]+0.3626*x[2]*x[9]*x[10]+0.5458*x[3]*x[4]*x[5]-0.0222*x[3]*x[4]*x[6]-0.7975*x[3]*x[4]*x[7]-0.5112*x[3]*x[4]*x[8]+0.0613*x[3]*x[4]*x[9]+0.769*x[3]*x[4]*x[10]+0.701*x[3]*x[5]*x[6]-0.7641*x[3]*x[5]*x[7]+0.3574*x[3]*x[5]*x[8]-0.0437*x[3]*x[5]*x[9]+0.7193*x[3]*x[5]*x[10]+0.4535*x[3]*x[6]*x[7]+0.5978*x[3]*x[6]*x[8]+0.0133*x[3]*x[6]*x[9]+0.8512*x[3]*x[6]*x[10]-0.6772*x[3]*x[7]*x[8]+0.5878*x[3]*x[7]*x[9]-0.3585*x[3]*x[7]*x[10]+0.1872*x[3]*x[8]*x[9]+0.0589*x[3]*x[8]*x[10]-0.3317*x[3]*x[9]*x[10]+0.7479*x[4]*x[5]*x[6]-0.9671*x[4]*x[5]*x[7]+0.9391*x[4]*x[5]*x[8]+0.9018*x[4]*x[5]*x[9]+0.32*x[4]*x[5]*x[10]+0.6027*x[4]*x[6]*x[7]-0.6141*x[4]*x[6]*x[8]+0.531*x[4]*x[6]*x[9]+0.2639*x[4]*x[6]*x[10]+0.3663*x[4]*x[7]*x[8]-0.233*x[4]*x[7]*x[9]+0.4189*x[4]*x[7]*x[10]+0.4041*x[4]*x[8]*x[9]+0.304*x[4]*x[8]*x[10]+0.3126*x[4]*x[9]*x[10]+0.0481*x[5]*x[6]*x[7]-0.5275*x[5]*x[6]*x[8]-0.1305*x[5]*x[6]*x[9]-0.6678*x[5]*x[6]*x[10]-0.5155*x[5]*x[7]*x[8]+0.5784*x[5]*x[7]*x[9]+0.0016*x[5]*x[7]*x[10]-0.1111*x[5]*x[8]*x[9]-0.3946*x[5]*x[8]*x[10]-0.98*x[5]*x[9]*x[10]-0.1806*x[6]*x[7]*x[8]+0.988*x[6]*x[7]*x[9]-0.6747*x[6]*x[7]*x[10]-0.3078*x[6]*x[8]*x[9]+0.2953*x[6]*x[8]*x[10]-0.8559*x[6]*x[9]*x[10]+0.3771*x[7]*x[8]*x[9]-0.6117*x[7]*x[8]*x[10]+0.1766*x[7]*x[9]*x[10]+0.472*x[8]*x[9]*x[10] <= 4.46)
@NLconstraint(m, e3, 0.0278*x[1]*x[3]-0.6698*x[1]*x[2]-0.6996*x[1]*x[4]-0.3721*x[1]*x[5]-0.0097*x[1]*x[6]-0.1389*x[1]*x[7]-0.1557*x[1]*x[8]+0.3259*x[1]*x[9]+0.2066*x[1]*x[10]+0.4973*x[2]*x[3]-0.0794*x[2]*x[4]+0.9822*x[2]*x[5]+0.9661*x[2]*x[6]-0.7344*x[2]*x[7]+0.5813*x[2]*x[8]-0.0259*x[2]*x[9]-0.8178*x[2]*x[10]+0.1696*x[3]*x[4]+0.0474*x[3]*x[5]-0.6102*x[3]*x[6]+0.3413*x[3]*x[7]-0.0321*x[3]*x[8]+0.3867*x[3]*x[9]-0.9594*x[3]*x[10]-0.0941*x[4]*x[5]+0.2824*x[4]*x[6]+0.2279*x[4]*x[7]-0.2678*x[4]*x[8]+0.8357*x[4]*x[9]-0.1385*x[4]*x[10]-0.0028*x[5]*x[6]+0.6343*x[5]*x[7]+0.6558*x[5]*x[8]-0.3929*x[5]*x[9]+0.5754*x[5]*x[10]+0.5376*x[6]*x[7]-0.9033*x[6]*x[8]-0.3758*x[6]*x[9]+0.0538*x[6]*x[10]+0.5201*x[7]*x[8]+0.0502*x[7]*x[9]+0.6526*x[7]*x[10]+0.3788*x[8]*x[9]-0.2957*x[8]*x[10]+0.2894*x[9]*x[10]-0.7789*x[1]-0.7901*x[2]+0.4762*x[3]+0.4641*x[4]+0.4006*x[5]+0.9277*x[6]+0.1455*x[7]-0.2138*x[8]+0.5281*x[9]-0.3557*x[10]+0.8865*x[1]*x[2]*x[3]-0.2339*x[1]*x[2]*x[4]-0.3238*x[1]*x[2]*x[5]+0.3171*x[1]*x[2]*x[6]-0.7991*x[1]*x[2]*x[7]+0.8642*x[1]*x[2]*x[8]-0.3354*x[1]*x[2]*x[9]-0.9854*x[1]*x[2]*x[10]+0.6736*x[1]*x[3]*x[4]+0.9472*x[1]*x[3]*x[5]-0.6774*x[1]*x[3]*x[6]+0.2819*x[1]*x[3]*x[7]-0.8312*x[1]*x[3]*x[8]+0.9588*x[1]*x[3]*x[9]+0.6607*x[1]*x[3]*x[10]-0.7955*x[1]*x[4]*x[5]-0.3957*x[1]*x[4]*x[6]-0.7523*x[1]*x[4]*x[7]-0.232*x[1]*x[4]*x[8]+0.7743*x[1]*x[4]*x[9]-0.4182*x[1]*x[4]*x[10]-0.8409*x[1]*x[5]*x[6]+0.2953*x[1]*x[5]*x[7]-0.6522*x[1]*x[5]*x[8]+0.2996*x[1]*x[5]*x[9]-0.319*x[1]*x[5]*x[10]+0.092*x[1]*x[6]*x[7]-0.9485*x[1]*x[6]*x[8]+0.7382*x[1]*x[6]*x[9]-0.1359*x[1]*x[6]*x[10]+0.3935*x[1]*x[7]*x[8]+0.8373*x[1]*x[7]*x[9]+0.8982*x[1]*x[7]*x[10]-0.5906*x[1]*x[8]*x[9]-0.1772*x[1]*x[8]*x[10]+0.834*x[1]*x[9]*x[10]-0.6971*x[2]*x[3]*x[4]-0.5593*x[2]*x[3]*x[5]+0.5782*x[2]*x[3]*x[6]-0.0524*x[2]*x[3]*x[7]+0.3458*x[2]*x[3]*x[8]-0.5235*x[2]*x[3]*x[9]-0.1639*x[2]*x[3]*x[10]+0.8372*x[2]*x[4]*x[5]+0.6061*x[2]*x[4]*x[6]-0.0421*x[2]*x[4]*x[7]+0.0078*x[2]*x[4]*x[8]+0.992*x[2]*x[4]*x[9]-0.9383*x[2]*x[4]*x[10]+0.3232*x[2]*x[5]*x[6]-0.1077*x[2]*x[5]*x[7]-0.6034*x[2]*x[5]*x[8]+0.5167*x[2]*x[5]*x[9]+0.5893*x[2]*x[5]*x[10]+0.3498*x[2]*x[6]*x[7]+0.9897*x[2]*x[6]*x[8]-0.4292*x[2]*x[6]*x[9]+0.6811*x[2]*x[6]*x[10]-0.9318*x[2]*x[7]*x[8]-0.628*x[2]*x[7]*x[9]-0.7347*x[2]*x[7]*x[10]-0.6338*x[2]*x[8]*x[9]-0.0089*x[2]*x[8]*x[10]+0.435*x[2]*x[9]*x[10]-0.9752*x[3]*x[4]*x[5]+0.7921*x[3]*x[4]*x[6]-0.6234*x[3]*x[4]*x[7]-0.2596*x[3]*x[4]*x[8]+0.038*x[3]*x[4]*x[9]+0.7493*x[3]*x[4]*x[10]+0.0256*x[3]*x[5]*x[6]-0.457*x[3]*x[5]*x[7]-0.3738*x[3]*x[5]*x[8]+0.2854*x[3]*x[5]*x[9]-0.4543*x[3]*x[5]*x[10]-0.03*x[3]*x[6]*x[7]-0.9105*x[3]*x[6]*x[8]-0.7535*x[3]*x[6]*x[9]-0.1891*x[3]*x[6]*x[10]+0.6336*x[3]*x[7]*x[8]+0.1559*x[3]*x[7]*x[9]-0.3327*x[3]*x[7]*x[10]-0.0413*x[3]*x[8]*x[9]-0.3352*x[3]*x[8]*x[10]-0.9197*x[3]*x[9]*x[10]-0.3498*x[4]*x[5]*x[6]-0.3321*x[4]*x[5]*x[7]+0.3069*x[4]*x[5]*x[8]-0.6815*x[4]*x[5]*x[9]-0.9023*x[4]*x[5]*x[10]-0.3243*x[4]*x[6]*x[7]-0.7002*x[4]*x[6]*x[8]+0.8733*x[4]*x[6]*x[9]+0.7257*x[4]*x[6]*x[10]+0.807*x[4]*x[7]*x[8]-0.3247*x[4]*x[7]*x[9]+0.751*x[4]*x[7]*x[10]-0.1371*x[4]*x[8]*x[9]+0.3378*x[4]*x[8]*x[10]+0.4854*x[4]*x[9]*x[10]+0.6818*x[5]*x[6]*x[7]-0.2154*x[5]*x[6]*x[8]+0.9713*x[5]*x[6]*x[9]+0.0508*x[5]*x[6]*x[10]-0.0821*x[5]*x[7]*x[8]-0.2744*x[5]*x[7]*x[9]+0.3301*x[5]*x[7]*x[10]+0.0977*x[5]*x[8]*x[9]+0.7447*x[5]*x[8]*x[10]+0.152*x[5]*x[9]*x[10]+0.6629*x[6]*x[7]*x[8]-0.8393*x[6]*x[7]*x[9]+0.1067*x[6]*x[7]*x[10]-0.9084*x[6]*x[8]*x[9]+0.761*x[6]*x[8]*x[10]+0.5597*x[6]*x[9]*x[10]-0.2003*x[7]*x[8]*x[9]-0.9542*x[7]*x[8]*x[10]-0.1824*x[7]*x[9]*x[10]-0.8383*x[8]*x[9]*x[10] <= 97.254)
@NLconstraint(m, e4, (-0.7943*x[1]*x[2])-0.3063*x[1]*x[3]+0.0558*x[1]*x[4]-0.2301*x[1]*x[5]+0.5779*x[1]*x[6]-0.0523*x[1]*x[7]+0.4117*x[1]*x[8]+0.7896*x[1]*x[9]-0.3012*x[1]*x[10]-0.0166*x[2]*x[3]-0.6013*x[2]*x[4]-0.27*x[2]*x[5]-0.5193*x[2]*x[6]+0.0948*x[2]*x[7]+0.2315*x[2]*x[8]-0.8466*x[2]*x[9]-0.4082*x[2]*x[10]+0.7234*x[3]*x[4]-0.2451*x[3]*x[5]+0.486*x[3]*x[6]-0.9333*x[3]*x[7]-0.577*x[3]*x[8]+0.6391*x[3]*x[9]-0.078*x[3]*x[10]-0.7901*x[4]*x[5]+0.3108*x[4]*x[6]-0.5911*x[4]*x[7]-0.7161*x[4]*x[8]+0.6677*x[4]*x[9]+0.9834*x[4]*x[10]-0.2604*x[5]*x[6]+0.1312*x[5]*x[7]+0.1699*x[5]*x[8]+0.8036*x[5]*x[9]+0.4179*x[5]*x[10]-0.4876*x[6]*x[7]-0.9695*x[6]*x[8]+0.8412*x[6]*x[9]-0.6245*x[6]*x[10]-0.2725*x[7]*x[8]+0.9959*x[7]*x[9]+0.7839*x[7]*x[10]-0.2566*x[8]*x[9]-0.3715*x[8]*x[10]-0.1659*x[9]*x[10]-0.3605*x[1]+0.4571*x[2]+0.157*x[3]+0.3664*x[4]+0.2114*x[5]-0.8717*x[6]+0.7656*x[7]-0.1614*x[8]+0.208*x[9]+0.2939*x[10]+0.3845*x[1]*x[2]*x[3]-0.931*x[1]*x[2]*x[4]-0.7231*x[1]*x[2]*x[5]-0.1203*x[1]*x[2]*x[6]+0.6813*x[1]*x[2]*x[7]-0.1748*x[1]*x[2]*x[8]-0.893*x[1]*x[2]*x[9]+0.3339*x[1]*x[2]*x[10]+0.1493*x[1]*x[3]*x[4]-0.0821*x[1]*x[3]*x[5]+0.497*x[1]*x[3]*x[6]-0.9345*x[1]*x[3]*x[7]+0.4136*x[1]*x[3]*x[8]+0.7518*x[1]*x[3]*x[9]-0.343*x[1]*x[3]*x[10]-0.4928*x[1]*x[4]*x[5]+0.7599*x[1]*x[4]*x[6]+0.6319*x[1]*x[4]*x[7]-0.8854*x[1]*x[4]*x[8]+0.7768*x[1]*x[4]*x[9]+0.0498*x[1]*x[4]*x[10]-0.87*x[1]*x[5]*x[6]+0.2151*x[1]*x[5]*x[7]-0.5144*x[1]*x[5]*x[8]-0.4663*x[1]*x[5]*x[9]-0.7141*x[1]*x[5]*x[10]+0.3885*x[1]*x[6]*x[7]+0.8542*x[1]*x[6]*x[8]+0.7864*x[1]*x[6]*x[9]+0.2841*x[1]*x[6]*x[10]-0.2428*x[1]*x[7]*x[8]-0.8116*x[1]*x[7]*x[9]+0.8953*x[1]*x[7]*x[10]+0.2995*x[1]*x[8]*x[9]-0.2316*x[1]*x[8]*x[10]-0.7342*x[1]*x[9]*x[10]+0.3091*x[2]*x[3]*x[4]-0.114*x[2]*x[3]*x[5]-0.6494*x[2]*x[3]*x[6]-0.5173*x[2]*x[3]*x[7]-0.7047*x[2]*x[3]*x[8]-0.764*x[2]*x[3]*x[9]-0.2591*x[2]*x[3]*x[10]-0.6065*x[2]*x[4]*x[5]-0.5798*x[2]*x[4]*x[6]+0.1489*x[2]*x[4]*x[7]-0.7814*x[2]*x[4]*x[8]+0.0265*x[2]*x[4]*x[9]-0.0071*x[2]*x[4]*x[10]-0.985*x[2]*x[5]*x[6]+0.9441*x[2]*x[5]*x[7]+0.4356*x[2]*x[5]*x[8]+0.9238*x[2]*x[5]*x[9]-0.8049*x[2]*x[5]*x[10]-0.4609*x[2]*x[6]*x[7]+0.0185*x[2]*x[6]*x[8]-0.5567*x[2]*x[6]*x[9]+0.5428*x[2]*x[6]*x[10]+0.8039*x[2]*x[7]*x[8]-0.7982*x[2]*x[7]*x[9]+0.433*x[2]*x[7]*x[10]+0.3945*x[2]*x[8]*x[9]-0.8879*x[2]*x[8]*x[10]-0.0682*x[2]*x[9]*x[10]-0.0645*x[3]*x[4]*x[5]+0.8792*x[3]*x[4]*x[6]-0.8687*x[3]*x[4]*x[7]+0.3423*x[3]*x[4]*x[8]-0.9285*x[3]*x[4]*x[9]-0.8432*x[3]*x[4]*x[10]-0.5799*x[3]*x[5]*x[6]-0.6942*x[3]*x[5]*x[7]-0.4111*x[3]*x[5]*x[8]+0.386*x[3]*x[5]*x[9]+0.1187*x[3]*x[5]*x[10]+0.12*x[3]*x[6]*x[7]+0.3772*x[3]*x[6]*x[8]-0.7117*x[3]*x[6]*x[9]-0.5063*x[3]*x[6]*x[10]-0.5562*x[3]*x[7]*x[8]+0.5658*x[3]*x[7]*x[9]-0.9644*x[3]*x[7]*x[10]+0.9425*x[3]*x[8]*x[9]-0.7938*x[3]*x[8]*x[10]+0.0856*x[3]*x[9]*x[10]+0.9841*x[4]*x[5]*x[6]-0.5537*x[4]*x[5]*x[7]-0.6452*x[4]*x[5]*x[8]-0.6664*x[4]*x[5]*x[9]-0.5412*x[4]*x[5]*x[10]+0.6908*x[4]*x[6]*x[7]-0.5576*x[4]*x[6]*x[8]+0.1221*x[4]*x[6]*x[9]-0.925*x[4]*x[6]*x[10]+0.4836*x[4]*x[7]*x[8]-0.4814*x[4]*x[7]*x[9]-0.8928*x[4]*x[7]*x[10]+0.8237*x[4]*x[8]*x[9]+0.2967*x[4]*x[8]*x[10]+0.519*x[4]*x[9]*x[10]-0.4036*x[5]*x[6]*x[7]+0.2184*x[5]*x[6]*x[8]+0.5597*x[5]*x[6]*x[9]-0.6636*x[5]*x[6]*x[10]-0.2396*x[5]*x[7]*x[8]+0.2761*x[5]*x[7]*x[9]-0.8421*x[5]*x[7]*x[10]+0.5215*x[5]*x[8]*x[9]-0.3457*x[5]*x[8]*x[10]+0.54*x[5]*x[9]*x[10]+0.1788*x[6]*x[7]*x[8]+0.2414*x[6]*x[7]*x[9]-0.055*x[6]*x[7]*x[10]-0.2767*x[6]*x[8]*x[9]+0.3488*x[6]*x[8]*x[10]+0.0979*x[6]*x[9]*x[10]-0.6934*x[7]*x[8]*x[9]-0.6615*x[7]*x[8]*x[10]+0.503*x[7]*x[9]*x[10]-0.7626*x[8]*x[9]*x[10] <= 73.595)
@NLconstraint(m, e5, 0.9124*x[1]*x[3]-0.2826*x[1]*x[2]+0.8253*x[1]*x[4]+0.1537*x[1]*x[5]-0.6056*x[1]*x[6]+0.1527*x[1]*x[7]+0.8957*x[1]*x[8]-0.5742*x[1]*x[9]+0.235*x[1]*x[10]-0.5581*x[2]*x[3]-0.6459*x[2]*x[4]+0.6936*x[2]*x[5]+0.5801*x[2]*x[6]+0.6639*x[2]*x[7]+0.6154*x[2]*x[8]+0.593*x[2]*x[9]-0.5041*x[2]*x[10]-0.8966*x[3]*x[4]+0.2624*x[3]*x[5]+0.1377*x[3]*x[6]-0.3901*x[3]*x[7]-0.244*x[3]*x[8]-0.0898*x[3]*x[9]+0.7614*x[3]*x[10]-0.7333*x[4]*x[5]+0.3803*x[4]*x[6]+0.6721*x[4]*x[7]-0.1619*x[4]*x[8]+0.8134*x[4]*x[9]+0.9525*x[4]*x[10]+0.992*x[5]*x[6]+0.7007*x[5]*x[7]+0.3342*x[5]*x[8]+0.7684*x[5]*x[9]+0.3835*x[5]*x[10]-0.3171*x[6]*x[7]-0.5577*x[6]*x[8]+0.6115*x[6]*x[9]-0.1189*x[6]*x[10]+0.8643*x[7]*x[8]+0.3953*x[7]*x[9]-0.3491*x[7]*x[10]-0.7712*x[8]*x[9]-0.8291*x[8]*x[10]-0.3737*x[9]*x[10]+0.388*x[1]-0.5345*x[2]-0.2952*x[3]+0.2886*x[4]+0.0765*x[5]+0.8758*x[6]+0.4549*x[7]-0.0236*x[8]-0.1005*x[9]+0.7607*x[10]+0.1079*x[1]*x[2]*x[3]-0.1952*x[1]*x[2]*x[4]+0.9831*x[1]*x[2]*x[5]-0.3912*x[1]*x[2]*x[6]-0.0164*x[1]*x[2]*x[7]-0.7641*x[1]*x[2]*x[8]+0.825*x[1]*x[2]*x[9]+0.7573*x[1]*x[2]*x[10]-0.0731*x[1]*x[3]*x[4]-0.7839*x[1]*x[3]*x[5]+0.2375*x[1]*x[3]*x[6]+0.342*x[1]*x[3]*x[7]-0.2362*x[1]*x[3]*x[8]+0.7813*x[1]*x[3]*x[9]+0.6021*x[1]*x[3]*x[10]+0.3864*x[1]*x[4]*x[5]+0.7828*x[1]*x[4]*x[6]-0.2355*x[1]*x[4]*x[7]+0.1796*x[1]*x[4]*x[8]-0.7816*x[1]*x[4]*x[9]+0.6992*x[1]*x[4]*x[10]-0.5391*x[1]*x[5]*x[6]+0.1898*x[1]*x[5]*x[7]-0.3419*x[1]*x[5]*x[8]-0.6057*x[1]*x[5]*x[9]+0.4886*x[1]*x[5]*x[10]-0.0693*x[1]*x[6]*x[7]+0.6415*x[1]*x[6]*x[8]-0.1695*x[1]*x[6]*x[9]-0.662*x[1]*x[6]*x[10]-0.6558*x[1]*x[7]*x[8]-0.2137*x[1]*x[7]*x[9]+0.0807*x[1]*x[7]*x[10]+0.2775*x[1]*x[8]*x[9]-0.639*x[1]*x[8]*x[10]+0.1566*x[1]*x[9]*x[10]+0.4792*x[2]*x[3]*x[4]+0.1403*x[2]*x[3]*x[5]-0.6095*x[2]*x[3]*x[6]+0.9322*x[2]*x[3]*x[7]-0.0214*x[2]*x[3]*x[8]+0.3126*x[2]*x[3]*x[9]-0.6241*x[2]*x[3]*x[10]+0.1136*x[2]*x[4]*x[5]+0.4677*x[2]*x[4]*x[6]-0.6577*x[2]*x[4]*x[7]+0.3394*x[2]*x[4]*x[8]-0.7785*x[2]*x[4]*x[9]-0.7024*x[2]*x[4]*x[10]+0.2443*x[2]*x[5]*x[6]-0.2521*x[2]*x[5]*x[7]+0.2286*x[2]*x[5]*x[8]-0.0991*x[2]*x[5]*x[9]-0.7218*x[2]*x[5]*x[10]+0.9204*x[2]*x[6]*x[7]-0.1743*x[2]*x[6]*x[8]+0.2405*x[2]*x[6]*x[9]+0.1433*x[2]*x[6]*x[10]+0.402*x[2]*x[7]*x[8]+0.7113*x[2]*x[7]*x[9]-0.14*x[2]*x[7]*x[10]+0.1251*x[2]*x[8]*x[9]+0.0473*x[2]*x[8]*x[10]-0.5929*x[2]*x[9]*x[10]+0.0649*x[3]*x[4]*x[5]+0.9708*x[3]*x[4]*x[6]+0.6177*x[3]*x[4]*x[7]+0.5806*x[3]*x[4]*x[8]-0.1607*x[3]*x[4]*x[9]+0.059*x[3]*x[4]*x[10]-0.8811*x[3]*x[5]*x[6]-0.4492*x[3]*x[5]*x[7]+0.7614*x[3]*x[5]*x[8]+0.2033*x[3]*x[5]*x[9]-0.9171*x[3]*x[5]*x[10]-0.0382*x[3]*x[6]*x[7]-0.8299*x[3]*x[6]*x[8]-0.5709*x[3]*x[6]*x[9]-0.396*x[3]*x[6]*x[10]+0.7934*x[3]*x[7]*x[8]+0.0689*x[3]*x[7]*x[9]-0.4928*x[3]*x[7]*x[10]-0.4895*x[3]*x[8]*x[9]+0.8422*x[3]*x[8]*x[10]+0.8058*x[3]*x[9]*x[10]-0.3989*x[4]*x[5]*x[6]-0.7604*x[4]*x[5]*x[7]-0.2455*x[4]*x[5]*x[8]-0.1685*x[4]*x[5]*x[9]-0.5593*x[4]*x[5]*x[10]-0.7832*x[4]*x[6]*x[7]+0.0926*x[4]*x[6]*x[8]+0.6215*x[4]*x[6]*x[9]+0.3352*x[4]*x[6]*x[10]+0.3423*x[4]*x[7]*x[8]-0.8728*x[4]*x[7]*x[9]+0.6484*x[4]*x[7]*x[10]-0.2626*x[4]*x[8]*x[9]-0.9557*x[4]*x[8]*x[10]-0.0043*x[4]*x[9]*x[10]-0.3711*x[5]*x[6]*x[7]-0.3175*x[5]*x[6]*x[8]-0.3467*x[5]*x[6]*x[9]-0.0837*x[5]*x[6]*x[10]+0.397*x[5]*x[7]*x[8]-0.8681*x[5]*x[7]*x[9]-0.2124*x[5]*x[7]*x[10]+0.9815*x[5]*x[8]*x[9]-0.5043*x[5]*x[8]*x[10]-0.2869*x[5]*x[9]*x[10]+0.6841*x[6]*x[7]*x[8]-0.4616*x[6]*x[7]*x[9]+0.4655*x[6]*x[7]*x[10]-0.6494*x[6]*x[8]*x[9]-0.2862*x[6]*x[8]*x[10]-0.5755*x[6]*x[9]*x[10]-0.5887*x[7]*x[8]*x[9]+0.3282*x[7]*x[8]*x[10]+0.0774*x[7]*x[9]*x[10]+0.6841*x[8]*x[9]*x[10] <= 10.778)
@NLconstraint(m, e6, (-0.3158*x[1]*x[2])-0.9495*x[1]*x[3]+0.379*x[1]*x[4]-0.7787*x[1]*x[5]-0.3534*x[1]*x[6]+0.0053*x[1]*x[7]-0.1876*x[1]*x[8]-0.502*x[1]*x[9]+0.1311*x[1]*x[10]+0.6431*x[2]*x[3]+0.3694*x[2]*x[4]-0.7882*x[2]*x[5]-0.3699*x[2]*x[6]-0.874*x[2]*x[7]-0.4416*x[2]*x[8]+0.2313*x[2]*x[9]+0.357*x[2]*x[10]+0.1096*x[3]*x[4]+0.9751*x[3]*x[5]+0.4229*x[3]*x[6]-0.0638*x[3]*x[7]+0.9879*x[3]*x[8]+0.8635*x[3]*x[9]+0.4333*x[3]*x[10]+0.8267*x[4]*x[5]+0.3304*x[4]*x[6]+0.7375*x[4]*x[7]+0.1234*x[4]*x[8]-0.2028*x[4]*x[9]+0.4864*x[4]*x[10]+0.4254*x[5]*x[6]-0.7986*x[5]*x[7]-0.3318*x[5]*x[8]+0.7505*x[5]*x[9]+0.8088*x[5]*x[10]-0.4503*x[6]*x[7]+0.8307*x[6]*x[8]-0.9624*x[6]*x[9]-0.172*x[6]*x[10]+0.2328*x[7]*x[8]-0.0483*x[7]*x[9]-0.8543*x[7]*x[10]-0.1414*x[8]*x[9]-0.6745*x[8]*x[10]+0.2956*x[9]*x[10]-0.9646*x[1]+0.6631*x[2]-0.921*x[3]+0.7216*x[4]-0.0916*x[5]+0.5066*x[6]-0.2279*x[7]+0.4388*x[8]+0.1251*x[9]-0.4666*x[10]+0.9452*x[1]*x[2]*x[4]-0.0479*x[1]*x[2]*x[3]-0.1973*x[1]*x[2]*x[5]+0.6377*x[1]*x[2]*x[6]+0.5098*x[1]*x[2]*x[7]-0.3909*x[1]*x[2]*x[8]+0.9553*x[1]*x[2]*x[9]+0.1032*x[1]*x[2]*x[10]+0.6899*x[1]*x[3]*x[4]+0.8619*x[1]*x[3]*x[5]+0.3971*x[1]*x[3]*x[6]-0.3458*x[1]*x[3]*x[7]-0.5388*x[1]*x[3]*x[8]+0.8271*x[1]*x[3]*x[9]-0.4226*x[1]*x[3]*x[10]+0.3216*x[1]*x[4]*x[5]+0.5984*x[1]*x[4]*x[6]+0.8383*x[1]*x[4]*x[7]+0.9912*x[1]*x[4]*x[8]-0.6707*x[1]*x[4]*x[9]+0.623*x[1]*x[4]*x[10]+0.93*x[1]*x[5]*x[6]-0.9724*x[1]*x[5]*x[7]+0.693*x[1]*x[5]*x[8]-0.4268*x[1]*x[5]*x[9]-0.9103*x[1]*x[5]*x[10]+0.0769*x[1]*x[6]*x[7]-0.9401*x[1]*x[6]*x[8]+0.4041*x[1]*x[6]*x[9]+0.256*x[1]*x[6]*x[10]-0.4499*x[1]*x[7]*x[8]-0.967*x[1]*x[7]*x[9]+0.7441*x[1]*x[7]*x[10]+0.9925*x[1]*x[8]*x[9]-0.8395*x[1]*x[8]*x[10]+0.0652*x[1]*x[9]*x[10]+0.6151*x[2]*x[3]*x[4]-0.5872*x[2]*x[3]*x[5]-0.021*x[2]*x[3]*x[6]-0.355*x[2]*x[3]*x[7]-0.0804*x[2]*x[3]*x[8]-0.8904*x[2]*x[3]*x[9]+0.0457*x[2]*x[3]*x[10]+0.9914*x[2]*x[4]*x[5]-0.2043*x[2]*x[4]*x[6]-0.8175*x[2]*x[4]*x[7]-0.3506*x[2]*x[4]*x[8]+0.8449*x[2]*x[4]*x[9]+0.9969*x[2]*x[4]*x[10]+0.7066*x[2]*x[5]*x[6]+0.7814*x[2]*x[5]*x[7]-0.2681*x[2]*x[5]*x[8]+0.1122*x[2]*x[5]*x[9]+0.5142*x[2]*x[5]*x[10]+0.5563*x[2]*x[6]*x[7]+0.7168*x[2]*x[6]*x[8]+0.1767*x[2]*x[6]*x[9]-0.4082*x[2]*x[6]*x[10]+0.6883*x[2]*x[7]*x[8]+0.4342*x[2]*x[7]*x[9]+0.2648*x[2]*x[7]*x[10]+0.3778*x[2]*x[8]*x[9]-0.8064*x[2]*x[8]*x[10]+0.6143*x[2]*x[9]*x[10]+0.0073*x[3]*x[4]*x[5]-0.385*x[3]*x[4]*x[6]-0.1292*x[3]*x[4]*x[7]+0.0795*x[3]*x[4]*x[8]-0.3467*x[3]*x[4]*x[9]+0.4255*x[3]*x[4]*x[10]+0.5645*x[3]*x[5]*x[6]-0.6424*x[3]*x[5]*x[7]+0.0119*x[3]*x[5]*x[8]-0.6729*x[3]*x[5]*x[9]+0.5847*x[3]*x[5]*x[10]+0.7055*x[3]*x[6]*x[7]+0.325*x[3]*x[6]*x[8]+0.2792*x[3]*x[6]*x[9]+0.0091*x[3]*x[6]*x[10]-0.8959*x[3]*x[7]*x[8]-0.2254*x[3]*x[7]*x[9]+0.718*x[3]*x[7]*x[10]+0.7289*x[3]*x[8]*x[9]+0.0895*x[3]*x[8]*x[10]-0.3158*x[3]*x[9]*x[10]-0.6424*x[4]*x[5]*x[6]-0.4076*x[4]*x[5]*x[7]-0.7606*x[4]*x[5]*x[8]-0.4835*x[4]*x[5]*x[9]+0.7128*x[4]*x[5]*x[10]-0.7993*x[4]*x[6]*x[7]+0.1586*x[4]*x[6]*x[8]-0.2892*x[4]*x[6]*x[9]-0.297*x[4]*x[6]*x[10]+0.4053*x[4]*x[7]*x[8]+0.5703*x[4]*x[7]*x[9]+0.8903*x[4]*x[7]*x[10]-0.7035*x[4]*x[8]*x[9]+0.607*x[4]*x[8]*x[10]-0.984*x[4]*x[9]*x[10]+0.1984*x[5]*x[6]*x[7]-0.3261*x[5]*x[6]*x[8]+0.9942*x[5]*x[6]*x[9]+0.4899*x[5]*x[6]*x[10]+0.1859*x[5]*x[7]*x[8]+0.7152*x[5]*x[7]*x[9]+0.6231*x[5]*x[7]*x[10]-0.3239*x[5]*x[8]*x[9]+0.6656*x[5]*x[8]*x[10]+0.6511*x[5]*x[9]*x[10]+0.4798*x[6]*x[7]*x[8]-0.6549*x[6]*x[7]*x[9]+0.3657*x[6]*x[7]*x[10]+0.2469*x[6]*x[8]*x[9]+0.1256*x[6]*x[8]*x[10]-0.83*x[6]*x[9]*x[10]+0.8632*x[7]*x[8]*x[9]-0.6316*x[7]*x[8]*x[10]+0.901*x[7]*x[9]*x[10]+0.2282*x[8]*x[9]*x[10] <= 19.521)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script. 
