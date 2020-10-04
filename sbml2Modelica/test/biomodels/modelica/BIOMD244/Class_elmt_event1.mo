within BIOMD244;
class Class_elmt_event1 "second shift"

    input Real elmt_GLC_2;
    input Real elmt_shift2;
    input Real elmt_BM_2;
    input Real elmt_ACT_2;
    Boolean trigger;
    Real    value_elmt_BM;
    Real    value_elmt_GLC;
    Real    value_elmt_ACT;

    equation
        trigger = (time >= (3600.0 * elmt_shift2));
        algorithm
            value_elmt_BM := elmt_BM_2;
            value_elmt_GLC := elmt_GLC_2;
            value_elmt_ACT := elmt_ACT_2;
end Class_elmt_event1;
