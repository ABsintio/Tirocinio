within BIOMD265;
class Class_elmt_r31Ifpart1 "r31Ifpart1"

    input Real elmt_var1;
    input Real elmt_var5;
    input Real elmt_var4;
    input Real elmt_var6;
    Boolean trigger;
    Real    value_elmt_r31switch;

    equation
        trigger = (((elmt_var4 + elmt_var5 + elmt_var6) * Functions.pow((elmt_var1 + elmt_var4 + elmt_var5 + elmt_var6), (-1.0))) > 0.8);
        algorithm
            value_elmt_r31switch := 0.0;
end Class_elmt_r31Ifpart1;
