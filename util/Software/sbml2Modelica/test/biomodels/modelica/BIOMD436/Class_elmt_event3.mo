within BIOMD436;
class Class_elmt_event3 ""

    input Real elmt_DGslope3;
    input Real elmt_LPSslope3;
    input Real elmt_timevalue;
    input Real elmt_t3;
    input Real elmt_GPChoint3;
    input Real elmt_GPChoslope3;
    input Real elmt_LPSint3;
    input Real elmt_DGint3;
    Boolean trigger;
    Real    value_elmt_DGint;
    Real    value_elmt_DGslope;
    Real    value_elmt_GPChoslope;
    Real    value_elmt_LPSint;
    Real    value_elmt_LPSslope;
    Real    value_elmt_GPChoint;

    equation
        trigger = (elmt_timevalue >= elmt_t3);
        algorithm
            value_elmt_DGint := elmt_DGint3;
            value_elmt_DGslope := elmt_DGslope3;
            value_elmt_GPChoslope := elmt_GPChoslope3;
            value_elmt_LPSint := elmt_LPSint3;
            value_elmt_LPSslope := elmt_LPSslope3;
            value_elmt_GPChoint := elmt_GPChoint3;
end Class_elmt_event3;
