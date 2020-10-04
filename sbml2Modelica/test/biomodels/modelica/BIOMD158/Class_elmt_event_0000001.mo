within BIOMD158;
class Class_elmt_event_0000001 ""

    input Real elmt_xmax;
    input Real elmt_x;
    Boolean trigger;
    Real    value_elmt_flag2;
    Real    value_elmt_flag1;
    Real    value_elmt_flag3;

    equation
        trigger = (elmt_x >= elmt_xmax);
        algorithm
            value_elmt_flag2 := 0.0;
            value_elmt_flag1 := 1.0;
            value_elmt_flag3 := 0.0;
end Class_elmt_event_0000001;
