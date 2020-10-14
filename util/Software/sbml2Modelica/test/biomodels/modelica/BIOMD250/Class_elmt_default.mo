within BIOMD250;
class Class_elmt_default

    Real elmt_default(unit = "") "default";
    Real elmt_EGF_conc(unit = "");
    Real elmt_EGF_amount(unit = "");
    Real elmt_EGF(unit = "") "EGF";
    Real elmt_HRG_conc(unit = "");
    Real elmt_HRG_amount(unit = "");
    Real elmt_HRG(unit = "") "HRG";

    initial equation
        elmt_default = 1.0;
        elmt_EGF_conc = 0.0;
        elmt_HRG_conc = 10.0;


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_EGF = elmt_EGF_conc;
        elmt_HRG = elmt_HRG_conc;
        der(elmt_EGF_amount) = 0;
        der(elmt_HRG_amount) = 0;

    algorithm
        elmt_EGF_conc := elmt_EGF_amount / elmt_default;
        elmt_HRG_conc := elmt_HRG_amount / elmt_default;
end Class_elmt_default;
