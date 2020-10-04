within BIOMD312;
class Parameters

    Real elmt_tau(unit = "") "";
    Real elmt_k1(unit = "s-1.0") "";
    Real elmt_k4(unit = "s-1.0") "";
    Real elmt_k2(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k3(unit = "s-1.0") "";


    initial equation
        elmt_tau = 4.0;
        elmt_k1 = 2.0;
        elmt_k4 = 1.0;
        elmt_k2 = 2.0;
        elmt_k3 = 1.0;


    equation
        der(elmt_tau) = 0;
        der(elmt_k1) = 0;
        der(elmt_k4) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;

end Parameters;
