within BIOMD290;
class Parameters

    Real elmt_pi1(unit = "s-1.0") "";
    Real elmt_beta(unit = "s-1.0") "";
    Real elmt_k(unit = "") "";
    Real elmt_muG(unit = "s-1.0") "";
    Real elmt_f(unit = "") "";
    Real elmt_muE(unit = "s-1.0") "";
    Real elmt_muA(unit = "s-1.0") "";
    Real elmt_lambdaE(unit = "s-1.0") "";
    Real elmt_mA(unit = "s-1.0") "";
    Real elmt_b1(unit = "s-1.0") "";
    Real elmt_gamma(unit = "s-1.0") "";
    Real elmt_v_max(unit = "s-1.0") "";
    Real elmt_R0(unit = "") "";
    Real elmt_sigma1(unit = "s-1.0") "";
    Real elmt_mG(unit = "s-1.0") "";
    Real elmt_muR(unit = "s-1.0") "";


    initial equation
        elmt_pi1 = 0.016;
        elmt_beta = 200.0;
        elmt_k = 5.0E7;
        elmt_muG = 5.0;
        elmt_f = 1.0E-4;
        elmt_muE = 0.25;
        elmt_muA = 0.25;
        elmt_lambdaE = 1000.0;
        elmt_b1 = 0.25;
        elmt_gamma = 2000.0;
        elmt_v_max = 125000.0;
        elmt_sigma1 = 3.0E-6;
        elmt_muR = 0.25;


    equation
        der(elmt_pi1) = 0;
        der(elmt_beta) = 0;
        der(elmt_k) = 0;
        der(elmt_muG) = 0;
        der(elmt_f) = 0;
        der(elmt_muE) = 0;
        der(elmt_muA) = 0;
        der(elmt_lambdaE) = 0;
        elmt_mA = (elmt_b1 + elmt_muA);
        der(elmt_b1) = 0;
        der(elmt_gamma) = 0;
        der(elmt_v_max) = 0;
        elmt_R0 = ((elmt_f * (elmt_v_max / elmt_k) * elmt_lambdaE * elmt_gamma) / (elmt_mG * elmt_mA * elmt_muE));
        der(elmt_sigma1) = 0;
        elmt_mG = (elmt_muG + (elmt_v_max / elmt_k));
        der(elmt_muR) = 0;

end Parameters;
