within BIOMD018;
class Parameters

    Real elmt_Keq(unit = "") "";


    initial equation
        elmt_Keq = 0.32;


    equation
        der(elmt_Keq) = 0;

end Parameters;
