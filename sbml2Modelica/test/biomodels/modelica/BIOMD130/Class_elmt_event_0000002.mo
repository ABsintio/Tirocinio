within BIOMD130;
class Class_elmt_event_0000002 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = (((time > 9.0) and (time < 11.0)) or ((time > 14.0) and (time < 16.0)));
        algorithm
            value_elmt_i := 9.0;
end Class_elmt_event_0000002;
