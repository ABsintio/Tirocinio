within BIOMD308;
class Parameters

    Real elmt_k0(unit = "m-3.0..s-1.0") "";
    Real elmt_k1(unit = "s-1.0") "";
    Real elmt_Km5(unit = "m-3.0.") "";
    Real elmt_Rt(unit = "m-3.0.") "";
    Real elmt_Km6(unit = "m-3.0.") "";
    Real elmt_Km3(unit = "m-3.0.") "";
    Real elmt_Km4(unit = "m-3.0.") "";
    Real elmt_k6(unit = "m-3.0..s-1.0") "";
    Real elmt_k4(unit = "m-3.0..s-1.0") "";
    Real elmt_k5(unit = "s-1.0") "";
    Real elmt_k2(unit = "s-1.0") "";
    Real elmt_k3(unit = "s-1.0") "";
    Real elmt_k2_prime(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_Yt(unit = "m-3.0.") "";


    initial equation
        elmt_k0 = 0.0;
        elmt_k1 = 1.0;
        elmt_Km5 = 0.01;
        elmt_Rt = 1.0;
        elmt_Km6 = 0.01;
        elmt_Km3 = 0.01;
        elmt_Km4 = 0.01;
        elmt_k6 = 0.05;
        elmt_k4 = 0.2;
        elmt_k5 = 0.1;
        elmt_k2 = 0.01;
        elmt_k3 = 0.1;
        elmt_k2_prime = 10.0;
        elmt_Yt = 1.0;


    equation
        der(elmt_k0) = 0;
        der(elmt_k1) = 0;
        der(elmt_Km5) = 0;
        der(elmt_Rt) = 0;
        der(elmt_Km6) = 0;
        der(elmt_Km3) = 0;
        der(elmt_Km4) = 0;
        der(elmt_k6) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_k2_prime) = 0;
        der(elmt_Yt) = 0;

end Parameters;
