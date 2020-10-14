within BIOMD422;
class Class_elmt_AddGA4 "AddGA4"

    input Real elmt_appliedGA4;
    input Real elmt_tGA4on;
    Boolean trigger;
    Real    value_elmt_omegaGA4;

    equation
        trigger = (time > elmt_tGA4on);
        algorithm
            value_elmt_omegaGA4 := elmt_appliedGA4;
end Class_elmt_AddGA4;
