using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8] == 1.0)
@constraint(m, e2, -64*x[1]-64*x[2]-64*x[3]-64*x[4]-64*x[5]-64*x[6]-64*x[7]-46*x[8] <= 0.0)
@constraint(m, e3, -218*x[1]-218*x[2]-218*x[3]-218*x[4]-218*x[5]-218*x[6]-218*x[7]-218*x[8] <= 0.0)
@constraint(m, e4, -412*x[1]-412*x[2]-412*x[3]-412*x[4]-412*x[5]-412*x[6]-412*x[7]-412*x[8] <= 0.0)
@constraint(m, e5, -281*x[1]-244*x[2]-254*x[3]-215*x[4]-281*x[5]-281*x[6]-254*x[7]-289*x[8] <= 0.0)
@constraint(m, e6, -187*x[1]-181*x[2]-181*x[3]-181*x[4]-160*x[5]-187*x[6]-166*x[7]-193*x[8] <= 0.0)
@constraint(m, e7, -330*x[1]-338*x[2]-338*x[3]-337*x[4]-338*x[5]-338*x[6]-338*x[7]-338*x[8] <= 0.0)
@constraint(m, e8, -172*x[1]-191*x[2]-191*x[3]-191*x[4]-191*x[5]-179*x[6]-153*x[7]-191*x[8] <= 0.0)
@constraint(m, e9, -255*x[1]-255*x[2]-255*x[3]-255*x[4]-255*x[5]-255*x[6]-255*x[7]-255*x[8] <= 0.0)
@constraint(m, e10, -423*x[1]-423*x[2]-454*x[3]-454*x[4]-423*x[5]-423*x[6]-384*x[7]-461*x[8] <= 0.0)
@constraint(m, e11, -455*x[1]-460*x[2]-460*x[3]-460*x[4]-460*x[5]-455*x[6]-455*x[7]-455*x[8] <= 0.0)
@constraint(m, e12, -304*x[1]-304*x[2]-304*x[3]-304*x[4]-325*x[5]-304*x[6]-325*x[7]-297*x[8] <= 0.0)
@constraint(m, e13, -180*x[1]-180*x[2]-180*x[3]-180*x[4]-180*x[5]-180*x[6]-180*x[7]-180*x[8] <= 0.0)
@constraint(m, e14, -491*x[1]-483*x[2]-483*x[3]-484*x[4]-483*x[5]-491*x[6]-491*x[7]-483*x[8] <= 0.0)
@constraint(m, e15, -121*x[1]-121*x[2]-121*x[3]-121*x[4]-121*x[5]-121*x[6]-121*x[7]-121*x[8] <= 0.0)
@constraint(m, e16, -500*x[1]-500*x[2]-500*x[3]-495*x[4]-500*x[5]-500*x[6]-463*x[7]-518*x[8] <= 0.0)
@constraint(m, e17, -249*x[1]-249*x[2]-249*x[3]-249*x[4]-249*x[5]-249*x[6]-249*x[7]-249*x[8] <= 0.0)
@constraint(m, e18, -163*x[1]-196*x[2]-196*x[3]-159*x[4]-201*x[5]-200*x[6]-123*x[7]-211*x[8] <= 0.0)
@constraint(m, e19, -176*x[1]-176*x[2]-176*x[3]-176*x[4]-176*x[5]-176*x[6]-176*x[7]-176*x[8] <= 0.0)
@constraint(m, e20, -426*x[1]-426*x[2]-426*x[3]-426*x[4]-421*x[5]-426*x[6]-485*x[7]-411*x[8] <= 0.0)
@constraint(m, e21, -315*x[1]-315*x[2]-315*x[3]-315*x[4]-315*x[5]-315*x[6]-315*x[7]-315*x[8] <= 0.0)
@constraint(m, e22, -35*x[1]-48*x[2]-48*x[3]-51*x[4]-54*x[5]-54*x[6]-54*x[7]-41*x[8] <= 0.0)
@constraint(m, e23, -301*x[1]-301*x[2]-301*x[3]-301*x[4]-301*x[5]-301*x[6]-301*x[7]-301*x[8] <= 0.0)
@constraint(m, e24, -143*x[1]-143*x[2]-143*x[3]-143*x[4]-143*x[5]-143*x[6]-143*x[7]-143*x[8] <= 0.0)
@constraint(m, e25, -402*x[1]-402*x[2]-402*x[3]-402*x[4]-402*x[5]-402*x[6]-402*x[7]-402*x[8] <= 0.0)
@constraint(m, e26, -162*x[1]-162*x[2]-162*x[3]-157*x[4]-162*x[5]-162*x[6]-160*x[7]-162*x[8] <= 0.0)
@constraint(m, e27, -429*x[1]-429*x[2]-429*x[3]-434*x[4]-429*x[5]-437*x[6]-437*x[7]-429*x[8] <= 0.0)
@constraint(m, e28, -219*x[1]-219*x[2]-219*x[3]-219*x[4]-219*x[5]-216*x[6]-219*x[7]-216*x[8] <= 0.0)
@constraint(m, e29, -401*x[1]-403*x[2]-403*x[3]-403*x[4]-403*x[5]-403*x[6]-403*x[7]-403*x[8] <= 0.0)
@constraint(m, e30, -10*x[1]-5*x[2]-5*x[3]-5*x[4]-5*x[5]-10*x[6]-10*x[7]-2*x[8] <= 0.0)
@constraint(m, e31, -356*x[1]-393*x[2]-393*x[3]-393*x[4]-393*x[5]-393*x[6]-393*x[7]-393*x[8] <= 0.0)
@constraint(m, e32, -526*x[1]-531*x[2]-531*x[3]-531*x[4]-531*x[5]-526*x[6]-467*x[7]-526*x[8] <= 0.0)
@constraint(m, e33, -511*x[1]-486*x[2]-476*x[3]-476*x[4]-452*x[5]-491*x[6]-523*x[7]-490*x[8] <= 0.0)
@constraint(m, e34, -211*x[1]-211*x[2]-211*x[3]-199*x[4]-211*x[5]-211*x[6]-211*x[7]-211*x[8] <= 0.0)
@constraint(m, e35, -304*x[1]-304*x[2]-302*x[3]-302*x[4]-273*x[5]-302*x[6]-299*x[7]-302*x[8] <= 0.0)
@constraint(m, e36, -495*x[1]-496*x[2]-496*x[3]-508*x[4]-502*x[5]-484*x[6]-495*x[7]-489*x[8] <= 0.0)
@constraint(m, e37, -328*x[1]-328*x[2]-328*x[3]-328*x[4]-328*x[5]-328*x[6]-328*x[7]-328*x[8] <= 0.0)
@constraint(m, e38, -218*x[1]-218*x[2]-218*x[3]-218*x[4]-218*x[5]-203*x[6]-218*x[7]-218*x[8] <= 0.0)
@constraint(m, e39, -285*x[1]-285*x[2]-285*x[3]-285*x[4]-264*x[5]-285*x[6]-264*x[7]-303*x[8] <= 0.0)
@constraint(m, e40, -261*x[1]-261*x[2]-261*x[3]-261*x[4]-261*x[5]-261*x[6]-261*x[7]-261*x[8] <= 0.0)
@constraint(m, e41, -304*x[1]-369*x[2]-331*x[3]-358*x[4]-311*x[5]-331*x[6]-294*x[7]-331*x[8] <= 0.0)
@constraint(m, e42, -158*x[1]-158*x[2]-158*x[3]-158*x[4]-200*x[5]-167*x[6]-158*x[7]-165*x[8] <= 0.0)
@constraint(m, e43, -283*x[1]-283*x[2]-283*x[3]-283*x[4]-283*x[5]-283*x[6]-283*x[7]-283*x[8] <= 0.0)
@constraint(m, e44, -167*x[1]-167*x[2]-167*x[3]-167*x[4]-167*x[5]-167*x[6]-167*x[7]-167*x[8] <= 0.0)
@constraint(m, e45, -572*x[1]-572*x[2]-572*x[3]-572*x[4]-572*x[5]-572*x[6]-572*x[7]-572*x[8] <= 0.0)
@constraint(m, e46, -162*x[1]-188*x[2]-105*x[3]-167*x[4]-126*x[5]-162*x[6]-162*x[7]-162*x[8] <= 0.0)
@constraint(m, e47, -370*x[1]-375*x[2]-375*x[3]-375*x[4]-406*x[5]-370*x[6]-370*x[7]-406*x[8] <= 0.0)
@constraint(m, e48, -116*x[1]-116*x[2]-116*x[3]-116*x[4]-116*x[5]-116*x[6]-116*x[7]-116*x[8] <= 0.0)
@constraint(m, e49, -215*x[1]-215*x[2]-215*x[3]-215*x[4]-215*x[5]-215*x[6]-215*x[7]-215*x[8] <= 0.0)
@constraint(m, e50, -538*x[1]-538*x[2]-538*x[3]-538*x[4]-538*x[5]-538*x[6]-538*x[7]-538*x[8] <= 0.0)
@constraint(m, e51, -478*x[1]-478*x[2]-478*x[3]-478*x[4]-478*x[5]-478*x[6]-478*x[7]-486*x[8] <= 0.0)
@constraint(m, e52, -256*x[1]-246*x[2]-246*x[3]-256*x[4]-256*x[5]-246*x[6]-246*x[7]-246*x[8] <= 0.0)
@constraint(m, e53, -458*x[1]-459*x[2]-459*x[3]-459*x[4]-459*x[5]-459*x[6]-457*x[7]-459*x[8] <= 0.0)
@constraint(m, e54, -370*x[1]-370*x[2]-370*x[3]-370*x[4]-370*x[5]-370*x[6]-370*x[7]-370*x[8] <= 0.0)
@constraint(m, e55, -134*x[1]-134*x[2]-134*x[3]-134*x[4]-134*x[5]-134*x[6]-134*x[7]-98*x[8] <= 0.0)
@constraint(m, e56, -236*x[1]-236*x[2]-236*x[3]-236*x[4]-236*x[5]-227*x[6]-236*x[7]-227*x[8] <= 0.0)
@constraint(m, e57, -423*x[1]-431*x[2]-431*x[3]-431*x[4]-431*x[5]-423*x[6]-423*x[7]-431*x[8] <= 0.0)
@constraint(m, e58, -60*x[1]-51*x[2]-51*x[3]-51*x[4]-51*x[5]-59*x[6]-61*x[7]-43*x[8] <= 0.0)
@constraint(m, e59, -484*x[1]-484*x[2]-484*x[3]-484*x[4]-484*x[5]-484*x[6]-484*x[7]-484*x[8] <= 0.0)
@constraint(m, e60, -316*x[1]-316*x[2]-316*x[3]-333*x[4]-316*x[5]-333*x[6]-316*x[7]-333*x[8] <= 0.0)
@constraint(m, e61, -107*x[1]-105*x[2]-105*x[3]-105*x[4]-105*x[5]-105*x[6]-105*x[7]-105*x[8] <= 0.0)
@constraint(m, e62, -274*x[1]-274*x[2]-274*x[3]-274*x[4]-269*x[5]-274*x[6]-274*x[7]-259*x[8] <= 0.0)
@constraint(m, e63, -79*x[1]-79*x[2]-81*x[3]-110*x[4]-101*x[5]-81*x[6]-118*x[7]-91*x[8] <= 0.0)
@constraint(m, e64, -416*x[1]-424*x[2]-424*x[3]-387*x[4]-429*x[5]-424*x[6]-387*x[7]-429*x[8] <= 0.0)
@constraint(m, e65, -379*x[1]-366*x[2]-376*x[3]-384*x[4]-366*x[5]-378*x[6]-381*x[7]-378*x[8] <= 0.0)
@constraint(m, e66, -356*x[1]-366*x[2]-366*x[3]-356*x[4]-356*x[5]-357*x[6]-366*x[7]-357*x[8] <= 0.0)
@constraint(m, e67, -539*x[1]-539*x[2]-539*x[3]-539*x[4]-539*x[5]-539*x[6]-539*x[7]-539*x[8] <= 0.0)
@constraint(m, e68, -263*x[1]-265*x[2]-265*x[3]-265*x[4]-265*x[5]-265*x[6]-265*x[7]-265*x[8] <= 0.0)
@constraint(m, e69, -457*x[1]-457*x[2]-457*x[3]-457*x[4]-457*x[5]-469*x[6]-457*x[7]-469*x[8] <= 0.0)
@constraint(m, e70, -121*x[1]-121*x[2]-121*x[3]-121*x[4]-121*x[5]-121*x[6]-121*x[7]-121*x[8] <= 0.0)
@constraint(m, e71, -417*x[1]-417*x[2]-417*x[3]-417*x[4]-417*x[5]-417*x[6]-417*x[7]-417*x[8] <= 0.0)
@constraint(m, e72, -383*x[1]-383*x[2]-371*x[3]-354*x[4]-389*x[5]-371*x[6]-371*x[7]-371*x[8] <= 0.0)
@constraint(m, e73, -502*x[1]-502*x[2]-502*x[3]-502*x[4]-502*x[5]-502*x[6]-502*x[7]-495*x[8] <= 0.0)
@constraint(m, e74, -373*x[1]-373*x[2]-373*x[3]-373*x[4]-373*x[5]-373*x[6]-373*x[7]-373*x[8] <= 0.0)
@constraint(m, e75, -503*x[1]-493*x[2]-493*x[3]-493*x[4]-493*x[5]-493*x[6]-493*x[7]-493*x[8] <= 0.0)
@constraint(m, e76, -281*x[1]-281*x[2]-281*x[3]-281*x[4]-281*x[5]-281*x[6]-281*x[7]-281*x[8] <= 0.0)
@constraint(m, e77, -504*x[1]-504*x[2]-504*x[3]-504*x[4]-504*x[5]-504*x[6]-504*x[7]-504*x[8] <= 0.0)
@constraint(m, e78, -193*x[1]-193*x[2]-193*x[3]-205*x[4]-193*x[5]-193*x[6]-193*x[7]-193*x[8] <= 0.0)
@constraint(m, e79, -94*x[1]-94*x[2]-94*x[3]-83*x[4]-83*x[5]-75*x[6]-75*x[7]-94*x[8] <= 0.0)
@constraint(m, e80, -345*x[1]-345*x[2]-376*x[3]-376*x[4]-345*x[5]-345*x[6]-345*x[7]-383*x[8] <= 0.0)
@constraint(m, e81, -437*x[1]-437*x[2]-437*x[3]-437*x[4]-437*x[5]-437*x[6]-437*x[7]-431*x[8] <= 0.0)
@constraint(m, e82, -168*x[1]-168*x[2]-168*x[3]-168*x[4]-168*x[5]-177*x[6]-168*x[7]-139*x[8] <= 0.0)
@constraint(m, e83, -237*x[1]-237*x[2]-206*x[3]-206*x[4]-237*x[5]-237*x[6]-237*x[7]-237*x[8] <= 0.0)
@constraint(m, e84, -241*x[1]-233*x[2]-233*x[3]-233*x[4]-251*x[5]-229*x[6]-241*x[7]-221*x[8] <= 0.0)
@constraint(m, e85, -396*x[1]-396*x[2]-406*x[3]-406*x[4]-406*x[5]-406*x[6]-392*x[7]-392*x[8] <= 0.0)
@constraint(m, e86, -135*x[1]-135*x[2]-135*x[3]-135*x[4]-135*x[5]-135*x[6]-135*x[7]-135*x[8] <= 0.0)
@constraint(m, e87, -323*x[1]-324*x[2]-324*x[3]-324*x[4]-312*x[5]-312*x[6]-323*x[7]-317*x[8] <= 0.0)
@constraint(m, e88, -351*x[1]-351*x[2]-351*x[3]-351*x[4]-351*x[5]-351*x[6]-351*x[7]-351*x[8] <= 0.0)
@constraint(m, e89, -488*x[1]-488*x[2]-488*x[3]-488*x[4]-488*x[5]-488*x[6]-488*x[7]-488*x[8] <= 0.0)
@constraint(m, e90, -153*x[1]-154*x[2]-144*x[3]-145*x[4]-144*x[5]-144*x[6]-158*x[7]-157*x[8] <= 0.0)
@constraint(m, e91, -288*x[1]-288*x[2]-278*x[3]-278*x[4]-278*x[5]-278*x[6]-288*x[7]-288*x[8] <= 0.0)
@constraint(m, e92, -126*x[1]-126*x[2]-157*x[3]-157*x[4]-126*x[5]-126*x[6]-91*x[7]-164*x[8] <= 0.0)
@constraint(m, e93, -180*x[1]-180*x[2]-180*x[3]-180*x[4]-180*x[5]-180*x[6]-180*x[7]-186*x[8] <= 0.0)
@constraint(m, e94, -349*x[1]-349*x[2]-349*x[3]-349*x[4]-349*x[5]-349*x[6]-349*x[7]-349*x[8] <= 0.0)
@constraint(m, e95, -287*x[1]-287*x[2]-287*x[3]-287*x[4]-287*x[5]-287*x[6]-287*x[7]-281*x[8] <= 0.0)
@constraint(m, e96, -487*x[1]-487*x[2]-487*x[3]-487*x[4]-487*x[5]-487*x[6]-487*x[7]-476*x[8] <= 0.0)
@constraint(m, e97, -38*x[1]-38*x[2]-38*x[3]-38*x[4]-38*x[5]-38*x[6]-38*x[7]-82*x[8] <= 0.0)
@constraint(m, e98, -175*x[1]-175*x[2]-175*x[3]-175*x[4]-151*x[5]-175*x[6]-175*x[7]-163*x[8] <= 0.0)
@constraint(m, e99, -416*x[1]-416*x[2]-416*x[3]-416*x[4]-416*x[5]-416*x[6]-416*x[7]-416*x[8] <= 0.0)
@constraint(m, e100, -70*x[1]-70*x[2]-70*x[3]-70*x[4]-70*x[5]-70*x[6]-68*x[7]-70*x[8] <= 0.0)
@constraint(m, e101, -253*x[1]-253*x[2]-253*x[3]-282*x[4]-253*x[5]-253*x[6]-255*x[7]-271*x[8] <= 0.0)
@constraint(m, e102, -248*x[1]-248*x[2]-248*x[3]-248*x[4]-224*x[5]-248*x[6]-224*x[7]-248*x[8] <= 0.0)
@constraint(m, e103, -187*x[1]-181*x[2]-181*x[3]-181*x[4]-181*x[5]-187*x[6]-152*x[7]-181*x[8] <= 0.0)
@constraint(m, e104, -443*x[1]-443*x[2]-443*x[3]-443*x[4]-446*x[5]-443*x[6]-446*x[7]-456*x[8] <= 0.0)
@constraint(m, e105, -218*x[1]-232*x[2]-232*x[3]-232*x[4]-232*x[5]-218*x[6]-218*x[7]-219*x[8] <= 0.0)
@constraint(m, e106, -467*x[1]-467*x[2]-467*x[3]-467*x[4]-467*x[5]-467*x[6]-467*x[7]-467*x[8] <= 0.0)
@constraint(m, e107, -204*x[1]-204*x[2]-214*x[3]-185*x[4]-204*x[5]-214*x[6]-214*x[7]-214*x[8] <= 0.0)
@constraint(m, e108, -296*x[1]-296*x[2]-327*x[3]-327*x[4]-296*x[5]-296*x[6]-296*x[7]-334*x[8] <= 0.0)
@constraint(m, e109, -379*x[1]-371*x[2]-371*x[3]-371*x[4]-371*x[5]-379*x[6]-379*x[7]-371*x[8] <= 0.0)
@constraint(m, e110, -312*x[1]-307*x[2]-312*x[3]-312*x[4]-312*x[5]-312*x[6]-312*x[7]-318*x[8] <= 0.0)
@constraint(m, e111, -210*x[1]-210*x[2]-210*x[3]-210*x[4]-179*x[5]-210*x[6]-207*x[7]-210*x[8] <= 0.0)
@constraint(m, e112, -176*x[1]-176*x[2]-176*x[3]-176*x[4]-176*x[5]-176*x[6]-176*x[7]-176*x[8] <= 0.0)
@constraint(m, e113, -486*x[1]-486*x[2]-486*x[3]-486*x[4]-486*x[5]-486*x[6]-435*x[7]-486*x[8] <= 0.0)
@constraint(m, e114, -389*x[1]-394*x[2]-394*x[3]-394*x[4]-389*x[5]-389*x[6]-389*x[7]-394*x[8] <= 0.0)
@constraint(m, e115, -269*x[1]-269*x[2]-269*x[3]-269*x[4]-269*x[5]-269*x[6]-320*x[7]-269*x[8] <= 0.0)
@constraint(m, e116, -515*x[1]-515*x[2]-515*x[3]-515*x[4]-515*x[5]-515*x[6]-515*x[7]-515*x[8] <= 0.0)
@constraint(m, e117, -499*x[1]-499*x[2]-499*x[3]-499*x[4]-499*x[5]-499*x[6]-499*x[7]-499*x[8] <= 0.0)
@constraint(m, e118, -301*x[1]-301*x[2]-301*x[3]-301*x[4]-301*x[5]-301*x[6]-301*x[7]-301*x[8] <= 0.0)
@constraint(m, e119, -227*x[1]-227*x[2]-227*x[3]-227*x[4]-227*x[5]-227*x[6]-227*x[7]-229*x[8] <= 0.0)
@constraint(m, e120, -454*x[1]-459*x[2]-454*x[3]-454*x[4]-454*x[5]-454*x[6]-454*x[7]-448*x[8] <= 0.0)
@constraint(m, e121, -146*x[1]-141*x[2]-141*x[3]-141*x[4]-146*x[5]-146*x[6]-146*x[7]-141*x[8] <= 0.0)
@constraint(m, e122, -269*x[1]-269*x[2]-269*x[3]-269*x[4]-269*x[5]-269*x[6]-269*x[7]-269*x[8] <= 0.0)
@constraint(m, e123, -389*x[1]-381*x[2]-381*x[3]-389*x[4]-381*x[5]-362*x[6]-362*x[7]-420*x[8] <= 0.0)
@constraint(m, e124, -259*x[1]-259*x[2]-259*x[3]-259*x[4]-259*x[5]-259*x[6]-259*x[7]-233*x[8] <= 0.0)
@constraint(m, e125, -382*x[1]-382*x[2]-380*x[3]-380*x[4]-382*x[5]-380*x[6]-380*x[7]-380*x[8] <= 0.0)
@constraint(m, e126, -157*x[1]-162*x[2]-162*x[3]-162*x[4]-162*x[5]-160*x[6]-157*x[7]-160*x[8] <= 0.0)
@constraint(m, e127, -137*x[1]-110*x[2]-120*x[3]-98*x[4]-147*x[5]-147*x[6]-120*x[7]-155*x[8] <= 0.0)
@constraint(m, e128, -420*x[1]-420*x[2]-420*x[3]-420*x[4]-420*x[5]-420*x[6]-420*x[7]-420*x[8] <= 0.0)
@constraint(m, e129, -140*x[1]-150*x[2]-140*x[3]-121*x[4]-140*x[5]-123*x[6]-140*x[7]-123*x[8] <= 0.0)
@constraint(m, e130, -427*x[1]-427*x[2]-427*x[3]-427*x[4]-427*x[5]-427*x[6]-427*x[7]-427*x[8] <= 0.0)
@constraint(m, e131, -514*x[1]-514*x[2]-514*x[3]-514*x[4]-514*x[5]-514*x[6]-514*x[7]-514*x[8] <= 0.0)
@constraint(m, e132, -304*x[1]-309*x[2]-309*x[3]-309*x[4]-304*x[5]-301*x[6]-304*x[7]-306*x[8] <= 0.0)
@constraint(m, e133, -223*x[1]-223*x[2]-223*x[3]-223*x[4]-223*x[5]-223*x[6]-223*x[7]-205*x[8] <= 0.0)
@constraint(m, e134, -371*x[1]-371*x[2]-371*x[3]-371*x[4]-371*x[5]-371*x[6]-371*x[7]-371*x[8] <= 0.0)
@constraint(m, e135, -227*x[1]-222*x[2]-222*x[3]-222*x[4]-222*x[5]-227*x[6]-206*x[7]-227*x[8] <= 0.0)
@constraint(m, e136, -413*x[1]-440*x[2]-440*x[3]-440*x[4]-413*x[5]-430*x[6]-442*x[7]-422*x[8] <= 0.0)
@constraint(m, e137, -24*x[1]-19*x[2]-19*x[3]-19*x[4]-24*x[5]-24*x[6]-43*x[7]-19*x[8] <= 0.0)
@constraint(m, e138, -485*x[1]-475*x[2]-475*x[3]-475*x[4]-475*x[5]-475*x[6]-475*x[7]-493*x[8] <= 0.0)
@constraint(m, e139, -488*x[1]-488*x[2]-488*x[3]-488*x[4]-488*x[5]-488*x[6]-488*x[7]-488*x[8] <= 0.0)
@constraint(m, e140, -531*x[1]-531*x[2]-531*x[3]-531*x[4]-531*x[5]-531*x[6]-531*x[7]-531*x[8] <= 0.0)
@constraint(m, e141, -576*x[1]-576*x[2]-576*x[3]-576*x[4]-576*x[5]-576*x[6]-576*x[7]-576*x[8] <= 0.0)
@constraint(m, e142, -214*x[1]-214*x[2]-214*x[3]-214*x[4]-214*x[5]-214*x[6]-214*x[7]-214*x[8] <= 0.0)
@constraint(m, e143, -89*x[1]-89*x[2]-89*x[3]-89*x[4]-89*x[5]-89*x[6]-89*x[7]-89*x[8] <= 0.0)
@constraint(m, e144, -470*x[1]-470*x[2]-470*x[3]-470*x[4]-470*x[5]-470*x[6]-470*x[7]-470*x[8] <= 0.0)
@constraint(m, e145, -402*x[1]-402*x[2]-402*x[3]-402*x[4]-402*x[5]-402*x[6]-402*x[7]-402*x[8] <= 0.0)
@constraint(m, e146, -333*x[1]-333*x[2]-333*x[3]-333*x[4]-333*x[5]-333*x[6]-333*x[7]-333*x[8] <= 0.0)
@constraint(m, e147, -54*x[1]-54*x[2]-85*x[3]-85*x[4]-54*x[5]-54*x[6]-15*x[7]-92*x[8] <= 0.0)
@constraint(m, e148, -223*x[1]-223*x[2]-223*x[3]-223*x[4]-223*x[5]-223*x[6]-223*x[7]-223*x[8] <= 0.0)
@constraint(m, e149, -515*x[1]-515*x[2]-515*x[3]-515*x[4]-515*x[5]-515*x[6]-515*x[7]-515*x[8] <= 0.0)
@constraint(m, e150, -491*x[1]-491*x[2]-491*x[3]-491*x[4]-491*x[5]-491*x[6]-491*x[7]-491*x[8] <= 0.0)
@constraint(m, e151, -245*x[1]-272*x[2]-272*x[3]-284*x[4]-245*x[5]-245*x[6]-272*x[7]-245*x[8] <= 0.0)
@constraint(m, e152, -172*x[1]-172*x[2]-172*x[3]-172*x[4]-172*x[5]-172*x[6]-172*x[7]-172*x[8] <= 0.0)
@constraint(m, e153, -255*x[1]-255*x[2]-255*x[3]-255*x[4]-255*x[5]-255*x[6]-255*x[7]-255*x[8] <= 0.0)
@constraint(m, e154, -185*x[1]-185*x[2]-185*x[3]-185*x[4]-185*x[5]-185*x[6]-185*x[7]-185*x[8] <= 0.0)
@constraint(m, e155, -220*x[1]-220*x[2]-220*x[3]-276*x[4]-220*x[5]-216*x[6]-201*x[7]-232*x[8] <= 0.0)
@constraint(m, e156, -169*x[1]-168*x[2]-168*x[3]-168*x[4]-180*x[5]-182*x[6]-169*x[7]-177*x[8] <= 0.0)
@constraint(m, e157, -532*x[1]-532*x[2]-532*x[3]-532*x[4]-532*x[5]-532*x[6]-532*x[7]-532*x[8] <= 0.0)
@constraint(m, e158, -181*x[1]-181*x[2]-181*x[3]-189*x[4]-181*x[5]-181*x[6]-181*x[7]-201*x[8] <= 0.0)
@constraint(m, e159, -225*x[1]-225*x[2]-225*x[3]-225*x[4]-253*x[5]-225*x[6]-221*x[7]-221*x[8] <= 0.0)
@constraint(m, e160, -294*x[1]-300*x[2]-311*x[3]-311*x[4]-272*x[5]-275*x[6]-294*x[7]-303*x[8] <= 0.0)
@constraint(m, e161, -337*x[1]-337*x[2]-337*x[3]-337*x[4]-337*x[5]-337*x[6]-337*x[7]-337*x[8] <= 0.0)
@constraint(m, e162, -157*x[1]-157*x[2]-157*x[3]-157*x[4]-157*x[5]-157*x[6]-157*x[7]-157*x[8] <= 0.0)
@constraint(m, e163, -405*x[1]-405*x[2]-405*x[3]-405*x[4]-405*x[5]-405*x[6]-409*x[7]-409*x[8] <= 0.0)
@constraint(m, e164, -327*x[1]-327*x[2]-358*x[3]-358*x[4]-296*x[5]-327*x[6]-288*x[7]-358*x[8] <= 0.0)
@constraint(m, e165, -84*x[1]-84*x[2]-84*x[3]-28*x[4]-84*x[5]-103*x[6]-84*x[7]-110*x[8] <= 0.0)
@constraint(m, e166, -331*x[1]-331*x[2]-331*x[3]-331*x[4]-331*x[5]-331*x[6]-331*x[7]-333*x[8] <= 0.0)
@constraint(m, e167, -188*x[1]-188*x[2]-188*x[3]-188*x[4]-188*x[5]-200*x[6]-188*x[7]-200*x[8] <= 0.0)
@constraint(m, e168, -283*x[1]-283*x[2]-283*x[3]-283*x[4]-241*x[5]-283*x[6]-283*x[7]-283*x[8] <= 0.0)
@constraint(m, e169, -107*x[1]-108*x[2]-120*x[3]-121*x[4]-53*x[5]-131*x[6]-101*x[7]-146*x[8] <= 0.0)
@constraint(m, e170, -394*x[1]-394*x[2]-394*x[3]-394*x[4]-394*x[5]-394*x[6]-394*x[7]-394*x[8] <= 0.0)
@constraint(m, e171, -258*x[1]-253*x[2]-253*x[3]-253*x[4]-253*x[5]-275*x[6]-258*x[7]-263*x[8] <= 0.0)
@constraint(m, e172, -352*x[1]-352*x[2]-321*x[3]-321*x[4]-352*x[5]-352*x[6]-352*x[7]-314*x[8] <= 0.0)
@constraint(m, e173, -111*x[1]-111*x[2]-111*x[3]-111*x[4]-111*x[5]-111*x[6]-111*x[7]-111*x[8] <= 0.0)
@constraint(m, e174, -573*x[1]-573*x[2]-573*x[3]-573*x[4]-583*x[5]-573*x[6]-559*x[7]-559*x[8] <= 0.0)
@constraint(m, e175, -84*x[1]-84*x[2]-84*x[3]-84*x[4]-84*x[5]-84*x[6]-78*x[7]-84*x[8] <= 0.0)
@constraint(m, e176, -561*x[1]-561*x[2]-561*x[3]-561*x[4]-561*x[5]-548*x[6]-561*x[7]-548*x[8] <= 0.0)
@constraint(m, e177, -250*x[1]-240*x[2]-250*x[3]-240*x[4]-250*x[5]-267*x[6]-250*x[7]-267*x[8] <= 0.0)
@constraint(m, e178, -204*x[1]-253*x[2]-193*x[3]-229*x[4]-193*x[5]-176*x[6]-207*x[7]-191*x[8] <= 0.0)
@constraint(m, e179, -217*x[1]-217*x[2]-217*x[3]-217*x[4]-217*x[5]-217*x[6]-219*x[7]-217*x[8] <= 0.0)
@constraint(m, e180, -538*x[1]-538*x[2]-538*x[3]-538*x[4]-538*x[5]-538*x[6]-538*x[7]-538*x[8] <= 0.0)
@constraint(m, e181, -100*x[1]-100*x[2]-100*x[3]-100*x[4]-100*x[5]-100*x[6]-100*x[7]-100*x[8] <= 0.0)
@constraint(m, e182, -485*x[1]-485*x[2]-485*x[3]-486*x[4]-485*x[5]-485*x[6]-485*x[7]-474*x[8] <= 0.0)
@constraint(m, e183, -558*x[1]-558*x[2]-558*x[3]-558*x[4]-558*x[5]-558*x[6]-558*x[7]-558*x[8] <= 0.0)
@constraint(m, e184, -393*x[1]-393*x[2]-393*x[3]-383*x[4]-383*x[5]-393*x[6]-393*x[7]-393*x[8] <= 0.0)
@constraint(m, e185, -144*x[1]-144*x[2]-156*x[3]-166*x[4]-136*x[5]-169*x[6]-156*x[7]-169*x[8] <= 0.0)
@constraint(m, e186, -322*x[1]-322*x[2]-322*x[3]-322*x[4]-322*x[5]-322*x[6]-322*x[7]-322*x[8] <= 0.0)
@constraint(m, e187, -465*x[1]-465*x[2]-465*x[3]-465*x[4]-465*x[5]-465*x[6]-465*x[7]-465*x[8] <= 0.0)
@constraint(m, e188, -157*x[1]-157*x[2]-157*x[3]-157*x[4]-157*x[5]-157*x[6]-157*x[7]-157*x[8] <= 0.0)
@constraint(m, e189, -373*x[1]-374*x[2]-374*x[3]-374*x[4]-374*x[5]-374*x[6]-425*x[7]-373*x[8] <= 0.0)
@constraint(m, e190, -114*x[1]-114*x[2]-114*x[3]-114*x[4]-114*x[5]-114*x[6]-114*x[7]-114*x[8] <= 0.0)
@constraint(m, e191, -104*x[1]-104*x[2]-104*x[3]-104*x[4]-104*x[5]-104*x[6]-104*x[7]-104*x[8] <= 0.0)
@constraint(m, e192, -437*x[1]-443*x[2]-443*x[3]-453*x[4]-453*x[5]-437*x[6]-437*x[7]-443*x[8] <= 0.0)
@constraint(m, e193, -213*x[1]-174*x[2]-174*x[3]-174*x[4]-174*x[5]-174*x[6]-174*x[7]-174*x[8] <= 0.0)
@constraint(m, e194, -6*x[1]-6*x[2]-6*x[3]-6*x[4]-6*x[5]-6*x[6]-6*x[7]-6*x[8] <= 0.0)
@constraint(m, e195, -158*x[1]-197*x[2]-197*x[3]-197*x[4]-197*x[5]-197*x[6]-197*x[7]-197*x[8] <= 0.0)
@constraint(m, e196, -515*x[1]-515*x[2]-515*x[3]-515*x[4]-515*x[5]-515*x[6]-515*x[7]-515*x[8] <= 0.0)
@constraint(m, e197, -24*x[1]-24*x[2]-24*x[3]-24*x[4]-24*x[5]-24*x[6]-24*x[7]-22*x[8] <= 0.0)
@constraint(m, e198, -524*x[1]-524*x[2]-524*x[3]-524*x[4]-524*x[5]-524*x[6]-524*x[7]-524*x[8] <= 0.0)
@constraint(m, e199, -56*x[1]-56*x[2]-67*x[3]-67*x[4]-56*x[5]-56*x[6]-56*x[7]-69*x[8] <= 0.0)
@constraint(m, e200, -395*x[1]-395*x[2]-395*x[3]-395*x[4]-395*x[5]-395*x[6]-434*x[7]-406*x[8] <= 0.0)
@constraint(m, e201, -588*x[1]-588*x[2]-588*x[3]-569*x[4]-577*x[5]-588*x[6]-588*x[7]-568*x[8] <= 0.0)
@constraint(m, e202, -429*x[1]-429*x[2]-429*x[3]-429*x[4]-429*x[5]-429*x[6]-429*x[7]-408*x[8] <= 0.0)
@constraint(m, e203, -275*x[1]-267*x[2]-267*x[3]-267*x[4]-267*x[5]-267*x[6]-275*x[7]-267*x[8] <= 0.0)
@constraint(m, e204, -431*x[1]-426*x[2]-431*x[3]-431*x[4]-431*x[5]-431*x[6]-431*x[7]-437*x[8] <= 0.0)
@constraint(m, e205, -181*x[1]-179*x[2]-179*x[3]-189*x[4]-189*x[5]-179*x[6]-179*x[7]-179*x[8] <= 0.0)
@constraint(m, e206, -477*x[1]-476*x[2]-476*x[3]-475*x[4]-476*x[5]-476*x[6]-476*x[7]-477*x[8] <= 0.0)
@constraint(m, e207, -322*x[1]-324*x[2]-324*x[3]-324*x[4]-324*x[5]-324*x[6]-324*x[7]-324*x[8] <= 0.0)
@constraint(m, e208, -272*x[1]-264*x[2]-264*x[3]-272*x[4]-264*x[5]-245*x[6]-245*x[7]-271*x[8] <= 0.0)
@constraint(m, e209, -529*x[1]-529*x[2]-529*x[3]-529*x[4]-529*x[5]-529*x[6]-529*x[7]-517*x[8] <= 0.0)
@constraint(m, e210, -217*x[1]-217*x[2]-217*x[3]-212*x[4]-207*x[5]-219*x[6]-217*x[7]-219*x[8] <= 0.0)
@constraint(m, e211, -124*x[1]-132*x[2]-132*x[3]-132*x[4]-132*x[5]-132*x[6]-124*x[7]-153*x[8] <= 0.0)
@constraint(m, e212, -565*x[1]-565*x[2]-565*x[3]-565*x[4]-565*x[5]-565*x[6]-565*x[7]-565*x[8] <= 0.0)
@constraint(m, e213, -600*x[1]-600*x[2]-600*x[3]-600*x[4]-600*x[5]-600*x[6]-600*x[7]-600*x[8] <= 0.0)
@constraint(m, e214, -343*x[1]-343*x[2]-343*x[3]-343*x[4]-343*x[5]-343*x[6]-343*x[7]-343*x[8] <= 0.0)
@constraint(m, e215, -251*x[1]-251*x[2]-251*x[3]-246*x[4]-251*x[5]-251*x[6]-251*x[7]-251*x[8] <= 0.0)
@constraint(m, e216, -381*x[1]-381*x[2]-381*x[3]-381*x[4]-381*x[5]-379*x[6]-381*x[7]-391*x[8] <= 0.0)
@constraint(m, e217, -325*x[1]-333*x[2]-333*x[3]-336*x[4]-344*x[5]-352*x[6]-352*x[7]-326*x[8] <= 0.0)
@constraint(m, e218, -33*x[1]-33*x[2]-33*x[3]-4*x[4]-33*x[5]-52*x[6]-72*x[7]-42*x[8] <= 0.0)
@constraint(m, e219, -145*x[1]-145*x[2]-145*x[3]-134*x[4]-134*x[5]-126*x[6]-126*x[7]-145*x[8] <= 0.0)
@constraint(m, e220, -340*x[1]-309*x[2]-340*x[3]-278*x[4]-340*x[5]-340*x[6]-340*x[7]-340*x[8] <= 0.0)
@constraint(m, e221, -127*x[1]-137*x[2]-137*x[3]-137*x[4]-168*x[5]-137*x[6]-70*x[7]-137*x[8] <= 0.0)
@constraint(m, e222, -366*x[1]-366*x[2]-366*x[3]-366*x[4]-366*x[5]-366*x[6]-401*x[7]-366*x[8] <= 0.0)
@constraint(m, e223, -406*x[1]-356*x[2]-406*x[3]-352*x[4]-406*x[5]-406*x[6]-406*x[7]-406*x[8] <= 0.0)
@constraint(m, e224, -160*x[1]-132*x[2]-132*x[3]-102*x[4]-159*x[5]-159*x[6]-132*x[7]-160*x[8] <= 0.0)
@constraint(m, e225, -365*x[1]-365*x[2]-365*x[3]-349*x[4]-376*x[5]-384*x[6]-384*x[7]-365*x[8] <= 0.0)
@constraint(m, e226, -311*x[1]-311*x[2]-311*x[3]-311*x[4]-311*x[5]-311*x[6]-311*x[7]-311*x[8] <= 0.0)
@constraint(m, e227, -246*x[1]-246*x[2]-246*x[3]-246*x[4]-246*x[5]-246*x[6]-246*x[7]-246*x[8] <= 0.0)
@constraint(m, e228, -398*x[1]-398*x[2]-398*x[3]-398*x[4]-398*x[5]-398*x[6]-398*x[7]-416*x[8] <= 0.0)
@constraint(m, e229, -421*x[1]-420*x[2]-420*x[3]-420*x[4]-432*x[5]-432*x[6]-421*x[7]-416*x[8] <= 0.0)
@constraint(m, e230, -312*x[1]-340*x[2]-340*x[3]-335*x[4]-340*x[5]-340*x[6]-340*x[7]-340*x[8] <= 0.0)
@constraint(m, e231, -381*x[1]-381*x[2]-381*x[3]-381*x[4]-381*x[5]-381*x[6]-381*x[7]-381*x[8] <= 0.0)
@constraint(m, e232, -414*x[1]-414*x[2]-414*x[3]-414*x[4]-414*x[5]-414*x[6]-414*x[7]-414*x[8] <= 0.0)
@constraint(m, e233, -432*x[1]-432*x[2]-432*x[3]-432*x[4]-432*x[5]-432*x[6]-432*x[7]-432*x[8] <= 0.0)
@constraint(m, e234, -96*x[1]-96*x[2]-96*x[3]-96*x[4]-96*x[5]-96*x[6]-96*x[7]-96*x[8] <= 0.0)
@constraint(m, e235, -133*x[1]-171*x[2]-171*x[3]-171*x[4]-171*x[5]-171*x[6]-171*x[7]-171*x[8] <= 0.0)
@constraint(m, e236, -239*x[1]-240*x[2]-240*x[3]-258*x[4]-240*x[5]-240*x[6]-240*x[7]-231*x[8] <= 0.0)
@constraint(m, e237, -415*x[1]-414*x[2]-414*x[3]-413*x[4]-414*x[5]-414*x[6]-414*x[7]-415*x[8] <= 0.0)
@constraint(m, e238, -221*x[1]-221*x[2]-221*x[3]-221*x[4]-221*x[5]-221*x[6]-221*x[7]-221*x[8] <= 0.0)
@constraint(m, e239, -470*x[1]-503*x[2]-503*x[3]-495*x[4]-475*x[5]-507*x[6]-489*x[7]-496*x[8] <= 0.0)
@constraint(m, e240, -464*x[1]-464*x[2]-464*x[3]-472*x[4]-464*x[5]-464*x[6]-464*x[7]-484*x[8] <= 0.0)
@constraint(m, e241, -216*x[1]-255*x[2]-255*x[3]-255*x[4]-255*x[5]-255*x[6]-255*x[7]-255*x[8] <= 0.0)
@constraint(m, e242, -239*x[1]-250*x[2]-250*x[3]-242*x[4]-250*x[5]-250*x[6]-239*x[7]-230*x[8] <= 0.0)
@constraint(m, e243, -270*x[1]-270*x[2]-270*x[3]-253*x[4]-298*x[5]-270*x[6]-270*x[7]-270*x[8] <= 0.0)
@constraint(m, e244, -238*x[1]-227*x[2]-227*x[3]-227*x[4]-227*x[5]-227*x[6]-238*x[7]-235*x[8] <= 0.0)
@constraint(m, e245, -410*x[1]-410*x[2]-410*x[3]-410*x[4]-410*x[5]-410*x[6]-410*x[7]-410*x[8] <= 0.0)
@constraint(m, e246, -292*x[1]-292*x[2]-294*x[3]-294*x[4]-292*x[5]-294*x[6]-294*x[7]-294*x[8] <= 0.0)
@constraint(m, e247, -103*x[1]-103*x[2]-103*x[3]-103*x[4]-103*x[5]-103*x[6]-103*x[7]-103*x[8] <= 0.0)
@constraint(m, e248, -150*x[1]-150*x[2]-150*x[3]-150*x[4]-150*x[5]-141*x[6]-150*x[7]-141*x[8] <= 0.0)
@constraint(m, e249, -324*x[1]-324*x[2]-324*x[3]-324*x[4]-324*x[5]-324*x[6]-324*x[7]-324*x[8] <= 0.0)
@constraint(m, e250, -220*x[1]-220*x[2]-220*x[3]-220*x[4]-220*x[5]-220*x[6]-220*x[7]-220*x[8] <= 0.0)
@constraint(m, e251, -14*x[1]-14*x[2]-12*x[3]-12*x[4]-20*x[5]-12*x[6]-12*x[7]-12*x[8] <= 0.0)
@constraint(m, e252, -147*x[1]-147*x[2]-147*x[3]-147*x[4]-147*x[5]-147*x[6]-147*x[7]-147*x[8] <= 0.0)
@constraint(m, e253, -360*x[1]-360*x[2]-360*x[3]-360*x[4]-360*x[5]-360*x[6]-360*x[7]-360*x[8] <= 0.0)
@constraint(m, e254, -306*x[1]-306*x[2]-306*x[3]-306*x[4]-306*x[5]-306*x[6]-302*x[7]-280*x[8] <= 0.0)
@constraint(m, e255, -466*x[1]-466*x[2]-466*x[3]-466*x[4]-466*x[5]-466*x[6]-466*x[7]-466*x[8] <= 0.0)
@constraint(m, e256, -251*x[1]-251*x[2]-251*x[3]-251*x[4]-251*x[5]-251*x[6]-251*x[7]-245*x[8] <= 0.0)
@constraint(m, e257, -264*x[1]-264*x[2]-264*x[3]-264*x[4]-264*x[5]-264*x[6]-264*x[7]-264*x[8] <= 0.0)
@constraint(m, e258, -403*x[1]-403*x[2]-403*x[3]-403*x[4]-403*x[5]-403*x[6]-403*x[7]-403*x[8] <= 0.0)
@constraint(m, e259, -347*x[1]-347*x[2]-347*x[3]-347*x[4]-341*x[5]-347*x[6]-347*x[7]-347*x[8] <= 0.0)
@constraint(m, e260, -99*x[1]-99*x[2]-99*x[3]-99*x[4]-99*x[5]-99*x[6]-99*x[7]-99*x[8] <= 0.0)
@constraint(m, e261, -123*x[1]-123*x[2]-123*x[3]-123*x[4]-123*x[5]-123*x[6]-127*x[7]-123*x[8] <= 0.0)
@constraint(m, e262, -173*x[1]-175*x[2]-175*x[3]-175*x[4]-175*x[5]-175*x[6]-175*x[7]-175*x[8] <= 0.0)
@constraint(m, e263, -554*x[1]-552*x[2]-552*x[3]-552*x[4]-552*x[5]-552*x[6]-552*x[7]-552*x[8] <= 0.0)
@constraint(m, e264, -222*x[1]-222*x[2]-222*x[3]-222*x[4]-204*x[5]-222*x[6]-222*x[7]-222*x[8] <= 0.0)
@constraint(m, e265, -448*x[1]-448*x[2]-448*x[3]-448*x[4]-448*x[5]-448*x[6]-448*x[7]-448*x[8] <= 0.0)
@constraint(m, e266, -279*x[1]-283*x[2]-271*x[3]-271*x[4]-314*x[5]-278*x[6]-267*x[7]-278*x[8] <= 0.0)
@constraint(m, e267, -154*x[1]-150*x[2]-150*x[3]-158*x[4]-119*x[5]-144*x[6]-131*x[7]-166*x[8] <= 0.0)
@constraint(m, e268, -451*x[1]-451*x[2]-451*x[3]-451*x[4]-451*x[5]-451*x[6]-451*x[7]-451*x[8] <= 0.0)
@constraint(m, e269, -291*x[1]-291*x[2]-291*x[3]-291*x[4]-291*x[5]-291*x[6]-291*x[7]-291*x[8] <= 0.0)
@constraint(m, e270, -83*x[1]-83*x[2]-83*x[3]-83*x[4]-83*x[5]-91*x[6]-91*x[7]-90*x[8] <= 0.0)
@constraint(m, e271, -171*x[1]-171*x[2]-171*x[3]-171*x[4]-171*x[5]-171*x[6]-171*x[7]-171*x[8] <= 0.0)
@constraint(m, e272, -70*x[1]-65*x[2]-70*x[3]-62*x[4]-70*x[5]-70*x[6]-70*x[7]-56*x[8] <= 0.0)
@constraint(m, e273, -317*x[1]-312*x[2]-319*x[3]-319*x[4]-294*x[5]-318*x[6]-329*x[7]-318*x[8] <= 0.0)
@constraint(m, e274, -540*x[1]-540*x[2]-540*x[3]-540*x[4]-540*x[5]-540*x[6]-540*x[7]-540*x[8] <= 0.0)
@constraint(m, e275, -330*x[1]-330*x[2]-330*x[3]-330*x[4]-330*x[5]-330*x[6]-330*x[7]-330*x[8] <= 0.0)
@constraint(m, e276, -288*x[1]-288*x[2]-288*x[3]-288*x[4]-288*x[5]-288*x[6]-288*x[7]-281*x[8] <= 0.0)
@constraint(m, e277, -429*x[1]-429*x[2]-429*x[3]-428*x[4]-429*x[5]-429*x[6]-429*x[7]-478*x[8] <= 0.0)
@constraint(m, e278, -225*x[1]-225*x[2]-225*x[3]-215*x[4]-246*x[5]-225*x[6]-228*x[7]-225*x[8] <= 0.0)
@NLconstraint(m, e279, -(6526.5*x[1]*x[1]+2524*x[1]*x[2]+869*x[1]*x[3]+2342*x[1]*x[4]-4967*x[1]*x[5]+2742*x[1]*x[6]+12580*x[1]*x[7]-1574*x[1]*x[8]+4782*x[2]*x[2]+4394*x[2]*x[3]+16968*x[2]*x[4]-6110*x[2]*x[5]+1727*x[2]*x[6]+5191*x[2]*x[7]-1101*x[2]*x[8]+5534.5*x[3]*x[3]+15583*x[3]*x[4]-5984*x[3]*x[5]+1344*x[3]*x[6]+392*x[3]*x[7]+4540*x[3]*x[8]+27412*x[4]*x[4]-10447*x[4]*x[5]-3459*x[4]*x[6]+7868*x[4]*x[7]-6775*x[4]*x[8]+3609.5*x[5]*x[5]-4378*x[5]*x[6]-7789*x[5]*x[7]-1994*x[5]*x[8]+3214.5*x[6]*x[6]+6769*x[6]*x[7]+4433*x[6]*x[8]+22341.5*x[7]*x[7]-19349*x[7]*x[8]+11288.5*x[8]*x[8]+546.88509078*x[1]+122.12095223*x[3]+616.11938925*x[4]+586.52942284*x[5]+586.52942284*x[6]+953.05364036*x[7]+1585.0340121*x[8])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
