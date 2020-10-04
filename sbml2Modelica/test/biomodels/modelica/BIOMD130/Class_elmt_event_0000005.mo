within BIOMD130;
class Class_elmt_event_0000005 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = (((time >= 16.0) and (time <= 70.0)) or ((time >= 72.0) and (time <= 80.0)) or (time >= 82.0));
        algorithm
            value_elmt_i := 0.0;
end Class_elmt_event_0000005;
