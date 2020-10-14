within BIOMD134;
class Class_elmt_event_0000002 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = ((time > 10.0) and (time < 13.0));
        algorithm
            value_elmt_i := 7.04;
end Class_elmt_event_0000002;
