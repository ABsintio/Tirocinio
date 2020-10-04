within BIOMD253;
class Parameters

    input Real elmt_ATP;
    input Real elmt_HMP;

    Real elmt_ci(unit = "") "";
    Real elmt_L0(unit = "") "";
    Real elmt_lambda1(unit = "") "";
    Real elmt_L(unit = "") "";
    Real elmt_lambda3(unit = "") "";
    Real elmt_lambda2(unit = "") "";
    Real elmt_gT(unit = "") "";
    Real elmt_c1(unit = "") "";
    Real elmt_gR(unit = "") "";
    Real elmt_KRATP(unit = "m-3.0.") "";
    Real elmt_c2(unit = "") "";
    Real elmt_KiATP(unit = "m-3.0.") "";
    Real elmt_KRHMP(unit = "m-3.0.") "";
    Real elmt_T(unit = "") "";
    Real elmt_R(unit = "") "";


    initial equation
        elmt_ci = 10.0;
        elmt_L0 = 1000.0;
        elmt_gT = 1.0;
        elmt_c1 = 5.0E-4;
        elmt_gR = 10.0;
        elmt_KRATP = 0.06;
        elmt_c2 = 1.0;
        elmt_KiATP = 10.0;
        elmt_KRHMP = 1.0;


    equation
        der(elmt_ci) = 0;
        der(elmt_L0) = 0;
        elmt_lambda1 = (elmt_HMP / elmt_KRHMP);
        elmt_L = (elmt_L0 * Functions.pow(((1.0 + (elmt_ci * elmt_lambda3)) / (1.0 + elmt_lambda3)), 2.0));
        elmt_lambda3 = (elmt_ATP / elmt_KiATP);
        elmt_lambda2 = (elmt_ATP / elmt_KRATP);
        der(elmt_gT) = 0;
        der(elmt_c1) = 0;
        der(elmt_gR) = 0;
        der(elmt_KRATP) = 0;
        der(elmt_c2) = 0;
        der(elmt_KiATP) = 0;
        der(elmt_KRHMP) = 0;
        elmt_T = (1.0 + (elmt_c1 * elmt_lambda1) + (elmt_c2 * elmt_lambda2) + (elmt_gT * elmt_c1 * elmt_lambda1 * elmt_c2 * elmt_lambda2));
        elmt_R = (1.0 + elmt_lambda1 + elmt_lambda2 + (elmt_gR * elmt_lambda1 * elmt_lambda2));

end Parameters;
