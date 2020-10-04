within BIOMD224;
class Parameters

    Real elmt_k1(unit = "m-3.0.") "";
    Real elmt_L(unit = "s-1.0") "";
    Real elmt_E(unit = "m-3.0.mol-4.0.s-1.0") "";
    Real elmt_F(unit = "s-1.0") "";
    Real elmt_C(unit = "m-3.0..s-1.0") "";
    Real elmt_D(unit = "s-1.0") "";
    Real elmt_A(unit = "s-1.0") "";
    Real elmt_k2(unit = "m-3.0.") "";
    Real elmt_B(unit = "m-3.0..s-1.0") "";
    Real elmt_k3(unit = "m-3.0.") "";
    Real elmt_R(unit = "") "";


    initial equation
        elmt_k1 = 0.5;
        elmt_L = 0.01;
        elmt_E = 1.0;
        elmt_F = 0.02;
        elmt_C = 1.1;
        elmt_D = 2.0;
        elmt_A = 20.0;
        elmt_k2 = 0.15;
        elmt_B = 40.0;
        elmt_k3 = 1.0;
        elmt_R = 0.09;


    equation
        der(elmt_k1) = 0;
        der(elmt_L) = 0;
        der(elmt_E) = 0;
        der(elmt_F) = 0;
        der(elmt_C) = 0;
        der(elmt_D) = 0;
        der(elmt_A) = 0;
        der(elmt_k2) = 0;
        der(elmt_B) = 0;
        der(elmt_k3) = 0;
        der(elmt_R) = 0;

end Parameters;
