within BIOMD339;
class Class_elmt_dilution_event "dilution event"

    input Real elmt_compartment_1;
    Boolean trigger;
    Real    value_elmt_compartment_1;

    equation
        trigger = (time > 0.0);
        algorithm
            value_elmt_compartment_1 := (pre(elmt_compartment_1) * 3.0);
end Class_elmt_dilution_event;
