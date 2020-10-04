within BIOMD130;
class Class_elmt_event_0000003 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = (((time > 70.0) and (time < 72.0)) or ((time > 80.0) and (time < 82.0)));
        algorithm
            value_elmt_i := 9.0;
end Class_elmt_event_0000003;
