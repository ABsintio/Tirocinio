within BIOMD328;
class Class_elmt_compartment

    Real elmt_compartment(unit = "") "";

    initial equation
        elmt_compartment = 1.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;

    algorithm
end Class_elmt_compartment;
