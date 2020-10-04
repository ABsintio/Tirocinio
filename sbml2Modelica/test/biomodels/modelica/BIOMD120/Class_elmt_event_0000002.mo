within BIOMD120;
class Class_elmt_event_0000002 "Resetting r(l) to 0"

    Boolean trigger;
    Real    value_elmt_r_l;

    equation
        trigger = (time >= 24.0);
        algorithm
            value_elmt_r_l := 0.0;
end Class_elmt_event_0000002;
