within BIOMD387;
class Parameters

    input Real elmt_O2;
    input Real elmt_CO2;
    input Real elmt_starch;

    Real elmt_Nt(unit = "") "Nt";
    Real elmt_Ko(unit = "") "Ko";
    Real elmt_J(unit = "") "J";
    Real elmt_phi(unit = "") "phi";
    Real elmt_Gamma(unit = "") "Gamma";
    Real elmt_Vc(unit = "") "Vc";
    Real elmt_a(unit = "") "a";
    Real elmt_TPU(unit = "") "TPU";
    Real elmt_Vj(unit = "") "Vj";
    Real elmt_Vcmax(unit = "") "Vcmax";
    Real elmt_Cst(unit = "") "Cst";
    Real elmt_Rp(unit = "") "Rp";
    Real elmt_alpha(unit = "") "alpha";
    Real elmt_Jmax(unit = "") "Jmax";
    Real elmt_Vp(unit = "") "Vp";
    Real elmt_Q(unit = "") "Q";
    Real elmt_Kc(unit = "") "Kc";


    initial equation
        elmt_Nt = 0.5;
        elmt_Ko = 187891.032274486;
        elmt_a = 0.0434;
        elmt_TPU = 0.259027750094988;
        elmt_Vcmax = 1.91141270310584;
        elmt_Rp = 3.2;
        elmt_alpha = 0.24;
        elmt_Jmax = 142.047003854271;
        elmt_Q = 1000.0;
        elmt_Kc = 26.7125313821435;


    equation
        der(elmt_Nt) = 0;
        der(elmt_Ko) = 0;
        elmt_J = (((elmt_Cst * elmt_alpha * 0.9 * elmt_Q) / Functions.root(2.0, (1.0 + Functions.pow(((elmt_alpha * 0.9 * elmt_Q) / elmt_Jmax), 2.0)))) / (65.0 * 0.5));
        elmt_phi = ((0.21 * (elmt_O2 / elmt_Ko)) / (elmt_CO2 / elmt_Kc));
        elmt_Gamma = (elmt_O2 / (2.0 * exp(((- 7.458) + (37830.0 / (8.3143 * 298.15))))));
        elmt_Vc = ((elmt_Vcmax * elmt_CO2) / ((1.0 + (elmt_O2 / elmt_Ko)) * (elmt_CO2 + elmt_Kc)));
        der(elmt_a) = 0;
        der(elmt_TPU) = 0;
        elmt_Vj = (((elmt_J / 4.0) * elmt_CO2) / (elmt_CO2 + (2.0 * elmt_Gamma)));
        der(elmt_Vcmax) = 0;
        elmt_Cst = exp(((- 0.0398) * elmt_starch * elmt_a));
        der(elmt_Rp) = 0;
        der(elmt_alpha) = 0;
        der(elmt_Jmax) = 0;
        elmt_Vp = ((3.0 * elmt_TPU) / (1.0 - (elmt_Gamma / elmt_CO2)));
        der(elmt_Q) = 0;
        der(elmt_Kc) = 0;

end Parameters;
