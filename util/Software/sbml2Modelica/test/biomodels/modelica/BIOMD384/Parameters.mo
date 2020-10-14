within BIOMD384;
class Parameters

    input Real elmt_O2;
    input Real elmt_CO2;

    Real elmt_Nt(unit = "") "Nt";
    Real elmt_Ko(unit = "") "Ko";
    Real elmt_teta(unit = "") "teta";
    Real elmt_J(unit = "") "J";
    Real elmt_phi(unit = "") "phi";
    Real elmt_Gamma(unit = "") "Gamma";
    Real elmt_Vc(unit = "") "Vc";
    Real elmt_Vomax(unit = "") "Vomax";
    Real elmt_Vj(unit = "") "Vj";
    Real elmt_Vcmax(unit = "") "Vcmax";
    Real elmt_Rp(unit = "") "Rp";
    Real elmt_alpha(unit = "") "alpha";
    Real elmt_Q(unit = "") "Q";
    Real elmt_Kc(unit = "") "Kc";


    initial equation
        elmt_Nt = 0.5;
        elmt_Ko = 276.900084789612;
        elmt_teta = 0.9;
        elmt_Gamma = 42.8926627111176;
        elmt_Vcmax = 2.53232284114507;
        elmt_Rp = 3.2;
        elmt_alpha = 0.3;
        elmt_Q = 1000.0;
        elmt_Kc = 406.066146391504;


    equation
        der(elmt_Nt) = 0;
        der(elmt_Ko) = 0;
        der(elmt_teta) = 0;
        elmt_J = (((elmt_alpha * elmt_Q) / (10.0 - (9.0 * elmt_teta))) / (65.0 * 0.5));
        elmt_phi = ((0.21 * (elmt_O2 / elmt_Ko)) / (elmt_CO2 / elmt_Kc));
        der(elmt_Gamma) = 0;
        elmt_Vc = ((elmt_Vcmax * elmt_CO2) / (((1.0 + (elmt_O2 / elmt_Ko)) * elmt_Kc) + elmt_CO2));
        elmt_Vomax = (0.21 * elmt_Vcmax);
        elmt_Vj = (((elmt_J / 4.0) * elmt_CO2) / (elmt_CO2 + (2.0 * elmt_Gamma)));
        der(elmt_Vcmax) = 0;
        der(elmt_Rp) = 0;
        der(elmt_alpha) = 0;
        der(elmt_Q) = 0;
        der(elmt_Kc) = 0;

end Parameters;
