within BIOMD535;
class Class_elmt_Week0 "Week0"

    input Real elmt_ModelValue_48;
    input Real elmt_mwf345ed7a_0622_403c_b816_c8749a2c9ded;
    Boolean trigger;
    Real    value_elmt_mwf345ed7a_0622_403c_b816_c8749a2c9ded;

    equation
        trigger = (time >= 0.1);
        algorithm
            value_elmt_mwf345ed7a_0622_403c_b816_c8749a2c9ded := (pre(elmt_mwf345ed7a_0622_403c_b816_c8749a2c9ded) + (elmt_ModelValue_48 * 2.346));
end Class_elmt_Week0;
