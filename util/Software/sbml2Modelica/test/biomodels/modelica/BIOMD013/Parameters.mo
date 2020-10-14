within BIOMD013;
class Parameters

    Real elmt_Light_on(unit = "") "";


    initial equation
        elmt_Light_on = 1.0;


    equation
        der(elmt_Light_on) = 0;

end Parameters;
