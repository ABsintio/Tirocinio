within BIOMD126;
class Class_elmt_event_0000002 ""

    Boolean trigger;
    Real    value_elmt_v;

    equation
        trigger = (time > 20.0);
        algorithm
            value_elmt_v := (-80.0);
end Class_elmt_event_0000002;
