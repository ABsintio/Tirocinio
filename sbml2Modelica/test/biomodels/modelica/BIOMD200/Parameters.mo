within BIOMD200;
class Parameters

    input Real elmt_SetYp;
    input Real elmt_Yp;

    Real elmt_Hill(unit = "") "Hill";
    Real elmt_Bias(unit = "") "Bias";


    initial equation
        elmt_Hill = 4.0;


    equation
        der(elmt_Hill) = 0;
        elmt_Bias = (1.0 - (Functions.pow(elmt_Yp, elmt_Hill) / ((2.333 * Functions.pow(elmt_SetYp, elmt_Hill)) + Functions.pow(elmt_Yp, elmt_Hill))));

end Parameters;
