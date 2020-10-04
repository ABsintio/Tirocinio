within BIOMD283;
class Parameters

    Real elmt_K2(unit = "") "";
    Real elmt_K3(unit = "") "";


    initial equation
        elmt_K2 = 0.0;
        elmt_K3 = 0.5;


    equation
        der(elmt_K2) = 0;
        der(elmt_K3) = 0;

end Parameters;
