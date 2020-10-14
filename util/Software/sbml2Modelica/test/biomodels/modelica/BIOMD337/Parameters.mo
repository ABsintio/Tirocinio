within BIOMD337;
class Parameters

    Real elmt_v(unit = "") "";
    Real elmt_d(unit = "") "";


    initial equation
        elmt_v = 10.0;
        elmt_d = 1.0;


    equation
        der(elmt_v) = 0;
        der(elmt_d) = 0;

end Parameters;
