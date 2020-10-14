within BIOMD008;
class Parameters

    input Real elmt_M;
    input Real elmt_C;

    Real elmt_V1p(unit = "") "V1p";
    Real elmt_V3p(unit = "") "V3p";
    Real elmt_V3(unit = "") "V3";
    Real elmt_V1(unit = "") "V1";
    Real elmt_K6(unit = "") "K6";


    initial equation
        elmt_V1p = 0.75;
        elmt_V3p = 0.3;
        elmt_K6 = 0.3;


    equation
        der(elmt_V1p) = 0;
        der(elmt_V3p) = 0;
        elmt_V3 = (elmt_M * elmt_V3p);
        elmt_V1 = (elmt_C * elmt_V1p * Functions.pow((elmt_C + elmt_K6), (-1.0)));
        der(elmt_K6) = 0;

end Parameters;
