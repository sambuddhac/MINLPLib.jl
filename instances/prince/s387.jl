using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(100* (x[1])^2+100* (x[2])^2+10* (x[3])^2+5* (x[4])^2+10* (x[5])^2+25* (x[8])^2+10* (x[10])^2+55* (x[11])^2+5* (x[12])^2+45* (x[13])^2+20* (x[14])^2) >= -385.0)
@NLconstraint(m, e2, -(90* (x[1])^2+100* (x[2])^2+10* (x[3])^2+35* (x[4])^2+20* (x[5])^2+5* (x[6])^2+35* (x[8])^2+55* (x[9])^2+25* (x[10])^2+20* (x[11])^2+40* (x[13])^2+25* (x[14])^2+10* (x[15])^2) >= -470.0)
@NLconstraint(m, e3, -(70* (x[1])^2+50* (x[2])^2+55* (x[4])^2+25* (x[5])^2+100* (x[6])^2+40* (x[7])^2+50* (x[8])^2+30* (x[10])^2+60* (x[11])^2+10* (x[12])^2+30* (x[13])^2+40* (x[15])^2) >= -560.0)
@NLconstraint(m, e4, -(50* (x[1])^2+65* (x[4])^2+35* (x[5])^2+100* (x[6])^2+36* (x[7])^2+60* (x[8])^2+15* (x[10])^2+75* (x[12])^2+35* (x[13])^2+30* (x[14])^2+65* (x[15])^2) >= -565.0)
@NLconstraint(m, e5, -(50* (x[1])^2+10* (x[2])^2+70* (x[3])^2+60* (x[4])^2+45* (x[5])^2+45* (x[6])^2+35* (x[8])^2+65* (x[9])^2+5* (x[10])^2+75* (x[11])^2+100* (x[12])^2+75* (x[13])^2+10* (x[14])^2) >= -645.0)
@NLconstraint(m, e6, -(40* (x[1])^2+50* (x[3])^2+95* (x[4])^2+50* (x[5])^2+35* (x[6])^2+10* (x[7])^2+60* (x[8])^2+45* (x[10])^2+15* (x[11])^2+20* (x[12])^2+5* (x[14])^2+5* (x[15])^2) >= -430.0)
@NLconstraint(m, e7, -(30* (x[1])^2+60* (x[2])^2+30* (x[3])^2+90* (x[4])^2+30* (x[6])^2+5* (x[7])^2+25* (x[8])^2+70* (x[10])^2+20* (x[11])^2+25* (x[12])^2+70* (x[13])^2+15* (x[14])^2+15* (x[15])^2) >= -485.0)
@NLconstraint(m, e8, -(20* (x[1])^2+30* (x[2])^2+40* (x[3])^2+25* (x[4])^2+40* (x[5])^2+25* (x[6])^2+15* (x[7])^2+10* (x[8])^2+80* (x[9])^2+20* (x[10])^2+30* (x[11])^2+30* (x[12])^2+5* (x[13])^2+65* (x[14])^2+20* (x[15])^2) >= -455.0)
@NLconstraint(m, e9, -(10* (x[1])^2+70* (x[2])^2+10* (x[3])^2+35* (x[4])^2+25* (x[5])^2+65* (x[6])^2+30* (x[8])^2+25* (x[11])^2+15* (x[13])^2+50* (x[14])^2+55* (x[15])^2) >= -390.0)
@NLconstraint(m, e10, -(5* (x[1])^2+10* (x[2])^2+100* (x[3])^2+5* (x[4])^2+20* (x[5])^2+5* (x[6])^2+10* (x[7])^2+35* (x[8])^2+95* (x[9])^2+70* (x[10])^2+20* (x[11])^2+10* (x[12])^2+35* (x[13])^2+10* (x[14])^2+30* (x[15])^2) >= -460.0)
@NLconstraint(m, e11, 0.5*( ((-2)+x[1])^2+2* ((-2)+x[2])^2+3* ((-2)+x[3])^2+4* ((-2)+x[4])^2+5* ((-2)+x[5])^2+6* ((-2)+x[6])^2+7* ((-2)+x[7])^2+8* ((-2)+x[8])^2+9* ((-2)+x[9])^2+10* ((-2)+x[10])^2+11* ((-2)+x[11])^2+12* ((-2)+x[12])^2+13* ((-2)+x[13])^2+14* ((-2)+x[14])^2+15* ((-2)+x[15])^2) >= 61.0)
@constraint(m, e12, 486*x[1]+640*x[2]+758*x[3]+776*x[4]+477*x[5]+707*x[6]+175*x[7]+619*x[8]+627*x[9]+614*x[10]+475*x[11]+377*x[12]+524*x[13]+468*x[14]+529*x[15]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
