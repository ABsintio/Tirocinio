within BIOMD135;
class Class_elmt_event_0000002 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = ((time > 20.0) and (time < 25.0));
        algorithm
            value_elmt_i := 2.0;
end Class_elmt_event_0000002;
