within BIOMD136;
class Class_elmt_event_0000004 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = (((time >= 15.0) and (time <= 70.0)) or ((time >= 75.0) and (time <= 80.0)) or (time >= 85.0));
        algorithm
            value_elmt_i := 0.0;
end Class_elmt_event_0000004;
