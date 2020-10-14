within BIOMD316;
class Class_elmt_e1 ""

    Boolean trigger;
    Real    value_elmt_X;

    equation
        trigger = (time >= 3.0);
        algorithm
            value_elmt_X := 1.0;
end Class_elmt_e1;
