within BIOMD307;
class Parameters

    Real elmt_k0(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k1(unit = "s-1.0") "";
    Real elmt_k0_prime(unit = "s-1.0") "";
    Real elmt_Et(unit = "m-3.0.") "";
    Real elmt_Km3(unit = "m-3.0.") "";
    Real elmt_Km4(unit = "m-3.0.") "";
    Real elmt_J3(unit = "") "";
    Real elmt_k4(unit = "m-3.0..s-1.0") "";
    Real elmt_J4(unit = "") "";
    Real elmt_k2(unit = "s-1.0") "";
    Real elmt_k3(unit = "s-1.0") "";


    initial equation
        elmt_k0 = 0.4;
        elmt_k1 = 1.0;
        elmt_k0_prime = 0.01;
        elmt_Et = 1.0;
        elmt_J3 = 0.05;
        elmt_k4 = 0.3;
        elmt_J4 = 0.05;
        elmt_k2 = 1.0;
        elmt_k3 = 1.0;


    equation
        der(elmt_k0) = 0;
        der(elmt_k1) = 0;
        der(elmt_k0_prime) = 0;
        der(elmt_Et) = 0;
        elmt_Km3 = (elmt_J3 * elmt_Et);
        elmt_Km4 = (elmt_J4 * elmt_Et);
        der(elmt_J3) = 0;
        der(elmt_k4) = 0;
        der(elmt_J4) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;

end Parameters;
