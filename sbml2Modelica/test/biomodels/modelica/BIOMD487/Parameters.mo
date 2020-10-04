within BIOMD487;
class Parameters

    Real elmt_k1(unit = "") "";
    Real elmt_k6(unit = "") "";
    Real elmt_k4(unit = "") "";
    Real elmt_k5(unit = "") "";
    Real elmt_k2(unit = "") "";
    Real elmt_k3(unit = "") "";


    initial equation
        elmt_k1 = 1.0;
        elmt_k6 = 0.1;
        elmt_k4 = 1.0;
        elmt_k5 = 1.0;
        elmt_k2 = 1.0;
        elmt_k3 = 0.1;


    equation
        der(elmt_k1) = 0;
        der(elmt_k6) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;

end Parameters;
