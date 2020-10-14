within BIOMD436;
class Class_elmt_event5 ""

    input Real elmt_DGslope5;
    input Real elmt_timevalue;
    input Real elmt_t5;
    input Real elmt_GPChoslope5;
    input Real elmt_GPChoint5;
    input Real elmt_DGint5;
    Boolean trigger;
    Real    value_elmt_DGslope;
    Real    value_elmt_GPChoint;
    Real    value_elmt_DGint;
    Real    value_elmt_GPChoslope;

    equation
        trigger = (elmt_timevalue >= elmt_t5);
        algorithm
            value_elmt_DGslope := elmt_DGslope5;
            value_elmt_GPChoint := elmt_GPChoint5;
            value_elmt_DGint := elmt_DGint5;
            value_elmt_GPChoslope := elmt_GPChoslope5;
end Class_elmt_event5;
