within BIOMD036;
class Parameters

    Real elmt_N_A(unit = "") "";


    initial equation
        elmt_N_A = 6.0221367E23;


    equation
        der(elmt_N_A) = 0;

end Parameters;
