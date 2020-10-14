within BIOMD136;
class Class_elmt_event_0000002 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = (((time > 10.0) and (time < 15.0)) or ((time > 80.0) and (time < 85.0)));
        algorithm
            value_elmt_i := 1.0;
end Class_elmt_event_0000002;
