within BIOMD095;
class Class_elmt_event_0000001 ""

    Boolean trigger;
    Real    value_elmt_ld;

    equation
        trigger = (time > 30.0);
        algorithm
            value_elmt_ld := 1.0;
end Class_elmt_event_0000001;
