within BIOMD484;
class Parameters

    Real elmt_k1(unit = "") "";
    Real elmt_k2(unit = "") "";


    initial equation
        elmt_k1 = 1.0;
        elmt_k2 = 0.025;


    equation
        der(elmt_k1) = 0;
        der(elmt_k2) = 0;

end Parameters;
