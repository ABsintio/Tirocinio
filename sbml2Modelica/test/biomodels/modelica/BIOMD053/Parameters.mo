within BIOMD053;
class Parameters

    input Real elmt_Amadori;
    input Real elmt_CML;

    Real elmt_Fraction_Amadori(unit = "") "";
    Real elmt_Fraction_CML(unit = "") "";


    initial equation


    equation
        elmt_Fraction_Amadori = (elmt_Amadori / 0.0034);
        elmt_Fraction_CML = (elmt_CML / 0.0034);

end Parameters;
