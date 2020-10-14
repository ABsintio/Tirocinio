within BIOMD311;
class Parameters

    Real elmt_k0(unit = "s-1.0") "";
    Real elmt_k1(unit = "s-1.0") "";
    Real elmt_Et(unit = "m-3.0.") "";
    Real elmt_J3(unit = "m-3.0.") "";
    Real elmt_k4(unit = "m-3.0..s-1.0") "";
    Real elmt_J4(unit = "m-3.0.") "";
    Real elmt_k2(unit = "s-1.0") "";
    Real elmt_k3(unit = "s-1.0") "";


    initial equation
        elmt_k0 = 0.4;
        elmt_k1 = 0.01;
        elmt_Et = 1.0;
        elmt_J3 = 0.05;
        elmt_k4 = 0.2;
        elmt_J4 = 0.05;
        elmt_k2 = 1.0;
        elmt_k3 = 1.0;


    equation
        der(elmt_k0) = 0;
        der(elmt_k1) = 0;
        der(elmt_Et) = 0;
        der(elmt_J3) = 0;
        der(elmt_k4) = 0;
        der(elmt_J4) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;

end Parameters;
