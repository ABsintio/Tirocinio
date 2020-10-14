within BIOMD133;
class Class_elmt_event_0000004 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = (((time >= 44.0) and (time <= 60.0)) or ((time >= 64.0) and (time <= 280.0)));
        algorithm
            value_elmt_i := 0.0;
end Class_elmt_event_0000004;
