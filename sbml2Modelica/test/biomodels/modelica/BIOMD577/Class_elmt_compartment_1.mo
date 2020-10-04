within BIOMD577;
class Class_elmt_compartment_1

    Real elmt_compartment_1(unit = "") "No Name";

    initial equation
        elmt_compartment_1 = 1.0;


    equation
        assert(elmt_compartment_1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_1) = 0;

    algorithm
end Class_elmt_compartment_1;
