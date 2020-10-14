within BIOMD129;
class Class_elmt_event_0000002 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = ((time >= 50.0) and (time <= 250.0));
        algorithm
            value_elmt_i := 75.0;
end Class_elmt_event_0000002;
