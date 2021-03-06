within BIOMD016;
class Class_elmt_default

    Real elmt_default(unit = "") "";
    Real elmt_EmptySet_conc(unit = "");
    Real elmt_EmptySet_amount(unit = "");
    Real elmt_EmptySet(unit = "") "";

    initial equation
        elmt_default = 1.0E-15;
        elmt_EmptySet_conc = (0.0 / elmt_default);


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_EmptySet = elmt_EmptySet_conc;
        der(elmt_EmptySet_amount) = 0;

    algorithm
        elmt_EmptySet_conc := elmt_EmptySet_amount / elmt_default;
end Class_elmt_default;
