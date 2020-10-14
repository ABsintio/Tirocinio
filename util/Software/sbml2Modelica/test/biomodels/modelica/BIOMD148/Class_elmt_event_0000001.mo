within BIOMD148;
class Class_elmt_event_0000001 ""

    input Real elmt_x1_bar;
    input Real elmt_x1;
    Boolean trigger;
    Real    value_elmt_flag_resorption;

    equation
        trigger = (elmt_x1 > elmt_x1_bar);
        algorithm
            value_elmt_flag_resorption := 1.0;
end Class_elmt_event_0000001;
