within BIOMD129;
class Class_elmt_event_0000003 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = (time >= 250.0);
        algorithm
            value_elmt_i := 80.0;
end Class_elmt_event_0000003;
