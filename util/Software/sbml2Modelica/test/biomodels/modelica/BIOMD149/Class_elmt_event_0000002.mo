within BIOMD149;
class Class_elmt_event_0000002 ""

    Boolean trigger;
    Real    value_elmt_W;

    equation
        trigger = (time > 1000.0);
        algorithm
            value_elmt_W := 0.0;
end Class_elmt_event_0000002;
