within BIOMD318;
class Class_elmt_e1 ""

    Boolean trigger;
    Real    value_elmt_S;

    equation
        trigger = (time > 0.0);
        algorithm
            value_elmt_S := 20.0;
end Class_elmt_e1;
