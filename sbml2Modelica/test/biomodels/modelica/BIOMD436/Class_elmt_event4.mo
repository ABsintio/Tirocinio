within BIOMD436;
class Class_elmt_event4 ""

    input Real elmt_DGslope4;
    input Real elmt_timevalue;
    input Real elmt_t4;
    input Real elmt_GPChoint4;
    input Real elmt_GPChoslope4;
    input Real elmt_DGint4;
    Boolean trigger;
    Real    value_elmt_DGslope;
    Real    value_elmt_GPChoslope;
    Real    value_elmt_GPChoint;
    Real    value_elmt_DGint;

    equation
        trigger = (elmt_timevalue >= elmt_t4);
        algorithm
            value_elmt_DGslope := elmt_DGslope4;
            value_elmt_GPChoslope := elmt_GPChoslope4;
            value_elmt_GPChoint := elmt_GPChoint4;
            value_elmt_DGint := elmt_DGint4;
end Class_elmt_event4;
