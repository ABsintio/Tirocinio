within BIOMD096;
class Class_elmt_event_0000002 ""

    input Real elmt_Day_in_hours;
    Boolean trigger;
    Real    value_elmt_ld;

    equation
        trigger = (((elmt_Day_in_hours - time) <= 12.0) and ((elmt_Day_in_hours - time) > 0.0));
        algorithm
            value_elmt_ld := 0.0;
end Class_elmt_event_0000002;
