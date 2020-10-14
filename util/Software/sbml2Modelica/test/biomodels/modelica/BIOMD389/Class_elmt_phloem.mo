within BIOMD389;
class Class_elmt_phloem

    Real elmt_phloem(unit = "") "phloem";
    Real elmt_E_conc(unit = "");
    Real elmt_E_amount(unit = "");
    Real elmt_E(unit = "") "E";

    initial equation
        elmt_phloem = 1.0;
        elmt_E_conc = 0.5;


    equation
        assert(elmt_phloem >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_phloem) = 0;
        elmt_E = elmt_E_conc;
        der(elmt_E_amount) = 0;

    algorithm
        elmt_E_conc := elmt_E_amount / elmt_phloem;
end Class_elmt_phloem;
