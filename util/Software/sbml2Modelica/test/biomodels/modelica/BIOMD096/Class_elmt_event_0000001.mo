within BIOMD096;
class Class_elmt_event_0000001 ""

    input Real elmt_Day_in_hours;
    Boolean trigger;
    Real    value_elmt_Day_in_hours;
    Real    value_elmt_ld;

    equation
        trigger = ((elmt_Day_in_hours - time) <= 0.0);
        algorithm
            value_elmt_Day_in_hours := (pre(elmt_Day_in_hours) + 24.0);
            value_elmt_ld := 1.0;
end Class_elmt_event_0000001;
