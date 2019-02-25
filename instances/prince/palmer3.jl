using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (64.87939-x[1]/(2.749172911969/x[3]+x[2])-2.749172911969*x[4])^2+ (50.46046-x[1]/(2.467400073616/x[3]+x[2])-2.467400073616*x[4])^2+ (28.2034-x[1]/(1.949550365169/x[3]+x[2])-1.949550365169*x[4])^2+ (13.4575-x[1]/(1.4926241929/x[3]+x[2])-1.4926241929*x[4])^2+ (4.6547-x[1]/(1.096623651204/x[3]+x[2])-1.096623651204*x[4])^2+ (0.59447-x[1]/(0.761544202225/x[3]+x[2])-0.761544202225*x[4])^2+ ((-x[1]/(0.587569773961/x[3]+x[2]))-0.587569773961*x[4])^2+ (0.2177-x[1]/(0.487388289424/x[3]+x[2])-0.487388289424*x[4])^2+ (2.3029-x[1]/(0.274155912801/x[3]+x[2])-0.274155912801*x[4])^2+ (5.5191-x[1]/(0.121847072356/x[3]+x[2])-0.121847072356*x[4])^2+ (8.5519-x[1]/(0.030461768089/x[3]+x[2])-0.030461768089*x[4])^2+ (9.8919-x[1]/x[2])^2+ (8.5519-x[1]/(0.030461768089/x[3]+x[2])-0.030461768089*x[4])^2+ (5.5191-x[1]/(0.121847072356/x[3]+x[2])-0.121847072356*x[4])^2+ (2.3029-x[1]/(0.274155912801/x[3]+x[2])-0.274155912801*x[4])^2+ (0.2177-x[1]/(0.487388289424/x[3]+x[2])-0.487388289424*x[4])^2+ ((-x[1]/(0.587569773961/x[3]+x[2]))-0.587569773961*x[4])^2+ (0.59447-x[1]/(0.761544202225/x[3]+x[2])-0.761544202225*x[4])^2+ (4.6547-x[1]/(1.096623651204/x[3]+x[2])-1.096623651204*x[4])^2+ (13.4575-x[1]/(1.4926241929/x[3]+x[2])-1.4926241929*x[4])^2+ (28.2034-x[1]/(1.949550365169/x[3]+x[2])-1.949550365169*x[4])^2+ (50.46046-x[1]/(2.467400073616/x[3]+x[2])-2.467400073616*x[4])^2+ (64.87939-x[1]/(2.749172911969/x[3]+x[2])-2.749172911969*x[4])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.