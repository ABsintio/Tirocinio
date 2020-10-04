within BIOMD244;
class Class_elmt_event0 "first shift"

    input Real elmt_ACT_1;
    input Real elmt_shift1;
    input Real elmt_GLC_1;
    input Real elmt_BM_1;
    Boolean trigger;
    Real    value_elmt_GLC;
    Real    value_elmt_ACT;
    Real    value_elmt_BM;

    equation
        trigger = (time >= (3600.0 * elmt_shift1));
        algorithm
            value_elmt_GLC := elmt_GLC_1;
            value_elmt_ACT := elmt_ACT_1;
            value_elmt_BM := elmt_BM_1;
end Class_elmt_event0;
