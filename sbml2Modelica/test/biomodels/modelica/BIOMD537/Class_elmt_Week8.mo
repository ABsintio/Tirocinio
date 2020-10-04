within BIOMD537;
class Class_elmt_Week8 "Week8"

    input Real elmt_mwf345ed7a_0622_403c_b816_c8749a2c9ded;
    input Real elmt_ModelValue_98;
    input Real elmt_ModelValue_99;
    Boolean trigger;
    Boolean execution;
    Boolean active;
    Real    trigtime;
    Real    delta;
    Real    value_elmt_mwf345ed7a_0622_403c_b816_c8749a2c9ded;

    equation
        trigger = (time >= 1344.0);
        when trigger then
            trigtime = time;
            delta = 0.0;
            active = true;
            execution = delta <= 0.0;
        elsewhen time >= trigtime + delta then
            execution = pre(active);
            active = false;
        elsewhen not trigger then
            active = false;
        end when;

        algorithm
            when execution then
                value_elmt_mwf345ed7a_0622_403c_b816_c8749a2c9ded := (pre(elmt_mwf345ed7a_0622_403c_b816_c8749a2c9ded) + ((elmt_ModelValue_99 + elmt_ModelValue_98) * 2.346));
            end when;
end Class_elmt_Week8;
