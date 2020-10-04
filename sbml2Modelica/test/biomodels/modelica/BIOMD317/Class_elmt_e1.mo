within BIOMD317;
class Class_elmt_e1 ""

    Boolean trigger;
    Real    value_elmt_FX;

    equation
        trigger = (time >= 1.0);
        algorithm
            value_elmt_FX := 1.0;
end Class_elmt_e1;
