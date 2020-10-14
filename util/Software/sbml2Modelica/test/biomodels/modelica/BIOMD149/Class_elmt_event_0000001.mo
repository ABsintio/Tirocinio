within BIOMD149;
class Class_elmt_event_0000001 ""

    Boolean trigger;
    Real    value_elmt_W;

    equation
        trigger = ((time >= 500.0) and (time <= 1000.0));
        algorithm
            value_elmt_W := 1.0;
end Class_elmt_event_0000001;
