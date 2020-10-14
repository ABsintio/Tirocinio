within BIOMD088;
class Class_elmt_event_0000001 ""

    Boolean trigger;
    Real    value_elmt_s2;

    equation
        trigger = (time >= 300.0);
        algorithm
            value_elmt_s2 := 0.01;
end Class_elmt_event_0000001;
