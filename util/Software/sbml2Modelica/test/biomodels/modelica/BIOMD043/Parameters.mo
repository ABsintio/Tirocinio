within BIOMD043;
class Parameters

    Real elmt_beta(unit = "") "";
    Real elmt_d(unit = "") "";
    Real elmt_a(unit = "") "";


    initial equation
        elmt_beta = 1.0;
        elmt_d = 100.0;
        elmt_a = 40000.0;


    equation
        der(elmt_beta) = 0;
        der(elmt_d) = 0;
        der(elmt_a) = 0;

end Parameters;
