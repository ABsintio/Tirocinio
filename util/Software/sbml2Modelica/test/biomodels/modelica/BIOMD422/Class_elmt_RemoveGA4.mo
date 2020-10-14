within BIOMD422;
class Class_elmt_RemoveGA4 "RemoveGA4"

    input Real elmt_tGA4off;
    Boolean trigger;
    Real    value_elmt_omegaGA4;

    equation
        trigger = (time > elmt_tGA4off);
        algorithm
            value_elmt_omegaGA4 := 0.0;
end Class_elmt_RemoveGA4;
