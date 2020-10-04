within BIOMD022;
class Class_elmt_Drosophilia

    Real elmt_Drosophilia(unit = "") "";
    Real elmt_EmptySet_conc(unit = "");
    Real elmt_EmptySet_amount(unit = "");
    Real elmt_EmptySet(unit = "") "";

    initial equation
        elmt_Drosophilia = 1.0;
        elmt_EmptySet_conc = (0.0 / elmt_Drosophilia);


    equation
        assert(elmt_Drosophilia >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Drosophilia) = 0;
        elmt_EmptySet = elmt_EmptySet_conc;
        der(elmt_EmptySet_amount) = 0;

    algorithm
        elmt_EmptySet_conc := elmt_EmptySet_amount / elmt_Drosophilia;
end Class_elmt_Drosophilia;
