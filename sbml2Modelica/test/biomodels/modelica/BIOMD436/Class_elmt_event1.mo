within BIOMD436;
class Class_elmt_event1 ""

    input Real elmt_LPSslope1;
    input Real elmt_DGint1;
    input Real elmt_GPChoslope1;
    input Real elmt_timevalue;
    input Real elmt_DGslope1;
    input Real elmt_t1;
    input Real elmt_LPSint1;
    input Real elmt_GPChoint1;
    Boolean trigger;
    Real    value_elmt_LPSslope;
    Real    value_elmt_DGint;
    Real    value_elmt_LPSint;
    Real    value_elmt_GPChoslope;
    Real    value_elmt_GPChoint;
    Real    value_elmt_DGslope;

    equation
        trigger = (elmt_timevalue >= elmt_t1);
        algorithm
            value_elmt_LPSslope := elmt_LPSslope1;
            value_elmt_DGint := elmt_DGint1;
            value_elmt_LPSint := elmt_LPSint1;
            value_elmt_GPChoslope := elmt_GPChoslope1;
            value_elmt_GPChoint := elmt_GPChoint1;
            value_elmt_DGslope := elmt_DGslope1;
end Class_elmt_event1;
