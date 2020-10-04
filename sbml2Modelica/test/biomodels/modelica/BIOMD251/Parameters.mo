within BIOMD251;
class Parameters

    Real elmt_K1(unit = "") "K1";
    Real elmt_tau2(unit = "") "tau";
    Real elmt_tau1(unit = "") "tau1";
    Real elmt_L(unit = "") "L";
    Real elmt_k7(unit = "") "k7";
    Real elmt_k13(unit = "") "k13";
    Real elmt_k11(unit = "") "k11";
    Real elmt_K2(unit = "") "K";


    initial equation
        elmt_K1 = 1.09;
        elmt_tau2 = 472.0;
        elmt_tau1 = 3.07;
        elmt_L = 1.0;
        elmt_k7 = 0.5;
        elmt_k13 = 0.06;
        elmt_k11 = 0.11;
        elmt_K2 = 2.89;


    equation
        der(elmt_K1) = 0;
        der(elmt_tau2) = 0;
        der(elmt_tau1) = 0;
        der(elmt_L) = 0;
        der(elmt_k7) = 0;
        der(elmt_k13) = 0;
        der(elmt_k11) = 0;
        der(elmt_K2) = 0;

end Parameters;
