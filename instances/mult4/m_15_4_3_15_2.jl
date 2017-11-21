using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[2], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.2494*x[1]*x[13]+0.7451*x[2]*x[3]+0.6073*x[2]*x[12]-0.2787*x[3]*x[5]+0.3824*x[3]*x[15]+0.8338*x[4]*x[7]-0.034*x[4]*x[14]+0.0309*x[5]*x[12]-0.0491*x[5]*x[13]+0.0929*x[7]*x[12]-0.5136*x[9]*x[10]+0.3855*x[10]*x[15]+0.492*x[11]*x[14]-0.4794*x[12]*x[14]+0.0491*x[1]+0.3326*x[2]+0.5462*x[3]-0.8601*x[4]-0.7054*x[5]-0.2224*x[7]-0.6921*x[9]-0.9157*x[10]+0.795*x[11]-0.3724*x[12]-0.6691*x[13]-0.9084*x[14]-0.6628*x[15]+0.9564*x[1]*x[5]*x[14]-0.8751*x[1]*x[4]*x[13]-0.3083*x[1]*x[8]*x[11]+0.136*x[1]*x[8]*x[13]-0.1934*x[1]*x[10]*x[12]-0.0392*x[1]*x[11]*x[14]-0.9632*x[1]*x[12]*x[15]+0.4692*x[2]*x[3]*x[8]+0.3408*x[2]*x[3]*x[10]-0.3993*x[2]*x[3]*x[11]-0.4248*x[2]*x[4]*x[5]-0.5654*x[2]*x[4]*x[8]-0.2807*x[2]*x[4]*x[9]+0.2314*x[2]*x[6]*x[9]-0.531*x[2]*x[8]*x[11]+0.5001*x[2]*x[9]*x[11]-0.5678*x[2]*x[9]*x[15]+0.1161*x[2]*x[10]*x[15]+0.5282*x[2]*x[14]*x[15]+0.1911*x[3]*x[5]*x[6]-0.8445*x[3]*x[5]*x[8]+0.1611*x[3]*x[6]*x[7]-0.3506*x[3]*x[7]*x[8]+0.3376*x[3]*x[7]*x[13]-0.3917*x[3]*x[8]*x[9]-0.5725*x[3]*x[10]*x[14]-0.5956*x[3]*x[11]*x[14]-0.7409*x[4]*x[5]*x[10]-0.8514*x[4]*x[5]*x[15]+0.281*x[4]*x[6]*x[11]+0.3766*x[4]*x[6]*x[14]-0.957*x[4]*x[7]*x[8]-0.1458*x[4]*x[7]*x[11]-0.4235*x[4]*x[8]*x[10]+0.6335*x[4]*x[9]*x[11]+0.0526*x[4]*x[10]*x[13]-0.3135*x[4]*x[11]*x[15]-0.1973*x[4]*x[12]*x[13]+0.0067*x[5]*x[6]*x[10]+0.4766*x[5]*x[6]*x[12]+0.7699*x[5]*x[6]*x[13]-0.1587*x[5]*x[7]*x[9]+0.6151*x[5]*x[7]*x[15]-0.758*x[5]*x[8]*x[9]-0.7982*x[5]*x[8]*x[12]+0.4478*x[5]*x[9]*x[10]+0.9998*x[5]*x[9]*x[13]+0.695*x[5]*x[10]*x[11]+0.5854*x[5]*x[10]*x[13]+0.3959*x[5]*x[12]*x[13]+0.718*x[6]*x[8]*x[10]-0.3603*x[6]*x[11]*x[12]-0.4448*x[6]*x[11]*x[13]+0.1135*x[7]*x[8]*x[9]-0.767*x[7]*x[8]*x[11]-0.3602*x[7]*x[8]*x[12]-0.5746*x[7]*x[10]*x[15]+0.3636*x[7]*x[14]*x[15]-0.5717*x[8]*x[9]*x[10]-0.2122*x[8]*x[10]*x[12]+0.1058*x[8]*x[10]*x[14]+0.1478*x[8]*x[13]*x[14]+0.9324*x[9]*x[11]*x[13]+0.6925*x[9]*x[13]*x[15]-0.7685*x[10]*x[11]*x[13]-0.3045*x[11]*x[12]*x[13]-0.3082*x[13]*x[14]*x[15]-0.3856*x[6]+0.093*x[8]+0.2972*x[1]*x[2]*x[3]*x[11]+0.4918*x[1]*x[2]*x[4]*x[8]+0.4234*x[1]*x[2]*x[4]*x[10]+0.4304*x[1]*x[2]*x[6]*x[9]-0.4688*x[1]*x[2]*x[8]*x[10]+0.8521*x[1]*x[2]*x[10]*x[13]+0.5509*x[1]*x[2]*x[11]*x[12]+0.7211*x[1]*x[2]*x[11]*x[14]+0.6934*x[1]*x[3]*x[4]*x[6]-0.2677*x[1]*x[3]*x[5]*x[9]-0.3988*x[1]*x[3]*x[6]*x[7]-0.5893*x[1]*x[3]*x[6]*x[10]-0.5055*x[1]*x[3]*x[7]*x[12]-0.1984*x[1]*x[3]*x[8]*x[11]-0.0684*x[1]*x[3]*x[12]*x[14]-0.3855*x[1]*x[3]*x[13]*x[14]+0.6652*x[1]*x[4]*x[6]*x[9]-0.5702*x[1]*x[4]*x[7]*x[8]+0.2021*x[1]*x[4]*x[7]*x[9]-0.4894*x[1]*x[4]*x[7]*x[11]+0.0271*x[1]*x[4]*x[9]*x[12]-0.9586*x[1]*x[5]*x[6]*x[11]+0.7266*x[1]*x[5]*x[11]*x[15]+0.3214*x[1]*x[6]*x[8]*x[13]+0.2219*x[1]*x[6]*x[9]*x[15]+0.2897*x[1]*x[6]*x[11]*x[12]-0.9581*x[1]*x[7]*x[10]*x[14]+0.277*x[1]*x[7]*x[13]*x[14]-0.4963*x[1]*x[9]*x[10]*x[13]+0.3641*x[1]*x[10]*x[11]*x[12]+0.6285*x[1]*x[10]*x[13]*x[14]-0.9325*x[1]*x[11]*x[13]*x[14]-0.2429*x[1]*x[13]*x[14]*x[15]+0.8278*x[2]*x[3]*x[4]*x[6]+0.2734*x[2]*x[3]*x[4]*x[8]+0.4559*x[2]*x[3]*x[5]*x[7]+0.6518*x[2]*x[3]*x[5]*x[8]+0.1123*x[2]*x[3]*x[5]*x[11]+0.7624*x[2]*x[3]*x[6]*x[8]-0.5785*x[2]*x[3]*x[6]*x[9]+0.4851*x[2]*x[3]*x[6]*x[12]+0.3243*x[2]*x[3]*x[7]*x[10]-0.3061*x[2]*x[3]*x[7]*x[12]-0.9964*x[2]*x[3]*x[8]*x[14]+0.618*x[2]*x[3]*x[9]*x[14]-0.9339*x[2]*x[3]*x[10]*x[11]+0.9215*x[2]*x[3]*x[10]*x[13]-0.4547*x[2]*x[3]*x[10]*x[14]+0.7821*x[2]*x[3]*x[11]*x[13]+0.8594*x[2]*x[3]*x[12]*x[13]+0.1066*x[2]*x[3]*x[13]*x[15]-0.1048*x[2]*x[4]*x[5]*x[14]-0.1452*x[2]*x[4]*x[5]*x[15]-0.0444*x[2]*x[4]*x[6]*x[10]-0.8386*x[2]*x[4]*x[6]*x[15]+0.7035*x[2]*x[4]*x[7]*x[11]-0.7751*x[2]*x[4]*x[9]*x[10]-0.4733*x[2]*x[4]*x[9]*x[12]+0.7053*x[2]*x[4]*x[9]*x[14]+0.7424*x[2]*x[4]*x[10]*x[12]+0.9071*x[2]*x[4]*x[10]*x[14]+0.1238*x[2]*x[4]*x[11]*x[13]-0.7828*x[2]*x[4]*x[12]*x[14]-0.231*x[2]*x[4]*x[13]*x[14]+0.9598*x[2]*x[4]*x[14]*x[15]+0.5526*x[2]*x[5]*x[6]*x[7]-0.4246*x[2]*x[5]*x[6]*x[9]-0.5673*x[2]*x[5]*x[6]*x[14]+0.7044*x[2]*x[5]*x[7]*x[8]-0.399*x[2]*x[5]*x[7]*x[15]+0.2579*x[2]*x[5]*x[8]*x[9]+0.9732*x[2]*x[5]*x[8]*x[12]+0.0837*x[2]*x[5]*x[10]*x[14]-0.6734*x[2]*x[5]*x[11]*x[14]-0.3163*x[2]*x[5]*x[12]*x[13]+0.9699*x[2]*x[5]*x[13]*x[14]+0.4056*x[2]*x[6]*x[7]*x[15]-0.7556*x[2]*x[6]*x[8]*x[10]-0.0754*x[2]*x[6]*x[9]*x[10]-0.0034*x[2]*x[6]*x[9]*x[12]+0.4576*x[2]*x[6]*x[9]*x[13]+0.2746*x[2]*x[6]*x[10]*x[11]+0.7372*x[2]*x[6]*x[11]*x[12]+0.9842*x[2]*x[7]*x[8]*x[15]+0.9851*x[2]*x[7]*x[10]*x[11]+0.8957*x[2]*x[7]*x[10]*x[12]-0.8533*x[2]*x[7]*x[12]*x[14]-0.2236*x[2]*x[7]*x[13]*x[14]+0.752*x[2]*x[7]*x[13]*x[15]-0.5395*x[2]*x[7]*x[14]*x[15]+0.5019*x[2]*x[8]*x[10]*x[11]+0.9239*x[2]*x[8]*x[11]*x[13]+0.3528*x[2]*x[8]*x[11]*x[14]-0.9992*x[2]*x[9]*x[10]*x[15]-0.0656*x[2]*x[9]*x[13]*x[14]+0.1457*x[2]*x[10]*x[12]*x[15]+0.805*x[2]*x[10]*x[13]*x[15]+0.6237*x[2]*x[12]*x[13]*x[14]-0.1331*x[3]*x[4]*x[5]*x[7]+0.3482*x[3]*x[4]*x[5]*x[8]+0.3596*x[3]*x[4]*x[5]*x[10]-0.702*x[3]*x[4]*x[6]*x[7]-0.9445*x[3]*x[4]*x[6]*x[9]+0.5097*x[3]*x[4]*x[7]*x[11]+0.8993*x[3]*x[4]*x[8]*x[9]+0.5124*x[3]*x[4]*x[8]*x[15]-0.0016*x[3]*x[4]*x[9]*x[13]+0.4383*x[3]*x[4]*x[11]*x[12]-0.872*x[3]*x[4]*x[12]*x[14]-0.6118*x[3]*x[5]*x[6]*x[7]-0.6794*x[3]*x[5]*x[6]*x[13]-0.5024*x[3]*x[5]*x[8]*x[14]+0.8814*x[3]*x[5]*x[9]*x[14]-0.6307*x[3]*x[5]*x[10]*x[12]-0.3435*x[3]*x[5]*x[10]*x[13]+0.1593*x[3]*x[6]*x[8]*x[15]+0.7376*x[3]*x[6]*x[10]*x[11]+0.9665*x[3]*x[7]*x[8]*x[11]+0.6228*x[3]*x[7]*x[9]*x[12]-0.2236*x[3]*x[7]*x[10]*x[11]-0.6401*x[3]*x[7]*x[12]*x[15]+0.44*x[3]*x[8]*x[9]*x[10]-0.3935*x[3]*x[8]*x[9]*x[13]-0.3121*x[3]*x[8]*x[11]*x[12]-0.0496*x[3]*x[8]*x[11]*x[14]-0.6247*x[3]*x[9]*x[12]*x[14]+0.2479*x[3]*x[9]*x[14]*x[15]-0.1105*x[3]*x[10]*x[11]*x[14]-0.321*x[3]*x[10]*x[12]*x[13]-0.9545*x[3]*x[10]*x[13]*x[14]+0.3758*x[3]*x[12]*x[13]*x[14]-0.3929*x[4]*x[5]*x[6]*x[9]+0.1759*x[4]*x[5]*x[6]*x[14]-0.5954*x[4]*x[5]*x[7]*x[8]+0.7008*x[4]*x[5]*x[7]*x[9]+0.8237*x[4]*x[5]*x[10]*x[15]+0.2243*x[4]*x[5]*x[12]*x[13]-0.7617*x[4]*x[6]*x[7]*x[9]+0.0126*x[4]*x[6]*x[7]*x[10]+0.502*x[4]*x[6]*x[7]*x[14]-0.2588*x[4]*x[6]*x[9]*x[11]+0.2781*x[4]*x[6]*x[9]*x[12]-0.7998*x[4]*x[6]*x[9]*x[14]+0.6804*x[4]*x[6]*x[9]*x[15]-0.1999*x[4]*x[6]*x[10]*x[12]-0.9979*x[4]*x[6]*x[10]*x[15]+0.9007*x[4]*x[6]*x[12]*x[14]+0.798*x[4]*x[6]*x[13]*x[14]+0.505*x[4]*x[7]*x[8]*x[9]+0.6699*x[4]*x[7]*x[8]*x[12]-0.3825*x[4]*x[7]*x[8]*x[15]-0.3086*x[4]*x[7]*x[9]*x[15]+0.4339*x[4]*x[7]*x[11]*x[13]+0.3427*x[4]*x[8]*x[9]*x[11]-0.6697*x[4]*x[8]*x[11]*x[14]+0.1003*x[4]*x[8]*x[12]*x[13]-0.4085*x[4]*x[9]*x[10]*x[13]-0.808*x[4]*x[9]*x[11]*x[12]+0.0707*x[4]*x[10]*x[12]*x[14]+0.6345*x[5]*x[6]*x[7]*x[8]-0.2813*x[5]*x[6]*x[7]*x[9]+0.3084*x[5]*x[6]*x[7]*x[14]+0.3024*x[5]*x[6]*x[8]*x[11]+0.1955*x[5]*x[6]*x[9]*x[13]+0.3199*x[5]*x[6]*x[11]*x[13]+0.9633*x[5]*x[6]*x[11]*x[15]+0.3545*x[5]*x[7]*x[10]*x[12]-0.6068*x[5]*x[7]*x[10]*x[14]-0.902*x[5]*x[7]*x[11]*x[14]-0.7697*x[5]*x[7]*x[12]*x[13]-0.6314*x[5]*x[7]*x[13]*x[15]-0.1301*x[5]*x[8]*x[9]*x[10]-0.2304*x[5]*x[9]*x[10]*x[13]-0.604*x[5]*x[9]*x[12]*x[14]-0.7166*x[5]*x[10]*x[11]*x[13]-0.8383*x[5]*x[10]*x[11]*x[14]-0.7927*x[5]*x[10]*x[12]*x[13]-0.016*x[5]*x[11]*x[12]*x[14]+0.2952*x[6]*x[7]*x[8]*x[9]-0.0263*x[6]*x[7]*x[9]*x[11]+0.9144*x[6]*x[7]*x[9]*x[15]-0.0986*x[6]*x[8]*x[10]*x[11]-0.2665*x[6]*x[8]*x[11]*x[14]+0.4709*x[6]*x[8]*x[13]*x[14]+0.2471*x[6]*x[9]*x[11]*x[12]-0.89*x[6]*x[11]*x[12]*x[14]-0.5774*x[7]*x[8]*x[9]*x[12]+0.1587*x[7]*x[8]*x[10]*x[13]-0.2625*x[7]*x[8]*x[11]*x[14]+0.706*x[7]*x[8]*x[13]*x[14]-0.5683*x[7]*x[10]*x[11]*x[13]-0.8368*x[7]*x[10]*x[12]*x[13]-0.8884*x[7]*x[11]*x[12]*x[14]+0.5809*x[7]*x[12]*x[13]*x[14]-0.2478*x[8]*x[9]*x[10]*x[13]+0.5831*x[8]*x[9]*x[10]*x[14]-0.9871*x[8]*x[9]*x[11]*x[14]+0.7479*x[8]*x[9]*x[12]*x[14]-0.9312*x[8]*x[10]*x[11]*x[12]+0.7638*x[8]*x[10]*x[11]*x[13]-0.0658*x[8]*x[10]*x[11]*x[14]+0.7952*x[8]*x[10]*x[13]*x[14]+0.8793*x[8]*x[11]*x[12]*x[15]-0.2221*x[8]*x[13]*x[14]*x[15]+0.9747*x[9]*x[10]*x[12]*x[13]-0.9086*x[10]*x[11]*x[12]*x[15]-0.289*x[10]*x[12]*x[14]*x[15])+x[16] == 0.0)
@NLconstraint(m, e2, 0.6217*x[3]*x[10]-0.4286*x[3]*x[5]+0.6923*x[5]*x[7]+0.7968*x[5]*x[14]-0.0152*x[7]*x[11]+0.2314*x[7]*x[12]-0.3427*x[8]*x[11]+0.5425*x[8]*x[14]+0.011*x[3]+0.0556*x[5]-0.0284*x[7]-0.9861*x[8]-0.3811*x[10]-0.7245*x[11]-0.4963*x[12]+0.7631*x[14]+0.5043*x[1]*x[2]*x[5]+0.9439*x[1]*x[2]*x[9]-0.5864*x[1]*x[2]*x[11]-0.7036*x[1]*x[3]*x[9]+0.3452*x[1]*x[3]*x[12]+0.9756*x[1]*x[3]*x[13]+0.9872*x[1]*x[6]*x[11]+0.4658*x[1]*x[7]*x[11]+0.8565*x[1]*x[8]*x[9]+0.7389*x[2]*x[3]*x[6]+0.0333*x[2]*x[3]*x[11]-0.1929*x[2]*x[4]*x[8]+0.3819*x[2]*x[4]*x[10]+0.7819*x[2]*x[5]*x[7]-0.6896*x[2]*x[5]*x[13]-0.3088*x[2]*x[6]*x[7]-0.2759*x[2]*x[6]*x[8]+0.0138*x[2]*x[6]*x[9]-0.9062*x[2]*x[8]*x[9]-0.5821*x[2]*x[8]*x[12]+0.17*x[2]*x[9]*x[12]-0.0587*x[3]*x[4]*x[8]+0.5768*x[3]*x[5]*x[11]-0.7298*x[3]*x[5]*x[13]-0.3194*x[3]*x[7]*x[10]+0.6607*x[3]*x[7]*x[12]-0.5436*x[3]*x[8]*x[10]+0.7176*x[3]*x[10]*x[11]+0.1759*x[3]*x[12]*x[14]+0.9193*x[3]*x[13]*x[14]-0.9734*x[4]*x[5]*x[6]-0.8187*x[4]*x[5]*x[11]-0.7302*x[4]*x[6]*x[8]-0.0664*x[4]*x[7]*x[12]+0.5428*x[4]*x[7]*x[13]+0.783*x[4]*x[8]*x[10]+0.9364*x[4]*x[8]*x[12]-0.3441*x[4]*x[10]*x[13]+0.9498*x[4]*x[10]*x[14]+0.9601*x[4]*x[11]*x[13]-0.6207*x[5]*x[6]*x[7]-0.4261*x[5]*x[6]*x[8]+0.2462*x[5]*x[6]*x[12]-0.5824*x[5]*x[7]*x[8]-0.4081*x[5]*x[7]*x[12]-0.9773*x[5]*x[8]*x[13]+0.4241*x[5]*x[9]*x[11]+0.4817*x[5]*x[10]*x[14]+0.8524*x[5]*x[11]*x[13]-0.2083*x[6]*x[7]*x[8]+0.114*x[6]*x[7]*x[10]-0.5697*x[6]*x[9]*x[12]-0.5394*x[6]*x[9]*x[14]-0.6154*x[6]*x[10]*x[11]+0.0587*x[7]*x[8]*x[9]-0.1061*x[7]*x[9]*x[13]-0.8526*x[7]*x[11]*x[14]+0.8472*x[7]*x[12]*x[13]+0.151*x[7]*x[13]*x[14]+0.7663*x[8]*x[10]*x[13]+0.87*x[8]*x[12]*x[13]-0.3732*x[9]*x[10]*x[11]-0.9867*x[9]*x[10]*x[12]+0.3253*x[9]*x[11]*x[12]+0.6404*x[9]*x[12]*x[14]-0.4672*x[10]*x[12]*x[14]-0.4605*x[10]*x[14]*x[15]+0.1658*x[11]*x[13]*x[15]-0.9325*x[12]*x[14]*x[15]-0.8266*x[1]-0.2051*x[2]+0.9451*x[4]-0.4301*x[6]-0.9309*x[9]+0.8912*x[13]+0.7902*x[15]+0.4197*x[1]*x[2]*x[3]*x[4]-0.6979*x[1]*x[2]*x[3]*x[10]-0.6702*x[1]*x[2]*x[3]*x[11]-0.0502*x[1]*x[2]*x[3]*x[14]+0.9295*x[1]*x[2]*x[4]*x[6]-0.6331*x[1]*x[2]*x[4]*x[8]+0.7917*x[1]*x[2]*x[4]*x[12]+0.5844*x[1]*x[2]*x[5]*x[6]-0.8821*x[1]*x[2]*x[6]*x[10]-0.6971*x[1]*x[2]*x[6]*x[13]+0.7042*x[1]*x[2]*x[9]*x[15]-0.3462*x[1]*x[3]*x[4]*x[9]-0.6308*x[1]*x[3]*x[4]*x[10]-0.6671*x[1]*x[3]*x[4]*x[12]-0.6898*x[1]*x[3]*x[5]*x[13]-0.9034*x[1]*x[3]*x[9]*x[11]-0.687*x[1]*x[3]*x[10]*x[12]-0.3975*x[1]*x[4]*x[5]*x[6]+0.5686*x[1]*x[4]*x[5]*x[13]-0.4294*x[1]*x[4]*x[7]*x[8]-0.4937*x[1]*x[4]*x[8]*x[13]+0.1224*x[1]*x[4]*x[10]*x[11]+0.7406*x[1]*x[4]*x[12]*x[13]-0.9849*x[1]*x[4]*x[13]*x[15]-0.1923*x[1]*x[5]*x[6]*x[11]-0.8417*x[1]*x[5]*x[8]*x[9]-0.8035*x[1]*x[5]*x[9]*x[14]+0.3588*x[1]*x[6]*x[7]*x[10]+0.0937*x[1]*x[6]*x[10]*x[13]+0.2223*x[1]*x[6]*x[11]*x[14]-0.8195*x[1]*x[7]*x[9]*x[15]+0.5008*x[1]*x[8]*x[9]*x[12]-0.1857*x[1]*x[8]*x[9]*x[13]-0.5569*x[1]*x[8]*x[10]*x[11]+0.1442*x[1]*x[8]*x[11]*x[14]+0.2965*x[1]*x[8]*x[11]*x[15]-0.7695*x[1]*x[8]*x[13]*x[14]+0.0765*x[1]*x[9]*x[10]*x[13]-0.9499*x[1]*x[9]*x[11]*x[14]+0.4986*x[1]*x[9]*x[12]*x[13]+0.3658*x[1]*x[9]*x[12]*x[14]-0.8968*x[2]*x[3]*x[4]*x[8]-0.0862*x[2]*x[3]*x[4]*x[10]+0.4664*x[2]*x[3]*x[5]*x[10]+0.1038*x[2]*x[3]*x[5]*x[11]+0.0931*x[2]*x[3]*x[5]*x[15]+0.2059*x[2]*x[3]*x[6]*x[10]-0.9976*x[2]*x[3]*x[6]*x[13]+0.7343*x[2]*x[3]*x[7]*x[8]-0.8981*x[2]*x[3]*x[7]*x[14]-0.884*x[2]*x[3]*x[9]*x[12]-0.2359*x[2]*x[3]*x[11]*x[13]-0.334*x[2]*x[3]*x[12]*x[14]-0.4248*x[2]*x[3]*x[13]*x[15]+0.6517*x[2]*x[4]*x[5]*x[10]-0.7411*x[2]*x[4]*x[5]*x[12]+0.9798*x[2]*x[4]*x[6]*x[11]+0.2321*x[2]*x[4]*x[6]*x[15]+0.2364*x[2]*x[4]*x[7]*x[9]-0.7058*x[2]*x[4]*x[7]*x[15]-0.5257*x[2]*x[4]*x[8]*x[13]+0.0216*x[2]*x[4]*x[8]*x[14]+0.0226*x[2]*x[4]*x[11]*x[12]-0.4405*x[2]*x[5]*x[7]*x[8]-0.1826*x[2]*x[5]*x[7]*x[12]-0.1099*x[2]*x[5]*x[8]*x[9]-0.1506*x[2]*x[5]*x[9]*x[11]-0.3833*x[2]*x[5]*x[9]*x[12]+0.7671*x[2]*x[5]*x[9]*x[14]+0.0915*x[2]*x[5]*x[10]*x[14]+0.1001*x[2]*x[6]*x[10]*x[11]+0.4086*x[2]*x[6]*x[10]*x[12]+0.7847*x[2]*x[6]*x[10]*x[13]-0.1388*x[2]*x[6]*x[11]*x[12]+0.2047*x[2]*x[6]*x[11]*x[14]-0.2721*x[2]*x[6]*x[11]*x[15]-0.4233*x[2]*x[6]*x[12]*x[14]-0.7663*x[2]*x[7]*x[8]*x[9]+0.6225*x[2]*x[7]*x[8]*x[13]-0.2548*x[2]*x[7]*x[8]*x[14]+0.8604*x[2]*x[7]*x[9]*x[13]+0.4051*x[2]*x[7]*x[11]*x[15]+0.7037*x[2]*x[7]*x[12]*x[13]-0.537*x[2]*x[7]*x[14]*x[15]-0.7488*x[2]*x[8]*x[9]*x[13]-0.8187*x[2]*x[8]*x[10]*x[11]+0.536*x[2]*x[8]*x[11]*x[12]-0.7743*x[2]*x[8]*x[11]*x[14]-0.6313*x[2]*x[8]*x[13]*x[14]+0.1681*x[2]*x[9]*x[10]*x[14]-0.0578*x[2]*x[9]*x[11]*x[12]-0.5542*x[2]*x[9]*x[13]*x[14]+0.7463*x[2]*x[10]*x[11]*x[13]+0.7786*x[2]*x[10]*x[11]*x[14]+0.583*x[2]*x[10]*x[14]*x[15]-0.2612*x[3]*x[4]*x[5]*x[15]-0.7281*x[3]*x[4]*x[6]*x[13]-0.0465*x[3]*x[4]*x[7]*x[8]+0.0368*x[3]*x[4]*x[7]*x[13]+0.3541*x[3]*x[4]*x[9]*x[10]-0.7041*x[3]*x[4]*x[10]*x[11]+0.3243*x[3]*x[4]*x[10]*x[13]-0.4099*x[3]*x[4]*x[11]*x[12]-0.5749*x[3]*x[5]*x[6]*x[8]-0.5924*x[3]*x[5]*x[7]*x[10]+0.2933*x[3]*x[5]*x[8]*x[14]+0.3796*x[3]*x[5]*x[9]*x[11]-0.623*x[3]*x[5]*x[10]*x[12]-0.2917*x[3]*x[5]*x[10]*x[13]+0.2991*x[3]*x[5]*x[10]*x[14]+0.2734*x[3]*x[5]*x[12]*x[13]+0.3977*x[3]*x[6]*x[7]*x[8]-0.0418*x[3]*x[6]*x[7]*x[12]+0.6041*x[3]*x[6]*x[8]*x[11]+0.4095*x[3]*x[6]*x[9]*x[10]-0.925*x[3]*x[7]*x[8]*x[10]+0.1945*x[3]*x[7]*x[8]*x[13]-0.7775*x[3]*x[7]*x[9]*x[11]-0.0737*x[3]*x[7]*x[10]*x[13]-0.6151*x[3]*x[7]*x[11]*x[14]+0.3067*x[3]*x[8]*x[9]*x[12]-0.99*x[3]*x[8]*x[9]*x[13]+0.4188*x[3]*x[8]*x[9]*x[14]-0.4686*x[3]*x[8]*x[11]*x[13]+0.5407*x[3]*x[9]*x[10]*x[15]-0.803*x[3]*x[9]*x[11]*x[13]-0.853*x[3]*x[9]*x[12]*x[14]-0.6815*x[3]*x[9]*x[13]*x[14]+0.9635*x[3]*x[9]*x[13]*x[15]+0.3336*x[3]*x[10]*x[11]*x[14]-0.3159*x[3]*x[11]*x[13]*x[14]-0.1404*x[4]*x[5]*x[6]*x[8]-0.2014*x[4]*x[5]*x[6]*x[11]+0.1358*x[4]*x[5]*x[7]*x[8]+0.5553*x[4]*x[5]*x[7]*x[12]-0.5984*x[4]*x[5]*x[9]*x[10]+0.2616*x[4]*x[5]*x[10]*x[11]+0.0992*x[4]*x[5]*x[10]*x[14]-0.9891*x[4]*x[5]*x[11]*x[12]-0.1739*x[4]*x[5]*x[11]*x[14]-0.1977*x[4]*x[5]*x[12]*x[13]-0.4403*x[4]*x[6]*x[10]*x[12]+0.8556*x[4]*x[6]*x[10]*x[14]+0.1124*x[4]*x[6]*x[12]*x[14]+0.0067*x[4]*x[7]*x[8]*x[11]-0.3611*x[4]*x[7]*x[10]*x[11]-0.4633*x[4]*x[7]*x[11]*x[13]+0.5723*x[4]*x[7]*x[11]*x[14]+0.9344*x[4]*x[8]*x[9]*x[13]-0.0356*x[4]*x[8]*x[9]*x[14]+0.3039*x[4]*x[8]*x[10]*x[14]+0.7144*x[4]*x[8]*x[11]*x[13]-0.0549*x[4]*x[9]*x[10]*x[12]+0.1128*x[4]*x[9]*x[12]*x[13]-0.0345*x[4]*x[9]*x[13]*x[14]-0.6409*x[4]*x[10]*x[14]*x[15]-0.2186*x[4]*x[11]*x[12]*x[15]+0.0052*x[5]*x[6]*x[7]*x[13]-0.6404*x[5]*x[6]*x[8]*x[11]+0.7632*x[5]*x[6]*x[8]*x[15]-0.3563*x[5]*x[6]*x[9]*x[12]-0.4458*x[5]*x[6]*x[10]*x[13]+0.5263*x[5]*x[6]*x[12]*x[14]-0.463*x[5]*x[7]*x[8]*x[9]+0.3089*x[5]*x[7]*x[8]*x[10]-0.6977*x[5]*x[7]*x[8]*x[14]-0.1531*x[5]*x[7]*x[11]*x[14]-0.8689*x[5]*x[8]*x[9]*x[11]-0.2128*x[5]*x[8]*x[11]*x[12]-0.3974*x[5]*x[8]*x[11]*x[13]+0.9182*x[5]*x[8]*x[11]*x[14]-0.5791*x[5]*x[8]*x[12]*x[14]+0.7137*x[5]*x[9]*x[13]*x[15]-0.0088*x[5]*x[11]*x[12]*x[14]+0.0011*x[5]*x[11]*x[14]*x[15]-0.1847*x[6]*x[7]*x[8]*x[10]+0.5391*x[6]*x[7]*x[8]*x[11]+0.7637*x[6]*x[7]*x[9]*x[10]+0.5003*x[6]*x[7]*x[9]*x[14]-0.6897*x[6]*x[7]*x[11]*x[13]-0.9811*x[6]*x[7]*x[11]*x[14]-0.0609*x[6]*x[7]*x[12]*x[14]-0.7349*x[6]*x[8]*x[10]*x[11]+0.3882*x[6]*x[8]*x[10]*x[13]+0.6652*x[6]*x[8]*x[12]*x[15]-0.08*x[6]*x[9]*x[10]*x[11]+0.5669*x[6]*x[9]*x[10]*x[14]-0.446*x[6]*x[9]*x[12]*x[15]-0.3007*x[6]*x[9]*x[14]*x[15]+0.1864*x[6]*x[10]*x[13]*x[15]+0.4959*x[6]*x[12]*x[13]*x[15]-0.3268*x[6]*x[12]*x[14]*x[15]+0.8306*x[7]*x[8]*x[9]*x[13]+0.9763*x[7]*x[8]*x[9]*x[14]+0.7464*x[7]*x[8]*x[11]*x[12]+0.9423*x[7]*x[8]*x[12]*x[13]-0.3716*x[7]*x[8]*x[12]*x[14]-0.0491*x[7]*x[9]*x[10]*x[14]-0.6313*x[7]*x[9]*x[12]*x[15]+0.8084*x[7]*x[9]*x[13]*x[15]+0.6997*x[7]*x[9]*x[14]*x[15]-0.6618*x[8]*x[10]*x[11]*x[12]-0.0798*x[8]*x[10]*x[11]*x[15]-0.8161*x[8]*x[10]*x[12]*x[14]-0.5347*x[8]*x[10]*x[13]*x[14]+0.8015*x[8]*x[11]*x[12]*x[13]-0.3963*x[9]*x[10]*x[13]*x[15]+0.9217*x[9]*x[12]*x[13]*x[14]+0.9104*x[10]*x[11]*x[12]*x[13]+0.4403*x[10]*x[11]*x[12]*x[14]-0.9826*x[10]*x[13]*x[14]*x[15] <= 15.909)
@NLconstraint(m, e3, 0.962*x[1]*x[7]-0.1705*x[1]*x[2]-0.2795*x[1]*x[12]-0.6053*x[2]*x[3]+0.3606*x[3]*x[10]-0.1003*x[3]*x[12]+0.646*x[4]*x[13]-0.971*x[5]*x[10]-0.7535*x[6]*x[7]-0.1091*x[7]*x[10]-0.1925*x[10]*x[13]+0.054*x[1]-0.0638*x[2]-0.6815*x[3]-0.2622*x[4]+0.9468*x[5]-0.1015*x[6]+0.9874*x[7]-0.441*x[10]+0.2806*x[12]-0.4961*x[13]+(-0.6949*x[1]*x[3]*x[13])-0.1046*x[1]*x[4]*x[9]-0.0778*x[1]*x[5]*x[10]+0.1537*x[1]*x[7]*x[13]-0.5442*x[1]*x[9]*x[13]-0.946*x[1]*x[11]*x[14]+0.3982*x[1]*x[12]*x[13]+0.4789*x[2]*x[3]*x[4]+0.3845*x[2]*x[3]*x[10]+0.5164*x[2]*x[4]*x[6]-0.0296*x[2]*x[4]*x[12]-0.7*x[2]*x[4]*x[14]-0.6389*x[2]*x[5]*x[9]+0.3377*x[2]*x[5]*x[13]+0.8947*x[2]*x[5]*x[14]+0.2725*x[2]*x[6]*x[12]+0.6376*x[2]*x[6]*x[13]+0.4817*x[2]*x[6]*x[14]+0.547*x[2]*x[6]*x[15]-0.716*x[2]*x[7]*x[11]+0.0718*x[2]*x[8]*x[13]-0.2893*x[2]*x[8]*x[14]+0.1284*x[2]*x[9]*x[12]-0.9085*x[2]*x[10]*x[11]-0.9207*x[2]*x[11]*x[12]-0.1978*x[2]*x[11]*x[14]+0.5667*x[2]*x[13]*x[15]-0.9488*x[3]*x[4]*x[12]-0.4531*x[3]*x[5]*x[7]+0.9704*x[3]*x[5]*x[8]-0.4224*x[3]*x[5]*x[15]-0.5621*x[3]*x[6]*x[11]+0.6024*x[3]*x[9]*x[10]-0.453*x[3]*x[13]*x[14]+0.8336*x[4]*x[5]*x[6]-0.0139*x[4]*x[5]*x[11]+0.9911*x[4]*x[5]*x[14]+0.4768*x[4]*x[6]*x[7]+0.9675*x[4]*x[6]*x[12]-0.5932*x[4]*x[7]*x[13]+0.6217*x[4]*x[8]*x[11]+0.6269*x[4]*x[9]*x[10]-0.2194*x[4]*x[9]*x[11]+0.1426*x[4]*x[9]*x[12]-0.5245*x[4]*x[11]*x[14]+0.6625*x[4]*x[12]*x[13]-0.695*x[5]*x[6]*x[7]+0.8184*x[5]*x[6]*x[13]-0.8518*x[5]*x[7]*x[10]-0.9013*x[5]*x[8]*x[11]-0.5235*x[5]*x[8]*x[14]+0.7119*x[5]*x[9]*x[12]+0.5215*x[5]*x[10]*x[11]-0.5517*x[5]*x[10]*x[12]-0.6204*x[5]*x[10]*x[13]+0.2192*x[5]*x[11]*x[14]+0.2964*x[5]*x[11]*x[15]+0.7103*x[5]*x[12]*x[14]-0.7229*x[6]*x[7]*x[13]+0.1359*x[6]*x[8]*x[9]-0.1625*x[6]*x[9]*x[13]+0.2829*x[6]*x[13]*x[14]-0.8212*x[7]*x[8]*x[10]-0.804*x[7]*x[8]*x[14]+0.354*x[7]*x[9]*x[11]-0.2047*x[8]*x[9]*x[12]+0.598*x[8]*x[14]*x[15]+0.2334*x[9]*x[10]*x[12]+0.2673*x[9]*x[10]*x[14]+0.1744*x[9]*x[13]*x[14]-0.4369*x[10]*x[12]*x[14]-0.939*x[8]-0.1565*x[9]+0.091*x[11]+0.901*x[14]-0.8429*x[15]+(-0.5721*x[1]*x[2]*x[3]*x[7])-0.2037*x[1]*x[2]*x[3]*x[9]-0.0038*x[1]*x[2]*x[3]*x[13]+0.3102*x[1]*x[2]*x[4]*x[9]+0.789*x[1]*x[2]*x[4]*x[12]-0.8097*x[1]*x[2]*x[4]*x[14]+0.4501*x[1]*x[2]*x[5]*x[6]+0.8812*x[1]*x[2]*x[5]*x[7]+0.6386*x[1]*x[2]*x[5]*x[8]-0.2795*x[1]*x[2]*x[5]*x[11]-0.3503*x[1]*x[2]*x[5]*x[12]+0.968*x[1]*x[2]*x[6]*x[13]-0.6249*x[1]*x[2]*x[7]*x[14]+0.8755*x[1]*x[2]*x[9]*x[14]+0.6738*x[1]*x[2]*x[10]*x[12]-0.6822*x[1]*x[2]*x[12]*x[14]+0.8317*x[1]*x[3]*x[4]*x[8]+0.968*x[1]*x[3]*x[5]*x[7]+0.0745*x[1]*x[3]*x[5]*x[12]+0.1265*x[1]*x[3]*x[6]*x[7]-0.8308*x[1]*x[3]*x[7]*x[12]+0.0482*x[1]*x[3]*x[7]*x[13]+0.2718*x[1]*x[3]*x[8]*x[9]-0.7411*x[1]*x[4]*x[5]*x[11]-0.9618*x[1]*x[4]*x[5]*x[15]+0.9376*x[1]*x[4]*x[9]*x[14]-0.5917*x[1]*x[4]*x[9]*x[15]+0.7007*x[1]*x[4]*x[10]*x[14]-0.3448*x[1]*x[4]*x[10]*x[15]+0.9497*x[1]*x[4]*x[11]*x[12]-0.0625*x[1]*x[5]*x[6]*x[11]-0.1741*x[1]*x[5]*x[6]*x[12]-0.8313*x[1]*x[5]*x[11]*x[12]-0.0631*x[1]*x[6]*x[7]*x[12]-0.5229*x[1]*x[6]*x[10]*x[11]-0.8098*x[1]*x[6]*x[11]*x[14]-0.3266*x[1]*x[6]*x[12]*x[14]-0.7559*x[1]*x[7]*x[8]*x[11]+0.3204*x[1]*x[7]*x[9]*x[14]-0.0438*x[1]*x[8]*x[10]*x[11]-0.0289*x[1]*x[8]*x[10]*x[13]-0.4549*x[1]*x[10]*x[11]*x[13]-0.7506*x[1]*x[10]*x[13]*x[14]-0.4159*x[2]*x[3]*x[4]*x[6]+0.6188*x[2]*x[3]*x[4]*x[8]+0.401*x[2]*x[3]*x[4]*x[11]-0.4962*x[2]*x[3]*x[4]*x[13]-0.5358*x[2]*x[3]*x[6]*x[14]-0.5081*x[2]*x[3]*x[7]*x[8]+0.4326*x[2]*x[3]*x[7]*x[11]-0.5998*x[2]*x[3]*x[8]*x[9]-0.7406*x[2]*x[3]*x[9]*x[12]-0.9541*x[2]*x[3]*x[10]*x[14]-0.294*x[2]*x[4]*x[5]*x[8]+0.115*x[2]*x[4]*x[5]*x[14]+0.5227*x[2]*x[4]*x[6]*x[9]+0.1976*x[2]*x[4]*x[6]*x[12]-0.9097*x[2]*x[4]*x[6]*x[13]-0.8275*x[2]*x[4]*x[7]*x[9]+0.9438*x[2]*x[4]*x[8]*x[12]+0.1712*x[2]*x[4]*x[8]*x[13]-0.4888*x[2]*x[4]*x[8]*x[15]+0.9411*x[2]*x[4]*x[11]*x[13]-0.5149*x[2]*x[4]*x[14]*x[15]-0.7743*x[2]*x[5]*x[6]*x[11]+0.3382*x[2]*x[5]*x[6]*x[14]-0.6712*x[2]*x[5]*x[7]*x[9]-0.2061*x[2]*x[5]*x[8]*x[10]-0.4813*x[2]*x[5]*x[8]*x[14]-0.8621*x[2]*x[5]*x[9]*x[15]-0.3469*x[2]*x[5]*x[10]*x[11]-0.1535*x[2]*x[5]*x[12]*x[13]-0.7142*x[2]*x[6]*x[7]*x[13]+0.4758*x[2]*x[6]*x[8]*x[11]+0.7473*x[2]*x[6]*x[8]*x[12]-0.574*x[2]*x[6]*x[11]*x[12]-0.0356*x[2]*x[6]*x[12]*x[14]+0.5263*x[2]*x[6]*x[13]*x[14]+0.6846*x[2]*x[6]*x[13]*x[15]+0.2591*x[2]*x[7]*x[8]*x[9]+0.369*x[2]*x[7]*x[8]*x[11]-0.9332*x[2]*x[7]*x[8]*x[12]-0.7583*x[2]*x[7]*x[10]*x[13]+0.3055*x[2]*x[7]*x[12]*x[13]-0.5249*x[2]*x[7]*x[14]*x[15]+0.2955*x[2]*x[8]*x[9]*x[14]-0.0206*x[2]*x[8]*x[12]*x[14]+0.303*x[2]*x[9]*x[10]*x[11]-0.4408*x[2]*x[9]*x[11]*x[14]+0.6498*x[2]*x[13]*x[14]*x[15]-0.6722*x[3]*x[4]*x[5]*x[6]+0.9491*x[3]*x[4]*x[5]*x[11]+0.5792*x[3]*x[4]*x[5]*x[13]+0.3756*x[3]*x[4]*x[5]*x[14]+0.1446*x[3]*x[4]*x[6]*x[8]-0.0638*x[3]*x[4]*x[6]*x[14]-0.4163*x[3]*x[4]*x[7]*x[12]-0.0206*x[3]*x[4]*x[8]*x[11]-0.4846*x[3]*x[4]*x[13]*x[14]-0.1883*x[3]*x[5]*x[7]*x[14]-0.8247*x[3]*x[5]*x[8]*x[11]+0.2692*x[3]*x[5]*x[11]*x[13]+0.3214*x[3]*x[6]*x[7]*x[11]+0.3889*x[3]*x[6]*x[7]*x[13]+0.4119*x[3]*x[6]*x[8]*x[10]-0.0389*x[3]*x[6]*x[8]*x[14]+0.6466*x[3]*x[6]*x[10]*x[11]+0.9557*x[3]*x[6]*x[10]*x[14]-0.6821*x[3]*x[6]*x[10]*x[15]-0.5451*x[3]*x[6]*x[12]*x[14]+0.7796*x[3]*x[7]*x[8]*x[9]+0.6781*x[3]*x[7]*x[8]*x[10]-0.2978*x[3]*x[7]*x[9]*x[10]-0.3702*x[3]*x[7]*x[10]*x[14]-0.733*x[3]*x[7]*x[10]*x[15]+0.6579*x[3]*x[8]*x[10]*x[13]-0.5513*x[3]*x[8]*x[10]*x[14]+0.1903*x[3]*x[8]*x[12]*x[13]+0.1984*x[3]*x[9]*x[11]*x[12]-0.9492*x[3]*x[9]*x[11]*x[13]-0.136*x[3]*x[9]*x[13]*x[15]+0.0288*x[3]*x[10]*x[11]*x[13]+0.1004*x[3]*x[10]*x[12]*x[13]-0.146*x[3]*x[10]*x[12]*x[14]-0.2*x[3]*x[11]*x[12]*x[14]-0.6492*x[3]*x[11]*x[13]*x[15]+0.4114*x[3]*x[11]*x[14]*x[15]-0.6452*x[3]*x[12]*x[13]*x[14]-0.1877*x[4]*x[5]*x[6]*x[10]+0.3643*x[4]*x[5]*x[6]*x[13]+0.0186*x[4]*x[5]*x[7]*x[8]+0.4142*x[4]*x[5]*x[8]*x[11]-0.6986*x[4]*x[5]*x[8]*x[13]+0.438*x[4]*x[5]*x[9]*x[11]+0.7632*x[4]*x[5]*x[10]*x[13]+0.2601*x[4]*x[5]*x[11]*x[12]+0.6996*x[4]*x[5]*x[11]*x[13]-0.6997*x[4]*x[5]*x[13]*x[14]-0.1096*x[4]*x[6]*x[8]*x[13]+0.8775*x[4]*x[6]*x[10]*x[14]-0.7949*x[4]*x[6]*x[12]*x[13]-0.164*x[4]*x[6]*x[13]*x[14]+0.503*x[4]*x[7]*x[8]*x[9]-0.5612*x[4]*x[7]*x[8]*x[10]+0.7618*x[4]*x[7]*x[10]*x[14]+0.5027*x[4]*x[7]*x[10]*x[15]-0.1691*x[4]*x[8]*x[9]*x[13]-0.1334*x[4]*x[8]*x[11]*x[12]-0.8268*x[4]*x[8]*x[11]*x[13]-0.112*x[4]*x[8]*x[12]*x[13]+0.83*x[4]*x[8]*x[14]*x[15]-0.2064*x[4]*x[9]*x[10]*x[12]-0.7169*x[4]*x[9]*x[12]*x[13]-0.4716*x[4]*x[9]*x[13]*x[15]-0.6181*x[4]*x[10]*x[11]*x[14]-0.551*x[4]*x[10]*x[11]*x[15]+0.4593*x[4]*x[10]*x[12]*x[14]-0.0838*x[4]*x[11]*x[13]*x[14]+0.7297*x[5]*x[6]*x[7]*x[8]-0.9042*x[5]*x[6]*x[7]*x[12]-0.7454*x[5]*x[6]*x[8]*x[10]-0.0273*x[5]*x[6]*x[8]*x[11]+0.2215*x[5]*x[6]*x[8]*x[13]+0.088*x[5]*x[6]*x[9]*x[10]-0.8841*x[5]*x[6]*x[9]*x[13]+0.1433*x[5]*x[6]*x[10]*x[13]-0.1306*x[5]*x[6]*x[12]*x[14]+0.0669*x[5]*x[7]*x[8]*x[15]+0.5937*x[5]*x[7]*x[9]*x[14]+0.0601*x[5]*x[7]*x[14]*x[15]+0.6091*x[5]*x[8]*x[10]*x[14]+0.2723*x[5]*x[8]*x[11]*x[13]+0.9152*x[5]*x[9]*x[11]*x[13]+0.065*x[5]*x[10]*x[11]*x[12]+0.8188*x[5]*x[10]*x[11]*x[13]-0.3207*x[5]*x[11]*x[12]*x[14]+0.0824*x[6]*x[7]*x[8]*x[14]-0.9123*x[6]*x[7]*x[9]*x[11]-0.9897*x[6]*x[7]*x[9]*x[13]-0.1124*x[6]*x[7]*x[10]*x[12]+0.1289*x[6]*x[8]*x[9]*x[15]-0.081*x[6]*x[8]*x[11]*x[14]+0.8367*x[6]*x[8]*x[11]*x[15]+0.8204*x[6]*x[8]*x[12]*x[14]+0.6934*x[6]*x[9]*x[12]*x[14]-0.1675*x[6]*x[10]*x[11]*x[13]+0.7381*x[6]*x[10]*x[12]*x[14]+0.247*x[7]*x[8]*x[10]*x[12]+0.6648*x[7]*x[8]*x[11]*x[12]+0.0677*x[7]*x[8]*x[14]*x[15]-0.9937*x[7]*x[9]*x[10]*x[12]+0.5785*x[7]*x[10]*x[11]*x[12]+0.8575*x[7]*x[10]*x[11]*x[13]+0.424*x[8]*x[9]*x[10]*x[12]+0.5894*x[8]*x[9]*x[10]*x[13]-0.4791*x[8]*x[9]*x[12]*x[13]-0.3606*x[8]*x[10]*x[11]*x[12]+0.943*x[8]*x[10]*x[11]*x[13]-0.5731*x[8]*x[10]*x[12]*x[13]-0.9817*x[8]*x[10]*x[13]*x[14]-0.4976*x[8]*x[12]*x[13]*x[15]+0.4353*x[9]*x[10]*x[11]*x[13]-0.5595*x[9]*x[10]*x[11]*x[14]-0.5789*x[9]*x[11]*x[12]*x[14]-0.7769*x[10]*x[11]*x[12]*x[13]-0.7097*x[12]*x[13]*x[14]*x[15] <= 48.231)
@NLconstraint(m, e4, 0.3112*x[2]*x[5]+0.8574*x[3]*x[9]-0.8855*x[3]*x[10]+0.767*x[4]*x[8]-0.3846*x[4]*x[10]-0.1034*x[4]*x[13]-0.8947*x[5]*x[12]-0.4153*x[5]*x[14]-0.0323*x[8]*x[11]+0.6089*x[8]*x[13]-0.1153*x[9]*x[11]+0.8262*x[2]+0.647*x[3]-0.4972*x[4]+0.9797*x[5]-0.2078*x[8]+0.0344*x[9]-0.4547*x[10]+0.1847*x[11]+0.2861*x[12]+0.8902*x[13]-0.5664*x[14]+0.3238*x[1]*x[2]*x[4]-0.6744*x[1]*x[2]*x[3]-0.8346*x[1]*x[5]*x[7]+0.5543*x[1]*x[6]*x[9]-0.415*x[1]*x[6]*x[10]+0.959*x[1]*x[9]*x[13]+0.5474*x[2]*x[3]*x[6]+0.7048*x[2]*x[3]*x[12]-0.2758*x[2]*x[4]*x[12]+0.9275*x[2]*x[5]*x[14]-0.0668*x[2]*x[6]*x[7]+0.3111*x[2]*x[6]*x[10]-0.6608*x[2]*x[7]*x[8]-0.2758*x[2]*x[8]*x[10]-0.0992*x[2]*x[9]*x[11]-0.8843*x[2]*x[9]*x[14]-0.3284*x[2]*x[10]*x[14]-0.0082*x[3]*x[4]*x[6]+0.6988*x[3]*x[6]*x[7]+0.3112*x[3]*x[6]*x[9]-0.4074*x[3]*x[6]*x[14]-0.0278*x[3]*x[7]*x[8]+0.8539*x[3]*x[7]*x[9]+0.5735*x[3]*x[7]*x[15]+0.3784*x[3]*x[9]*x[14]-0.3033*x[3]*x[11]*x[14]+0.7141*x[3]*x[12]*x[13]+0.4376*x[4]*x[5]*x[6]+0.3387*x[4]*x[5]*x[7]+0.944*x[4]*x[6]*x[10]+0.3419*x[4]*x[8]*x[11]+0.4279*x[4]*x[10]*x[12]+0.0848*x[4]*x[10]*x[15]-0.0607*x[4]*x[11]*x[12]+0.7262*x[4]*x[11]*x[15]-0.4172*x[4]*x[12]*x[14]+0.8597*x[5]*x[6]*x[9]+0.6695*x[5]*x[6]*x[13]-0.0938*x[5]*x[7]*x[8]+0.0483*x[5]*x[7]*x[11]+0.4728*x[5]*x[7]*x[13]-0.2012*x[5]*x[8]*x[11]+0.7529*x[5]*x[9]*x[10]-0.4541*x[5]*x[9]*x[11]+0.7855*x[5]*x[10]*x[14]-0.9916*x[5]*x[13]*x[15]+0.7809*x[6]*x[7]*x[10]-0.0463*x[6]*x[7]*x[11]-0.5945*x[6]*x[7]*x[13]-0.2995*x[6]*x[10]*x[15]+0.8489*x[6]*x[11]*x[12]-0.7251*x[6]*x[12]*x[13]-0.8768*x[6]*x[13]*x[15]+0.8909*x[7]*x[8]*x[9]-0.7297*x[7]*x[8]*x[15]-0.4384*x[7]*x[9]*x[12]+0.7942*x[7]*x[9]*x[14]-0.0474*x[7]*x[10]*x[11]+0.7127*x[7]*x[10]*x[12]+0.3471*x[7]*x[12]*x[15]-0.6116*x[8]*x[9]*x[14]-0.7207*x[8]*x[10]*x[12]-0.6184*x[8]*x[11]*x[12]+0.9598*x[9]*x[10]*x[13]-0.3341*x[9]*x[10]*x[14]-0.0487*x[9]*x[12]*x[13]-0.1999*x[9]*x[13]*x[14]+0.0819*x[10]*x[14]*x[15]+0.9019*x[12]*x[13]*x[15]-0.0944*x[12]*x[14]*x[15]-0.9567*x[1]-0.4204*x[6]+0.6677*x[7]+0.3529*x[15]+(-0.7012*x[1]*x[2]*x[3]*x[6])-0.637*x[1]*x[2]*x[3]*x[8]-0.9398*x[1]*x[2]*x[4]*x[11]+0.9131*x[1]*x[2]*x[4]*x[13]+0.4259*x[1]*x[2]*x[5]*x[6]-0.4886*x[1]*x[2]*x[5]*x[8]+0.6881*x[1]*x[2]*x[5]*x[12]-0.1674*x[1]*x[2]*x[5]*x[14]-0.4404*x[1]*x[2]*x[6]*x[12]+0.8432*x[1]*x[2]*x[9]*x[12]+0.8529*x[1]*x[2]*x[10]*x[13]-0.4203*x[1]*x[2]*x[13]*x[15]+0.6802*x[1]*x[3]*x[4]*x[14]-0.872*x[1]*x[3]*x[5]*x[7]-0.6212*x[1]*x[3]*x[5]*x[9]-0.7682*x[1]*x[3]*x[7]*x[10]+0.7535*x[1]*x[3]*x[9]*x[10]+0.0673*x[1]*x[4]*x[5]*x[12]+0.3201*x[1]*x[4]*x[10]*x[13]-0.0991*x[1]*x[4]*x[12]*x[13]-0.2879*x[1]*x[4]*x[12]*x[15]-0.2297*x[1]*x[5]*x[6]*x[8]+0.2605*x[1]*x[5]*x[6]*x[10]-0.5345*x[1]*x[5]*x[9]*x[14]+0.9537*x[1]*x[5]*x[9]*x[15]+0.0272*x[1]*x[5]*x[10]*x[13]-0.6685*x[1]*x[6]*x[7]*x[9]+0.5707*x[1]*x[6]*x[8]*x[13]-0.0267*x[1]*x[6]*x[11]*x[12]-0.822*x[1]*x[7]*x[8]*x[15]-0.1427*x[1]*x[7]*x[9]*x[10]+0.0288*x[1]*x[7]*x[10]*x[13]-0.9723*x[1]*x[7]*x[11]*x[14]+0.3225*x[1]*x[7]*x[12]*x[13]+0.9068*x[1]*x[11]*x[12]*x[13]-0.0705*x[2]*x[3]*x[4]*x[8]-0.0239*x[2]*x[3]*x[4]*x[11]-0.5795*x[2]*x[3]*x[5]*x[13]-0.1316*x[2]*x[3]*x[6]*x[10]+0.6438*x[2]*x[3]*x[6]*x[14]+0.9699*x[2]*x[3]*x[7]*x[10]+0.6354*x[2]*x[3]*x[11]*x[13]-0.1293*x[2]*x[4]*x[5]*x[6]-0.9631*x[2]*x[4]*x[5]*x[7]-0.9792*x[2]*x[4]*x[5]*x[8]-0.2614*x[2]*x[4]*x[5]*x[10]-0.7675*x[2]*x[4]*x[5]*x[12]-0.8793*x[2]*x[4]*x[7]*x[8]-0.8145*x[2]*x[4]*x[7]*x[9]+0.0602*x[2]*x[4]*x[7]*x[11]+0.7685*x[2]*x[4]*x[8]*x[11]+0.9962*x[2]*x[4]*x[8]*x[12]+0.5811*x[2]*x[4]*x[8]*x[15]-0.5055*x[2]*x[4]*x[9]*x[10]+0.3822*x[2]*x[4]*x[10]*x[12]+0.5057*x[2]*x[5]*x[6]*x[14]+0.8432*x[2]*x[5]*x[7]*x[9]+0.892*x[2]*x[5]*x[7]*x[11]+0.4298*x[2]*x[5]*x[9]*x[12]+0.8786*x[2]*x[5]*x[9]*x[13]-0.0186*x[2]*x[5]*x[11]*x[12]+0.4254*x[2]*x[5]*x[12]*x[13]+0.4562*x[2]*x[5]*x[12]*x[14]-0.2343*x[2]*x[6]*x[7]*x[11]-0.3162*x[2]*x[6]*x[7]*x[14]+0.6082*x[2]*x[6]*x[8]*x[14]+0.2142*x[2]*x[6]*x[12]*x[13]+0.1282*x[2]*x[7]*x[8]*x[10]+0.1299*x[2]*x[7]*x[8]*x[11]-0.8318*x[2]*x[7]*x[11]*x[13]-0.7497*x[2]*x[7]*x[12]*x[14]-0.5552*x[2]*x[7]*x[13]*x[14]-0.0307*x[2]*x[8]*x[10]*x[12]+0.0289*x[2]*x[8]*x[11]*x[13]-0.9603*x[2]*x[8]*x[13]*x[14]-0.4986*x[2]*x[9]*x[10]*x[12]+0.0079*x[2]*x[9]*x[11]*x[12]-0.2532*x[2]*x[9]*x[11]*x[13]-0.6056*x[2]*x[10]*x[12]*x[14]+0.8287*x[2]*x[10]*x[13]*x[14]+0.5512*x[2]*x[10]*x[13]*x[15]+0.434*x[3]*x[4]*x[5]*x[10]-0.6378*x[3]*x[4]*x[6]*x[7]+0.3612*x[3]*x[4]*x[7]*x[12]+0.6475*x[3]*x[4]*x[8]*x[12]-0.334*x[3]*x[4]*x[8]*x[14]+0.7535*x[3]*x[4]*x[9]*x[10]-0.6368*x[3]*x[4]*x[9]*x[12]+0.3581*x[3]*x[4]*x[9]*x[15]-0.1354*x[3]*x[4]*x[11]*x[13]+0.2386*x[3]*x[4]*x[13]*x[14]+0.3476*x[3]*x[5]*x[6]*x[7]-0.045*x[3]*x[5]*x[6]*x[8]-0.7197*x[3]*x[5]*x[6]*x[9]+0.0217*x[3]*x[5]*x[6]*x[11]-0.2035*x[3]*x[5]*x[7]*x[14]-0.7674*x[3]*x[5]*x[8]*x[12]-0.6368*x[3]*x[5]*x[8]*x[13]-0.5487*x[3]*x[5]*x[9]*x[11]+0.8894*x[3]*x[5]*x[9]*x[14]+0.5638*x[3]*x[6]*x[7]*x[14]+0.7133*x[3]*x[6]*x[8]*x[11]-0.1373*x[3]*x[6]*x[8]*x[13]-0.5844*x[3]*x[6]*x[9]*x[10]+0.45*x[3]*x[6]*x[9]*x[11]+0.6889*x[3]*x[6]*x[12]*x[14]-0.8948*x[3]*x[7]*x[8]*x[10]+0.6886*x[3]*x[7]*x[9]*x[10]+0.5356*x[3]*x[7]*x[10]*x[14]+0.0775*x[3]*x[7]*x[10]*x[15]+0.0146*x[3]*x[7]*x[11]*x[13]-0.1265*x[3]*x[8]*x[9]*x[10]-0.4026*x[3]*x[8]*x[10]*x[12]+0.7052*x[3]*x[8]*x[10]*x[15]+0.5321*x[3]*x[8]*x[13]*x[14]-0.4935*x[3]*x[9]*x[11]*x[12]-0.4659*x[3]*x[10]*x[13]*x[14]+0.7997*x[3]*x[12]*x[13]*x[14]+0.306*x[4]*x[5]*x[6]*x[9]-0.4608*x[4]*x[5]*x[6]*x[12]+0.1987*x[4]*x[5]*x[7]*x[8]-0.0426*x[4]*x[5]*x[8]*x[14]+0.8762*x[4]*x[5]*x[9]*x[12]+0.2149*x[4]*x[5]*x[10]*x[13]-0.7308*x[4]*x[5]*x[11]*x[12]-0.8612*x[4]*x[6]*x[7]*x[8]-0.898*x[4]*x[6]*x[7]*x[11]-0.6964*x[4]*x[6]*x[8]*x[12]+0.1051*x[4]*x[6]*x[8]*x[13]-0.2923*x[4]*x[6]*x[9]*x[11]+0.2074*x[4]*x[6]*x[10]*x[15]-0.1745*x[4]*x[7]*x[10]*x[13]-0.6385*x[4]*x[7]*x[10]*x[14]-0.7058*x[4]*x[7]*x[13]*x[14]+0.7*x[4]*x[8]*x[9]*x[11]+0.1474*x[4]*x[8]*x[9]*x[12]-0.061*x[4]*x[8]*x[9]*x[13]-0.1012*x[4]*x[9]*x[10]*x[12]-0.8226*x[4]*x[9]*x[10]*x[13]+0.9365*x[4]*x[9]*x[12]*x[15]-0.8186*x[4]*x[10]*x[13]*x[14]-0.3856*x[5]*x[6]*x[8]*x[12]-0.2642*x[5]*x[6]*x[8]*x[13]+0.385*x[5]*x[6]*x[9]*x[14]-0.2073*x[5]*x[6]*x[10]*x[15]-0.2797*x[5]*x[6]*x[11]*x[13]-0.9718*x[5]*x[6]*x[12]*x[13]+0.7444*x[5]*x[6]*x[12]*x[14]+0.7309*x[5]*x[7]*x[8]*x[9]+0.2316*x[5]*x[7]*x[8]*x[11]+0.9819*x[5]*x[7]*x[9]*x[11]-0.2712*x[5]*x[7]*x[9]*x[12]+0.419*x[5]*x[7]*x[9]*x[14]-0.4758*x[5]*x[7]*x[10]*x[13]+0.5033*x[5]*x[7]*x[10]*x[14]-0.0831*x[5]*x[7]*x[11]*x[13]+0.9139*x[5]*x[7]*x[12]*x[14]+0.2858*x[5]*x[8]*x[9]*x[10]+0.37*x[5]*x[8]*x[9]*x[13]-0.5789*x[5]*x[8]*x[11]*x[12]+0.9055*x[5]*x[9]*x[10]*x[12]+0.6373*x[5]*x[9]*x[12]*x[14]+0.7722*x[5]*x[10]*x[11]*x[14]-0.1333*x[5]*x[10]*x[11]*x[15]-0.8016*x[6]*x[7]*x[10]*x[14]-0.9263*x[6]*x[8]*x[9]*x[13]+0.6859*x[6]*x[8]*x[10]*x[13]-0.0239*x[6]*x[8]*x[10]*x[14]+0.5522*x[6]*x[8]*x[12]*x[14]-0.1497*x[6]*x[8]*x[13]*x[14]-0.7399*x[6]*x[9]*x[10]*x[14]-0.2806*x[6]*x[9]*x[11]*x[13]-0.7216*x[6]*x[9]*x[12]*x[13]+0.7407*x[6]*x[9]*x[14]*x[15]+0.1069*x[6]*x[10]*x[11]*x[12]+0.6607*x[6]*x[10]*x[11]*x[13]+0.9544*x[6]*x[10]*x[12]*x[13]-0.5021*x[6]*x[11]*x[13]*x[14]+0.6105*x[6]*x[13]*x[14]*x[15]-0.7144*x[7]*x[8]*x[9]*x[13]+0.9606*x[7]*x[8]*x[9]*x[14]+0.2237*x[7]*x[8]*x[11]*x[14]-0.5828*x[7]*x[8]*x[12]*x[14]-0.0425*x[7]*x[8]*x[13]*x[14]-0.1821*x[7]*x[9]*x[10]*x[14]-0.9928*x[7]*x[9]*x[11]*x[13]-0.0454*x[7]*x[9]*x[11]*x[15]+0.993*x[7]*x[9]*x[12]*x[14]-0.0655*x[7]*x[9]*x[14]*x[15]+0.9012*x[7]*x[10]*x[11]*x[12]-0.0544*x[7]*x[10]*x[11]*x[15]+0.1876*x[7]*x[11]*x[12]*x[13]+0.6348*x[7]*x[11]*x[13]*x[15]-0.7353*x[7]*x[12]*x[13]*x[14]-0.6307*x[8]*x[9]*x[10]*x[11]+0.1268*x[8]*x[9]*x[10]*x[13]-0.9189*x[8]*x[9]*x[11]*x[12]-0.1553*x[8]*x[9]*x[12]*x[14]+0.752*x[8]*x[11]*x[12]*x[13]+0.7468*x[8]*x[11]*x[12]*x[14]-0.8089*x[9]*x[10]*x[12]*x[14]+0.8915*x[9]*x[10]*x[13]*x[14]+0.469*x[9]*x[11]*x[12]*x[14]-0.9542*x[9]*x[11]*x[14]*x[15]-0.3299*x[10]*x[11]*x[12]*x[14]+0.4729*x[10]*x[13]*x[14]*x[15]-0.2838*x[11]*x[12]*x[13]*x[14] <= 37.331)


# ----- Objective ----- #
@objective(m, Min, x[16])

m = m 		 # model get returned when including this script. 
