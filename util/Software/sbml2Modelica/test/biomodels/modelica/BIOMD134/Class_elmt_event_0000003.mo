within BIOMD134;
class Class_elmt_event_0000003 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = (time >= 13.0);
        algorithm
            value_elmt_i := 0.0;
end Class_elmt_event_0000003;
