within BIOMD316;
class Class_elmt_e4 ""

    Boolean trigger;
    Real    value_elmt_X;

    equation
        trigger = (time >= 15.0);
        algorithm
            value_elmt_X := 0.0;
end Class_elmt_e4;
