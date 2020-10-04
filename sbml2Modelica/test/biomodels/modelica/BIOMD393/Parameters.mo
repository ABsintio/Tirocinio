within BIOMD393;
class Parameters

    input Real elmt_O2;
    input Real elmt_CO2;
    input Real elmt_F26BPc;
    input Real elmt_RuBP;

    Real elmt_cNc(unit = "") "cNc";
    Real elmt_cPc(unit = "") "cPc";
    Real elmt_cAc(unit = "") "cAc";
    Real elmt_cUc(unit = "") "cUc";
    Real elmt_Wc_min(unit = "") "Wc*min";
    Real elmt_cP(unit = "") "cP";
    Real elmt_cA(unit = "") "cA";
    Real elmt_E(unit = "") "E";
    Real elmt_Wo_min(unit = "") "Wo*min";
    Real elmt_K52a(unit = "") "K52a";


    initial equation
        elmt_cNc = 0.87;
        elmt_cPc = 15.0;
        elmt_cAc = 1.0;
        elmt_cUc = 1.5;
        elmt_cP = 15.0;
        elmt_cA = 1.5;
        elmt_E = 1.456965457;


    equation
        der(elmt_cNc) = 0;
        der(elmt_cPc) = 0;
        der(elmt_cAc) = 0;
        der(elmt_cUc) = 0;
        elmt_Wc_min = (((2.913930914 * elmt_CO2) / (elmt_CO2 + (0.0115 * (1.0 + (elmt_O2 / 0.222))))) * (((1.0 + (elmt_RuBP / elmt_E)) - abs((1.0 - (elmt_RuBP / elmt_E)))) / 2.0));
        der(elmt_cP) = 0;
        der(elmt_cA) = 0;
        der(elmt_E) = 0;
        elmt_Wo_min = (((0.24 * 2.913930914 * elmt_O2) / (elmt_O2 + (0.222 * (1.0 + (elmt_CO2 / 0.0115))))) * (((1.0 + (elmt_RuBP / elmt_E)) - abs((1.0 - (elmt_RuBP / elmt_E)))) / 2.0));
        elmt_K52a = (0.0025 * (1.0 + (elmt_F26BPc / 7.0E-5)));

end Parameters;
