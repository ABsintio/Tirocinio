within BIOMD077;
class Parameters

    Real elmt_beta(unit = "s-1.0") "beta";
    Real elmt_alpha(unit = "") "alpha";


    initial equation
        elmt_beta = 4.0;
        elmt_alpha = 2.0;


    equation
        der(elmt_beta) = 0;
        der(elmt_alpha) = 0;

end Parameters;
