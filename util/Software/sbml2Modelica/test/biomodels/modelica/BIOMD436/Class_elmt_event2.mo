within BIOMD436;
class Class_elmt_event2 ""

    input Real elmt_DGint2;
    input Real elmt_timevalue;
    input Real elmt_GPChoslope2;
    input Real elmt_DGslope2;
    input Real elmt_t2;
    input Real elmt_GPChoint2;
    Boolean trigger;
    Real    value_elmt_GPChoint;
    Real    value_elmt_DGslope;
    Real    value_elmt_GPChoslope;
    Real    value_elmt_DGint;

    equation
        trigger = (elmt_timevalue >= elmt_t2);
        algorithm
            value_elmt_GPChoint := elmt_GPChoint2;
            value_elmt_DGslope := elmt_DGslope2;
            value_elmt_GPChoslope := elmt_GPChoslope2;
            value_elmt_DGint := elmt_DGint2;
end Class_elmt_event2;
