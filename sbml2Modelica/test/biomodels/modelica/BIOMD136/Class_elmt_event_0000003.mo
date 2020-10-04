within BIOMD136;
class Class_elmt_event_0000003 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = ((time > 70.0) and (time < 75.0));
        algorithm
            value_elmt_i := (-6.0);
end Class_elmt_event_0000003;
