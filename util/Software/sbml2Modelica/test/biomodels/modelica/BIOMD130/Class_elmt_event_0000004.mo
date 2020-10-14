within BIOMD130;
class Class_elmt_event_0000004 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = (((time >= 11.0) and (time <= 14.0)) or ((time >= 14.0) and (time < 16.0)));
        algorithm
            value_elmt_i := 0.0;
end Class_elmt_event_0000004;
