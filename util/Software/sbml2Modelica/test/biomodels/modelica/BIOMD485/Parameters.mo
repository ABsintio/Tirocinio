within BIOMD485;
class Parameters

    Real elmt_k1(unit = "") "";
    Real elmt_value(unit = "") "";
    Real elmt_V(unit = "") "";
    Real elmt_k4(unit = "") "";
    Real elmt_k2(unit = "") "";
    Real elmt_A(unit = "") "";
    Real elmt_k3(unit = "") "";
    Real elmt_B(unit = "") "";


    initial equation
        elmt_k1 = 3.0;
        elmt_value = 1.0;
        elmt_V = 25.0;
        elmt_k4 = 2.95;
        elmt_k2 = 0.6;
        elmt_A = 1.0;
        elmt_k3 = 0.25;
        elmt_B = 2.0;


    equation
        der(elmt_k1) = 0;
        der(elmt_value) = 0;
        der(elmt_V) = 0;
        der(elmt_k4) = 0;
        der(elmt_k2) = 0;
        der(elmt_A) = 0;
        der(elmt_k3) = 0;
        der(elmt_B) = 0;

end Parameters;
