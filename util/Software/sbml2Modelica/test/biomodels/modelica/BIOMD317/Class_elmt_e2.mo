within BIOMD317;
class Class_elmt_e2 ""

    Boolean trigger;
    Real    value_elmt_FX;

    equation
        trigger = (time >= 6.0);
        algorithm
            value_elmt_FX := 0.0;
end Class_elmt_e2;
