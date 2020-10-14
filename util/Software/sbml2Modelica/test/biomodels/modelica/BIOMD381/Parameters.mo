within BIOMD381;
class Parameters

    Real elmt_Wmax(unit = "") "Wmax";
    Real elmt_k(unit = "") "k";
    Real elmt_Amax(unit = "") "Amax";
    Real elmt_J(unit = "") "J";
    Real elmt_e2(unit = "") "e2";
    Real elmt_g(unit = "") "g";
    Real elmt_f1(unit = "") "f1";
    Real elmt_e1(unit = "") "e1";
    Real elmt_f2(unit = "") "f2";
    Real elmt_c(unit = "") "c";
    Real elmt_d(unit = "") "d";
    Real elmt_b(unit = "") "b";
    Real elmt_W(unit = "") "W";
    Real elmt_alpha(unit = "") "alpha";
    Real elmt_parameter_1(unit = "") "x";
    Real elmt_kc(unit = "") "kc";
    Real elmt_delta(unit = "") "delta";


    initial equation
        elmt_Wmax = 4.0E7;
        elmt_k = 0.4;
        elmt_Amax = 2.0E7;
        elmt_J = 50000.0;
        elmt_e2 = 1.0E-8;
        elmt_g = 1.0E-5;
        elmt_f1 = 1.0E-5;
        elmt_e1 = 1.0E-8;
        elmt_f2 = 1.0E-5;
        elmt_c = 0.1;
        elmt_d = 0.5;
        elmt_b = 0.09;
        elmt_alpha = 5.0E-9;
        elmt_kc = 1.0;
        elmt_delta = 25.0;


    equation
        der(elmt_Wmax) = 0;
        der(elmt_k) = 0;
        der(elmt_Amax) = 0;
        der(elmt_J) = 0;
        der(elmt_e2) = 0;
        der(elmt_g) = 0;
        der(elmt_f1) = 0;
        der(elmt_e1) = 0;
        der(elmt_f2) = 0;
        der(elmt_c) = 0;
        der(elmt_d) = 0;
        der(elmt_b) = 0;
        elmt_W = (elmt_Wmax * exp((- elmt_parameter_1)));
        der(elmt_alpha) = 0;
        elmt_parameter_1 = Functions.pow(((time - 9.0) / 3.0), 2.0);
        der(elmt_kc) = 0;
        der(elmt_delta) = 0;

end Parameters;
