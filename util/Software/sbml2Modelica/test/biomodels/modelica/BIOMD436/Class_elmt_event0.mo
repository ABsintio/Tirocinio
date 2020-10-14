within BIOMD436;
class Class_elmt_event0 ""

    input Real elmt_LPSintzero;
    input Real elmt_LPSslopezero;
    input Real elmt_DGslopezero;
    input Real elmt_GPChoslopezero;
    input Real elmt_timevalue;
    input Real elmt_GPChointzero;
    input Real elmt_t0;
    input Real elmt_DGintzero;
    Boolean trigger;
    Real    value_elmt_DGint;
    Real    value_elmt_LPSint;
    Real    value_elmt_GPChoint;
    Real    value_elmt_DGslope;
    Real    value_elmt_LPSslope;
    Real    value_elmt_GPChoslope;

    equation
        trigger = (elmt_timevalue > elmt_t0);
        algorithm
            value_elmt_DGint := elmt_DGintzero;
            value_elmt_LPSint := elmt_LPSintzero;
            value_elmt_GPChoint := elmt_GPChointzero;
            value_elmt_DGslope := elmt_DGslopezero;
            value_elmt_LPSslope := elmt_LPSslopezero;
            value_elmt_GPChoslope := elmt_GPChoslopezero;
end Class_elmt_event0;
