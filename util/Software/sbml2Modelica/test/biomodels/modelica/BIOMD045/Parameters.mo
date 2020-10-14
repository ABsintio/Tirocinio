within BIOMD045;
class Parameters

    Real elmt_beta(unit = "") "";


    initial equation
        elmt_beta = 1.0;


    equation
        der(elmt_beta) = 0;

end Parameters;
