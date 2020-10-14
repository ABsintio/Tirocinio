within BIOMD291;
class Parameters

    Real elmt_k1(unit = "") "k1";
    Real elmt_n(unit = "") "n";
    Real elmt_K_AlB(unit = "") "K_AlB";
    Real elmt_K_AlB2(unit = "") "K_AlB2";
    Real elmt_k8(unit = "") "k8";
    Real elmt_k9(unit = "") "k9";
    Real elmt_k6(unit = "") "k6";
    Real elmt_k7(unit = "") "k7";
    Real elmt_k4(unit = "") "k4";
    Real elmt_k5(unit = "") "k5";
    Real elmt_k2(unit = "") "k2";
    Real elmt_k3(unit = "") "k3";
    Real elmt_k10(unit = "") "k10";


    initial equation
        elmt_k1 = 0.484;
        elmt_n = 1.0;
        elmt_K_AlB = 95000.0;
        elmt_K_AlB2 = 3000.0;
        elmt_k8 = 1.011E-7;
        elmt_k9 = 0.01685;
        elmt_k6 = 3.226E-7;
        elmt_k7 = 0.00301;
        elmt_k4 = 2.656E-5;
        elmt_k5 = 0.005489;
        elmt_k2 = 0.07958;
        elmt_k3 = 5.095E-6;
        elmt_k10 = 0.1325;


    equation
        der(elmt_k1) = 0;
        der(elmt_n) = 0;
        der(elmt_K_AlB) = 0;
        der(elmt_K_AlB2) = 0;
        der(elmt_k8) = 0;
        der(elmt_k9) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_k10) = 0;

end Parameters;
