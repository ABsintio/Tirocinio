within BIOMD120;
class Class_elmt_event_0000001 "Setting r(l) to 1 "

    Boolean trigger;
    Real    value_elmt_r_l;

    equation
        trigger = (time >= 10.0);
        algorithm
            value_elmt_r_l := 1.0;
end Class_elmt_event_0000001;
