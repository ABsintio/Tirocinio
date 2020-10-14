within BIOMD597;
class Class_elmt_event_1 "event_0"

    Boolean trigger;
    Real    value_elmt_offsetStep1;
    Real    value_elmt_amplitudeStep1;

    equation
        trigger = (time > 314.0);
        algorithm
            value_elmt_offsetStep1 := 1.0;
            value_elmt_amplitudeStep1 := 0.0;
end Class_elmt_event_1;
