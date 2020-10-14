within BIOMD436;
class Class_elmt_event6 ""

    input Real elmt_DGslope6;
    input Real elmt_timevalue;
    input Real elmt_t6;
    input Real elmt_GPChoslope6;
    input Real elmt_GPChoint6;
    input Real elmt_DGint6;
    Boolean trigger;
    Real    value_elmt_DGint;
    Real    value_elmt_GPChoslope;
    Real    value_elmt_DGslope;
    Real    value_elmt_GPChoint;

    equation
        trigger = (elmt_timevalue >= elmt_t6);
        algorithm
            value_elmt_DGint := elmt_DGint6;
            value_elmt_GPChoslope := elmt_GPChoslope6;
            value_elmt_DGslope := elmt_DGslope6;
            value_elmt_GPChoint := elmt_GPChoint6;
end Class_elmt_event6;
