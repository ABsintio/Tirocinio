within BIOMD133;
class Class_elmt_event_0000005 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = (((time >= 284.0) and (time <= 320.0)) or (time >= 324.0));
        algorithm
            value_elmt_i := 0.0;
end Class_elmt_event_0000005;
