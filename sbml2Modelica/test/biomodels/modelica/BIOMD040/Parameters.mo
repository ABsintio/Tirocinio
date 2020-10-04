within BIOMD040;
class Parameters

    Real elmt_f(unit = "") "";


    initial equation
        elmt_f = 1.0;


    equation
        der(elmt_f) = 0;

end Parameters;
