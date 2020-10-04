within BIOMD020;
class Class_elmt_unit_compartment

    Real elmt_unit_compartment(unit = "") "unit_compartment";

    initial equation
        elmt_unit_compartment = 1.0;


    equation
        assert(elmt_unit_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_unit_compartment) = 0;

    algorithm
end Class_elmt_unit_compartment;
