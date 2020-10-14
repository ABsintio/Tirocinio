within BIOMD318;
class Class_elmt_e2 ""

    Boolean trigger;
    Real    value_elmt_S;

    equation
        trigger = (time > 5.0);
        algorithm
            value_elmt_S := 1.0;
end Class_elmt_e2;
