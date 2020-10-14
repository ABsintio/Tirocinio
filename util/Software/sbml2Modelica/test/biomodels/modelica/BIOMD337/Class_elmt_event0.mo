within BIOMD337;
class Class_elmt_event0 ""

    Boolean trigger;
    Real    value_elmt_N2;

    equation
        trigger = (time >= 15.0);
        algorithm
            value_elmt_N2 := 0.01;
end Class_elmt_event0;
