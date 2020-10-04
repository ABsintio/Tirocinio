within BIOMD327;
class Class_elmt_event1 ""

    input Real elmt_gcftrbase;
    input Real elmt_toff;
    Boolean trigger;
    Real    value_elmt_gcftr;

    equation
        trigger = (time >= elmt_toff);
        algorithm
            value_elmt_gcftr := elmt_gcftrbase;
end Class_elmt_event1;
