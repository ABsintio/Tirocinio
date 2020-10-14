within BIOMD316;
class Class_elmt_e2 ""

    Boolean trigger;
    Real    value_elmt_X;

    equation
        trigger = (time >= 3.5);
        algorithm
            value_elmt_X := 0.0;
end Class_elmt_e2;
