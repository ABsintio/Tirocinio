within BIOMD047;
class Parameters

    input Real elmt_Ca_Cyt;

    Real elmt_kbN(unit = "") "";
    Real elmt_K1(unit = "") "";
    Real elmt_p3(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_kappa(unit = "") "";
    Real elmt_p1(unit = "") "";
    Real elmt_n0(unit = "") "";
    Real elmt_p2(unit = "") "";
    Real elmt_p12(unit = "") "";
    Real elmt_K2(unit = "") "";
    Real elmt_K3(unit = "") "";
    Real elmt_p11(unit = "") "";
    Real elmt_k31(unit = "") "";


    initial equation
        elmt_kbN = 0.5;
        elmt_K1 = 5.0;
        elmt_p3 = 0.95;
        elmt_kappa = 5.0;
        elmt_n0 = 1.0;
        elmt_p12 = 0.8;
        elmt_K2 = 0.7;
        elmt_K3 = 0.7;
        elmt_p11 = 0.2;
        elmt_k31 = 0.5;


    equation
        der(elmt_kbN) = 0;
        der(elmt_K1) = 0;
        der(elmt_p3) = ((- (elmt_k31 * elmt_Ca_Cyt * elmt_p3)) + (elmt_k31 * elmt_K3 * (1.0 - elmt_p3)));
        elmt_n = (elmt_n0 * (exp(((- elmt_kbN) * time)) + (elmt_kappa * (1.0 - exp(((- elmt_kbN) * time))))));
        der(elmt_kappa) = 0;
        elmt_p1 = (elmt_p11 + ((elmt_p12 * elmt_n) / (elmt_K1 + elmt_n)));
        der(elmt_n0) = 0;
        elmt_p2 = (elmt_Ca_Cyt / (elmt_K2 + elmt_Ca_Cyt));
        der(elmt_p12) = 0;
        der(elmt_K2) = 0;
        der(elmt_K3) = 0;
        der(elmt_p11) = 0;
        der(elmt_k31) = 0;

end Parameters;
