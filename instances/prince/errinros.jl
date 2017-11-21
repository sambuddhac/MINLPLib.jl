using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1]-31.36* (x[2])^2)^2+ (x[2]-92.16* (x[3])^2)^2+ (x[3]-31.36* (x[4])^2)^2+ (x[4]-49* (x[5])^2)^2+ (x[5]-23.04* (x[6])^2)^2+ (x[6]-81* (x[7])^2)^2+ (x[7]-23.04* (x[8])^2)^2+ (x[8]-16* (x[9])^2)^2+ (x[9]-19.36* (x[10])^2)^2+ (x[10]-36* (x[11])^2)^2+ (x[11]-40.96* (x[12])^2)^2+ (x[12]-25* (x[13])^2)^2+ (x[13]-25* (x[14])^2)^2+ (x[14]-23.04* (x[15])^2)^2+ (x[15]-23.04* (x[16])^2)^2+ (x[16]-31.36* (x[17])^2)^2+ (x[17]-4* (x[18])^2)^2+ (x[18]-4* (x[19])^2)^2+ (x[19]-25* (x[20])^2)^2+ (x[20]-51.84* (x[21])^2)^2+ (x[21]-9* (x[22])^2)^2+ (x[22]-25* (x[23])^2)^2+ (x[23]-31.36* (x[24])^2)^2+ (x[24]-40.96* (x[25])^2)^2+ (x[25]-64* (x[26])^2)^2+ (x[26]-16* (x[27])^2)^2+ (x[27]-40.96* (x[28])^2)^2+ (x[28]-25* (x[29])^2)^2+ (x[29]-121* (x[30])^2)^2+ (x[30]-25* (x[31])^2)^2+ (x[31]-25* (x[32])^2)^2+ (x[32]-25* (x[33])^2)^2+ (x[33]-144* (x[34])^2)^2+ (x[34]-36* (x[35])^2)^2+ (x[35]-64* (x[36])^2)^2+ (x[36]-25* (x[37])^2)^2+ (x[37]-31.36* (x[38])^2)^2+ (x[38]-51.84* (x[39])^2)^2+ (x[39]-36* (x[40])^2)^2+ (x[40]-77.44* (x[41])^2)^2+ (x[41]-31.36* (x[42])^2)^2+ (x[42]-36* (x[43])^2)^2+ (x[43]-25* (x[44])^2)^2+ (x[44]-64* (x[45])^2)^2+ (x[45]-36* (x[46])^2)^2+ (x[46]-25* (x[47])^2)^2+ (x[47]-31.36* (x[48])^2)^2+ (x[48]-5.76* (x[49])^2)^2+ (x[49]-36* (x[50])^2)^2+ ((-1)+x[2])^2+ ((-1)+x[3])^2+ ((-1)+x[4])^2+ ((-1)+x[5])^2+ ((-1)+x[6])^2+ ((-1)+x[7])^2+ ((-1)+x[8])^2+ ((-1)+x[9])^2+ ((-1)+x[10])^2+ ((-1)+x[11])^2+ ((-1)+x[12])^2+ ((-1)+x[13])^2+ ((-1)+x[14])^2+ ((-1)+x[15])^2+ ((-1)+x[16])^2+ ((-1)+x[17])^2+ ((-1)+x[18])^2+ ((-1)+x[19])^2+ ((-1)+x[20])^2+ ((-1)+x[21])^2+ ((-1)+x[22])^2+ ((-1)+x[23])^2+ ((-1)+x[24])^2+ ((-1)+x[25])^2+ ((-1)+x[26])^2+ ((-1)+x[27])^2+ ((-1)+x[28])^2+ ((-1)+x[29])^2+ ((-1)+x[30])^2+ ((-1)+x[31])^2+ ((-1)+x[32])^2+ ((-1)+x[33])^2+ ((-1)+x[34])^2+ ((-1)+x[35])^2+ ((-1)+x[36])^2+ ((-1)+x[37])^2+ ((-1)+x[38])^2+ ((-1)+x[39])^2+ ((-1)+x[40])^2+ ((-1)+x[41])^2+ ((-1)+x[42])^2+ ((-1)+x[43])^2+ ((-1)+x[44])^2+ ((-1)+x[45])^2+ ((-1)+x[46])^2+ ((-1)+x[47])^2+ ((-1)+x[48])^2+ ((-1)+x[49])^2+ ((-1)+x[50])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
