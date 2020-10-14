within BIOMD111;
class Class_elmt_event_0000001 ""

    input Real elmt_M;
    input Real elmt_MPF;
    input Real elmt_flag_MPF;
    Boolean trigger;
    Real    value_elmt_flag_MPF;
    Real    value_elmt_M;

    equation
        trigger = ((elmt_MPF <= 0.1) and Functions.eq(elmt_flag_MPF, 1.0));
        algorithm
            value_elmt_flag_MPF := 0.0;
            value_elmt_M := (pre(elmt_M) / 2.0);
end Class_elmt_event_0000001;
