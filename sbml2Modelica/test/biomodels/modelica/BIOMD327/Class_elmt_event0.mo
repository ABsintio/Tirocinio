within BIOMD327;
class Class_elmt_event0 ""

    input Real elmt_ton;
    input Real elmt_gcftron;
    Boolean trigger;
    Real    value_elmt_gcftr;

    equation
        trigger = (time >= elmt_ton);
        algorithm
            value_elmt_gcftr := elmt_gcftron;
end Class_elmt_event0;
