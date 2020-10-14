within BIOMD133;
class Class_elmt_event_0000003 ""

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = (((time > 280.0) and (time < 284.0)) or ((time > 320.0) and (time < 324.0)) or ((time > 40.0) and (time < 44.0)) or ((time > 60.0) and (time < 64.0)));
        algorithm
            value_elmt_i := 0.65;
end Class_elmt_event_0000003;
